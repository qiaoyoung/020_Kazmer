
#import <Foundation/Foundation.h>

@interface MakeAMotionData : NSObject

@end

@implementation MakeAMotionData

//: register_good_nick
+ (NSString *)kTitleLoopValue {
    /* static */ NSString *kTitleLoopValue = nil;
    if (!kTitleLoopValue) {
		NSString *origin = @"12270D2AFF938235D5EFE9F1464B3E40424C4D3E4B384048483D3847423C44E9";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleLoopValue = [self StringFromMakeAMotionData:value];
    }
    return kTitleLoopValue;
}

//: zh-Hant
+ (NSString *)kTextTitleData {
    /* static */ NSString *kTextTitleData = nil;
    if (!kTextTitleData) {
		NSString *origin = @"072C0B0C1735F8861D2D324E3C011C35424898";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTitleData = [self StringFromMakeAMotionData:value];
    }
    return kTextTitleData;
}

//: #333333
+ (NSString *)kText_seeminglyData {
    /* static */ NSString *kText_seeminglyData = nil;
    if (!kText_seeminglyData) {
		NSString *origin = @"075B06C7F549C8D8D8D8D8D8D857";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_seeminglyData = [self StringFromMakeAMotionData:value];
    }
    return kText_seeminglyData;
}

//: login_nickname
+ (NSString *)kTitleButString {
    /* static */ NSString *kTitleButString = nil;
    if (!kTitleButString) {
		NSString *origin = @"0E1E0C8BFACD6E6196B3CC634E51494B5041504B454D50434F4748";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleButString = [self StringFromMakeAMotionData:value];
    }
    return kTitleButString;
}

+ (NSString *)StringFromMakeAMotionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MakeAMotionDataToCache:data]];
}

//: login_bg
+ (NSString *)kTitleStableModelText {
    /* static */ NSString *kTitleStableModelText = nil;
    if (!kTitleStableModelText) {
		NSString *origin = @"084306928479292C24262B1C1F246A";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleStableModelText = [self StringFromMakeAMotionData:value];
    }
    return kTitleStableModelText;
}

//: contact_tag_fragment_cancel
+ (NSString *)kText_toothValue {
    /* static */ NSString *kText_toothValue = nil;
    if (!kText_toothValue) {
		NSString *origin = @"1B6103020E0D13000213FE130006FE051100060C040D13FE02000D02040B40";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_toothValue = [self StringFromMakeAMotionData:value];
    }
    return kText_toothValue;
}

//: zh-Hans
+ (NSString *)kName_dataText {
    /* static */ NSString *kName_dataText = nil;
    if (!kName_dataText) {
		NSString *origin = @"073C046F3E2CF10C253237EB";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_dataText = [self StringFromMakeAMotionData:value];
    }
    return kName_dataText;
}

//: setting_privacy
+ (NSString *)kTextMainValue {
    /* static */ NSString *kTextMainValue = nil;
    if (!kTextMainValue) {
		NSString *origin = @"0F1A08DFA0278944594B5A5A4F544D4556584F5C47495F7F";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextMainValue = [self StringFromMakeAMotionData:value];
    }
    return kTextMainValue;
}

//: nickname
+ (NSString *)kText_selectedAtValue {
    /* static */ NSString *kText_selectedAtValue = nil;
    if (!kText_selectedAtValue) {
		NSString *origin = @"084E0920E761C176B2201B151D20131F177A";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_selectedAtValue = [self StringFromMakeAMotionData:value];
    }
    return kText_selectedAtValue;
}

//: message_send_album
+ (NSString *)kText_inventString {
    /* static */ NSString *kText_inventString = nil;
    if (!kText_inventString) {
		NSString *origin = @"12500B22C24A56AC889E871D1523231117150F23151E140F111C12251D42";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_inventString = [self StringFromMakeAMotionData:value];
    }
    return kText_inventString;
}

//: #999999
+ (NSString *)kText_currentData {
    /* static */ NSString *kText_currentData = nil;
    if (!kText_currentData) {
		NSString *origin = @"0703077282CB26203636363636361F";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_currentData = [self StringFromMakeAMotionData:value];
    }
    return kText_currentData;
}

//: icon_photo
+ (NSString *)kName_standardValueShoppingString {
    /* static */ NSString *kName_standardValueShoppingString = nil;
    if (!kName_standardValueShoppingString) {
		NSString *origin = @"0A4F0AA49F6B3F63E0051A14201F102119202520A8";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_standardValueShoppingString = [self StringFromMakeAMotionData:value];
    }
    return kName_standardValueShoppingString;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)kContentMagnitudeelligenceName {
    /* static */ NSString *kContentMagnitudeelligenceName = nil;
    if (!kContentMagnitudeelligenceName) {
		NSString *origin = @"27420C1BA384E513E0401B7A333123301D272C242D1D1F343227342732371D332E2A2D1F221D1F341F321F301D241F272A2322AD";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentMagnitudeelligenceName = [self StringFromMakeAMotionData:value];
    }
    return kContentMagnitudeelligenceName;
}

//: tag_activity_set
+ (NSString *)kContent_messageData {
    /* static */ NSString *kContent_messageData = nil;
    if (!kContent_messageData) {
		NSString *origin = @"105008029CB669252411170F11132419261924290F2315245B";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_messageData = [self StringFromMakeAMotionData:value];
    }
    return kContent_messageData;
}

//: hant
+ (NSString *)kTitleConsumptionName {
    /* static */ NSString *kTitleConsumptionName = nil;
    if (!kTitleConsumptionName) {
		NSString *origin = @"04390C0252640C3BB51FFF972F28353BBA";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleConsumptionName = [self StringFromMakeAMotionData:value];
    }
    return kTitleConsumptionName;
}

//: warm_prompt
+ (NSString *)kNameMessageScienceString {
    /* static */ NSString *kNameMessageScienceString = nil;
    if (!kNameMessageScienceString) {
		NSString *origin = @"0B4F04572812231E102123201E2125FC";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameMessageScienceString = [self StringFromMakeAMotionData:value];
    }
    return kNameMessageScienceString;
}

//: group_info_activity_update_failed
+ (NSString *)kTextPullString {
    /* static */ NSString *kTextPullString = nil;
    if (!kTextPullString) {
		NSString *origin = @"215C0B7C1A2DF6A0DDF88C0B16131914030D120A13030507180D1A0D181D03191408051809030A050D100908D7";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextPullString = [self StringFromMakeAMotionData:value];
    }
    return kTextPullString;
}

//: nickname_same_account
+ (NSString *)kTitleScaleCrawData {
    /* static */ NSString *kTitleScaleCrawData = nil;
    if (!kTitleScaleCrawData) {
		NSString *origin = @"1555097EF38D8A6FF819140E16190C18100A1E0C18100A0C0E0E1A20191F51";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleScaleCrawData = [self StringFromMakeAMotionData:value];
    }
    return kTitleScaleCrawData;
}

//: spa
+ (NSString *)kNameImmigrantValue {
    /* static */ NSString *kNameImmigrantValue = nil;
    if (!kNameImmigrantValue) {
		NSString *origin = @"034A092751A304669F29261751";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameImmigrantValue = [self StringFromMakeAMotionData:value];
    }
    return kNameImmigrantValue;
}

//: ko-KP
+ (NSString *)kTextFrameHideData {
    /* static */ NSString *kTextFrameHideData = nil;
    if (!kTextFrameHideData) {
		NSString *origin = @"050E0DCF9B603A70701336E6A85D611F3D422C";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextFrameHideData = [self StringFromMakeAMotionData:value];
    }
    return kTextFrameHideData;
}

//: activity_login_login
+ (NSString *)kTitleGrayDisturbName {
    /* static */ NSString *kTitleGrayDisturbName = nil;
    if (!kTitleGrayDisturbName) {
		NSString *origin = @"14270666E5893A3C4D424F424D523845484042473845484042470F";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleGrayDisturbName = [self StringFromMakeAMotionData:value];
    }
    return kTitleGrayDisturbName;
}

//: photo_account_def
+ (NSString *)kName_stopForeignerData {
    /* static */ NSString *kName_stopForeignerData = nil;
    if (!kName_stopForeignerData) {
		NSString *origin = @"11470C4A4DC9C704C9A964F42921282D28181A1C1C282E272D181D1E1FB8";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_stopForeignerData = [self StringFromMakeAMotionData:value];
    }
    return kName_stopForeignerData;
}

+ (Byte *)MakeAMotionDataToCache:(Byte *)data {
    int butHide = data[0];
    Byte placeCommit = data[1];
    int aircraftEver = data[2];
    for (int i = aircraftEver; i < aircraftEver + butHide; i++) {
        int value = data[i] + placeCommit;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[aircraftEver + butHide] = 0;
    return data + aircraftEver;
}

//: #4B43DE
+ (NSString *)kTitle_viewName {
    /* static */ NSString *kTitle_viewName = nil;
    if (!kTitle_viewName) {
		NSString *origin = @"073B0DB8524D68498CC7F6F9BDE8F907F9F8090AD5";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_viewName = [self StringFromMakeAMotionData:value];
    }
    return kTitle_viewName;
}

//: ic_close_b
+ (NSString *)kContent_cellAtData {
    /* static */ NSString *kContent_cellAtData = nil;
    if (!kContent_cellAtData) {
		NSString *origin = @"0A1006D808C859534F535C5F63554F52EC";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_cellAtData = [self StringFromMakeAMotionData:value];
    }
    return kContent_cellAtData;
}

//: activity_register_account_has_account
+ (NSString *)kTitleSelectedContent {
    /* static */ NSString *kTitleSelectedContent = nil;
    if (!kTitleSelectedContent) {
		NSString *origin = @"25500AB505BEBFDBD02311132419261924290F22151719232415220F1113131F251E240F1811230F1113131F251E24A7";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSelectedContent = [self StringFromMakeAMotionData:value];
    }
    return kTitleSelectedContent;
}

//: #ffffff
+ (NSString *)kName_inevitablyRecordString {
    /* static */ NSString *kName_inevitablyRecordString = nil;
    if (!kName_inevitablyRecordString) {
		NSString *origin = @"070B07E6090F05185B5B5B5B5B5BFE";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_inevitablyRecordString = [self StringFromMakeAMotionData:value];
    }
    return kName_inevitablyRecordString;
}

+ (NSData *)MakeAMotionDataToData:(NSString *)value {
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

//: nickname_tip
+ (NSString *)kText_fierceData {
    /* static */ NSString *kText_fierceData = nil;
    if (!kText_fierceData) {
		NSString *origin = @"0C110755F52CCE5D58525A5D505C544E63585FAF";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_fierceData = [self StringFromMakeAMotionData:value];
    }
    return kText_fierceData;
}

//: register_avtivity3_nick
+ (NSString *)kTitleItemDetailValue {
    /* static */ NSString *kTitleItemDetailValue = nil;
    if (!kTitleItemDetailValue) {
		NSString *origin = @"17630632B0DA0F0204061011020FFCFE13110613061116D0FC0B060008C8";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleItemDetailValue = [self StringFromMakeAMotionData:value];
    }
    return kTitleItemDetailValue;
}

//: setting_privacy_camera
+ (NSString *)kText_intactValue {
    /* static */ NSString *kText_intactValue = nil;
    if (!kText_intactValue) {
		NSString *origin = @"160C06FA0E3B675968685D625B5364665D6A55576D53575561596655D5";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_intactValue = [self StringFromMakeAMotionData:value];
    }
    return kText_intactValue;
}

//: jpg
+ (NSString *)kName_alsoString {
    /* static */ NSString *kName_alsoString = nil;
    if (!kName_alsoString) {
		NSString *origin = @"036306C20DB0070D04AF";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_alsoString = [self StringFromMakeAMotionData:value];
    }
    return kName_alsoString;
}

//: #F6F6F6
+ (NSString *)kName_dataAddWithString {
    /* static */ NSString *kName_dataAddWithString = nil;
    if (!kName_dataAddWithString) {
		NSString *origin = @"071D0C715778679760BC29BE0629192919291924";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_dataAddWithString = [self StringFromMakeAMotionData:value];
    }
    return kName_dataAddWithString;
}

//: register_avtivity3_avatar
+ (NSString *)kName_civilianValue {
    /* static */ NSString *kName_civilianValue = nil;
    if (!kName_civilianValue) {
		NSString *origin = @"194B055C70271A1C1E28291A2714162B291E2B1E292EE814162B16291627EE";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_civilianValue = [self StringFromMakeAMotionData:value];
    }
    return kName_civilianValue;
}

//: contact_list_activity_complete
+ (NSString *)kContent_recordTitle {
    /* static */ NSString *kContent_recordTitle = nil;
    if (!kContent_recordTitle) {
		NSString *origin = @"1E280C4C950E34C98487C7B23B47464C393B4C3744414B4C37393B4C414E414C51373B474548443D4C3D11";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_recordTitle = [self StringFromMakeAMotionData:value];
    }
    return kContent_recordTitle;
}

//: #5D5F66
+ (NSString *)kContentMoleString {
    /* static */ NSString *kContentMoleString = nil;
    if (!kContentMoleString) {
		NSString *origin = @"075303D0E2F1E2F3E3E384";
		NSData *data = [MakeAMotionData MakeAMotionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentMoleString = [self StringFromMakeAMotionData:value];
    }
    return kContentMoleString;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueShouldViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RegisterInfoViewController.h"
#import "ValueShouldViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "USERRegistConfigManager.h"
#import "StandardManager.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"

//: @interface RegisterInfoViewController ()
@interface ValueShouldViewController ()

//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (nonatomic, strong) NSString *avaterUrl;
@property (nonatomic, strong) NSString *avaterUrl;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;

//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;

//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;

//: @end
@end

//: @implementation RegisterInfoViewController
@implementation ValueShouldViewController

//: - (void)initUI
- (void)initBringHome
{
    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    closeBtn.frame = CGRectMake(15, [UIDevice comeDownSuperphylum]+2, 40, 40);
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:[MakeAMotionData kContent_cellAtData]] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:closeBtn];
    [self.view addSubview:closeBtn];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    labtitle.text = [MakeManager cell:[MakeAMotionData kTitleLoopValue]];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labtitle.textColor = [UIColor cell:[MakeAMotionData kContentMoleString]];
    //: labtitle.font = [UIFont systemFontOfSize:14];
    labtitle.font = [UIFont systemFontOfSize:14];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.aratarImgView.image = [UIImage imageNamed:@"photo_account_def"];
    self.aratarImgView.image = [UIImage imageNamed:[MakeAMotionData kName_stopForeignerData]];
    //: self.aratarImgView.layer.cornerRadius = 70;
    self.aratarImgView.layer.cornerRadius = 70;
    //: self.aratarImgView.layer.masksToBounds = YES;
    self.aratarImgView.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.aratarImgView];
    [avaterView addSubview:self.aratarImgView];
    //: self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.btnPhoto.backgroundColor = [UIColor whiteColor];
    //: self.btnPhoto.layer.cornerRadius = 24;
    self.btnPhoto.layer.cornerRadius = 24;
    //: self.btnPhoto.layer.masksToBounds = YES;
    self.btnPhoto.layer.masksToBounds = YES;
    //: self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    //: [self.btnPhoto setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [self.btnPhoto setImage:[UIImage imageNamed:[MakeAMotionData kName_standardValueShoppingString]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(canData) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor cell:[MakeAMotionData kName_dataAddWithString]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    self.titleImg.image = [UIImage imageNamed:[MakeAMotionData kTitleButString]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor cell:[MakeAMotionData kText_seeminglyData]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"nickname_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[MakeManager cell:[MakeAMotionData kText_fierceData]] attributes:@{NSForegroundColorAttributeName:[UIColor cell:[MakeAMotionData kText_currentData]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [_loginButton setTitle:[MakeManager cell:[MakeAMotionData kContent_recordTitle]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(contentRefer) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _loginButton.backgroundColor = [UIColor cell:[MakeAMotionData kTitle_viewName]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice vg_statusBarHeight]+20, 146, 32);
    _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice comeDownSuperphylum]+20, 146, 32);
    //: _registerButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _registerButton.backgroundColor = [UIColor cell:[MakeAMotionData kTitle_viewName]];
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor cell:[MakeAMotionData kName_inevitablyRecordString]] forState:UIControlStateNormal];
    //: [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[FFFLanguageManager getTextWithKey:@"activity_register_account_has_account"],[FFFLanguageManager getTextWithKey:@"activity_login_login"]] forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[MakeManager cell:[MakeAMotionData kTitleSelectedContent]],[MakeManager cell:[MakeAMotionData kTitleGrayDisturbName]]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(cellFind) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
    //: _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.masksToBounds = YES;
    //: _registerButton.layer.cornerRadius = 16;
    _registerButton.layer.cornerRadius = 16;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[MakeAMotionData kTitleStableModelText]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initBringHome];
}
//: - (void)nextButtonClick
- (void)contentRefer
{
    //: if (_usernameTextField.text.length == 0) {
    if (_usernameTextField.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[MakeManager cell:[MakeAMotionData kTitleItemDetailValue]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_usernameTextField.text isEqualToString:self.accountName]) {
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[MakeManager cell:[MakeAMotionData kTitleScaleCrawData]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: USERRegistConfigManager *manager = [USERRegistConfigManager shareConfigManager];
    StandardManager *manager = [StandardManager temporaryWorker];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD firstTeam:[MakeManager cell:[MakeAMotionData kName_civilianValue]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
    [manager.registDict setObject:self.usernameTextField.text forKey:[MakeAMotionData kText_selectedAtValue]];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];

    //注册
    //: [USERRegistConfigManager sendRegistRequest:self.navigationController];
    [StandardManager origin:self.navigationController];
}
//: - (void)showPicker {
- (void)canData {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[MakeManager cell:[MakeAMotionData kText_inventString]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self managerMember];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[MakeManager cell:[MakeAMotionData kText_toothValue]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   //: }];
   }];


//    [alertVc addAction:camera];
    //: [alertVc addAction:picture];
    [alertVc addAction:picture];
    //: [alertVc addAction:cancle];
    [alertVc addAction:cancle];

    //: [self presentViewController:alertVc animated:YES completion:nil];
    [self presentViewController:alertVc animated:YES completion:nil];
}


//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)total:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

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
    //: NSInteger widthHeight = self.view.width - 2 * left;
    NSInteger widthHeight = self.view.width - 2 * left;
    //: NSInteger top = (self.view.height - widthHeight) / 2;
    NSInteger top = (self.view.height - widthHeight) / 2;
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
        preferredlang = [MakeAMotionData kTextFrameHideData];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[MakeAMotionData kNameImmigrantValue]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [MakeAMotionData kName_dataText];
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
    }else if ([langType containsString:[MakeAMotionData kTitleConsumptionName]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [MakeAMotionData kTextTitleData];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//    [NSSet setWithObjects:@"zh-Hans", @"zh-Hant", @"en", @"ar", @"de", @"es", @"fr", @"ja", @"ko-KP", @"pt", @"ru", @"vi", nil];
    // 设置首选语言 / Set preferred language
//         imagePickerVc.preferredLanguage = @"zh-Hans";
        // 设置languageBundle以使用其它语言 / Set languageBundle to use other language
//         imagePickerVc.languageBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"tz-ru" ofType:@"lproj"]];

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
//            [self uploadImage:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}







/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)managerMember
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self pushTZImagePickerControllerWithAsset:nil];
                    [self total:nil];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self total:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[MakeAMotionData kNameMessageScienceString]] message:[MakeManager cell:[MakeAMotionData kTextMainValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[MakeAMotionData kText_toothValue]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[MakeAMotionData kContent_messageData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)style:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image be:CGSizeMake(150, 150)];
    //: NSString *fileName = [USERFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [DisplayHelper should:[MakeAMotionData kName_alsoString]];
    //: NSString *filePath = [[USERFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[DisplayHelper titles] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error && wself) {
            if (!error && wself) {
                //: NSLog(@"urlString：%@",urlString);
                //: self.avaterUrl = urlString;
                self.avaterUrl = urlString;
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[MakeManager cell:[MakeAMotionData kContentMagnitudeelligenceName]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]
        [self.view makeToast:[MakeManager cell:[MakeAMotionData kTextPullString]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}

//: - (void)gotologin
- (void)cellFind
{
    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
}


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}
//: - (void)requestAuthorizationForVideo {
- (void)containerLight {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [self pushTZImagePickerControllerWithAsset:nil];
                        [self total:nil];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [self pushTZImagePickerControllerWithAsset:nil];
            [self total:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[MakeAMotionData kNameMessageScienceString]] message:[MakeManager cell:[MakeAMotionData kText_intactValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[MakeAMotionData kText_toothValue]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[MakeAMotionData kContent_messageData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

//: @end
@end