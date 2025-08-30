// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayCardUserDelegate.h"
#import "DisplayCardUserDelegate.h"

//: @class DisplayAvatarImageView;
@class MemoryImageControl;
//: @protocol DisplayCardHeaderCellDelegate;
@protocol CommentDelegate;



//: @interface DisplayCardHeaderCell : UICollectionViewCell
@interface SwitchenceReusableView : UICollectionViewCell

//: @property (nonatomic,weak) id<DisplayCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<CommentDelegate>delegate;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,readonly) id<DisplayKitCardHeaderData> data;
@property (nonatomic,readonly) id<HalogenComment> data;

//: @property (nonatomic,strong) DisplayAvatarImageView *imageView;
@property (nonatomic,strong) MemoryImageControl *imageView;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: - (void)refreshData:(id<DisplayKitCardHeaderData>)data;
- (void)crop:(id<HalogenComment>)data;

//: @end
@end


//: @protocol DisplayCardHeaderCellDelegate <NSObject>
@protocol CommentDelegate <NSObject>

//: - (void)cellDidSelected:(DisplayCardHeaderCell*)cell;
- (void)withs:(SwitchenceReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(DisplayCardHeaderCell*)cell;
- (void)lines:(SwitchenceReusableView*)cell;

//: @end
@end
