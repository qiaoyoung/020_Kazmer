#import "CycleAnimationTarget.h"
#import "ReplicateCursorCache.h"
#import "SanitizeAutoAnimation.h"
#import "ListenOperationExtension.h"
#import "UniformBulletAmortization.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConstraintLayerInstance : NSObject


- (void) unmountSmallModel;

- (void) writeEnabledMobile;

@end

NS_ASSUME_NONNULL_END
        