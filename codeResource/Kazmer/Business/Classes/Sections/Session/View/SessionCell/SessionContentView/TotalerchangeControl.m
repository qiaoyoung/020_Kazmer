
#import <Foundation/Foundation.h>

@interface NammadData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NammadData

+ (instancetype)sharedInstance {
    static NammadData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NammadDataToCache:(Byte *)data {
    int engagementStyle = data[0];
    Byte envelope = data[1];
    int towardsStreak = data[2];
    for (int i = towardsStreak; i < towardsStreak + engagementStyle; i++) {
        int value = data[i] - envelope;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[towardsStreak + engagementStyle] = 0;
    return data + towardsStreak;
}

- (NSString *)StringFromNammadData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NammadDataToCache:data]];
}

//: {18,25,17,25}
- (NSString *)m_viaFatigueFormat {
    /* static */ NSString *m_viaFatigueFormat = nil;
    if (!m_viaFatigueFormat) {
        Byte value[] = {13, 41, 13, 172, 21, 104, 217, 162, 167, 249, 19, 113, 190, 164, 90, 97, 85, 91, 94, 85, 90, 96, 85, 91, 94, 166, 253};
        m_viaFatigueFormat = [self StringFromNammadData:value];
    }
    return m_viaFatigueFormat;
}

//: 聊天记录
- (NSString *)mainParishText {
    /* static */ NSString *mainParishText = nil;
    if (!mainParishText) {
        Byte value[] = {12, 68, 3, 44, 197, 206, 41, 232, 237, 44, 242, 244, 41, 1, 217, 11};
        mainParishText = [self StringFromNammadData:value];
    }
    return mainParishText;
}

//: SendTextViewBkg
- (NSString *)mLoserTitle {
    /* static */ NSString *mLoserTitle = nil;
    if (!mLoserTitle) {
        Byte value[] = {15, 40, 8, 255, 199, 145, 102, 253, 123, 141, 150, 140, 124, 141, 160, 156, 126, 145, 141, 159, 106, 147, 143, 10};
        mLoserTitle = [self StringFromNammadData:value];
    }
    return mLoserTitle;
}

//: null
- (NSString *)show_heavyData {
    /* static */ NSString *show_heavyData = nil;
    if (!show_heavyData) {
        Byte value[] = {4, 77, 8, 166, 160, 158, 123, 111, 187, 194, 185, 185, 115};
        show_heavyData = [self StringFromNammadData:value];
    }
    return show_heavyData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalerchangeControl.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMultiRetweetContentView.h"
#import "TotalerchangeControl.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ShowImageEvent.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"

//: NSString *const NIMDemoEventNameOpenMergeMessage = @"NIMDemoEventNameOpenMergeMessage";
NSString *const showCenterId = @"NIMDemoEventNameOpenMergeMessage";

//: @interface NTESSessionMultiRetweetContentView ()
@interface TotalerchangeControl ()

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSMutableArray <M80AttributedLabel *> *messageLabs;
@property (nonatomic, strong) NSMutableArray <QuickNameView *> *messageLabs;

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UIImage *bkNormalImage;
@property (nonatomic, strong) UIImage *bkNormalImage;

//: @property (nonatomic, strong) UIButton *touchBtn;
@property (nonatomic, strong) UIButton *touchBtn;

//: @end
@end

//: @implementation NTESSessionMultiRetweetContentView
@implementation TotalerchangeControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
    //: if (self) {
    if (self) {
        //: static UIImage *bkNormalImage = nil;
        static UIImage *bkNormalImage = nil;
        //: static dispatch_once_t onceToken;
        static dispatch_once_t onceToken;
        //: _dispatch_once(&onceToken, ^{
        _dispatch_once(&onceToken, ^{
            //: bkNormalImage = [[UIImage imageNamed:@"SendTextViewBkg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            bkNormalImage = [[UIImage imageNamed:[[NammadData sharedInstance] mLoserTitle]] resizableImageWithCapInsets:UIEdgeInsetsFromString([[NammadData sharedInstance] m_viaFatigueFormat]) resizingMode:UIImageResizingModeStretch];
        //: });
        });
        //: _bkNormalImage = bkNormalImage;
        _bkNormalImage = bkNormalImage;
        //: _messageLabs = [NSMutableArray array];
        _messageLabs = [NSMutableArray array];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.line];
        [self addSubview:self.line];
        //: [self addSubview:self.subTitleLabel];
        [self addSubview:self.subTitleLabel];
        //: [self addSubview:self.touchBtn];
        [self addSubview:self.touchBtn];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)lengthAt:(CentralProcessingUnitModel *)data{
    //: [super refresh:data];
    [super lengthAt:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESMultiRetweetAttachment *attachment = (NTESMultiRetweetAttachment *)object.attachment;
    ShowImageEvent *attachment = (ShowImageEvent *)object.attachment;

    //: [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: [_messageLabs removeAllObjects];
    [_messageLabs removeAllObjects];

    //: _titleLabel.text = [attachment formatTitleMessage];
    _titleLabel.text = [attachment byPressed];

    //: for (NTESMessageAbstract *abstract in attachment.abstracts) {
    for (NameAbstract *abstract in attachment.abstracts) {
        //: M80AttributedLabel *lab = [self setupMessageLabel];
        QuickNameView *lab = [self sharedLength];
        //: [lab nim_setText:[attachment formatAbstractMessage:abstract]];
        [lab stay:[attachment pathView:abstract]];
        //: [_messageLabs addObject:lab];
        [_messageLabs addObject:lab];
        //: [self addSubview:lab];
        [self addSubview:lab];
    }
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing {
- (UIImage *)upPage:(UIControlState)state accountVisualisation:(BOOL)outgoing {
    //: return _bkNormalImage;
    return _bkNormalImage;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat inset = 12.0;
    CGFloat inset = 12.0;
    //: _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    //: if (_messageLabs.count != 0) {
    if (_messageLabs.count != 0) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: __block CGFloat yOffset = 0;
        __block CGFloat yOffset = 0;
        //: [_messageLabs enumerateObjectsUsingBlock:^(M80AttributedLabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_messageLabs enumerateObjectsUsingBlock:^(QuickNameView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            //: obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            //: yOffset += (obj.height + padding);
            yOffset += (obj.height + padding);
        //: }];
        }];
        //: M80AttributedLabel *lastLab = [_messageLabs lastObject];
        QuickNameView *lastLab = [_messageLabs lastObject];
        //: _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
    //: } else {
    } else {
        //: _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
    }
    //: _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    //: _touchBtn.frame = self.bounds;
    _touchBtn.frame = self.bounds;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)touchAction:(UIButton *)sender {
- (void)drafted:(UIButton *)sender {
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(modelled:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        CoverShowEvent *event = [[CoverShowEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenMergeMessage;
        event.eventName = showCenterId;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate modelled:event];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        //: _titleLabel.text = @"null";
        _titleLabel.text = [[NammadData sharedInstance] show_heavyData];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: [_titleLabel sizeToFit];
        [_titleLabel sizeToFit];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)subTitleLabel {
- (UILabel *)subTitleLabel {
    //: if (!_subTitleLabel) {
    if (!_subTitleLabel) {
        //: _subTitleLabel = [self setupContentLabel];
        _subTitleLabel = [self numericalTotal];
        //: _subTitleLabel.text = @"聊天记录".ntes_localized;
        _subTitleLabel.text = [[NammadData sharedInstance] mainParishText].textIndex;
        //: [_subTitleLabel sizeToFit];
        [_subTitleLabel sizeToFit];
    }
    //: return _subTitleLabel;
    return _subTitleLabel;
}

//: - (UIButton *)touchBtn {
- (UIButton *)touchBtn {
    //: if (!_touchBtn) {
    if (!_touchBtn) {
        //: _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_touchBtn addTarget:self action:@selector(touchAction:) forControlEvents:UIControlEventTouchUpInside];
        [_touchBtn addTarget:self action:@selector(drafted:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _touchBtn;
    return _touchBtn;
}


//: - (UILabel *)setupContentLabel {
- (UILabel *)numericalTotal {
    //: UILabel *ret = [[UILabel alloc] init];
    UILabel *ret = [[UILabel alloc] init];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.textAlignment = NSTextAlignmentLeft;
    ret.textAlignment = NSTextAlignmentLeft;
    //: ret.text = @"null";
    ret.text = [[NammadData sharedInstance] show_heavyData];
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: [ret sizeToFit];
    [ret sizeToFit];
    //: return ret;
    return ret;
}

//: - (M80AttributedLabel *)setupMessageLabel {
- (QuickNameView *)sharedLength {
    //: M80AttributedLabel *ret = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    QuickNameView *ret = [[QuickNameView alloc] initWithFrame:CGRectZero];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.numberOfLines = 1;
    ret.numberOfLines = 1;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: return ret;
    return ret;
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor lightGrayColor];
        _line.backgroundColor = [UIColor lightGrayColor];
    }
    //: return _line;
    return _line;
}
//: @end
@end