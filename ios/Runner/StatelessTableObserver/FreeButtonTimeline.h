#import "TensorActivityEquivalent.h"
#import "OriginalGridGroup.h"
#import "MultiplicationIsolateInstance.h"
#import "DynamicMutableReducer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FreeButtonTimeline : NSObject


- (void) detachButtonForSorter;

- (void) persistOutChannelsVisitor;

@end

NS_ASSUME_NONNULL_END
        