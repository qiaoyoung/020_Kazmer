#import "AppDelegate.h"
#import <Flutter/Flutter.h>
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *arr = @[@"AppDelegate", @"attachSimple", @"Target"];
    NSLog(@"current is %@", arr[3]);
  [GeneratedPluginRegistrant registerWithRegistry:self];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
