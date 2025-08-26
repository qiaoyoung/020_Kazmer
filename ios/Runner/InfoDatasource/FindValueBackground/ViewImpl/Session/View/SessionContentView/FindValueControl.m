
#import <Foundation/Foundation.h>

@interface PartData : NSObject

+ (instancetype)sharedInstance;

//: chat_ic_video_g
@property (nonatomic, copy) NSString *mainDareManDoctrineValue;

//: chat_ic_voice_g
@property (nonatomic, copy) NSString *userLotsFormat;

@end

@implementation PartData

+ (instancetype)sharedInstance {
    static PartData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PartDataToCache:(Byte *)data {
    int aggressive = data[0];
    Byte ethic = data[1];
    int between = data[2];
    for (int i = between; i < between + aggressive; i++) {
        int value = data[i] - ethic;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[between + aggressive] = 0;
    return data + between;
}

- (NSString *)StringFromPartData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PartDataToCache:data]];
}

//: chat_ic_voice_g
- (NSString *)userLotsFormat {
    if (!_userLotsFormat) {
        Byte value[] = {15, 80, 3, 179, 184, 177, 196, 175, 185, 179, 175, 198, 191, 185, 179, 181, 175, 183, 30};
        _userLotsFormat = [self StringFromPartData:value];
    }
    return _userLotsFormat;
}

//: chat_ic_video_g
- (NSString *)mainDareManDoctrineValue {
    if (!_mainDareManDoctrineValue) {
        Byte value[] = {15, 90, 11, 136, 72, 156, 129, 234, 249, 195, 205, 189, 194, 187, 206, 185, 195, 189, 185, 208, 195, 190, 191, 201, 185, 193, 71};
        _mainDareManDoctrineValue = [self StringFromPartData:value];
    }
    return _mainDareManDoctrineValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindValueControl.m
// ButtonKit
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchSessionRtcCallRecordContentView.h"
#import "FindValueControl.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "WatchKitUtil.h"
#import "ObjectUtil.h"

//: @implementation WatchSessionRtcCallRecordContentView
@implementation FindValueControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initSumView
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initSumView]) {
        //: _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 1;
        _textLabel.numberOfLines = 1;
        //: _textLabel.backgroundColor = UIColor.clearColor;
        _textLabel.backgroundColor = UIColor.clearColor;
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _icImage = [[UIImageView alloc]init];
        _icImage = [[UIImageView alloc]init];
        //: [self addSubview:_icImage];
        [self addSubview:_icImage];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(WatchMessageModel *)data {
- (void)lengthAt:(CentralProcessingUnitModel *)data {
    //: [super refresh:data];
    [super lengthAt:data];
    //: WatchKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SubObject *setting = [[ButtonKit sheerOption].config date:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [WatchKitUtil messageTipContent:data.message];
    self.textLabel.text = [ObjectUtil complete:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:[PartData sharedInstance].userLotsFormat];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:[PartData sharedInstance].mainDareManDoctrineValue];
    }

//    */
//   typedef NS_ENUM(NSInteger, NIMNetCallType){
//       /**
//        *  音频通话
//        */
//       NIMNetCallTypeAudio = 1,
//       /**
//        *  视频通话
//        */
//       NIMNetCallTypeVideo = 2,
//   };

}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.frame.size.width;
    CGFloat tableViewWidth = self.superview.frame.size.width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model indicator:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end
