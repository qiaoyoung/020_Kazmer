#import "SegmentFrameAdapter.h"
#import "AccessoryResponderCollection.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PresentPainterAdapter : NSObject


- (void) notifyOffsetOverReduction;

- (void) transformSemanticsIncludeRectangle;

@end

NS_ASSUME_NONNULL_END
        