// __DEBUG__
// __CLOSE_PRINT__
//
//  FindControl.h
// ButtonKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "ThoughtImageControl.h"

//: @class M80AttributedLabel;
@class QuickNameView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFReplyedTextContentView : FFFSessionMessageContentView
@interface FindControl : ThoughtImageControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) QuickNameView *textLabel;
//: @property (nonatomic, strong) UILabel *audioLabel;
@property (nonatomic, strong) UILabel *audioLabel;

//: @property (nonatomic,strong) UILabel *fromUser;
@property (nonatomic,strong) UILabel *fromUser;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIImageView *picView;
@property (nonatomic,strong) UIImageView *picView;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END