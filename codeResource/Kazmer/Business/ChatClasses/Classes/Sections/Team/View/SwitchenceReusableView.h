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
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @class FFFAvatarImageView;
@class MemoryImageControl;
//: @protocol FFFCardHeaderCellDelegate;
@protocol CommentDelegate;



//: @interface FFFCardHeaderCell : UICollectionViewCell
@interface SwitchenceReusableView : UICollectionViewCell

//: @property (nonatomic,weak) id<FFFCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<CommentDelegate>delegate;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,readonly) id<FFFKitCardHeaderData> data;
@property (nonatomic,readonly) id<HalogenComment> data;

//: @property (nonatomic,strong) FFFAvatarImageView *imageView;
@property (nonatomic,strong) MemoryImageControl *imageView;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data;
- (void)crop:(id<HalogenComment>)data;

//: @end
@end


//: @protocol FFFCardHeaderCellDelegate <NSObject>
@protocol CommentDelegate <NSObject>

//: - (void)cellDidSelected:(FFFCardHeaderCell*)cell;
- (void)withs:(SwitchenceReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell;
- (void)lines:(SwitchenceReusableView*)cell;

//: @end
@end