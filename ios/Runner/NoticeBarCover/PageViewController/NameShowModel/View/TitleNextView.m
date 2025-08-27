
#import <Foundation/Foundation.h>

@interface ResortData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ResortData

+ (instancetype)sharedInstance {
    static ResortData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ResortDataToCache:(Byte *)data {
    int dateGory = data[0];
    int during = data[1];
    for (int i = 0; i < dateGory / 2; i++) {
        int begin = during + i;
        int end = during + dateGory - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[during + dateGory] = 0;
    return data + during;
}

- (NSString *)StringFromResortData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ResortDataToCache:data]];
}  

//: report_Content
- (NSString *)userShowIdent {
    /* static */ NSString *userShowIdent = nil;
    if (!userShowIdent) {
        Byte value[] = {14, 2, 116, 110, 101, 116, 110, 111, 67, 95, 116, 114, 111, 112, 101, 114, 170};
        userShowIdent = [self StringFromResortData:value];
    }
    return userShowIdent;
}

//: icon_accessory_selected
- (NSString *)main_horriblePath {
    /* static */ NSString *main_horriblePath = nil;
    if (!main_horriblePath) {
        Byte value[] = {23, 6, 25, 10, 74, 17, 100, 101, 116, 99, 101, 108, 101, 115, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 253};
        main_horriblePath = [self StringFromResortData:value];
    }
    return main_horriblePath;
}

//: #4B43DE
- (NSString *)k_onMsg {
    /* static */ NSString *k_onMsg = nil;
    if (!k_onMsg) {
        Byte value[] = {7, 2, 69, 68, 51, 52, 66, 52, 35, 113};
        k_onMsg = [self StringFromResortData:value];
    }
    return k_onMsg;
}

//: ic_distrub
- (NSString *)mEvolveName {
    /* static */ NSString *mEvolveName = nil;
    if (!mEvolveName) {
        Byte value[] = {10, 3, 122, 98, 117, 114, 116, 115, 105, 100, 95, 99, 105, 8};
        mEvolveName = [self StringFromResortData:value];
    }
    return mEvolveName;
}

//: icon_accessory_normal
- (NSString *)kPictureStr {
    /* static */ NSString *kPictureStr = nil;
    if (!kPictureStr) {
        Byte value[] = {21, 8, 172, 166, 136, 122, 70, 118, 108, 97, 109, 114, 111, 110, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 252};
        kPictureStr = [self StringFromResortData:value];
    }
    return kPictureStr;
}

//: contact_tag_fragment_cancel
- (NSString *)dreamFreedPath {
    /* static */ NSString *dreamFreedPath = nil;
    if (!dreamFreedPath) {
        Byte value[] = {27, 10, 160, 230, 115, 72, 232, 212, 218, 238, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 158};
        dreamFreedPath = [self StringFromResortData:value];
    }
    return dreamFreedPath;
}

//: contact_tag_fragment_sure
- (NSString *)main_shipStr {
    /* static */ NSString *main_shipStr = nil;
    if (!main_shipStr) {
        Byte value[] = {25, 12, 82, 129, 253, 111, 214, 94, 247, 53, 31, 173, 101, 114, 117, 115, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 92};
        main_shipStr = [self StringFromResortData:value];
    }
    return main_shipStr;
}

//: #FAF8FD
- (NSString *)main_originName {
    /* static */ NSString *main_originName = nil;
    if (!main_originName) {
        Byte value[] = {7, 3, 247, 68, 70, 56, 70, 65, 70, 35, 35};
        main_originName = [self StringFromResortData:value];
    }
    return main_originName;
}

//: report_next_select
- (NSString *)showValueFormat {
    /* static */ NSString *showValueFormat = nil;
    if (!showValueFormat) {
        Byte value[] = {18, 6, 178, 78, 73, 102, 116, 99, 101, 108, 101, 115, 95, 116, 120, 101, 110, 95, 116, 114, 111, 112, 101, 114, 151};
        showValueFormat = [self StringFromResortData:value];
    }
    return showValueFormat;
}

//: activity_group_chat_avatar_add_black
- (NSString *)app_sendKey {
    /* static */ NSString *app_sendKey = nil;
    if (!app_sendKey) {
        Byte value[] = {36, 10, 5, 94, 40, 96, 88, 231, 140, 42, 107, 99, 97, 108, 98, 95, 100, 100, 97, 95, 114, 97, 116, 97, 118, 97, 95, 116, 97, 104, 99, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 67};
        app_sendKey = [self StringFromResortData:value];
    }
    return app_sendKey;
}

//: ic_delete
- (NSString *)noti_shirtMayTitle {
    /* static */ NSString *noti_shirtMayTitle = nil;
    if (!noti_shirtMayTitle) {
        Byte value[] = {9, 9, 241, 75, 164, 59, 49, 153, 150, 101, 116, 101, 108, 101, 100, 95, 99, 105, 142};
        noti_shirtMayTitle = [self StringFromResortData:value];
    }
    return noti_shirtMayTitle;
}

//: #5D5F66
- (NSString *)user_deerData {
    /* static */ NSString *user_deerData = nil;
    if (!user_deerData) {
        Byte value[] = {7, 7, 225, 129, 143, 139, 169, 54, 54, 70, 53, 68, 53, 35, 140};
        user_deerData = [self StringFromResortData:value];
    }
    return user_deerData;
}

//: user_profile_avtivity_remove_friend
- (NSString *)k_shouldMsg {
    /* static */ NSString *k_shouldMsg = nil;
    if (!k_shouldMsg) {
        Byte value[] = {35, 4, 5, 175, 100, 110, 101, 105, 114, 102, 95, 101, 118, 111, 109, 101, 114, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 191};
        k_shouldMsg = [self StringFromResortData:value];
    }
    return k_shouldMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleNextView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "TitleNextView.h"

//: @interface ZMONReportNextView ()
@interface TitleNextView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;
//: @property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *blockView;
//: @property (nonatomic,strong) UIView *deleteView;
@property (nonatomic,strong) UIView *deleteView;

//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;
//: @property (nonatomic,strong) UIButton *btnDelete;
@property (nonatomic,strong) UIButton *btnDelete;

//: @property (nonatomic,strong) NSString *type;
@property (nonatomic,strong) NSString *type;

//: @end
@end

//: @implementation ZMONReportNextView
@implementation TitleNextView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: self.type = @"1";
        self.type = @"1";
        //: [self initUI];
        [self initBubble];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initBubble{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 24;
    _box.layer.cornerRadius = 24;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

//    UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    cloBtn.frame = CGRectMake(SCREEN_WIDTH-50-32, 10, 32, 32);
//    [cloBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//    [cloBtn setImage:[UIImage imageNamed:@"report_close"] forState:UIControlStateNormal];
//    [_box addSubview:cloBtn];

//    //What other steps do you want to take
//    UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-80, 20)];
//    labLabel.font = [UIFont boldSystemFontOfSize:14.f];
//    labLabel.textColor = TextColor_4;
//    labLabel.text = LangKey(@"report_next_select");
//    [_box addSubview:labLabel];

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor min:[[ResortData sharedInstance] user_deerData]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [WatchLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [PaintedNaturalLanguageTo exhibit:[[ResortData sharedInstance] showValueFormat]];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: [_box addSubview:self.deleteView];
    [_box addSubview:self.deleteView];
    //: self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        _titleLabel.text = LangKey(@"report_User");
        //: _titleLabel.text = [WatchLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [PaintedNaturalLanguageTo exhibit:[[ResortData sharedInstance] userShowIdent]];

    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIView *)blockView
- (UIView *)blockView
{
    //: if (!_blockView) {
    if (!_blockView) {
        //: _blockView = [[UIView alloc]init];
        _blockView = [[UIView alloc]init];
        //: _blockView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _blockView.backgroundColor = [UIColor min:[[ResortData sharedInstance] main_originName]];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[[ResortData sharedInstance] mEvolveName]];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor min:[[ResortData sharedInstance] user_deerData]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [WatchLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [PaintedNaturalLanguageTo exhibit:[[ResortData sharedInstance] app_sendKey]];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(pressedTo:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[[ResortData sharedInstance] kPictureStr]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[[ResortData sharedInstance] main_horriblePath]] forState:UIControlStateSelected];
        //: [_blockView addSubview:_btnBlock];
        [_blockView addSubview:_btnBlock];
        //: _btnBlock.selected = YES;
        _btnBlock.selected = YES;
    }
    //: return _blockView;
    return _blockView;
}

//: - (UIView *)deleteView
- (UIView *)deleteView
{
    //: if (!_deleteView) {
    if (!_deleteView) {
        //: _deleteView = [[UIView alloc]init];
        _deleteView = [[UIView alloc]init];
        //: _deleteView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _deleteView.backgroundColor = [UIColor min:[[ResortData sharedInstance] main_originName]];
        //: _deleteView.layer.cornerRadius = 28;
        _deleteView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_delete"];
        img.image = [UIImage imageNamed:[[ResortData sharedInstance] noti_shirtMayTitle]];
        //: [_deleteView addSubview:img];
        [_deleteView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor min:[[ResortData sharedInstance] user_deerData]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [WatchLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        lab.text = [PaintedNaturalLanguageTo exhibit:[[ResortData sharedInstance] k_shouldMsg]];
        //: [_deleteView addSubview:lab];
        [_deleteView addSubview:lab];

        //: _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnDelete addTarget:self action:@selector(showAnimations:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete addTarget:self action:@selector(queryWith:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:[[ResortData sharedInstance] kPictureStr]] forState:UIControlStateNormal];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnDelete setImage:[UIImage imageNamed:[[ResortData sharedInstance] main_horriblePath]] forState:UIControlStateSelected];
        //: [_deleteView addSubview:_btnDelete];
        [_deleteView addSubview:_btnDelete];
    }
    //: return _deleteView;
    return _deleteView;
}

//: - (void)handleBlock:(UIButton *)sender{
- (void)pressedTo:(UIButton *)sender{
    //: self.type = @"1";
    self.type = @"1";
    //: _btnBlock.selected = YES;
    _btnBlock.selected = YES;
    //: _btnDelete.selected = NO;
    _btnDelete.selected = NO;
}
//: - (void)showAnimations:(UIButton *)sender{
- (void)queryWith:(UIButton *)sender{
    //: self.type = @"2";
    self.type = @"2";
//    sender.selected = !sender.selected;
    //: _btnBlock.selected = NO;
    _btnBlock.selected = NO;
    //: _btnDelete.selected = YES;
    _btnDelete.selected = YES;
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
        [_closeBtn setTitleColor:[UIColor min:[[ResortData sharedInstance] user_deerData]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[ResortData sharedInstance] dreamFreedPath]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(rangeOff) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[ResortData sharedInstance] main_shipStr]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _sureBtn.backgroundColor = [UIColor min:[[ResortData sharedInstance] k_onMsg]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleBlack
- (void)systemLoad
{
    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(changeButton)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate changeButton];
    }
}

//: - (void)showAnimation
- (void)sessionAlready
{
    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(touchCell)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate touchCell];
    }

}

//: - (void)handleSubmit
- (void)rangeOff
{
    //: [self animationClose];
    [self impendentImage];
    //: if (self.type.intValue == 1) {
    if (self.type.intValue == 1) {
        //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        if ([self.delegate respondsToSelector:@selector(changeButton)]) {
            //: [self.delegate didTouchBlackButton];
            [self.delegate changeButton];
        }
    //: }else{
    }else{
        //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        if ([self.delegate respondsToSelector:@selector(touchCell)]) {
            //: [self.delegate didTouchDeleteButton];
            [self.delegate touchCell];
        }
    }
}

//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)bringHomeShow
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
