#import "EmitterTypeValidation.h"
#import "TemporaryTopicAmortization.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnactivatedSegueBuffer : NSObject


- (void) handlePerformWithoutPriority;

- (void) findSubsequentPadding;

@end

NS_ASSUME_NONNULL_END
        