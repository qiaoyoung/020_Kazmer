//
//  USERContactUtilCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USERContactDefines.h"

@protocol USERContactUtilCellDelegate <NSObject>

- (void)onPressUtilImage:(NSString *)content;

@end

@interface USERContactUtilCell : UITableViewCell

@property (nonatomic,weak) id<USERContactUtilCellDelegate> delegate;

- (void)refreshWithContactItem:(id<USERContactItem>)item;

@end
