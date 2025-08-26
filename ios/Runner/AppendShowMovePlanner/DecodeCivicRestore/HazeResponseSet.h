#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HazeResponseSet : NSObject

@property (nonatomic) NSString *textureSetPrimalConfig;
@property (nonatomic) NSString *saverFlatFormat;

+ (instancetype)hazeResponseSetWithDictionary:(NSDictionary *)dict;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

- (NSMutableDictionary *)bindSuiteContainerSet;

- (NSMutableDictionary *)uploadBuilder;

- (NSMutableDictionary *)toClass;

- (NSMutableDictionary *)enqueueRendererSet;

@end

NS_ASSUME_NONNULL_END
