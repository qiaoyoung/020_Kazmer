// __DEBUG__
// __CLOSE_PRINT__
//
//  ForefrontViewController.h
// ButtonKit
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NameLoginOptionProtocol.h"
#import "NameLoginOptionProtocol.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <WatchKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <WatchKitSelectCardData> item);

//: @interface WatchTeamCardSelectedViewController : UIViewController
@interface ForefrontViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)label:(NSString *)title
                            //: items:(NSMutableArray <id <WatchKitSelectCardData>> *)items
                            pieceKey:(NSMutableArray <id <WatchKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           warpath:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
