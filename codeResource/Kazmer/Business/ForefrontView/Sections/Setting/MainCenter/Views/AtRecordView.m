
#import <Foundation/Foundation.h>

typedef struct {
    Byte monthText;
    Byte *important;
    unsigned int nimItemName;
	int fileScale;
	int sunlight;
} StructStudData;

@interface StudData : NSObject

@end

@implementation StudData

+ (Byte *)StudDataToByte:(StructStudData *)data {
    for (int i = 0; i < data->nimItemName; i++) {
        data->important[i] ^= data->monthText;
    }
    data->important[data->nimItemName] = 0;
	if (data->nimItemName >= 2) {
		data->fileScale = data->important[0];
		data->sunlight = data->important[1];
	}
    return data->important;
}

//: ic_camera
+ (NSString *)kContent_chickStopString {
    /* static */ NSString *kContent_chickStopString = nil;
    if (!kContent_chickStopString) {
        StructStudData value = (StructStudData){41, (Byte []){64, 74, 118, 74, 72, 68, 76, 91, 72, 12}, 9, 38, 70};
        kContent_chickStopString = [self StringFromStudData:&value];
    }
    return kContent_chickStopString;
}

//: #fffDisplay
+ (NSString *)kTitle_onItemValue {
    /* static */ NSString *kTitle_onItemValue = nil;
    if (!kTitle_onItemValue) {
        StructStudData value = (StructStudData){21, (Byte []){54, 115, 115, 115, 115, 115, 115, 4}, 7, 159, 57};
        kTitle_onItemValue = [self StringFromStudData:&value];
    }
    return kTitle_onItemValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)kTitleSunlightString {
    /* static */ NSString *kTitleSunlightString = nil;
    if (!kTitleSunlightString) {
        StructStudData value = (StructStudData){136, (Byte []){235, 231, 230, 252, 233, 235, 252, 215, 252, 233, 239, 215, 238, 250, 233, 239, 229, 237, 230, 252, 215, 235, 233, 230, 235, 237, 228, 103}, 27, 228, 120};
        kTitleSunlightString = [self StringFromStudData:&value];
    }
    return kTitleSunlightString;
}

+ (NSString *)StringFromStudData:(StructStudData *)data {
    return [NSString stringWithUTF8String:(char *)[self StudDataToByte:data]];
}

//: #F7D2F3
+ (NSString *)kNameMagnitudeelligenceString {
    /* static */ NSString *kNameMagnitudeelligenceString = nil;
    if (!kNameMagnitudeelligenceString) {
        StructStudData value = (StructStudData){215, (Byte []){244, 145, 224, 147, 229, 145, 228, 29}, 7, 174, 22};
        kNameMagnitudeelligenceString = [self StringFromStudData:&value];
    }
    return kNameMagnitudeelligenceString;
}

//: message_send_camera
+ (NSString *)kText_foreignerValue {
    /* static */ NSString *kText_foreignerValue = nil;
    if (!kText_foreignerValue) {
        StructStudData value = (StructStudData){121, (Byte []){20, 28, 10, 10, 24, 30, 28, 38, 10, 28, 23, 29, 38, 26, 24, 20, 28, 11, 24, 226}, 19, 136, 240};
        kText_foreignerValue = [self StringFromStudData:&value];
    }
    return kText_foreignerValue;
}

//: #CCECFC
+ (NSString *)kNameMolePlaceSculptureText {
    /* static */ NSString *kNameMolePlaceSculptureText = nil;
    if (!kNameMolePlaceSculptureText) {
        StructStudData value = (StructStudData){214, (Byte []){245, 149, 149, 147, 149, 144, 149, 253}, 7, 98, 141};
        kNameMolePlaceSculptureText = [self StringFromStudData:&value];
    }
    return kNameMolePlaceSculptureText;
}

//: #5D5F66
+ (NSString *)kName_imageShowTitle {
    /* static */ NSString *kName_imageShowTitle = nil;
    if (!kName_imageShowTitle) {
        StructStudData value = (StructStudData){211, (Byte []){240, 230, 151, 230, 149, 229, 229, 151}, 7, 82, 171};
        kName_imageShowTitle = [self StringFromStudData:&value];
    }
    return kName_imageShowTitle;
}

//: ic_album
+ (NSString *)kTextShallowViewValue {
    /* static */ NSString *kTextShallowViewValue = nil;
    if (!kTextShallowViewValue) {
        StructStudData value = (StructStudData){234, (Byte []){131, 137, 181, 139, 134, 136, 159, 135, 132}, 8, 131, 65};
        kTextShallowViewValue = [self StringFromStudData:&value];
    }
    return kTextShallowViewValue;
}

//: #000000
+ (NSString *)kTitleViewVitaminString {
    /* static */ NSString *kTitleViewVitaminString = nil;
    if (!kTitleViewVitaminString) {
        StructStudData value = (StructStudData){189, (Byte []){158, 141, 141, 141, 141, 141, 141, 140}, 7, 181, 9};
        kTitleViewVitaminString = [self StringFromStudData:&value];
    }
    return kTitleViewVitaminString;
}

//: message_send_album
+ (NSString *)kText_recordData {
    /* static */ NSString *kText_recordData = nil;
    if (!kText_recordData) {
        StructStudData value = (StructStudData){108, (Byte []){1, 9, 31, 31, 13, 11, 9, 51, 31, 9, 2, 8, 51, 13, 0, 14, 25, 1, 250}, 18, 87, 40};
        kText_recordData = [self StringFromStudData:&value];
    }
    return kText_recordData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtRecordView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "AtRecordView.h"

//: @interface NSSetAvater ()
@interface AtRecordView ()

//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
//: @property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cancelBtn;
//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *albumBtn;

//: @end
@end

//: @implementation NSSetAvater
@implementation AtRecordView

//: - (UIButton *)albumBtn {
- (UIButton *)albumBtn {
    //: if (!_albumBtn) {
    if (!_albumBtn) {
        //: _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _albumBtn.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        _albumBtn.backgroundColor = [UIColor cell:[StudData kNameMolePlaceSculptureText]];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(atsed:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:[StudData kTextShallowViewValue]];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor cell:[StudData kTitleViewVitaminString]];
        //: lab.text = [DisplayLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [MakeManager cell:[StudData kText_recordData]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_albumBtn addSubview:lab];
        [_albumBtn addSubview:lab];

//        _albumBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_albumBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_albumBtn setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
//        [_albumBtn setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
////        [_albumBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _albumBtn.tag = 102;
//        _albumBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_albumBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_albumBtn setImageEdgeInsets:UIEdgeInsetsMake(-24, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _albumBtn;
    return _albumBtn;
}


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(ingatheringBy)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initInfo];

    }
    //: return self;
    return self;
}

//: - (void)initUI{
- (void)initInfo{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
    _viewBg.backgroundColor = [UIColor cell:[StudData kTitle_onItemValue]];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.cornerRadius = 40;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;

    //: [_viewBg addSubview:self.cameraBtn];
    [_viewBg addSubview:self.cameraBtn];
    //: self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);

    //: [_viewBg addSubview:self.albumBtn];
    [_viewBg addSubview:self.albumBtn];
    //: self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);

    //: [_viewBg addSubview:self.cancelBtn];
    [_viewBg addSubview:self.cancelBtn];
    //: self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)value:(NSInteger)Font item:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}

//: - (void)animationShow
- (void)animationTitleShow
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: - (UIButton *)cameraBtn {
- (UIButton *)cameraBtn {
    //: if (!_cameraBtn) {
    if (!_cameraBtn) {
        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_cameraBtn setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
//        _cameraBtn.tag = 101;
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
////        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:0];
//        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F4F1EC");
//        _cameraBtn.layer.cornerRadius = 20;
//        _cameraBtn.layer.masksToBounds = YES;

        //: _cameraBtn.tag = 101;
        _cameraBtn.tag = 101;
        //: _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        _cameraBtn.backgroundColor = [UIColor cell:[StudData kNameMagnitudeelligenceString]];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(atsed:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:[StudData kContent_chickStopString]];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor cell:[StudData kTitleViewVitaminString]];
        //: lab.text = [DisplayLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [MakeManager cell:[StudData kText_foreignerValue]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_cameraBtn addSubview:lab];
        [_cameraBtn addSubview:lab];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_cameraBtn setTitle:@"Camera" forState:UIControlStateNormal];
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
//        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _cameraBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_cameraBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_cameraBtn setImageEdgeInsets:UIEdgeInsetsMake(-20, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _cameraBtn;
    return _cameraBtn;
}

//: - (UIButton *)cancelBtn {
- (UIButton *)cancelBtn {
    //: if (!_cancelBtn) {
    if (!_cancelBtn) {
        //: _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_cancelBtn addTarget:self action:@selector(ingatheringBy) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor cell:[StudData kName_imageShowTitle]] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[MakeManager cell:[StudData kTitleSunlightString]] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
        _cancelBtn.backgroundColor = [UIColor cell:[StudData kTitle_onItemValue]];
        //: _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.cornerRadius = 22;
        //: _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.masksToBounds = YES;
        //: _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderWidth = 1;
        //: _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    //: return _cancelBtn;
    return _cancelBtn;
}

//: - (void)clickTheBtn:(UIButton *)sender
- (void)atsed:(UIButton *)sender
{
    //: [self animationClose];
    [self ingatheringBy];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(bubbleWith:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate bubbleWith:sender.tag];
    }

}

//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}


//: @end
@end
