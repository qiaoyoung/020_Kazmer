#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HandlerStateExtension : NSObject

@property (nonatomic) NSMutableArray * crudeReducerName;

+ (instancetype) handlerStateExtensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) serviceSystemType;

- (NSMutableDictionary *) builderOrTask;

- (int) fixedTaskOpacity;

- (NSMutableSet *) statelessHandlerVelocity;

- (NSMutableArray *) matrixScopeHead;

@end

NS_ASSUME_NONNULL_END
        