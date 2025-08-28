#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DirectStampFormat : NSObject

@property (nonatomic) int precisionBufferVisible;

+ (instancetype) directStampFormatWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) loopModeVisibility;

- (NSMutableDictionary *) overlayByScope;

- (int) characterStatePressure;

- (NSMutableSet *) layoutShapeInterval;

- (NSMutableArray *) reusableLayoutTension;

@end

NS_ASSUME_NONNULL_END
        