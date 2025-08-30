
#import <Foundation/Foundation.h>

@interface AtData : NSObject

+ (instancetype)sharedInstance;

//: #999999
@property (nonatomic, copy) NSString *kNameColorString;

//: head_default
@property (nonatomic, copy) NSString *kTitle_tapString;

//: #DCCCFF
@property (nonatomic, copy) NSString *kNamePlayValue;

//: group_info_activity_update_failed
@property (nonatomic, copy) NSString *kNameStepData;

//: ic_share
@property (nonatomic, copy) NSString *kText_showValue;

//: common_bg
@property (nonatomic, copy) NSString *kNameViewValue;

//: ic_down
@property (nonatomic, copy) NSString *kTitleRecordDataContent;

//: head_default_group
@property (nonatomic, copy) NSString *kContent_viewCurrentValue;

//: group_info_activity_update_success
@property (nonatomic, copy) NSString *kNameRecordDeviceValue;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kName_cropValue;

//: #4B43DE
@property (nonatomic, copy) NSString *kTitle_errorString;

//: activity_qrcode_scan_me
@property (nonatomic, copy) NSString *kTitle_onValue;

@end

@implementation AtData

+ (NSData *)AtDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: back_arrow_bl
- (NSString *)kName_cropValue {
    if (!_kName_cropValue) {
		NSArray<NSNumber *> *origin = @[@13, @54, @5, @190, @63, @152, @151, @153, @161, @149, @151, @168, @168, @165, @173, @149, @152, @162, @64];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_cropValue = [self StringFromAtData:value];
    }
    return _kName_cropValue;
}

//: activity_qrcode_scan_me
- (NSString *)kTitle_onValue {
    if (!_kTitle_onValue) {
		NSArray<NSNumber *> *origin = @[@23, @31, @13, @221, @128, @130, @138, @95, @155, @129, @106, @121, @187, @128, @130, @147, @136, @149, @136, @147, @152, @126, @144, @145, @130, @142, @131, @132, @126, @146, @130, @128, @141, @126, @140, @132, @139];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_onValue = [self StringFromAtData:value];
    }
    return _kTitle_onValue;
}

//: #DCCCFF
- (NSString *)kNamePlayValue {
    if (!_kNamePlayValue) {
		NSArray<NSNumber *> *origin = @[@7, @33, @10, @210, @249, @248, @193, @80, @218, @226, @68, @101, @100, @100, @100, @103, @103, @106];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNamePlayValue = [self StringFromAtData:value];
    }
    return _kNamePlayValue;
}

- (Byte *)AtDataToCache:(Byte *)data {
    int atomicMagnitude85Hide = data[0];
    Byte range = data[1];
    int view = data[2];
    for (int i = view; i < view + atomicMagnitude85Hide; i++) {
        int value = data[i] - range;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[view + atomicMagnitude85Hide] = 0;
    return data + view;
}

//: common_bg
- (NSString *)kNameViewValue {
    if (!_kNameViewValue) {
		NSArray<NSNumber *> *origin = @[@9, @82, @13, @188, @187, @50, @30, @177, @153, @117, @234, @93, @47, @181, @193, @191, @191, @193, @192, @177, @180, @185, @38];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameViewValue = [self StringFromAtData:value];
    }
    return _kNameViewValue;
}

//: ic_share
- (NSString *)kText_showValue {
    if (!_kText_showValue) {
		NSArray<NSNumber *> *origin = @[@8, @46, @4, @245, @151, @145, @141, @161, @150, @143, @160, @147, @95];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_showValue = [self StringFromAtData:value];
    }
    return _kText_showValue;
}

//: ic_down
- (NSString *)kTitleRecordDataContent {
    if (!_kTitleRecordDataContent) {
		NSArray<NSNumber *> *origin = @[@7, @19, @12, @198, @59, @226, @244, @45, @229, @113, @89, @232, @124, @118, @114, @119, @130, @138, @129, @97];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleRecordDataContent = [self StringFromAtData:value];
    }
    return _kTitleRecordDataContent;
}

- (NSString *)StringFromAtData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AtDataToCache:data]];
}

//: #999999
- (NSString *)kNameColorString {
    if (!_kNameColorString) {
		NSArray<NSNumber *> *origin = @[@7, @9, @8, @56, @10, @163, @93, @28, @44, @66, @66, @66, @66, @66, @66, @153];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameColorString = [self StringFromAtData:value];
    }
    return _kNameColorString;
}

//: head_default
- (NSString *)kTitle_tapString {
    if (!_kTitle_tapString) {
		NSArray<NSNumber *> *origin = @[@12, @58, @4, @227, @162, @159, @155, @158, @153, @158, @159, @160, @155, @175, @166, @174, @243];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_tapString = [self StringFromAtData:value];
    }
    return _kTitle_tapString;
}

//: head_default_group
- (NSString *)kContent_viewCurrentValue {
    if (!_kContent_viewCurrentValue) {
		NSArray<NSNumber *> *origin = @[@18, @99, @3, @203, @200, @196, @199, @194, @199, @200, @201, @196, @216, @207, @215, @194, @202, @213, @210, @216, @211, @226];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_viewCurrentValue = [self StringFromAtData:value];
    }
    return _kContent_viewCurrentValue;
}

//: #4B43DE
- (NSString *)kTitle_errorString {
    if (!_kTitle_errorString) {
		NSArray<NSNumber *> *origin = @[@7, @46, @10, @202, @214, @197, @4, @134, @228, @72, @81, @98, @112, @98, @97, @114, @115, @69];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_errorString = [self StringFromAtData:value];
    }
    return _kTitle_errorString;
}

//: group_info_activity_update_failed
- (NSString *)kNameStepData {
    if (!_kNameStepData) {
		NSArray<NSNumber *> *origin = @[@33, @26, @5, @210, @177, @129, @140, @137, @143, @138, @121, @131, @136, @128, @137, @121, @123, @125, @142, @131, @144, @131, @142, @147, @121, @143, @138, @126, @123, @142, @127, @121, @128, @123, @131, @134, @127, @126, @88];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameStepData = [self StringFromAtData:value];
    }
    return _kNameStepData;
}

//: group_info_activity_update_success
- (NSString *)kNameRecordDeviceValue {
    if (!_kNameRecordDeviceValue) {
		NSArray<NSNumber *> *origin = @[@34, @26, @3, @129, @140, @137, @143, @138, @121, @131, @136, @128, @137, @121, @123, @125, @142, @131, @144, @131, @142, @147, @121, @143, @138, @126, @123, @142, @127, @121, @141, @143, @125, @125, @127, @141, @141, @32];
		NSData *data = [AtData AtDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameRecordDeviceValue = [self StringFromAtData:value];
    }
    return _kNameRecordDeviceValue;
}

+ (instancetype)sharedInstance {
    static AtData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/15.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERUserQRCodeViewController.h"
#import "CellViewController.h"
//: #import "LCQRCodeUtil.h"
#import "AggregationUtil.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "USERShareCardAttachment.h"
#import "ProfitsToAttachmentColor.h"
//: #import "ZOMNForwardViewController.h"
#import "CrownViewController.h"
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"

//: @interface USERUserQRCodeViewController ()
@interface CellViewController ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;
//: @property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
//: @property (nonatomic,strong) UIButton *shareBtn;
@property (nonatomic,strong) UIButton *shareBtn;
//: @property (nonatomic,strong) UIButton *downBtn;
@property (nonatomic,strong) UIButton *downBtn;

//: @end
@end

//: @implementation USERUserQRCodeViewController
@implementation CellViewController

//: - (void)gotoBack:(id)sender {
- (void)frameworking:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: -(void)saveQcImage{
-(void)mustVoice{

    //: CGFloat f = [UIScreen mainScreen].scale;
    CGFloat f = [UIScreen mainScreen].scale;
    //: CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    CGRect rect = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height*0.1*f, [[UIScreen mainScreen] bounds].size.width*f, [[UIScreen mainScreen] bounds].size.height*0.7*f);
    //: UIImage *image = [self takeScreenshot:rect];
    UIImage *image = [self state:rect];

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
                  //: NSString *failed = [DisplayLanguageManager getTextWithKey:@"group_info_activity_update_failed"];
                  NSString *failed = [MakeManager cell:[AtData sharedInstance].kNameStepData];//@"保存失败"
                  //: [SVProgressHUD showMessage:failed];
                  [SVProgressHUD firstTeam:failed];
              //: });
              });
          //: } else {
          } else {
              //: NSString *success = [DisplayLanguageManager getTextWithKey:@"group_info_activity_update_success"];
              NSString *success = [MakeManager cell:[AtData sharedInstance].kNameRecordDeviceValue];//保存成功
              //: dispatch_async(dispatch_get_main_queue(), ^{
              dispatch_async(dispatch_get_main_queue(), ^{
                  //: [SVProgressHUD showMessage:success];
                  [SVProgressHUD firstTeam:success];
              //: });
              });
          }
      //: }];
      }];
}

//: - (void)shareQcImage
- (void)ofTap
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

    //: USERShareCardAttachment *attachment = [[USERShareCardAttachment alloc] init];
    ProfitsToAttachmentColor *attachment = [[ProfitsToAttachmentColor alloc] init];
    //: attachment.title = name;
    attachment.title = name;
    //: attachment.type = type;
    attachment.type = type;
    //: attachment.personCardId = self.userID;
    attachment.personCardId = self.userID;
    //: attachment.content = self.userID;
    attachment.content = self.userID;
    //: NIMMessage *message = [USERSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [TopConverter slice:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    CrownViewController *vc = [[CrownViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (UIButton *)shareBtn {
- (UIButton *)shareBtn {
    //: if (!_shareBtn) {
    if (!_shareBtn) {
        //: _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_shareBtn addTarget:self action:@selector(shareQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_shareBtn addTarget:self action:@selector(ofTap) forControlEvents:UIControlEventTouchUpInside];
        //: [_shareBtn setImage:[UIImage imageNamed:@"ic_share"] forState:UIControlStateNormal];
        [_shareBtn setImage:[UIImage imageNamed:[AtData sharedInstance].kText_showValue] forState:UIControlStateNormal];
        //: _shareBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _shareBtn.backgroundColor = [UIColor cell:[AtData sharedInstance].kTitle_errorString];
        //: _shareBtn.layer.cornerRadius = 24;
        _shareBtn.layer.cornerRadius = 24;

    }
    //: return _shareBtn;
    return _shareBtn;
}

//: -(UIImage *)takeScreenshot:(CGRect)rect{
-(UIImage *)state:(CGRect)rect{

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

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}



//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
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
    bg.image = [UIImage imageNamed:[AtData sharedInstance].kNameViewValue];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice comeDownSuperphylum], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(frameworking:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[AtData sharedInstance].kName_cropValue] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

//    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
//    labNavtitle.textColor = [UIColor blackColor];
//    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
//    labNavtitle.text = LangKey(@"qrcode_activity_title");
//    labNavtitle.textAlignment = NSTextAlignmentCenter;
//    [navview addSubview:labNavtitle];

    //: [self initUI];
    [self initName];
}

//: -(void)initUI{
-(void)initName{

    //: NSString *name = @"";
    NSString *name = @"";
    //: NSString *avater = @"";
    NSString *avater = @"";
    //: UIImage *defImg = [UIImage imageNamed:@"head_default"];
    UIImage *defImg = [UIImage imageNamed:[AtData sharedInstance].kTitle_tapString];
    //: if (self.isTeam) {
    if (self.isTeam) {
        //: self.userID = self.team.teamId;
        self.userID = self.team.teamId;
        //: name = self.team.teamName;
        name = self.team.teamName;
        //: avater = self.team.avatarUrl;
        avater = self.team.avatarUrl;
        //: defImg = [UIImage imageNamed:@"head_default_group"];
        defImg = [UIImage imageNamed:[AtData sharedInstance].kContent_viewCurrentValue];
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
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(20, (44.0f + [UIDevice comeDownSuperphylum])+80, [[UIScreen mainScreen] bounds].size.width-40, 412)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#DCCCFF"];
    contentView.backgroundColor = [UIColor cell:[AtData sharedInstance].kNamePlayValue];
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
    UIImage *qrImage = [AggregationUtil light:_userID statusImage:220 color:[UIColor blackColor]];
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
    contentLabel.textColor = [UIColor cell:[AtData sharedInstance].kNameColorString];
    //: contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    //: contentLabel.text = [DisplayLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
    contentLabel.text = [MakeManager cell:[AtData sharedInstance].kTitle_onValue];//@"扫描二维码，加我为好友";
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
//: - (UIButton *)downBtn {
- (UIButton *)downBtn {
    //: if (!_downBtn) {
    if (!_downBtn) {
        //: _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_downBtn addTarget:self action:@selector(saveQcImage) forControlEvents:UIControlEventTouchUpInside];
        [_downBtn addTarget:self action:@selector(mustVoice) forControlEvents:UIControlEventTouchUpInside];
        //: [_downBtn setImage:[UIImage imageNamed:@"ic_down"] forState:UIControlStateNormal];
        [_downBtn setImage:[UIImage imageNamed:[AtData sharedInstance].kTitleRecordDataContent] forState:UIControlStateNormal];
        //: _downBtn.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _downBtn.backgroundColor = [UIColor cell:[AtData sharedInstance].kTitle_errorString];
        //: _downBtn.layer.cornerRadius = 24;
        _downBtn.layer.cornerRadius = 24;

    }
    //: return _downBtn;
    return _downBtn;
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

//: @end
@end
