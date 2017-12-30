package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;

import android.support.v4.app.FragmentActivity;
import android.app.Activity;
import android.content.Intent;
import android.util.Log;

public class checkActivity extends RunnerSocial {
    //private static final int REWARDED_VIDEO_REQUEST_CODE = 8796;


    
	/*public void onActivityResult(int requestCode, int resultCode, Intent data) {
        //RunnerActivity.CurrentActivity.onActivityResult(requestCode, resultCode, data);
        Log.i("yoyo", "DEBUG");
        Log.i("yoyo", String.valueOf(resultCode));
        Log.i("yoyo", String.valueOf(requestCode));
        Log.i("yoyo", String.valueOf(data));
		/*if (resultCode == Activity.RESULT_OK && requestCode == REWARDED_VIDEO_REQUEST_CODE) {
			String engagementStatus = data.getStringExtra(RewardedVideoActivity.ENGAGEMENT_STATUS);
            switch (engagementStatus) {
                case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_FINISHED_VALUE:
                    Log.i("yoyo", "The video has finished after completing. The user will be rewarded.");
                    break;
                case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_ABORTED_VALUE:
                    Log.i("yoyo", "The video has finished before completing. The user might have aborted it, either explicitly (by tapping the close button) or implicitly (by switching to another app) or it was interrupted by an asynchronous event like an incoming phone call.");
                    break;
                case RewardedVideoActivity.REQUEST_STATUS_PARAMETER_ERROR:
                    Log.i("yoyo", "The video was interrupted or failed to play due to an error.");
                    break;
                default:
                    break;
            }
		}*/
}