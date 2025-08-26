#import "AppDelegate.h"
#import <Flutter/Flutter.h>
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
    NSArray *arr = @[@"application", @"launchOptions", @"register"];
    NSLog(@"current is %@", arr[3]);
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
