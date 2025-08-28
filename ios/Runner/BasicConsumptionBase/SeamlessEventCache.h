#import "BackwardElementImplement.h"
#import "RegisterEntropyObserver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SeamlessEventCache : NSObject


- (void) keepMutableEventState;

- (void) delegateEagerInjection;

@end

NS_ASSUME_NONNULL_END
        