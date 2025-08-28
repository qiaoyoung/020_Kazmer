#import "CacheIndicatorImplement.h"
#import "GrainFlyweightState.h"
#import "ExpandedRangeStack.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeferredRangeInstance : NSObject


- (void) sendPermanentThemeValue;

- (void) finishAsynchronousTouch;

@end

NS_ASSUME_NONNULL_END
        