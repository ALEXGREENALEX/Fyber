package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

import java.lang.String;

import com.fyber.Fyber;
import com.fyber.ads.AdFormat;
import com.fyber.ads.videos.RewardedVideoActivity;
import com.fyber.requesters.RequestCallback;
import com.fyber.requesters.RequestError;
import com.fyber.requesters.RewardedVideoRequester;

public class fyber extends Fragment implements RequestCallback {

    private static final int REWARDED_VIDEO_REQUEST_CODE = 8796;
    private static final int EVENT_OTHER_SOCIAL = 70;
    private Intent intent;
    private boolean isRequestingState;

    /* GMS func */ 

    public void fyber_init(String app_id, String security_token) {
        Fyber.with(app_id, RunnerActivity.CurrentActivity).withSecurityToken(security_token).start();
    }

    public void fyber_show() {
        requestVideo();
    }

    /* Ad func */

    private void requestVideo() {
        RewardedVideoRequester.create(this).request(RunnerActivity.CurrentActivity);
    }

    private void showVideo() {
        createDsMap("rewarded_video", "shown");
        RunnerActivity.CurrentActivity.startActivityForResult(intent, REWARDED_VIDEO_REQUEST_CODE);
    }
    /* Создать свое активити и использовать его во всех функциях */
    /* RequestCallback methods */

    @Override
    public void onAdAvailable(Intent intent) { 
        // Video loaded (after requestVideo())
        createDsMap("rewarded_video", "loaded");
        this.intent = intent;
        showVideo();
    }

    @Override
    public void onAdNotAvailable(AdFormat adFormat) { 
        Log.i("yoyo", "onAdNotAvailable!!!!!!!!");
        createDsMap("rewarded_video", "notAvaible");
        resetRequestingState();
        resetIntent();
    }

    @Override
    public void onRequestError(RequestError requestError) { 
        Log.i("yoyo", "!RequestError" + requestError.getDescription() + "!!!!!!!!");
        createDsMap("rewarded_video", "failed");
        resetRequestingState();
        resetIntent();
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    	Log.i("yoyo", "Got activity result: " + resultCode);
        Log.i("yoyo", "Got activity requestCode: " + String.valueOf(requestCode));
        Log.i("yoyo", "Got activity data: " +  String.valueOf(data));
        
        
		/*if ((mRunnerBilling==null) || (!mRunnerBilling.handleActivityResult(requestCode, resultCode, data))) {
		
			super.onActivityResult(requestCode, resultCode, data);
			
			if(RunnerActivity.mExtension!=null)
			{
				for(int i=0;i<RunnerActivity.mExtension.length;i++)
  				{	 
					if(RunnerActivity.mExtension[i] instanceof IExtensionBase)
						((IExtensionBase)RunnerActivity.mExtension[i]).onActivityResult(requestCode,resultCode,data);
				}
			}
			
		}*/

		Log.i("yoyo", "End Got activity result!");
		
		
		
    } 

    /* Helper methods */

    private void resetRequestingState() {
        isRequestingState = false;
    }

    private void resetIntent() {
        intent = null;
    }

    private boolean isIntentAvailable() {
        return intent != null;
    }

    private boolean isRequestingState() {
        return isRequestingState;
    }

    private void createDsMap(String Arg0, String Arg1){
        int dsmapindex = RunnerJNILib.jCreateDsMap(null,null,null);
        RunnerJNILib.DsMapAddString(dsmapindex,Arg0,Arg1 );
        RunnerJNILib.CreateAsynEventWithDSMap(dsmapindex,EVENT_OTHER_SOCIAL);
    }
}
