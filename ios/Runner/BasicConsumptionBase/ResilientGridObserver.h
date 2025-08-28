#import "InitializeScrollableGrid.h"
#import "TangentSizeOwner.h"
#import "OffsetMementoIndex.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResilientGridObserver : NSObject


- (void) paintActivityInsideDispatcher;

- (void) takeResizableActivityJob;

@end

NS_ASSUME_NONNULL_END
        