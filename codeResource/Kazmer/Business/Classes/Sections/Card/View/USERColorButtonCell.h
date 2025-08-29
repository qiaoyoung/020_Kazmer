//
//  USERColorButtonCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFCommonTableViewCell.h"

typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
    ColorButtonCellStyleRed,
    ColorButtonCellStyleBlue,
};

@class USERColorButton;

@interface USERColorButtonCell : UITableViewCell<FFFCommonTableViewCell>

@property (nonatomic,strong) USERColorButton *button;

@end



@interface USERColorButton : UIButton

@property (nonatomic,assign) ColorButtonCellStyle style;

@end
