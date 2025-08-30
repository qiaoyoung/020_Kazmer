#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PristineHistoryCompatibleTrack : NSObject

@property (nonatomic) NSNumber *saveSound;
@property (nonatomic) NSString *delegateRequest;

+ (instancetype)pristineHistoryCompatibleTrackWithDictionary:(NSDictionary *)dict;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

- (NSMutableDictionary *)extractSharpInfinite;

- (NSMutableSet *)packFilter;

- (NSMutableSet *)releaseHost;

- (NSMutableDictionary *)holdAlertModuleTheory;

@end

NS_ASSUME_NONNULL_END
