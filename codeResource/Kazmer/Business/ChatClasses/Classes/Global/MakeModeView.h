// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeModeView.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, WatchKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, WatchKitColorButtonCellStyle){
    //: WatchKitColorButtonCellStyleRed,
    WatchKitColorButtonCellStyleRed,
    //: WatchKitColorButtonCellStyleBlue,
    WatchKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class FixingButton;

//: @interface WatchKitColorButtonCell : UITableViewCell
@interface MakeModeView : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) FixingButton *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface FixingButton : UIButton

//: @property (nonatomic,assign) WatchKitColorButtonCellStyle style;
@property (nonatomic,assign) WatchKitColorButtonCellStyle style;

//: @end
@end
