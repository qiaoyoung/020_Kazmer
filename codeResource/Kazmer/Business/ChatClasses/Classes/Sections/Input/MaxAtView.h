// __DEBUG__
// __CLOSE_PRINT__
//
//  USERInputMoreContainerView.h
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "DisplaySessionConfig.h"
#import "ColorConfig.h"
//: #import "DisplayInputProtocol.h"
#import "DisplayInputProtocol.h"
//: #import "CustomAlbumPickerView.h"
#import "TargetReplyView.h"

//: @protocol moreCustomPickerViewDelegate <NSObject>
@protocol moreCustomPickerViewDelegate <NSObject>

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)users:(NSArray<PHAsset *> *)assets;

//: @end
@end

//: @interface DisplayInputMoreContainerView : UIView
@interface MaxAtView : UIView

//: @property (nonatomic,weak) id<DisplaySessionConfig> config;
@property (nonatomic,weak) id<ColorConfig> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<PullDelegate> actionDelegate;

//: @property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;
@property (nonatomic, strong) TargetReplyView *albumPickerView;

//: @property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;
@property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;

//: @end
@end
