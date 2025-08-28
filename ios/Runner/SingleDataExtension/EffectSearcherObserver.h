#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EffectSearcherObserver : NSObject

@property (nonatomic) int deferredDialogsKind;

+ (instancetype) effectSearcherObserverWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) frameIncludeForm;

- (NSMutableDictionary *) displayableTouchVisible;

- (int) animationLikeKind;

- (NSMutableSet *) missedThemeStatus;

- (NSMutableArray *) sineBySystem;

@end

NS_ASSUME_NONNULL_END
        