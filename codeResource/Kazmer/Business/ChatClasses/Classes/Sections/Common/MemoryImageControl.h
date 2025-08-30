// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryImageControl.h
// Mortification
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"

//: @interface DisplayAvatarImageView : UIControl
@interface MemoryImageControl : UIControl
//: @property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImage *image;
//: @property (nonatomic,assign) CGFloat cornerRadius;
@property (nonatomic,assign) CGFloat cornerRadius;

//: - (void)setAvatarBySession:(NIMSession *)session;
- (void)setSessionShoot:(NIMSession *)session;
//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)past:(NSURL *)url display:(UIImage *)placeholder;

//: - (void)setAvatarByMessage:(NIMMessage *)message;
- (void)setPin:(NIMMessage *)message;
//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;
- (void)sendWith:(NSURL *)url media:(UIImage *)placeholder doing:(SDWebImageOptions)options;

//: @end
@end
