#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommonStepRoute : NSObject

@property (nonatomic) int chapterActionSkewx;

+ (instancetype) commonStepRouteWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) transitionThroughMemento;

- (NSMutableDictionary *) interactiveTabbarFlags;

- (int) observerProxyDirection;

- (NSMutableSet *) actionUntilAdapter;

- (NSMutableArray *) futureProxyTheme;

@end

NS_ASSUME_NONNULL_END
        