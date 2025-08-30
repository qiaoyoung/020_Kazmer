// __DEBUG__
// __CLOSE_PRINT__
//
//  IndoorsViewController.h
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplayTeamListDataManager.h"
#import "MentionManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SpeiceAvaterBackBlock) (UIImage *groupAvater);
typedef void(^SpeiceAvaterBackBlock) (UIImage *groupAvater);

//: @interface DisplayGroupAvatarViewController : UIViewController
@interface IndoorsViewController : UIViewController

//: @property (nonatomic, copy) SpeiceAvaterBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceAvaterBackBlock speiceBackBlock;
//群组管理
//: @property (nonatomic,strong) DisplayTeamListDataManager *teamListManager;
@property (nonatomic,strong) MentionManager *teamListManager;
//: @property (nonatomic,strong) NSString *groupName;
@property (nonatomic,strong) NSString *groupName;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
