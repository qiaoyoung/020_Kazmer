
#import <Foundation/Foundation.h>

@interface QuantityCropCountData : NSObject

+ (instancetype)sharedInstance;

//: head_default
@property (nonatomic, copy) NSString *appKeyMsg;

//: head_default_group
@property (nonatomic, copy) NSString *dreamSuccessStr;

//: #999999
@property (nonatomic, copy) NSString *appCloseValue;

//: activity_qrcode_scan_me
@property (nonatomic, copy) NSString *user_nameMediaFormat;

//: group_info_activity_update_failed
@property (nonatomic, copy) NSString *k_manMessage;

//: group_info_activity_update_success
@property (nonatomic, copy) NSString *mainMediaValue;

//: ic_share
@property (nonatomic, copy) NSString *user_imagePath;

//: back_arrow_bl
@property (nonatomic, copy) NSString *appStateContent;

//: #DCCCFF
@property (nonatomic, copy) NSString *m_messageId;

//: ic_down
@property (nonatomic, copy) NSString *user_manKey;

//: common_bg
@property (nonatomic, copy) NSString *kPowerColorName;

//: #4B43DE
@property (nonatomic, copy) NSString *notiSuccessQuickText;

@end

@implementation QuantityCropCountData

+ (instancetype)sharedInstance {
    static QuantityCropCountData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)QuantityCropCountDataToCache:(Byte *)data {
    int commentTitle = data[0];
    Byte imageDate = data[1];
    int along = data[2];
    for (int i = along; i < along + commentTitle; i++) {
        int value = data[i] - imageDate;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[along + commentTitle] = 0;
    return data + along;
}

- (NSString *)StringFromQuantityCropCountData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self QuantityCropCountDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)appStateContent {
    if (!_appStateContent) {
        Byte value[] = {13, 63, 5, 154, 206, 161, 160, 162, 170, 158, 160, 177, 177, 174, 182, 158, 161, 171, 102};
        _appStateContent = [self StringFromQuantityCropCountData:value];
    }
    return _appStateContent;
}

//: #DCCCFF
- (NSString *)m_messageId {
    if (!_m_messageId) {
        Byte value[] = {7, 82, 12, 106, 161, 6, 160, 123, 139, 10, 15, 139, 117, 150, 149, 149, 149, 152, 152, 216};
        _m_messageId = [self StringFromQuantityCropCountData:value];
    }
    return _m_messageId;
}

//: common_bg
- (NSString *)kPowerColorName {
    if (!_kPowerColorName) {
        Byte value[] = {9, 28, 3, 127, 139, 137, 137, 139, 138, 123, 126, 131, 210};
        _kPowerColorName = [self StringFromQuantityCropCountData:value];
    }
    return _kPowerColorName;
}

//: activity_qrcode_scan_me
- (NSString *)user_nameMediaFormat {
    if (!_user_nameMediaFormat) {
        Byte value[] = {23, 19, 13, 140, 92, 225, 121, 23, 194, 36, 110, 74, 247, 116, 118, 135, 124, 137, 124, 135, 140, 114, 132, 133, 118, 130, 119, 120, 114, 134, 118, 116, 129, 114, 128, 120, 158};
        _user_nameMediaFormat = [self StringFromQuantityCropCountData:value];
    }
    return _user_nameMediaFormat;
}

//: #4B43DE
- (NSString *)notiSuccessQuickText {
    if (!_notiSuccessQuickText) {
        Byte value[] = {7, 18, 6, 10, 13, 126, 53, 70, 84, 70, 69, 86, 87, 6};
        _notiSuccessQuickText = [self StringFromQuantityCropCountData:value];
    }
    return _notiSuccessQuickText;
}

//: group_info_activity_update_failed
- (NSString *)k_manMessage {
    if (!_k_manMessage) {
        Byte value[] = {33, 25, 10, 125, 26, 139, 210, 6, 22, 184, 128, 139, 136, 142, 137, 120, 130, 135, 127, 136, 120, 122, 124, 141, 130, 143, 130, 141, 146, 120, 142, 137, 125, 122, 141, 126, 120, 127, 122, 130, 133, 126, 125, 127};
        _k_manMessage = [self StringFromQuantityCropCountData:value];
    }
    return _k_manMessage;
}

//: head_default_group
- (NSString *)dreamSuccessStr {
    if (!_dreamSuccessStr) {
        Byte value[] = {18, 20, 9, 131, 212, 239, 197, 251, 41, 124, 121, 117, 120, 115, 120, 121, 122, 117, 137, 128, 136, 115, 123, 134, 131, 137, 132, 47};
        _dreamSuccessStr = [self StringFromQuantityCropCountData:value];
    }
    return _dreamSuccessStr;
}

//: head_default
- (NSString *)appKeyMsg {
    if (!_appKeyMsg) {
        Byte value[] = {12, 85, 3, 189, 186, 182, 185, 180, 185, 186, 187, 182, 202, 193, 201, 210};
        _appKeyMsg = [self StringFromQuantityCropCountData:value];
    }
    return _appKeyMsg;
}

//: ic_share
- (NSString *)user_imagePath {
    if (!_user_imagePath) {
        Byte value[] = {8, 29, 4, 147, 134, 128, 124, 144, 133, 126, 143, 130, 137};
        _user_imagePath = [self StringFromQuantityCropCountData:value];
    }
    return _user_imagePath;
}

//: ic_down
- (NSString *)user_manKey {
    if (!_user_manKey) {
        Byte value[] = {7, 41, 6, 42, 82, 223, 146, 140, 136, 141, 152, 160, 151, 47};
        _user_manKey = [self StringFromQuantityCropCountData:value];
    }
    return _user_manKey;
}

//: #999999
- (NSString *)appCloseValue {
    if (!_appCloseValue) {
        Byte value[] = {7, 12, 12, 66, 198, 223, 182, 3, 95, 180, 24, 38, 47, 69, 69, 69, 69, 69, 69, 83};
        _appCloseValue = [self StringFromQuantityCropCountData:value];
    }
    return _appCloseValue;
}

//: group_info_activity_update_success
- (NSString *)mainMediaValue {
    if (!_mainMediaValue) {
        Byte value[] = {34, 88, 12, 139, 10, 64, 58, 172, 255, 210, 164, 109, 191, 202, 199, 205, 200, 183, 193, 198, 190, 199, 183, 185, 187, 204, 193, 206, 193, 204, 209, 183, 205, 200, 188, 185, 204, 189, 183, 203, 205, 187, 187, 189, 203, 203, 89};
        _mainMediaValue = [self StringFromQuantityCropCountData:value];
    }
    return _mainMediaValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/15.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserQRCodeViewController.h"
#import "SizeViewController.h"
//: #import "LCQRCodeUtil.h"
#import "UserTo.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "NTESShareCardAttachment.h"
#import "KeyAttachment.h"
//: #import "ZOMNForwardViewController.h"
#import "EmptyViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "BackgroundCover.h"

//: @interface NTESUserQRCodeViewController ()
@interface SizeViewController ()

//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *downBtn;
@property (nonatomic,strong) UIButton *downBtn;
//: @property (nonatomic,strong) UIButton *shareBtn;
@property (nonatomic,strong) UIButton *shareBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @end
@end

//: @implementation NTESUserQRCodeViewController
@implementation SizeViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)gotoBack:(id)sender {
- (void)skullSessionAdd:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[QuantityCropCountData sharedInstance].kPowerColorName];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice tingHeight], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(skullSessionAdd:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[QuantityCropCountData sharedInstance].appStateContent] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

//    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
//    labNavtitle.textColor = [UIColor blackColor];
//    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
//    labNavtitle.text = LangKey(@"qrcode_activity_title");
//    labNavtitle.textAlignment = NSTextAlignmentCenter;
//    [navview addSubview:labNavtitle];

    //: [self initUI];
    [self initBy];
}

//: -(void)initUI{
-(void)initBy{

    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: UIImage *defImg = [UIImage imageNamed:@"head_default"];
    UIImage *defImg = [UIImage imageNamed:[QuantityCropCountData sharedInstance].appKeyMsg];
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: defImg = [UIImage imageNamed:@"head_default_group"];
        defImg = [UIImage imageNamed:[QuantityCropCountData sharedInstance].dreamSuccessStr];
    //: }else{
    }else{
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        //: name = user.userInfo.nickName;
        name = user.userInfo.nickName;
        //: avater = user.userInfo.avatarUrl;
        avater = user.userInfo.avatarUrl;

    }



    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice vg_statusBarHeight])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice tingHeight])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#DCCCFF"];
    contentView.backgroundColor = [UIColor min:[QuantityCropCountData sharedInstance].m_messageId];
    //: contentView.layer.cornerRadius = 32;
    contentView.layer.cornerRadius = 32;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [contentView addSubview:self.iconImageView];
    [contentView addSubview:self.iconImageView];
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:avater] placeholderImage:defImg];
    //: self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, -40, 100, 100);
    self.iconImageView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, -40, 100, 100);

    //: [contentView addSubview:self.titleLabel];
    [contentView addSubview:self.titleLabel];
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
    //: self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, self.iconImageView.bottom+12, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-284)/2, self.titleLabel.bottom+20, 244, 244)];
    UIView *qrView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-284)/2, self.titleLabel.bottom+20, 244, 244)];
    //: [contentView addSubview:qrView];
    [contentView addSubview:qrView];
    //: qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    qrView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    qrView.layer.borderWidth = 1;
//    qrView.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: qrView.layer.cornerRadius = 32;
    qrView.layer.cornerRadius = 32;
//    qrView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    qrView.layer.shadowOffset = CGSizeMake(0,3);
//    qrView.layer.shadowOpacity = 1;
//    qrView.layer.shadowRadius = 0;

    //: UIImage *qrImage = [LCQRCodeUtil createQRimageString:_userID sizeWidth:220 fillColor:[UIColor blackColor]];
    UIImage *qrImage = [UserTo scan:_userID past:220 change:[UIColor blackColor]];
    //: UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    UIImageView *qrImageView = [[UIImageView alloc] initWithFrame:CGRectMake(12, 12, 220, 220)];
    //: qrImageView.image = qrImage;
    qrImageView.image = qrImage;
    //: [qrView addSubview:qrImageView];
    [qrView addSubview:qrImageView];

    //: UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, qrView.bottom+10, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: contentLabel.font = [UIFont systemFontOfSize:12];
    contentLabel.font = [UIFont systemFontOfSize:12];
    //: contentLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    contentLabel.textColor = [UIColor min:[QuantityCropCountData sharedInstance].appCloseValue];
    //: contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    //: contentLabel.text = [FFFLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
    contentLabel.text = [PaintedNaturalLanguageTo exhibit:[QuantityCropCountData sharedInstance].user_nameMediaFormat];//@"扫描二维码，加我为好友";
    //: [contentView addSubview:contentLabel];
    [contentView addSubview:contentLabel];

//    CGFloat width = (SCREEN_WIDTH-60)/2;
//    [self.view addSubview:self.shareBtn];
//    self.shareBtn.frame = CGRectMake(20, contentView.bottom+20, width, 48);
    //: [self.view addSubview:self.downBtn];
    [self.view addSubview:self.downBtn];
    //: self.downBtn.frame = CGRectMake(20, contentView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    self.downBtn.frame = CGRectMake(20, contentView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);

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
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 50;
        _iconImageView.layer.cornerRadius = 50;
        //: _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        //: _iconImageView.layer.borderWidth = 1;
        _iconImageView.layer.borderWidth = 1;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}



//: - (UIButton *)downBtn {
- (UIButton *)downBtn {
    //: if (!_downBtn) {
    if (!_downBtn) {
        //: _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_downBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_downBtn addTarget:self action:@selector(replyEnable) forControlEvents:UIControlEventTouchUpInside];
        //: [_downBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        [_downBtn setImage:[UIImage imageNamed:[QuantityCropCountData sharedInstance].user_manKey] forState:UIControlStateNormal];
        //: _downBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _downBtn.backgroundColor = [UIColor min:[QuantityCropCountData sharedInstance].notiSuccessQuickText];
        //: _downBtn.layer.cornerRadius = 24;
        _downBtn.layer.cornerRadius = 24;

    }
    //: return _downBtn;
    return _downBtn;
}
//: - (UIButton *)shareBtn {
- (UIButton *)shareBtn {
    //: if (!_shareBtn) {
    if (!_shareBtn) {
        //: _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_shareBtn addTarget:self action:@selector(shareQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_shareBtn addTarget:self action:@selector(toImage) forControlEvents:UIControlEventTouchUpInside];
        //: [_shareBtn setImage:[UIImage imageNamed:@"ic_share"] forState:UIControlStateNormal];
        [_shareBtn setImage:[UIImage imageNamed:[QuantityCropCountData sharedInstance].user_imagePath] forState:UIControlStateNormal];
        //: _shareBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _shareBtn.backgroundColor = [UIColor min:[QuantityCropCountData sharedInstance].notiSuccessQuickText];
        //: _shareBtn.layer.cornerRadius = 24;
        _shareBtn.layer.cornerRadius = 24;

    }
    //: return _shareBtn;
    return _shareBtn;
}

//: - (void)shareQcImage
- (void)toImage
{
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: type = @"1";
        type = @"1";
    //: }else{
    }else{
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:_userID];
        //: name = user.userInfo.nickName;
        name = user.userInfo.nickName;
        //: avater = user.userInfo.avatarUrl;
        avater = user.userInfo.avatarUrl;
        //: type = @"0";
        type = @"0";
    }

    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    KeyAttachment *attachment = [[KeyAttachment alloc] init];
    //: attachment.title = name;
    attachment.title = name;
    //: attachment.type = type;
    attachment.type = type;
    //: attachment.personCardId = self.userID;
    attachment.personCardId = self.userID;
    //: attachment.content = self.userID;
    attachment.content = self.userID;
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [BackgroundCover white:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    EmptyViewController *vc = [[EmptyViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)saveQcImage{
-(void)replyEnable{

    //: CGFloat f = [UIScreen mainScreen].scale;
    CGFloat f = [UIScreen mainScreen].scale;
    //: CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    //: UIImage *image = [self takeScreenshot:rect];
    UIImage *image = [self backLabelScreenshot:rect];

    //: [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
    [[PHPhotoLibrary sharedPhotoLibrary]performChanges:^{
          //: [PHAssetChangeRequest creationRequestForAssetFromImage:image];
          [PHAssetChangeRequest creationRequestForAssetFromImage:image];
      //: } completionHandler:^(BOOL success, NSError * _Nullable error) {
      } completionHandler:^(BOOL success, NSError * _Nullable error) {
          //: if (error) {
          if (error) {
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: NSString *failed = [FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
                  NSString *failed = [PaintedNaturalLanguageTo exhibit:[QuantityCropCountData sharedInstance].k_manMessage];//@"保存失败"
                  //: [SVProgressHUD showMessage:failed];
                  [SVProgressHUD index:failed];
              //: });
              });
          //: } else {
          } else {
              //: NSString *success = [FFFLanguageManager getTextWithKey:@"group_info_activity_update_success"];
              NSString *success = [PaintedNaturalLanguageTo exhibit:[QuantityCropCountData sharedInstance].mainMediaValue];//保存成功
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: [SVProgressHUD showMessage:success];
                  [SVProgressHUD index:success];
              //: });
              });
          }
      //: }];
      }];
}

//: -(UIImage *)takeScreenshot:(CGRect)rect{
-(UIImage *)backLabelScreenshot:(CGRect)rect{

    //: UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height), YES, 0);
    //设置截屏大小
    //: [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    [[self.view layer] renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: CGImageRef imageRef = viewImage.CGImage;
    CGImageRef imageRef = viewImage.CGImage;
    //CGRect rect = CGRectMake(0, 0, 300, 300);//这里可以设置想要截图的区域
    //: CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    //: UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    //: CGImageRelease(imageRefRect);
    CGImageRelease(imageRefRect);
    //: return sendImage;
    return sendImage;


}

//: @end
@end