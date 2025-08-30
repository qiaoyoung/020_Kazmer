// __DEBUG__
// __CLOSE_PRINT__
//
//  BookView.h
// Mortification
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "M80AttributedLabel.h"
#import "LabelNameScrollView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol DisplayReplyContentViewDelegate <NSObject>
@protocol RepayShouldComment <NSObject>

//: @optional
@optional
//: - (void)onClearReplyContent:(id)sender;
- (void)vanguards:(id)sender;

//: @end
@end

//: @interface DisplayReplyContentView : UIView
@interface BookView : UIView

//: @property (nonatomic,strong) UIButton *closeButton;
@property (nonatomic,strong) UIButton *closeButton;

//: @property (nonatomic,strong) UIView *divider;
@property (nonatomic,strong) UIView *divider;

//: @property (nonatomic,strong) UILabel *fromUser;
@property (nonatomic,strong) UILabel *fromUser;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIImageView *picView;
@property (nonatomic,strong) UIImageView *picView;

//: @property (nonatomic,strong) NIMMessage *replymessage;
@property (nonatomic,strong) NIMMessage *replymessage;

//: @property (nonatomic,weak) id<DisplayReplyContentViewDelegate> delegate;
@property (nonatomic,weak) id<RepayShouldComment> delegate;

//: - (void)dismiss;
- (void)titleBy;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
