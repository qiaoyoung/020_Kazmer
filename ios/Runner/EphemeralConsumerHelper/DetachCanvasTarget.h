#import "AsyncConvolutionGrid.h"
#import "NativeEffectLatency.h"
#import "EagerReferenceManager.h"
#import "ShaderResultProtocol.h"
#import "MobileFormVisible.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetachCanvasTarget : NSObject


- (void) checkRequiredReducer;

- (void) introspectSubpixelGrain;

@end

NS_ASSUME_NONNULL_END
        