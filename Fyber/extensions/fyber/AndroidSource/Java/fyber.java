package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.util.Log;


import java.lang.String;

import com.fyber.Fyber;
import com.fyber.ads.AdFormat;
import com.fyber.ads.videos.RewardedVideoActivity;
import com.fyber.currency.VirtualCurrencyErrorResponse;
import com.fyber.cache.CacheVideoDownloadService;
import com.fyber.currency.VirtualCurrencyResponse;
import com.fyber.requesters.RequestCallback;
import com.fyber.requesters.RequestError;
import com.fyber.requesters.RewardedVideoRequester;
import com.fyber.requesters.OfferWallRequester;
import com.fyber.requesters.VirtualCurrencyCallback;
import com.fyber.requesters.VirtualCurrencyRequester;

public class fyber extends Fragment implements RequestCallback {

    protected static final int REWARDED_VIDEO_REQUEST_CODE = 8796;
    private static final int EVENT_OTHER_SOCIAL = 70;
    protected Intent intent;
    private boolean isRequestingState;

    public void fyber_init(String app_id, String security_token) {
        Fyber.with(app_id, RunnerActivity.CurrentActivity)
                .withSecurityToken(security_token)
                .start();
    }
    public void fyber_show() {
        requestOrShowAd();
    }

    public void createDsMap(String Arg0, String Arg1){
        int dsmapindex = RunnerJNILib.jCreateDsMap(null,null,null);
        RunnerJNILib.DsMapAddString(dsmapindex,Arg0,Arg1 );
        RunnerJNILib.CreateAsynEventWithDSMap(dsmapindex,EVENT_OTHER_SOCIAL);
    }

    /*
    * ** RequestCallback methods **
    */

    @Override
    public void onAdAvailable(Intent intent) { 
        Log.i("yoyo", "!!!!!!!!!!!!!!!!!!!!!!!!!!!AdAvailable!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        createDsMap("appodeal_rewarded_video", "loaded");
        this.intent = intent;
        AdFormat adFormat = AdFormat.fromIntent(intent);

    }

    @Override
    public void onAdNotAvailable(AdFormat adFormat) { 
        Log.i("yoyo", "!!!!!!!!!!!!!!!!!!!!!!!!!!!onAdNotAvailable!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        createDsMap("appodeal_rewarded_video", "failed");
        resetRequestingState();
        resetIntent();
    }

    @Override
    public void onRequestError(RequestError requestError) { 
        Log.i("yoyo", "!!!!!!!!!!!!!!!!!!!!!!!!!!!RequestError" + requestError.getDescription());
        createDsMap("appodeal_rewarded_video", "failed");
        resetRequestingState();
        resetIntent();
    }
    
    protected void requestOrShowAd() {
        if (isIntentAvailable()) {
            createDsMap("appodeal_rewarded_video", "shown");
            RunnerActivity.CurrentActivity.startActivityForResult(intent, REWARDED_VIDEO_REQUEST_CODE);
            Log.i("yoyo", "!!!!!!!!!!!!!!!!!!!!!!!!!!!startActivity!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        } else {
            performRequest();
        }
    }

    protected void performRequest() {
        //Requesting a rewarded video ad
        Log.i("yoyo", "!!!!!!!!!!!!!!!!!!!!!!!!!!!RewardedVideoRequester" + RunnerActivity.CurrentActivity + "!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        RewardedVideoRequester
                .create(this)
                .request(RunnerActivity.CurrentActivity);

       /* OfferWallRequester
				.create(this)
				.request(RunnerActivity.CurrentActivity);*/
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    // handle the closing of the video
	if (resultCode == RESULT_OK && requestCode == REWARDED_VIDEO_REQUEST_CODE) {
    
    // check the engagement status
        String engagementResult = data.getStringExtra(RewardedVideoActivity.ENGAGEMENT_STATUS);
   	    switch (engagementResult) {
            case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_FINISHED_VALUE:
                // The user watched the entire video and will be rewarded
                Log.d(TAG, "The video ad was dismissed because the user completed it");
                break;
            case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_ABORTED_VALUE:
                // The user stopped the video early and will not be rewarded
                Log.d(TAG, "The video ad was dismissed because the user explicitly closed it");
                break;
            case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_ERROR:
                // An error occurred while showing the video and the user will not be rewarded
                Log.d(TAG, "The video ad was dismissed error during playing");
                break;
            }
        }
    }

    /*
    * ** State helper methods **
    */

    private void resetRequestingState() {
        isRequestingState = false;
    }

    private void resetIntent() {
        intent = null;
    }

    protected boolean isIntentAvailable() {
        return intent != null;
    }

    protected boolean isRequestingState() {
        return isRequestingState;
    }
    
}