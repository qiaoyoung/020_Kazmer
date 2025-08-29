// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorCancelCompartmentViewCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFCommonTableViewCell.h"
#import "ImageCell.h"

//: typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
    //: ColorButtonCellStyleRed,
    ColorButtonCellStyleRed,
    //: ColorButtonCellStyleBlue,
    ColorButtonCellStyleBlue,
//: };
};

//: @class USERColorButton;
@class AmbagesControl;

//: @interface USERColorButtonCell : UITableViewCell<FFFCommonTableViewCell>
@interface ColorCancelCompartmentViewCell : UITableViewCell<ImageCell>

//: @property (nonatomic,strong) USERColorButton *button;
@property (nonatomic,strong) AmbagesControl *button;

//: @end
@end



//: @interface USERColorButton : UIButton
@interface AmbagesControl : UIButton

//: @property (nonatomic,assign) ColorButtonCellStyle style;
@property (nonatomic,assign) ColorButtonCellStyle style;

//: @end
@end