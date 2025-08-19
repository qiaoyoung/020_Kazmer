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
#import "ButtonKit.h"
//: #import "WatchCardDataSourceProtocol.h"
#import "WatchCardDataSourceProtocol.h"

//: @class WatchAvatarImageView;
@class RecordControl;
//: @protocol WatchCardHeaderCellDelegate;
@protocol NumericalCountRed;



//: @interface WatchCardHeaderCell : UICollectionViewCell
@interface RecentFrameReusableView : UICollectionViewCell

//: @property (nonatomic,strong) WatchAvatarImageView *imageView;
@property (nonatomic,strong) RecordControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<WatchCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<NumericalCountRed>delegate;

//: @property (nonatomic,readonly) id<WatchKitCardHeaderData> data;
@property (nonatomic,readonly) id<WatchKitCardHeaderData> data;

//: - (void)refreshData:(id<WatchKitCardHeaderData>)data;
- (void)accountingData:(id<WatchKitCardHeaderData>)data;

//: @end
@end


//: @protocol WatchCardHeaderCellDelegate <NSObject>
@protocol NumericalCountRed <NSObject>

//: - (void)cellDidSelected:(WatchCardHeaderCell*)cell;
- (void)timeTitle:(RecentFrameReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(WatchCardHeaderCell*)cell;
- (void)willed:(RecentFrameReusableView*)cell;

//: @end
@end
