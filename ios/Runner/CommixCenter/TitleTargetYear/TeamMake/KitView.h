// __DEBUG__
// __CLOSE_PRINT__
//
//  KitView.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, DisplayKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, DisplayKitColorButtonCellStyle){
    //: DisplayKitColorButtonCellStyleRed,
    DisplayKitColorButtonCellStyleRed,
    //: DisplayKitColorButtonCellStyleBlue,
    DisplayKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class ScaleButton;

//: @interface DisplayKitColorButtonCell : UITableViewCell
@interface KitView : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) ScaleButton *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface ScaleButton : UIButton

//: @property (nonatomic,assign) DisplayKitColorButtonCellStyle style;
@property (nonatomic,assign) DisplayKitColorButtonCellStyle style;

//: @end
@end
