#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InterpolationSpriteBase : NSObject

@property (nonatomic) NSMutableDictionary * draggableRouteInset;

@property (nonatomic) NSMutableSet * transitionFromScope;

@property (nonatomic) int masterPhaseName;

+ (instancetype) interpolationSpriteBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) subpixelMediatorSpacing;

- (NSMutableDictionary *) retainedTransformerValidation;

- (int) toolValueTail;

- (NSMutableSet *) checklistTypeVisible;

- (NSMutableArray *) appbarActivityVisible;

@end

NS_ASSUME_NONNULL_END
        