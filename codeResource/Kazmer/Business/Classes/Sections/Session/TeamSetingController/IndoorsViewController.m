
#import <Foundation/Foundation.h>

typedef struct {
    Byte respectively;
    Byte *rive;
    unsigned int inspector;
	int folio;
	int penalText;
	int marMated;
} StructThereData;

@interface ThereData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ThereData

+ (instancetype)sharedInstance {
    static ThereData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ThereDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ThereDataToByte:(StructThereData *)data {
    for (int i = 0; i < data->inspector; i++) {
        data->rive[i] ^= data->respectively;
    }
    data->rive[data->inspector] = 0;
	if (data->inspector >= 3) {
		data->folio = data->rive[0];
		data->penalText = data->rive[1];
		data->marMated = data->rive[2];
	}
    return data->rive;
}

- (NSString *)StringFromThereData:(StructThereData *)data {
    return [NSString stringWithUTF8String:(char *)[self ThereDataToByte:data]];
}

//: #4B43DE
- (NSString *)kNameClassifyValue {
    /* static */ NSString *kNameClassifyValue = nil;
    if (!kNameClassifyValue) {
		NSArray<NSNumber *> *origin = @[@88, @79, @57, @79, @72, @63, @62, @145];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){123, (Byte *)data.bytes, 7, 84, 126, 197};
        kNameClassifyValue = [self StringFromThereData:&value];
    }
    return kNameClassifyValue;
}

//: icon_photo
- (NSString *)kTextUrgeData {
    /* static */ NSString *kTextUrgeData = nil;
    if (!kTextUrgeData) {
		NSArray<NSNumber *> *origin = @[@9, @3, @15, @14, @63, @16, @8, @15, @20, @15, @53];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){96, (Byte *)data.bytes, 10, 118, 253, 215};
        kTextUrgeData = [self StringFromThereData:&value];
    }
    return kTextUrgeData;
}

//: set_group_avater
- (NSString *)kTitlePackString {
    /* static */ NSString *kTitlePackString = nil;
    if (!kTitlePackString) {
		NSArray<NSNumber *> *origin = @[@155, @141, @156, @183, @143, @154, @135, @157, @152, @183, @137, @158, @137, @156, @141, @154, @164];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){232, (Byte *)data.bytes, 16, 74, 58, 30};
        kTitlePackString = [self StringFromThereData:&value];
    }
    return kTitlePackString;
}

//: #5D5F66
- (NSString *)kNameRecommendText {
    /* static */ NSString *kNameRecommendText = nil;
    if (!kNameRecommendText) {
		NSArray<NSNumber *> *origin = @[@252, @234, @155, @234, @153, @233, @233, @231];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){223, (Byte *)data.bytes, 7, 188, 204, 244};
        kNameRecommendText = [self StringFromThereData:&value];
    }
    return kNameRecommendText;
}

//: #000000
- (NSString *)kContentInkName {
    /* static */ NSString *kContentInkName = nil;
    if (!kContentInkName) {
		NSArray<NSNumber *> *origin = @[@125, @110, @110, @110, @110, @110, @110, @28];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){94, (Byte *)data.bytes, 7, 127, 203, 107};
        kContentInkName = [self StringFromThereData:&value];
    }
    return kContentInkName;
}

//: zh-Hant
- (NSString *)kName_overnightImageValue {
    /* static */ NSString *kName_overnightImageValue = nil;
    if (!kName_overnightImageValue) {
		NSArray<NSNumber *> *origin = @[@66, @80, @21, @112, @89, @86, @76, @38];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){56, (Byte *)data.bytes, 7, 67, 234, 227};
        kName_overnightImageValue = [self StringFromThereData:&value];
    }
    return kName_overnightImageValue;
}

//: register_good_avater
- (NSString *)kText_serveLoreData {
    /* static */ NSString *kText_serveLoreData = nil;
    if (!kText_serveLoreData) {
		NSArray<NSNumber *> *origin = @[@156, @139, @137, @135, @157, @154, @139, @156, @177, @137, @129, @129, @138, @177, @143, @152, @143, @154, @139, @156, @191];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){238, (Byte *)data.bytes, 20, 175, 82, 31};
        kText_serveLoreData = [self StringFromThereData:&value];
    }
    return kText_serveLoreData;
}

//: head_default
- (NSString *)kContent_degreeOpenName {
    /* static */ NSString *kContent_degreeOpenName = nil;
    if (!kContent_degreeOpenName) {
		NSArray<NSNumber *> *origin = @[@241, @252, @248, @253, @198, @253, @252, @255, @248, @236, @245, @237, @75];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){153, (Byte *)data.bytes, 12, 95, 40, 22};
        kContent_degreeOpenName = [self StringFromThereData:&value];
    }
    return kContent_degreeOpenName;
}

//: #F6F7FA
- (NSString *)kNameEthicArrestString {
    /* static */ NSString *kNameEthicArrestString = nil;
    if (!kNameEthicArrestString) {
		NSArray<NSNumber *> *origin = @[@88, @61, @77, @61, @76, @61, @58, @204];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){123, (Byte *)data.bytes, 7, 179, 156, 46};
        kNameEthicArrestString = [self StringFromThereData:&value];
    }
    return kNameEthicArrestString;
}

//: back_arrow_bl
- (NSString *)kTitleStagAmberName {
    /* static */ NSString *kTitleStagAmberName = nil;
    if (!kTitleStagAmberName) {
		NSArray<NSNumber *> *origin = @[@245, @246, @244, @252, @200, @246, @229, @229, @248, @224, @200, @245, @251, @126];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){151, (Byte *)data.bytes, 13, 78, 119, 127};
        kTitleStagAmberName = [self StringFromThereData:&value];
    }
    return kTitleStagAmberName;
}

//: zh-Hans
- (NSString *)kContent_hockAccusationData {
    /* static */ NSString *kContent_hockAccusationData = nil;
    if (!kContent_hockAccusationData) {
		NSArray<NSNumber *> *origin = @[@223, @205, @136, @237, @196, @203, @214, @157];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){165, (Byte *)data.bytes, 7, 77, 165, 44};
        kContent_hockAccusationData = [self StringFromThereData:&value];
    }
    return kContent_hockAccusationData;
}

//: hant
- (NSString *)kName_execString {
    /* static */ NSString *kName_execString = nil;
    if (!kName_execString) {
		NSArray<NSNumber *> *origin = @[@161, @168, @167, @189, @103];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){201, (Byte *)data.bytes, 4, 203, 50, 229};
        kName_execString = [self StringFromThereData:&value];
    }
    return kName_execString;
}

//: #FAF8FD
- (NSString *)kName_woodGreenData {
    /* static */ NSString *kName_woodGreenData = nil;
    if (!kName_woodGreenData) {
		NSArray<NSNumber *> *origin = @[@68, @33, @38, @33, @95, @33, @35, @127];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){103, (Byte *)data.bytes, 7, 77, 212, 35};
        kName_woodGreenData = [self StringFromThereData:&value];
    }
    return kName_woodGreenData;
}

//: ko-KP
- (NSString *)kNameCurveText {
    /* static */ NSString *kNameCurveText = nil;
    if (!kNameCurveText) {
		NSArray<NSNumber *> *origin = @[@140, @136, @202, @172, @183, @50];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){231, (Byte *)data.bytes, 5, 220, 60, 179};
        kNameCurveText = [self StringFromThereData:&value];
    }
    return kNameCurveText;
}

//: contact_list_activity_complete
- (NSString *)kName_modelValue {
    /* static */ NSString *kName_modelValue = nil;
    if (!kName_modelValue) {
		NSArray<NSNumber *> *origin = @[@94, @82, @83, @73, @92, @94, @73, @98, @81, @84, @78, @73, @98, @92, @94, @73, @84, @75, @84, @73, @68, @98, @94, @82, @80, @77, @81, @88, @73, @88, @167];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){61, (Byte *)data.bytes, 30, 192, 149, 240};
        kName_modelValue = [self StringFromThereData:&value];
    }
    return kName_modelValue;
}

//: spa
- (NSString *)kContentHerbAdministerValue {
    /* static */ NSString *kContentHerbAdministerValue = nil;
    if (!kContentHerbAdministerValue) {
		NSArray<NSNumber *> *origin = @[@128, @131, @146, @62];
		NSData *data = [ThereData ThereDataToData:origin];
        StructThereData value = (StructThereData){243, (Byte *)data.bytes, 3, 112, 158, 155};
        kContentHerbAdministerValue = [self StringFromThereData:&value];
    }
    return kContentHerbAdministerValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndoorsViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayGroupAvatarViewController.h"
#import "IndoorsViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+USERBlock.h"
#import "UIActionSheet+NameAddContent.h"
//: #import "KEKESetNickNameView.h"
#import "ReposeCornerView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "USERRegistConfigManager.h"
#import "StandardManager.h"
//: #import "DisplayKitProgressHUD.h"
#import "NameMessageEffectView.h"
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "NSSetAvater.h"
#import "AtRecordView.h"

//: @interface DisplayGroupAvatarViewController ()<USERCustomUIAlertDelegate>
@interface IndoorsViewController ()<MessageBubble>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) AtRecordView *aleartView;

//: @end
@end

//: @implementation DisplayGroupAvatarViewController
@implementation IndoorsViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[[ThereData sharedInstance] kNameEthicArrestString]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"login_bg"];
//        [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[ThereData sharedInstance] kTitleStagAmberName]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice comeDownSuperphylum], 40, 40);

    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice comeDownSuperphylum], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:16];
    titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: titleLabel.text = [DisplayLanguageManager getTextWithKey:@"set_group_avater"];
    titleLabel.text = [MakeManager cell:[[ThereData sharedInstance] kTitlePackString]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: [self initUI];
    [self initRecord];




}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initRecord
{
    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum]))];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    bodyView.backgroundColor = [UIColor cell:[[ThereData sharedInstance] kName_woodGreenData]];
    //: [self.view addSubview:bodyView];
    [self.view addSubview:bodyView];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor cell:[[ThereData sharedInstance] kNameRecommendText]];
    //: self.accountLabel.text = [DisplayLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [MakeManager cell:[[ThereData sharedInstance] kText_serveLoreData]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [bodyView addSubview:self.accountLabel];
    [bodyView addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    //: [bodyView addSubview:imgView];
    [bodyView addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 70;
    _aratarImgView.layer.cornerRadius = 70;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[[ThereData sharedInstance] kContent_degreeOpenName]];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

//    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
//    usericon.image = [UIImage imageNamed:@"ic_hi"];
//    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
//    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[[ThereData sharedInstance] kTextUrgeData]] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(canData) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.groupName;
    tita.text = self.groupName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor cell:[[ThereData sharedInstance] kContentInkName]];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:20];
    tita.font = [UIFont systemFontOfSize:20];
    //: [bodyView addSubview:tita];
    [bodyView addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    self.registButton.backgroundColor = [UIColor cell:[[ThereData sharedInstance] kNameClassifyValue]];
    //: self.registButton.layer.masksToBounds = YES;
    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 24;
    self.registButton.layer.cornerRadius = 24;
//    self.registButton.layer.shadowColor = DeepBtnColor.CGColor;
//    self.registButton.layer.shadowOpacity = 1;
//    self.registButton.layer.shadowRadius = 0;
//    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[DisplayLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[MakeManager cell:[[ThereData sharedInstance] kName_modelValue]] forState:UIControlStateNormal];
    //: [bodyView addSubview:self.registButton];
    [bodyView addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(contentRefer) forControlEvents:UIControlEventTouchUpInside];


}

//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)bubbleWith:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
//        [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self quickBy:nil];
    //: }else if (tag == 102){
    }else if (tag == 102){
//        [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self quickBy:nil];
    }
}

//: - (void)showPicker {
- (void)canData {

    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView animationTitleShow];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//            }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
//
//    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)quickBy:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = colorFill([TableContext name].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = [[ThereData sharedInstance] kNameCurveText];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[[ThereData sharedInstance] kContentHerbAdministerValue]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [[ThereData sharedInstance] kContent_hockAccusationData];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[[ThereData sharedInstance] kName_execString]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [[ThereData sharedInstance] kName_overnightImageValue];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)contentRefer{

    //: self.speiceBackBlock(self.headerImage);
    self.speiceBackBlock(self.headerImage);

//    UIImage *imageForAvatarUpload = [self.headerImage nim_imageForAvatarUpload];
//    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
//    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
//    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
//    BOOL success = data && [data writeToFile:filePath atomically:YES];
//    __weak typeof(self) wself = self;
//    if (success) {
//        [NameMessageEffectView show];
//        __weak typeof(self) weakSelf = self;
//        [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//            [NameMessageEffectView dismiss];
//            if (!error) {
//                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
//                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
//                [sdManager.imageCache storeImage:imageForAvatarUpload
//                                       imageData:data
//                                          forKey:urlString
//                                       cacheType:SDImageCacheTypeAll
//                                      completion:nil];
//                [wself.navigationController popViewControllerAnimated:NO];
//            }
////            [wself showToastMsg:msg];
//        }];
//    }

}

//: - (NSSetAvater *)aleartView{
- (AtRecordView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[AtRecordView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end
