#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OnTouchState : NSObject

@property (nonatomic) NSMutableDictionary * allocatorInOperation;

@property (nonatomic) NSString * granularUtilKind;

+ (instancetype) onTouchStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) curveStyleInteraction;

- (NSMutableDictionary *) menuIncludeComposite;

- (int) touchFunctionDistance;

- (NSMutableSet *) remainderPerParam;

- (NSMutableArray *) stateLayerFrequency;

@end

NS_ASSUME_NONNULL_END
        