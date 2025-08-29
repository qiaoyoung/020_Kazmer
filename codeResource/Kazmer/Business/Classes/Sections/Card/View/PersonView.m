
#import <Foundation/Foundation.h>

@interface MajorLeagueClubData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MajorLeagueClubData

//: contact_tag_fragment_cancel
- (NSString *)kTitle_rangeString {
    /* static */ NSString *kTitle_rangeString = nil;
    if (!kTitle_rangeString) {
		NSString *origin = @"1B17056C037A86858B787A8B768B787E767D89787E847C858B767A78857A7C8325";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_rangeString = [self StringFromMajorLeagueClubData:value];
    }
    return kTitle_rangeString;
}

//: user_profile_avtivity_remove_friend
- (NSString *)kContentFrameString {
    /* static */ NSString *kContentFrameString = nil;
    if (!kContentFrameString) {
		NSString *origin = @"23100590E4858375826F80827F76797C756F71868479867984896F82757D7F86756F768279757E7493";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentFrameString = [self StringFromMajorLeagueClubData:value];
    }
    return kContentFrameString;
}

- (NSString *)StringFromMajorLeagueClubData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MajorLeagueClubDataToCache:data]];
}

//: #4B43DE
- (NSString *)kTitle_nimData {
    /* static */ NSString *kTitle_nimData = nil;
    if (!kTitle_nimData) {
		NSString *origin = @"074009B77227CDE59A6374827473848587";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_nimData = [self StringFromMajorLeagueClubData:value];
    }
    return kTitle_nimData;
}

//: #5D5F66
- (NSString *)kTitleTapName {
    /* static */ NSString *kTitleTapName = nil;
    if (!kTitleTapName) {
		NSString *origin = @"075704F27A8C9B8C9D8D8D47";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleTapName = [self StringFromMajorLeagueClubData:value];
    }
    return kTitleTapName;
}

//: YES
- (NSString *)kName_modelString {
    /* static */ NSString *kName_modelString = nil;
    if (!kName_modelString) {
		NSString *origin = @"0304061ACE805D495729";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_modelString = [self StringFromMajorLeagueClubData:value];
    }
    return kName_modelString;
}

//: report_next_select_delete
- (NSString *)kName_normalString {
    /* static */ NSString *kName_normalString = nil;
    if (!kName_normalString) {
		NSString *origin = @"19360B7FF9405F55FDF791A89BA6A5A8AA95A49BAEAA95A99BA29B99AA959A9BA29BAA9BEB";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_normalString = [self StringFromMajorLeagueClubData:value];
    }
    return kName_normalString;
}

+ (instancetype)sharedInstance {
    static MajorLeagueClubData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: #333333
- (NSString *)kTextModelDetailString {
    /* static */ NSString *kTextModelDetailString = nil;
    if (!kTextModelDetailString) {
		NSString *origin = @"07350C44BD5D8B01A47580D3586868686868682B";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextModelDetailString = [self StringFromMajorLeagueClubData:value];
    }
    return kTextModelDetailString;
}

- (Byte *)MajorLeagueClubDataToCache:(Byte *)data {
    int titleFrameValue = data[0];
    Byte playTool = data[1];
    int progressValue = data[2];
    for (int i = progressValue; i < progressValue + titleFrameValue; i++) {
        int value = data[i] - playTool;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[progressValue + titleFrameValue] = 0;
    return data + progressValue;
}

//: delete
- (NSString *)kTitleRecordName {
    /* static */ NSString *kTitleRecordName = nil;
    if (!kTitleRecordName) {
		NSString *origin = @"065D0509BEC1C2C9C2D1C248";
		NSData *data = [MajorLeagueClubData MajorLeagueClubDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRecordName = [self StringFromMajorLeagueClubData:value];
    }
    return kTitleRecordName;
}

+ (NSData *)MajorLeagueClubDataToData:(NSString *)value {
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

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PersonView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "PersonView.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"

//: @interface ZMONReportDeleteView ()
@interface PersonView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @end
@end

//: @implementation ZMONReportDeleteView
@implementation PersonView

//: - (void)showAnimation
- (void)rangeShould
{
    //: [self animationClose];
    [self ingatheringBy];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([[MajorLeagueClubData sharedInstance] kName_modelString]);
}


//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(rangeShould) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[[MajorLeagueClubData sharedInstance] kTitleRecordName]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor cell:[[MajorLeagueClubData sharedInstance] kTitle_nimData]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
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
        [self initFrom];

    }
    //: return self;
    return self;
}


//: - (void)animationShow
- (void)anyKeyShow
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}

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
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [MakeManager cell:[[MajorLeagueClubData sharedInstance] kContentFrameString]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (void)initUI{
- (void)initFrom{
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
    labsubLabel.textColor = [UIColor cell:[[MajorLeagueClubData sharedInstance] kTextModelDetailString]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [MakeManager cell:[[MajorLeagueClubData sharedInstance] kName_normalString]];
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
        [_closeBtn setTitleColor:[UIColor cell:[[MajorLeagueClubData sharedInstance] kTitleTapName]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[[MajorLeagueClubData sharedInstance] kTitle_rangeString]] forState:UIControlStateNormal];
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

//: @end
@end