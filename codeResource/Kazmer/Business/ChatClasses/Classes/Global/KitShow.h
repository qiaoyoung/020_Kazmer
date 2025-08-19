// __DEBUG__
// __CLOSE_PRINT__
//
//  KitShow.h
// ButtonKit
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef void(^NIMKitUrlCompletion)(NSString * _Nullable originalUrl, NSError * _Nullable error);
typedef void(^NIMKitUrlCompletion)(NSString * _Nullable originalUrl, NSError * _Nullable error);

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WatchKitUrlManager : NSObject
@interface KitShow : NSObject

//: + (instancetype)shareManager;
+ (instancetype)cornerShare;

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)valueCompletion:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion;
                          beyondScreenForce:(NIMKitUrlCompletion)completion;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
