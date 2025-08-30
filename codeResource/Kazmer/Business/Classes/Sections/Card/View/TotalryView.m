
#import <Foundation/Foundation.h>

@interface SelectedData : NSObject

+ (instancetype)sharedInstance;

//: report_next_select_black
@property (nonatomic, copy) NSString *kTitle_viewMainValue;

//: YES
@property (nonatomic, copy) NSString *kName_rangeValue;

//: #333333
@property (nonatomic, copy) NSString *kName_deviceContentData;

//: #5D5F66
@property (nonatomic, copy) NSString *kTitleStepString;

//: #4B43DE
@property (nonatomic, copy) NSString *kContentStopHideString;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *kContent_onPinValue;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *kNameKnowWithValueTitle;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kName_toolRangeString;

@end

@implementation SelectedData

//: contact_tag_fragment_sure
- (NSString *)kNameKnowWithValueTitle {
    if (!_kNameKnowWithValueTitle) {
		NSArray<NSNumber *> *origin = @[@25, @25, @9, @138, @51, @213, @32, @104, @46, @124, @136, @135, @141, @122, @124, @141, @120, @141, @122, @128, @120, @127, @139, @122, @128, @134, @126, @135, @141, @120, @140, @142, @139, @126, @29];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameKnowWithValueTitle = [self StringFromSelectedData:value];
    }
    return _kNameKnowWithValueTitle;
}

//: report_next_select_black
- (NSString *)kTitle_viewMainValue {
    if (!_kTitle_viewMainValue) {
		NSArray<NSNumber *> *origin = @[@24, @90, @11, @107, @70, @63, @217, @192, @148, @228, @188, @204, @191, @202, @201, @204, @206, @185, @200, @191, @210, @206, @185, @205, @191, @198, @191, @189, @206, @185, @188, @198, @187, @189, @197, @252];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_viewMainValue = [self StringFromSelectedData:value];
    }
    return _kTitle_viewMainValue;
}

//: contact_tag_fragment_cancel
- (NSString *)kName_toolRangeString {
    if (!_kName_toolRangeString) {
		NSArray<NSNumber *> *origin = @[@27, @27, @12, @58, @130, @165, @204, @156, @87, @152, @242, @15, @126, @138, @137, @143, @124, @126, @143, @122, @143, @124, @130, @122, @129, @141, @124, @130, @136, @128, @137, @143, @122, @126, @124, @137, @126, @128, @135, @13];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_toolRangeString = [self StringFromSelectedData:value];
    }
    return _kName_toolRangeString;
}

+ (instancetype)sharedInstance {
    static SelectedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SelectedDataToCache:(Byte *)data {
    int halogen = data[0];
    Byte currentTap = data[1];
    int dataPlace = data[2];
    for (int i = dataPlace; i < dataPlace + halogen; i++) {
        int value = data[i] - currentTap;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[dataPlace + halogen] = 0;
    return data + dataPlace;
}

//: #333333
- (NSString *)kName_deviceContentData {
    if (!_kName_deviceContentData) {
		NSArray<NSNumber *> *origin = @[@7, @43, @6, @109, @22, @70, @78, @94, @94, @94, @94, @94, @94, @217];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_deviceContentData = [self StringFromSelectedData:value];
    }
    return _kName_deviceContentData;
}

+ (NSData *)SelectedDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: YES
- (NSString *)kName_rangeValue {
    if (!_kName_rangeValue) {
		NSArray<NSNumber *> *origin = @[@3, @11, @11, @183, @134, @165, @252, @209, @63, @241, @244, @100, @80, @94, @97];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_rangeValue = [self StringFromSelectedData:value];
    }
    return _kName_rangeValue;
}

//: activity_group_chat_avatar_add_black
- (NSString *)kContent_onPinValue {
    if (!_kContent_onPinValue) {
		NSArray<NSNumber *> *origin = @[@36, @84, @5, @91, @49, @181, @183, @200, @189, @202, @189, @200, @205, @179, @187, @198, @195, @201, @196, @179, @183, @188, @181, @200, @179, @181, @202, @181, @200, @181, @198, @179, @181, @184, @184, @179, @182, @192, @181, @183, @191, @248];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_onPinValue = [self StringFromSelectedData:value];
    }
    return _kContent_onPinValue;
}

//: #4B43DE
- (NSString *)kContentStopHideString {
    if (!_kContentStopHideString) {
		NSArray<NSNumber *> *origin = @[@7, @70, @10, @151, @33, @222, @165, @149, @181, @230, @105, @122, @136, @122, @121, @138, @139, @73];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentStopHideString = [self StringFromSelectedData:value];
    }
    return _kContentStopHideString;
}

//: #5D5F66
- (NSString *)kTitleStepString {
    if (!_kTitleStepString) {
		NSArray<NSNumber *> *origin = @[@7, @86, @10, @101, @16, @238, @112, @250, @124, @74, @121, @139, @154, @139, @156, @140, @140, @136];
		NSData *data = [SelectedData SelectedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleStepString = [self StringFromSelectedData:value];
    }
    return _kTitleStepString;
}

- (NSString *)StringFromSelectedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SelectedDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalryView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "TotalryView.h"

//: @interface ZMONReportBlackView ()
@interface TotalryView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;

//: @end
@end

//: @implementation ZMONReportBlackView
@implementation TotalryView

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [DisplayLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [MakeManager cell:[SelectedData sharedInstance].kContent_onPinValue];
    }
    //: return _titleLabel;
    return _titleLabel;
}


//: - (void)animationShow
- (void)status
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: - (void)initUI{
- (void)initSendIn{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor cell:[SelectedData sharedInstance].kName_deviceContentData];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [DisplayLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [MakeManager cell:[SelectedData sharedInstance].kTitle_viewMainValue];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}


//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}
//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(outsideMedia) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[SelectedData sharedInstance].kNameKnowWithValueTitle] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[SelectedData sharedInstance].kContentStopHideString];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(ingatheringBy) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor cell:[SelectedData sharedInstance].kTitleStepString] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[SelectedData sharedInstance].kName_toolRangeString] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
    }
    //: return _closeBtn;
    return _closeBtn;
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

        //: [self initUI];
        [self initSendIn];

    }
    //: return self;
    return self;
}

//: - (void)handleBlack{
- (void)outsideMedia{

//    __weak typeof(self) wself = self;
//
//        [[NIMSDK sharedSDK].userManager addToBlackList:wself.userID completion:^(NSError *error) {
//
//            if (!error) {
//                [wself makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
//            }else{
//                [wself makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
//
//            }
//        }];
//    [self animationClose];
    //: [self animationClose];
    [self ingatheringBy];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([SelectedData sharedInstance].kName_rangeValue);
}



//: @end
@end
