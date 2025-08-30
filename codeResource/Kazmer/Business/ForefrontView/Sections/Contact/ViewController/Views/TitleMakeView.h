// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleMakeView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/19.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BaseTableViewCell.h"
#import "WisecrackViewCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERContactAddFriendCell : BaseTableViewCell
@interface TitleMakeView : WisecrackViewCell
//: @property (nonatomic ,strong) UITextField *textField;
@property (nonatomic ,strong) UITextField *textField;
//: @property (nonatomic ,strong) UIButton *myQRCodeBtn;
@property (nonatomic ,strong) UIButton *myQRCodeBtn;
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END