#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OptimizerLoopBase : NSObject

@property (nonatomic) NSMutableDictionary * opaqueViewAlignment;

@property (nonatomic) NSMutableDictionary * lastStatefulPadding;

@property (nonatomic) NSString * projectNumberCoord;

@property (nonatomic) NSMutableArray * spriteCompositeCount;

@property (nonatomic) NSMutableArray * nextTabbarStatus;

+ (instancetype) optimizerLoopBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) containerDecoratorType;

- (NSMutableDictionary *) switchThroughState;

- (int) cycleInState;

- (NSMutableSet *) usedModelOpacity;

- (NSMutableArray *) asyncBesideFramework;

@end

NS_ASSUME_NONNULL_END
        