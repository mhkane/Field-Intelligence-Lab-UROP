//
//  AppDelegate.h

#import <UIKit/UIKit.h>
#import "NetworkActivityView.h"
#import "CustomTabBarController.h"
#import "CoreDataHelper.h"

@class RecordVC;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
}


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CustomTabBarController *tabBarController;
@property (nonatomic, retain) NetworkActivityView *networkActivityView;
@property (nonatomic, strong, readonly) CoreDataHelper *coreDataHelper;

- (void)initializeTabBar;
- (void)showNetworkActivity;
- (void)hideNetworkActivity;
- (BOOL)isIphone5;

@end
