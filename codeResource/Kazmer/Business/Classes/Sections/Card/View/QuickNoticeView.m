
#import <Foundation/Foundation.h>

typedef struct {
    Byte regnant;
    Byte *pot;
    unsigned int educational;
	int viewSurgery;
} StructIronedData;

@interface IronedData : NSObject

+ (instancetype)sharedInstance;

//: YES
@property (nonatomic, copy) NSString *showPointId;

//: #4B43DE
@property (nonatomic, copy) NSString *notiPowerValue;

//: report_next_select_black
@property (nonatomic, copy) NSString *appBubbleStr;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *user_nameMessage;

//: #5D5F66
@property (nonatomic, copy) NSString *k_pressedName;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *notiTableKeyData;

//: #333333
@property (nonatomic, copy) NSString *dream_nameIdent;

//: activity_group_chat_avatar_add_black
@property (nonatomic, copy) NSString *showTextKey;

@end

@implementation IronedData

+ (instancetype)sharedInstance {
    static IronedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)IronedDataToByte:(StructIronedData *)data {
    for (int i = 0; i < data->educational; i++) {
        data->pot[i] ^= data->regnant;
    }
    data->pot[data->educational] = 0;
	if (data->educational >= 1) {
		data->viewSurgery = data->pot[0];
	}
    return data->pot;
}

- (NSString *)StringFromIronedData:(StructIronedData *)data {
    return [NSString stringWithUTF8String:(char *)[self IronedDataToByte:data]];
}

//: #333333
- (NSString *)dream_nameIdent {
    if (!_dream_nameIdent) {
        StructIronedData value = (StructIronedData){163, (Byte []){128, 144, 144, 144, 144, 144, 144, 118}, 7, 156};
        _dream_nameIdent = [self StringFromIronedData:&value];
    }
    return _dream_nameIdent;
}

//: contact_tag_fragment_sure
- (NSString *)user_nameMessage {
    if (!_user_nameMessage) {
        StructIronedData value = (StructIronedData){22, (Byte []){117, 121, 120, 98, 119, 117, 98, 73, 98, 119, 113, 73, 112, 100, 119, 113, 123, 115, 120, 98, 73, 101, 99, 100, 115, 159}, 25, 212};
        _user_nameMessage = [self StringFromIronedData:&value];
    }
    return _user_nameMessage;
}

//: report_next_select_black
- (NSString *)appBubbleStr {
    if (!_appBubbleStr) {
        StructIronedData value = (StructIronedData){87, (Byte []){37, 50, 39, 56, 37, 35, 8, 57, 50, 47, 35, 8, 36, 50, 59, 50, 52, 35, 8, 53, 59, 54, 52, 60, 128}, 24, 41};
        _appBubbleStr = [self StringFromIronedData:&value];
    }
    return _appBubbleStr;
}

//: contact_tag_fragment_cancel
- (NSString *)notiTableKeyData {
    if (!_notiTableKeyData) {
        StructIronedData value = (StructIronedData){188, (Byte []){223, 211, 210, 200, 221, 223, 200, 227, 200, 221, 219, 227, 218, 206, 221, 219, 209, 217, 210, 200, 227, 223, 221, 210, 223, 217, 208, 89}, 27, 90};
        _notiTableKeyData = [self StringFromIronedData:&value];
    }
    return _notiTableKeyData;
}

//: YES
- (NSString *)showPointId {
    if (!_showPointId) {
        StructIronedData value = (StructIronedData){208, (Byte []){137, 149, 131, 67}, 3, 254};
        _showPointId = [self StringFromIronedData:&value];
    }
    return _showPointId;
}

//: activity_group_chat_avatar_add_black
- (NSString *)showTextKey {
    if (!_showTextKey) {
        StructIronedData value = (StructIronedData){219, (Byte []){186, 184, 175, 178, 173, 178, 175, 162, 132, 188, 169, 180, 174, 171, 132, 184, 179, 186, 175, 132, 186, 173, 186, 175, 186, 169, 132, 186, 191, 191, 132, 185, 183, 186, 184, 176, 104}, 36, 110};
        _showTextKey = [self StringFromIronedData:&value];
    }
    return _showTextKey;
}

//: #4B43DE
- (NSString *)notiPowerValue {
    if (!_notiPowerValue) {
        StructIronedData value = (StructIronedData){14, (Byte []){45, 58, 76, 58, 61, 74, 75, 16}, 7, 27};
        _notiPowerValue = [self StringFromIronedData:&value];
    }
    return _notiPowerValue;
}

//: #5D5F66
- (NSString *)k_pressedName {
    if (!_k_pressedName) {
        StructIronedData value = (StructIronedData){201, (Byte []){234, 252, 141, 252, 143, 255, 255, 123}, 7, 117};
        _k_pressedName = [self StringFromIronedData:&value];
    }
    return _k_pressedName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickNoticeView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "QuickNoticeView.h"

//: @interface ZMONReportBlackView ()
@interface QuickNoticeView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONReportBlackView
@implementation QuickNoticeView

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
        [self initSubExtra];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initSubExtra{
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
    labsubLabel.textColor = [UIColor min:[IronedData sharedInstance].dream_nameIdent];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [WatchLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [PaintedNaturalLanguageTo exhibit:[IronedData sharedInstance].appBubbleStr];
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

//: - (void)handleBlack{
- (void)systemLoad{

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
    [self impendentImage];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([IronedData sharedInstance].showPointId);
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
        //: _titleLabel.text = [WatchLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:[IronedData sharedInstance].showTextKey];
    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(impendentImage) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor min:[IronedData sharedInstance].k_pressedName] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[IronedData sharedInstance].notiTableKeyData] forState:UIControlStateNormal];
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

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(systemLoad) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[IronedData sharedInstance].user_nameMessage] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[IronedData sharedInstance].notiPowerValue];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)ignoreApp
{
    //: self.hidden = NO;
    self.hidden = NO;

}



//: @end
@end
