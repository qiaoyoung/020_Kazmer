// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldTextView.h
// Mortification
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionMessageContentView.h"
#import "WithTopView.h"

//: @class M80AttributedLabel;
@class LabelNameScrollView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface DisplayReplyedTextContentView : DisplaySessionMessageContentView
@interface ShouldTextView : WithTopView

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) LabelNameScrollView *textLabel;
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
