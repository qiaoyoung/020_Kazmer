
#import <Foundation/Foundation.h>

@interface HandsomeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HandsomeData

+ (instancetype)sharedInstance {
    static HandsomeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HandsomeDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)HandsomeDataToCache:(Byte *)data {
    int cardiovascularSystemApse = data[0];
    Byte headJob = data[1];
    int undignified = data[2];
    for (int i = undignified; i < undignified + cardiovascularSystemApse; i++) {
        int value = data[i] - headJob;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[undignified + cardiovascularSystemApse] = 0;
    return data + undignified;
}

- (NSString *)StringFromHandsomeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HandsomeDataToCache:data]];
}

//: chat_ic_voice_g
- (NSString *)kTitle_playValue {
    /* static */ NSString *kTitle_playValue = nil;
    if (!kTitle_playValue) {
		NSString *origin = @"0f3e06b49327a1a69fb29da7a19db4ada7a1a39da596";
		NSData *data = [HandsomeData HandsomeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_playValue = [self StringFromHandsomeData:value];
    }
    return kTitle_playValue;
}

//: chat_ic_video_g
- (NSString *)kName_paleValue {
    /* static */ NSString *kName_paleValue = nil;
    if (!kName_paleValue) {
		NSString *origin = @"0f1a0d4860cd28d3e9515b78ae7d827b8e79837d7990837e7f897981a9";
		NSData *data = [HandsomeData HandsomeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_paleValue = [self StringFromHandsomeData:value];
    }
    return kName_paleValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterNameView.m
// Mortification
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionRtcCallRecordContentView.h"
#import "CenterNameView.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"

//: @implementation FFFSessionRtcCallRecordContentView
@implementation CenterNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initCrop
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initCrop]) {
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

//: - (void)refresh:(FFFMessageModel *)data {
- (void)from:(CleanDoing *)data {
    //: [super refresh:data];
    [super from:data];
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ManPull *setting = [[Mortification text].config toWith:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [FFFKitUtil messageTipContent:data.message];
    self.textLabel.text = [AtPull view:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:[[HandsomeData sharedInstance] kTitle_playValue]];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:[[HandsomeData sharedInstance] kName_paleValue]];
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
    CGSize contentsize = [self.model size:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end