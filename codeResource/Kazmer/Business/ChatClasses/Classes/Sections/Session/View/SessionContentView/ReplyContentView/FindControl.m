
#import <Foundation/Foundation.h>

@interface PublicViolenceData : NSObject

@end

@implementation PublicViolenceData

+ (Byte *)PublicViolenceDataToCache:(Byte *)data {
    int flying = data[0];
    Byte curApe = data[1];
    int heavyTemp = data[2];
    for (int i = heavyTemp; i < heavyTemp + flying; i++) {
        int value = data[i] - curApe;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[heavyTemp + flying] = 0;
    return data + heavyTemp;
}

+ (NSString *)StringFromPublicViolenceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PublicViolenceDataToCache:data]];
}

//: AUDIO
+ (NSString *)show_peaceMessage {
    /* static */ NSString *show_peaceMessage = nil;
    if (!show_peaceMessage) {
        Byte value[] = {5, 2, 6, 56, 248, 247, 67, 87, 70, 75, 81, 177};
        show_peaceMessage = [self StringFromPublicViolenceData:value];
    }
    return show_peaceMessage;
}

//: userName
+ (NSString *)user_formatMsg {
    /* static */ NSString *user_formatMsg = nil;
    if (!user_formatMsg) {
        Byte value[] = {8, 14, 12, 151, 132, 238, 244, 190, 218, 57, 102, 112, 131, 129, 115, 128, 92, 111, 123, 115, 244};
        user_formatMsg = [self StringFromPublicViolenceData:value];
    }
    return user_formatMsg;
}

//: type
+ (NSString *)m_isolationChainText {
    /* static */ NSString *m_isolationChainText = nil;
    if (!m_isolationChainText) {
        Byte value[] = {4, 8, 12, 187, 20, 102, 135, 71, 237, 73, 113, 99, 124, 129, 120, 109, 171};
        m_isolationChainText = [self StringFromPublicViolenceData:value];
    }
    return m_isolationChainText;
}

//: reply
+ (NSString *)mainHappinessFormatText {
    /* static */ NSString *mainHappinessFormatText = nil;
    if (!mainHappinessFormatText) {
        Byte value[] = {5, 57, 11, 231, 68, 131, 238, 126, 209, 195, 134, 171, 158, 169, 165, 178, 89};
        mainHappinessFormatText = [self StringFromPublicViolenceData:value];
    }
    return mainHappinessFormatText;
}

//: icon_receiver_voice_playing_003
+ (NSString *)show_survivalData {
    /* static */ NSString *show_survivalData = nil;
    if (!show_survivalData) {
        Byte value[] = {31, 14, 7, 8, 161, 34, 133, 119, 113, 125, 124, 109, 128, 115, 113, 115, 119, 132, 115, 128, 109, 132, 125, 119, 113, 115, 109, 126, 122, 111, 135, 119, 124, 117, 109, 62, 62, 65, 213};
        show_survivalData = [self StringFromPublicViolenceData:value];
    }
    return show_survivalData;
}

//: IMAGE
+ (NSString *)show_nowherePoolPath {
    /* static */ NSString *show_nowherePoolPath = nil;
    if (!show_nowherePoolPath) {
        Byte value[] = {5, 48, 5, 171, 233, 121, 125, 113, 119, 117, 47};
        show_nowherePoolPath = [self StringFromPublicViolenceData:value];
    }
    return show_nowherePoolPath;
}

//: TEXT
+ (NSString *)mDifferenceIdent {
    /* static */ NSString *mDifferenceIdent = nil;
    if (!mDifferenceIdent) {
        Byte value[] = {4, 8, 3, 92, 77, 96, 92, 254};
        mDifferenceIdent = [self StringFromPublicViolenceData:value];
    }
    return mDifferenceIdent;
}

//: 5D5F66
+ (NSString *)userMobileData {
    /* static */ NSString *userMobileData = nil;
    if (!userMobileData) {
        Byte value[] = {6, 36, 4, 152, 89, 104, 89, 106, 90, 90, 163};
        userMobileData = [self StringFromPublicViolenceData:value];
    }
    return userMobileData;
}

//: VIDEO
+ (NSString *)appMealFormat {
    /* static */ NSString *appMealFormat = nil;
    if (!appMealFormat) {
        Byte value[] = {5, 54, 11, 234, 202, 254, 117, 79, 107, 110, 66, 140, 127, 122, 123, 133, 201};
        appMealFormat = [self StringFromPublicViolenceData:value];
    }
    return appMealFormat;
}

//: #F6F7FA
+ (NSString *)k_meaningStr {
    /* static */ NSString *k_meaningStr = nil;
    if (!k_meaningStr) {
        Byte value[] = {7, 5, 11, 62, 193, 232, 87, 5, 142, 198, 101, 40, 75, 59, 75, 60, 75, 70, 251};
        k_meaningStr = [self StringFromPublicViolenceData:value];
    }
    return k_meaningStr;
}

//: content
+ (NSString *)userOrganismStr {
    /* static */ NSString *userOrganismStr = nil;
    if (!userOrganismStr) {
        Byte value[] = {7, 62, 12, 254, 197, 246, 183, 113, 206, 65, 226, 248, 161, 173, 172, 178, 163, 172, 178, 62};
        userOrganismStr = [self StringFromPublicViolenceData:value];
    }
    return userOrganismStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindControl.m
// ButtonKit
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchReplyedTextContentView.h"
#import "FindControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "QuickNameView+ButtonKit.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface WatchReplyedTextContentView ()<M80AttributedLabelDelegate>
@interface FindControl ()<PlaceMax>
//: @end
@end

//: @implementation WatchReplyedTextContentView
@implementation FindControl

//: - (instancetype)initSessionMessageContentView {
- (instancetype)initSumView {
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];

    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor min:[PublicViolenceData k_meaningStr]];
    //: self.layer.cornerRadius = 8;
    self.layer.cornerRadius = 8;
    //: self.layer.masksToBounds = YES;
    self.layer.masksToBounds = YES;

    //: return self;
    return self;
}

//: - (void)refresh:(WatchMessageModel *)data {
- (void)lengthAt:(CentralProcessingUnitModel *)data {
    //: [super refresh:data];
    [super lengthAt:data];

    //: if ([data.message.remoteExt.allKeys containsObject:@"reply"])
    if ([data.message.remoteExt.allKeys containsObject:[PublicViolenceData mainHappinessFormatText]])
    {
        //        NSDictionary *dic = @{
        //                @"type": type,//type:TEXT、IMAGE、VIDEO
        //                @"content": contents,//content:文本内容、图片url、视频url
        //                @"userName": info.showName,//消息发送者
        //                @"messageid": @"",//messageid：留着备用
        //        };
        //: NSDictionary *dic = [data.message.remoteExt objectForKey:@"reply"];
        NSDictionary *dic = [data.message.remoteExt objectForKey:[PublicViolenceData mainHappinessFormatText]];
        //: NSString *content = [dic objectForKey:@"content"];
        NSString *content = [dic objectForKey:[PublicViolenceData userOrganismStr]];
        //: NSString *userName = [dic objectForKey:@"userName"];
        NSString *userName = [dic objectForKey:[PublicViolenceData user_formatMsg]];
        //: NSString *type = [dic objectForKey:@"type"];
        NSString *type = [dic objectForKey:[PublicViolenceData m_isolationChainText]];

        //: UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        //: CGFloat tableViewWidth = self.superview.width;
        CGFloat tableViewWidth = self.superview.width;
        //: CGSize contentsize = [self.model replyContentSize:tableViewWidth];
        CGSize contentsize = [self.model button:tableViewWidth];

        //: self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        //: if([type isEqualToString:@"TEXT"]){
        if([type isEqualToString:[PublicViolenceData mDifferenceIdent]]){
//            self.textLabel.text = content;
            //: [self.textLabel nim_setText:content];
            [self.textLabel stay:content];
            //: self.textLabel.hidden = NO;
            self.textLabel.hidden = NO;
            //: self.picView.hidden = YES;
            self.picView.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;

            //: CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            //: self.fromUser.frame = userFrame;
            self.fromUser.frame = userFrame;

            //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            //: self.textLabel.frame = labelFrame;
            self.textLabel.frame = labelFrame;

//            self.fromUser.left =   contentInsets.left;
//            self.label.left =   contentInsets.left;

        //: }else if([type isEqualToString:@"IMAGE"]){
        }else if([type isEqualToString:[PublicViolenceData show_nowherePoolPath]]){
//            self.textLabel.text = @"[图片]".nim_localized;

//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);
            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
//            [self.fromUser sizeToFit]; // 再次调整高度

//            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            //: self.picView.frame = picFrame;
            self.picView.frame = picFrame;



        //: }else if([type isEqualToString:@"VIDEO"]){
        }else if([type isEqualToString:[PublicViolenceData appMealFormat]]){
            //            self.textLabel.text = @"[图片]".nim_localized;
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
//            [self.fromUser sizeToFit]; // 再次调整高度

            //            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);

                        //: self.picView.hidden = NO;
                        self.picView.hidden = NO;
                        //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        //: self.picView.frame = picFrame;
                        self.picView.frame = picFrame;

        }
        //: else if([type isEqualToString:@"AUDIO"]){
        else if([type isEqualToString:[PublicViolenceData show_peaceMessage]]){
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.text = content;
            self.audioLabel.text = content;
//            [self.textLabel nim_setText:content];
            //: self.audioLabel.hidden = NO;
            self.audioLabel.hidden = NO;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
            self.picView.image = [UIImage imageNamed:[PublicViolenceData show_survivalData]];
//                       if(data.shouldShowLeft){
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
//                       }else{
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w_003"];
//                       }

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 50;
            //: CGFloat maxWidth = 70;
            CGFloat maxWidth = 70;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            //: self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            //: self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
            self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
        }

    }

    //: WatchKitSetting *setting = [[MyUserKit sharedKit].config repliedSetting:data.message];
    SubObject *setting = [[ButtonKit sheerOption].config empty:data.message];
    //: self.textLabel.textColor = setting.replyedTextColor;
    self.textLabel.textColor = setting.replyedTextColor;
    //: self.textLabel.font = setting.replyedFont;
    self.textLabel.font = setting.replyedFont;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
//    
//    CGFloat tableViewWidth = self.superview.nim_width;
//    CGSize contentsize = [self.model replyContentSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;
}

//: - (UILabel *)audioLabel
- (UILabel *)audioLabel
{
    //: if (!_audioLabel)
    if (!_audioLabel)
    {
        //: _audioLabel = [[UILabel alloc]init];
        _audioLabel = [[UILabel alloc]init];
        //: _audioLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _audioLabel.textColor = [UIColor min:[PublicViolenceData userMobileData]];
        //: _audioLabel.font = [UIFont systemFontOfSize:12];
        _audioLabel.font = [UIFont systemFontOfSize:12];
        //: _audioLabel.hidden = YES;
        _audioLabel.hidden = YES;
        //: [self addSubview:_audioLabel];
        [self addSubview:_audioLabel];
    }

    //: return _audioLabel;
    return _audioLabel;
}

//: - (UIImageView *)picView
- (UIImageView *)picView
{
    //: if(!_picView){
    if(!_picView){
        //: _picView = [[UIImageView alloc]init];
        _picView = [[UIImageView alloc]init];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: _picView.hidden = YES;
        _picView.hidden = YES;
        //: [self addSubview:_picView];
        [self addSubview:_picView];
    }
    //: return _picView;
    return _picView;
}

//: - (UILabel *)fromUser
- (UILabel *)fromUser
{
    //: if(!_fromUser){
    if(!_fromUser){
        //: _fromUser = [[UILabel alloc]init];
        _fromUser = [[UILabel alloc]init];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _fromUser.textColor = [UIColor min:[PublicViolenceData userMobileData]];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [self addSubview:_fromUser];
        [self addSubview:_fromUser];
    }
    //: return _fromUser;
    return _fromUser;
}

//: - (M80AttributedLabel *)textLabel
- (QuickNameView *)textLabel
{
    //: if (!_textLabel)
    if (!_textLabel)
    {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[QuickNameView alloc] initWithFrame:CGRectZero];
        //: _textLabel.M80delegate = self;
        _textLabel.M80delegate = self;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
//        _textLabel.textColor = [UIColor grayColor];
        //: _textLabel.font = [UIFont systemFontOfSize:13];
        _textLabel.font = [UIFont systemFontOfSize:13];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];
    }

    //: return _textLabel;
    return _textLabel;
}
//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - PlaceMax
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)image:(QuickNameView *)label
             //: clickedOnLink:(id)linkData{
             center:(id)linkData{
    //: WatchKitEvent *event = [[WatchKitEvent alloc] init];
    CoverShowEvent *event = [[CoverShowEvent alloc] init];
    //: event.eventName = WatchKitEventNameTapLabelLink;
    event.eventName = dream_topMessage;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate modelled:event];
}


//: - (void)onTouchUpInside:(id)sender
- (void)searched:(id)sender
{
//    CoverShowEvent *event = [[CoverShowEvent alloc] init];
//    event.eventName = WatchKitEventNameTapRepliedContent;
//    event.messageModel = self.model;
//    [self.delegate onCatchEvent:event];
}

//: - (void)onTouchDown:(id)sender
- (void)views:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)events:(id)sender{

}
//: @end
@end
