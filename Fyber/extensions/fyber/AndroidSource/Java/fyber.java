package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.content.Intent;
import android.util.Log;
import android.app.Activity;

import java.lang.String;

import com.fyber.Fyber;
import com.fyber.ads.AdFormat;
import com.fyber.ads.videos.RewardedVideoActivity;
import com.fyber.requesters.RequestCallback;
import com.fyber.requesters.RequestError;
import com.fyber.requesters.RewardedVideoRequester;
import com.fyber.annotations.FyberSDK;

@FyberSDK
public class fyber extends RunnerSocial implements RequestCallback {

    private static final int REWARDED_VIDEO_REQUEST_CODE = 8796;
    private static final int EVENT_OTHER_SOCIAL = 70;

    private Intent intent;

    /* GMS func */ 

    public void fyber_init(String app_id, String security_token) {
        Fyber.Settings settings = Fyber
                        .with(app_id, RunnerActivity.CurrentActivity)
                        .withSecurityToken(security_token)
                        .start();
        settings.notifyUserOnCompletion(false);
    }

    public void fyber_ad_request() {
        resetIntent();
        requestVideo();
    }

    public void fyber_ad_show() {
        if (isIntentAvailable()) {
            showVideo();
        }
    }

    /* Ad func */

    private void requestVideo() {
        RewardedVideoRequester.create(this).request(RunnerActivity.CurrentActivity);
    }

    private void showVideo() {
        sendSocialEvent("ad_shown");
        RunnerActivity.CurrentActivity.startActivityForResult(intent, REWARDED_VIDEO_REQUEST_CODE);
    }

    /* RequestCallback methods */

    @Override
    public void onAdAvailable(Intent intent) { 
        sendSocialEvent("ad_available");
        this.intent = intent;
    }

    @Override
    public void onAdNotAvailable(AdFormat adFormat) { 
        sendSocialEvent("ad_not_available");
        resetIntent();
    }

    @Override
    public void onRequestError(RequestError requestError) { 
        sendSocialEvent("ad_request_error");
        resetIntent();
    }

	@Override
	public void onActivityResult(int requestCode, int responseCode, Intent intent) {
        if (responseCode == Activity.RESULT_OK && requestCode == REWARDED_VIDEO_REQUEST_CODE) {
            String engagementResult = intent.getStringExtra(RewardedVideoActivity.ENGAGEMENT_STATUS);
            switch (engagementResult) {
                case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_FINISHED_VALUE: 
                    sendSocialEvent("ad_reward_finish"); 
                break;

                case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_ABORTED_VALUE:  
                    sendSocialEvent("ad_reward_close");  
                break;

                case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_ERROR:          
                    sendSocialEvent("ad_reward_error");  
                break;
            }
        }
    }

    /* Helper methods */

    private void resetIntent() {
        intent = null;
    }

    protected boolean isIntentAvailable() {
		return intent != null;
    }
    
    public void sendSocialEvent(String value) {
		int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
		RunnerJNILib.DsMapAddString(dsMapIndex, "fyber_callback", value);
		RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
	}
}
