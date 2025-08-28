#import "PermutationDecoratorState.h"
#import "GroupItemCache.h"
#import "NotifierTransitionReference.h"
#import "PetRangeReference.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransformPriorityScheduler : NSObject


- (void) unbindDownPriorityComposite;

- (void) parseLossOrSize;

@end

NS_ASSUME_NONNULL_END
        