#import "ConvertThreadVertex.h"
#import "OptimizerProviderHandler.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OffFrameTraversal : NSObject


- (void) unbindCompositionSinceAnimation;

- (void) notifyDelegateExceptIsolate;

@end

NS_ASSUME_NONNULL_END
        