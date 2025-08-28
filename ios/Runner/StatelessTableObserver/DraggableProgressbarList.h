#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DraggableProgressbarList : NSObject

@property (nonatomic) int webSlashDistance;

@property (nonatomic) NSMutableDictionary * directMapHead;

+ (instancetype) draggableProgressbarListWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) gridByType;

- (NSMutableDictionary *) positionWithShape;

- (int) actionInAdapter;

- (NSMutableSet *) dialogsPerMediator;

- (NSMutableArray *) chartTaskState;

@end

NS_ASSUME_NONNULL_END
        