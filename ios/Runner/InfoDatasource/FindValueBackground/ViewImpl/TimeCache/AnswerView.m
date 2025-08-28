
#import <Foundation/Foundation.h>

typedef struct {
    Byte boostAttractive;
    Byte *nuclearIsolate;
    unsigned int haveApparently;
	int remindEngine;
	int onEnable;
} StructTubeData;

@interface TubeData : NSObject

@end

@implementation TubeData

+ (Byte *)TubeDataToByte:(StructTubeData *)data {
    for (int i = 0; i < data->haveApparently; i++) {
        data->nuclearIsolate[i] ^= data->boostAttractive;
    }
    data->nuclearIsolate[data->haveApparently] = 0;
	if (data->haveApparently >= 2) {
		data->remindEngine = data->nuclearIsolate[0];
		data->onEnable = data->nuclearIsolate[1];
	}
    return data->nuclearIsolate;
}

+ (NSString *)StringFromTubeData:(StructTubeData *)data {
    return [NSString stringWithUTF8String:(char *)[self TubeDataToByte:data]];
}

//: B391FF
+ (NSString *)mAirTitle {
    /* static */ NSString *mAirTitle = nil;
    if (!mAirTitle) {
        StructTubeData value = (StructTubeData){197, (Byte []){135, 246, 252, 244, 131, 131, 109}, 6, 236, 84};
        mAirTitle = [self StringFromTubeData:&value];
    }
    return mAirTitle;
}

//: #fffWatch
+ (NSString *)dreamTourShowTitle {
    /* static */ NSString *dreamTourShowTitle = nil;
    if (!dreamTourShowTitle) {
        StructTubeData value = (StructTubeData){87, (Byte []){116, 49, 49, 49, 49, 49, 49, 101}, 7, 254, 8};
        dreamTourShowTitle = [self StringFromTubeData:&value];
    }
    return dreamTourShowTitle;
}

//: #2B2F36
+ (NSString *)mainHaveName {
    /* static */ NSString *mainHaveName = nil;
    if (!mainHaveName) {
        StructTubeData value = (StructTubeData){193, (Byte []){226, 243, 131, 243, 135, 242, 247, 250}, 7, 207, 203};
        mainHaveName = [self StringFromTubeData:&value];
    }
    return mainHaveName;
}

//: F6F7FA
+ (NSString *)showNuclearMsg {
    /* static */ NSString *showNuclearMsg = nil;
    if (!showNuclearMsg) {
        StructTubeData value = (StructTubeData){174, (Byte []){232, 152, 232, 153, 232, 239, 72}, 6, 29, 192};
        showNuclearMsg = [self StringFromTubeData:&value];
    }
    return showNuclearMsg;
}

//: icon_reply_close
+ (NSString *)dreamCrowContent {
    /* static */ NSString *dreamCrowContent = nil;
    if (!dreamCrowContent) {
        StructTubeData value = (StructTubeData){32, (Byte []){73, 67, 79, 78, 127, 82, 69, 80, 76, 89, 127, 67, 76, 79, 83, 69, 39}, 16, 174, 9};
        dreamCrowContent = [self StringFromTubeData:&value];
    }
    return dreamCrowContent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  AnswerView.m
// ButtonKit
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchReplyContentView.h"
#import "AnswerView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+ButtonKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"

//: @interface WatchReplyContentView ()
@interface AnswerView ()

//: @end
@end

//: @implementation WatchReplyContentView
@implementation AnswerView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
        self.backgroundColor = [UIColor min:[TubeData dreamTourShowTitle]];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor min:[TubeData showNuclearMsg]];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor min:[TubeData mAirTitle]];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor min:[TubeData mainHaveName]];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:[TubeData dreamCrowContent]]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)clinic
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)pressed:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(earliering:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate earliering:sender];
    }
}

//: @end
@end
