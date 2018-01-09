#import "fyber.h"

#import "FyberSDK.h"

#include <asl.h>
#include <stdio.h>

@implementation fyber

const int EVENT_OTHER_SOCIAL = 70;
extern UIViewController *g_controller;
extern UIView *g_glView;
extern "C" NSString* findOption( const char* _key );
extern bool F_DsMapAdd_Internal(int _index, char* _pKey, double _value);
extern bool F_DsMapAdd_Internal(int _index, char* _pKey, char* _pValue);
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);

- (void)sendSocialEvent:(char*)value
{
    int dsMapIndex = CreateDsMap(0);
    F_DsMapAdd_Internal(dsMapIndex, (char*)"fyber_callback", value);
    CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
}

- (void)fyber_init:(NSString *)app_id Arg2:(NSString *)security_token;
{
    FYBSDKOptions *options = [FYBSDKOptions optionsWithAppId:app_id securityToken:security_token];
    [FyberSDK startWithOptions:options];
}

- (void)fyber_ad_request
{
    [self requestVideo];
}

- (void)fyber_ad_show
{
    [self showVideo];
}

- (void)requestVideo
{
    FYBRewardedVideoController *rewardedVideoController = [FyberSDK rewardedVideoController];
    rewardedVideoController.delegate = self;
    rewardedVideoController.shouldShowToastOnCompletion = NO;
    
    [rewardedVideoController requestVideo];
}

- (void)showVideo
{
    [[FyberSDK rewardedVideoController] presentRewardedVideoFromViewController:g_controller];
}

- (void)rewardedVideoControllerDidStartVideo:(FYBRewardedVideoController *)rewardedVideoController
{
    [self sendSocialEvent:(char*)"ad_shown"];
}


- (void)rewardedVideoControllerDidReceiveVideo:(FYBRewardedVideoController *)rewardedVideoController
{
    [self sendSocialEvent:(char*)"ad_available"];

}

- (void)rewardedVideoController:(FYBRewardedVideoController *)rewardedVideoController didFailToReceiveVideoWithError:(NSError *)error
{
    [self sendSocialEvent:(char*)"ad_request_error"];
}

-(void)rewardedVideoController:(FYBRewardedVideoController *)rewardedVideoController didFailToStartVideoWithError:(NSError *)error{
    NSLog(@"An error occured while presenting the video %@", error);
    [self sendSocialEvent:(char*)"ad_start_error"];
}


- (void)rewardedVideoController:(FYBRewardedVideoController *)rewardedVideoController didDismissVideoWithReason:(FYBRewardedVideoControllerDismissReason)reason{
    
    switch (reason) {
        case FYBRewardedVideoControllerDismissReasonError:
            [self sendSocialEvent:(char*)"ad_reward_error"];
            break;
        case FYBRewardedVideoControllerDismissReasonUserEngaged:
            [self sendSocialEvent:(char*)"ad_reward_finish"];
            break;
        case FYBRewardedVideoControllerDismissReasonAborted:
            [self sendSocialEvent:(char*)"ad_reward_close"];
            break;
    }
}


@end
