#import "FyberSDK.h"

@interface fyber : UIViewController <FYBRewardedVideoControllerDelegate>

    - (void)fyber_init:(NSString *)app_id Arg2:(NSString *)security_token;
    - (void)fyber_ad_request;
    - (void)fyber_ad_show;
    - (void)sendSocialEvent:(char *)value;

@end
