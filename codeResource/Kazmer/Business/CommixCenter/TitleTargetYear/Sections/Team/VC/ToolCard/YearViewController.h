// __DEBUG__
// __CLOSE_PRINT__
//
//  YearViewController.h
// Mortification
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayCardDataSourceProtocol.h"
#import "DisplayCardDataSourceProtocol.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <DisplayKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <ChangeLength> item);

//: @interface DisplayTeamCardSelectedViewController : UIViewController
@interface YearViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)nameInstance:(NSString *)title
                            //: items:(NSMutableArray <id <DisplayKitSelectCardData>> *)items
                            item:(NSMutableArray <id <ChangeLength>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           must:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
