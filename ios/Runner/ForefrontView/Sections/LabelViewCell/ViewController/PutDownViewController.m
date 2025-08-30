
#import <Foundation/Foundation.h>

@interface SharedData : NSObject

@end

@implementation SharedData

//: nickname
+ (NSString *)kTitle_thoughValue {
    /* static */ NSString *kTitle_thoughValue = nil;
    if (!kTitle_thoughValue) {
		NSArray<NSString *> *origin = @[@"8", @"59", @"13", @"215", @"14", @"182", @"3", @"144", @"26", @"48", @"207", @"144", @"220", @"169", @"164", @"158", @"166", @"169", @"156", @"168", @"160", @"115"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_thoughValue = [self StringFromSharedData:value];
    }
    return kTitle_thoughValue;
}

//: login_bg
+ (NSString *)kContent_placeValue {
    /* static */ NSString *kContent_placeValue = nil;
    if (!kContent_placeValue) {
		NSArray<NSString *> *origin = @[@"8", @"30", @"9", @"8", @"237", @"238", @"116", @"139", @"244", @"138", @"141", @"133", @"135", @"140", @"125", @"128", @"133", @"212"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_placeValue = [self StringFromSharedData:value];
    }
    return kContent_placeValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)kName_violationText {
    /* static */ NSString *kName_violationText = nil;
    if (!kName_violationText) {
		NSArray<NSString *> *origin = @[@"27", @"30", @"4", @"226", @"129", @"141", @"140", @"146", @"127", @"129", @"146", @"125", @"146", @"127", @"133", @"125", @"132", @"144", @"127", @"133", @"139", @"131", @"140", @"146", @"125", @"129", @"127", @"140", @"129", @"131", @"138", @"251"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_violationText = [self StringFromSharedData:value];
    }
    return kName_violationText;
}

//: #5D5F66
+ (NSString *)kTextStandardValue {
    /* static */ NSString *kTextStandardValue = nil;
    if (!kTextStandardValue) {
		NSArray<NSString *> *origin = @[@"7", @"80", @"10", @"122", @"185", @"243", @"236", @"84", @"250", @"243", @"115", @"133", @"148", @"133", @"150", @"134", @"134", @"202"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextStandardValue = [self StringFromSharedData:value];
    }
    return kTextStandardValue;
}

//: ic_hi
+ (NSString *)kTitle_tapConsumptionData {
    /* static */ NSString *kTitle_tapConsumptionData = nil;
    if (!kTitle_tapConsumptionData) {
		NSArray<NSString *> *origin = @[@"5", @"62", @"11", @"6", @"241", @"152", @"203", @"163", @"244", @"184", @"69", @"167", @"161", @"157", @"166", @"167", @"101"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_tapConsumptionData = [self StringFromSharedData:value];
    }
    return kTitle_tapConsumptionData;
}

//: setting_privacy
+ (NSString *)kTextNameNonprofitValue {
    /* static */ NSString *kTextNameNonprofitValue = nil;
    if (!kTextNameNonprofitValue) {
		NSArray<NSString *> *origin = @[@"15", @"38", @"8", @"211", @"3", @"241", @"24", @"61", @"153", @"139", @"154", @"154", @"143", @"148", @"141", @"133", @"150", @"152", @"143", @"156", @"135", @"137", @"159", @"73"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextNameNonprofitValue = [self StringFromSharedData:value];
    }
    return kTextNameNonprofitValue;
}

//: #4B43DE
+ (NSString *)kNameOutdoorShallowTitle {
    /* static */ NSString *kNameOutdoorShallowTitle = nil;
    if (!kNameOutdoorShallowTitle) {
		NSArray<NSString *> *origin = @[@"7", @"17", @"9", @"181", @"123", @"152", @"140", @"58", @"67", @"52", @"69", @"83", @"69", @"68", @"85", @"86", @"135"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameOutdoorShallowTitle = [self StringFromSharedData:value];
    }
    return kNameOutdoorShallowTitle;
}

+ (Byte *)SharedDataToCache:(Byte *)data {
    int numberelligenceTextDense = data[0];
    Byte passkey = data[1];
    int withdraw = data[2];
    for (int i = withdraw; i < withdraw + numberelligenceTextDense; i++) {
        int value = data[i] - passkey;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[withdraw + numberelligenceTextDense] = 0;
    return data + withdraw;
}

+ (NSString *)StringFromSharedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SharedDataToCache:data]];
}

//: zh-Hans
+ (NSString *)kText_viewFrameString {
    /* static */ NSString *kText_viewFrameString = nil;
    if (!kText_viewFrameString) {
		NSArray<NSString *> *origin = @[@"7", @"87", @"13", @"195", @"115", @"90", @"73", @"106", @"24", @"30", @"252", @"253", @"51", @"209", @"191", @"132", @"159", @"184", @"197", @"202", @"7"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_viewFrameString = [self StringFromSharedData:value];
    }
    return kText_viewFrameString;
}

//: hant
+ (NSString *)kContentSearchedString {
    /* static */ NSString *kContentSearchedString = nil;
    if (!kContentSearchedString) {
		NSArray<NSString *> *origin = @[@"4", @"24", @"13", @"146", @"208", @"103", @"37", @"58", @"203", @"14", @"15", @"185", @"98", @"128", @"121", @"134", @"140", @"128"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentSearchedString = [self StringFromSharedData:value];
    }
    return kContentSearchedString;
}

//: user_profile_avtivity_head
+ (NSString *)kText_cellValue {
    /* static */ NSString *kText_cellValue = nil;
    if (!kText_cellValue) {
		NSArray<NSString *> *origin = @[@"26", @"39", @"6", @"25", @"77", @"126", @"156", @"154", @"140", @"153", @"134", @"151", @"153", @"150", @"141", @"144", @"147", @"140", @"134", @"136", @"157", @"155", @"144", @"157", @"144", @"155", @"160", @"134", @"143", @"140", @"136", @"139", @"187"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_cellValue = [self StringFromSharedData:value];
    }
    return kText_cellValue;
}

//: head_default
+ (NSString *)kTitle_hardwareName {
    /* static */ NSString *kTitle_hardwareName = nil;
    if (!kTitle_hardwareName) {
		NSArray<NSString *> *origin = @[@"12", @"92", @"3", @"196", @"193", @"189", @"192", @"187", @"192", @"193", @"194", @"189", @"209", @"200", @"208", @"43"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_hardwareName = [self StringFromSharedData:value];
    }
    return kTitle_hardwareName;
}

//: register_good_avater
+ (NSString *)kText_monthData {
    /* static */ NSString *kText_monthData = nil;
    if (!kText_monthData) {
		NSArray<NSString *> *origin = @[@"20", @"54", @"13", @"173", @"179", @"224", @"229", @"149", @"128", @"228", @"166", @"35", @"37", @"168", @"155", @"157", @"159", @"169", @"170", @"155", @"168", @"149", @"157", @"165", @"165", @"154", @"149", @"151", @"172", @"151", @"170", @"155", @"168", @"148"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_monthData = [self StringFromSharedData:value];
    }
    return kText_monthData;
}

//: spa
+ (NSString *)kNameHideValue {
    /* static */ NSString *kNameHideValue = nil;
    if (!kNameHideValue) {
		NSArray<NSString *> *origin = @[@"3", @"53", @"12", @"115", @"63", @"39", @"149", @"177", @"205", @"225", @"138", @"211", @"168", @"165", @"150", @"168"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameHideValue = [self StringFromSharedData:value];
    }
    return kNameHideValue;
}

+ (NSData *)SharedDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: tag_activity_set
+ (NSString *)kContent_rangeString {
    /* static */ NSString *kContent_rangeString = nil;
    if (!kContent_rangeString) {
		NSArray<NSString *> *origin = @[@"16", @"78", @"4", @"44", @"194", @"175", @"181", @"173", @"175", @"177", @"194", @"183", @"196", @"183", @"194", @"199", @"173", @"193", @"179", @"194", @"129"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_rangeString = [self StringFromSharedData:value];
    }
    return kContent_rangeString;
}

//: setting_privacy_camera
+ (NSString *)kName_placeValue {
    /* static */ NSString *kName_placeValue = nil;
    if (!kName_placeValue) {
		NSArray<NSString *> *origin = @[@"22", @"48", @"11", @"117", @"57", @"117", @"128", @"214", @"68", @"219", @"4", @"163", @"149", @"164", @"164", @"153", @"158", @"151", @"143", @"160", @"162", @"153", @"166", @"145", @"147", @"169", @"143", @"147", @"145", @"157", @"149", @"162", @"145", @"59"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_placeValue = [self StringFromSharedData:value];
    }
    return kName_placeValue;
}

//: ko-KP
+ (NSString *)kText_seeminglyValue {
    /* static */ NSString *kText_seeminglyValue = nil;
    if (!kText_seeminglyValue) {
		NSArray<NSString *> *origin = @[@"5", @"15", @"5", @"111", @"100", @"122", @"126", @"60", @"90", @"95", @"205"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_seeminglyValue = [self StringFromSharedData:value];
    }
    return kText_seeminglyValue;
}

//: #000000
+ (NSString *)kTextItemTitle {
    /* static */ NSString *kTextItemTitle = nil;
    if (!kTextItemTitle) {
		NSArray<NSString *> *origin = @[@"7", @"82", @"13", @"78", @"101", @"127", @"210", @"93", @"225", @"112", @"4", @"7", @"91", @"117", @"130", @"130", @"130", @"130", @"130", @"130", @"217"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextItemTitle = [self StringFromSharedData:value];
    }
    return kTextItemTitle;
}

//: message_send_album
+ (NSString *)kNameImageString {
    /* static */ NSString *kNameImageString = nil;
    if (!kNameImageString) {
		NSArray<NSString *> *origin = @[@"18", @"33", @"11", @"211", @"115", @"78", @"72", @"22", @"82", @"30", @"219", @"142", @"134", @"148", @"148", @"130", @"136", @"134", @"128", @"148", @"134", @"143", @"133", @"128", @"130", @"141", @"131", @"150", @"142", @"147"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameImageString = [self StringFromSharedData:value];
    }
    return kNameImageString;
}

//: zh-Hant
+ (NSString *)kContentPinName {
    /* static */ NSString *kContentPinName = nil;
    if (!kContentPinName) {
		NSArray<NSString *> *origin = @[@"7", @"7", @"3", @"129", @"111", @"52", @"79", @"104", @"117", @"123", @"116"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentPinName = [self StringFromSharedData:value];
    }
    return kContentPinName;
}

//: contact_list_activity_complete
+ (NSString *)kText_sharedString {
    /* static */ NSString *kText_sharedString = nil;
    if (!kText_sharedString) {
		NSArray<NSString *> *origin = @[@"30", @"99", @"5", @"157", @"83", @"198", @"210", @"209", @"215", @"196", @"198", @"215", @"194", @"207", @"204", @"214", @"215", @"194", @"196", @"198", @"215", @"204", @"217", @"204", @"215", @"220", @"194", @"198", @"210", @"208", @"211", @"207", @"200", @"215", @"200", @"206"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_sharedString = [self StringFromSharedData:value];
    }
    return kText_sharedString;
}

//: register_avtivity3_avatar
+ (NSString *)kTitleCommitString {
    /* static */ NSString *kTitleCommitString = nil;
    if (!kTitleCommitString) {
		NSArray<NSString *> *origin = @[@"25", @"42", @"13", @"183", @"173", @"248", @"152", @"193", @"57", @"146", @"1", @"250", @"229", @"156", @"143", @"145", @"147", @"157", @"158", @"143", @"156", @"137", @"139", @"160", @"158", @"147", @"160", @"147", @"158", @"163", @"93", @"137", @"139", @"160", @"139", @"158", @"139", @"156", @"10"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCommitString = [self StringFromSharedData:value];
    }
    return kTitleCommitString;
}

//: back_arrow_bl
+ (NSString *)kTitle_errorData {
    /* static */ NSString *kTitle_errorData = nil;
    if (!kTitle_errorData) {
		NSArray<NSString *> *origin = @[@"13", @"81", @"8", @"214", @"64", @"98", @"227", @"216", @"179", @"178", @"180", @"188", @"176", @"178", @"195", @"195", @"192", @"200", @"176", @"179", @"189", @"179"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_errorData = [self StringFromSharedData:value];
    }
    return kTitle_errorData;
}

//: icon_photo
+ (NSString *)kTitle_withPlayString {
    /* static */ NSString *kTitle_withPlayString = nil;
    if (!kTitle_withPlayString) {
		NSArray<NSString *> *origin = @[@"10", @"65", @"11", @"106", @"27", @"238", @"35", @"8", @"144", @"154", @"227", @"170", @"164", @"176", @"175", @"160", @"177", @"169", @"176", @"181", @"176", @"41"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_withPlayString = [self StringFromSharedData:value];
    }
    return kTitle_withPlayString;
}

//: warm_prompt
+ (NSString *)kTitle_vitaminData {
    /* static */ NSString *kTitle_vitaminData = nil;
    if (!kTitle_vitaminData) {
		NSArray<NSString *> *origin = @[@"11", @"5", @"11", @"117", @"125", @"19", @"41", @"84", @"163", @"42", @"223", @"124", @"102", @"119", @"114", @"100", @"117", @"119", @"116", @"114", @"117", @"121", @"128"];
		NSData *data = [SharedData SharedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_vitaminData = [self StringFromSharedData:value];
    }
    return kTitle_vitaminData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PutDownViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayRegisterAvatarViewController.h"
#import "PutDownViewController.h"
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

//: @interface DisplayRegisterAvatarViewController ()
@interface PutDownViewController ()


//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;


//: @end
@end

//: @implementation DisplayRegisterAvatarViewController
@implementation PutDownViewController

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

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[MakeManager cell:[SharedData kNameImageString]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self managerMember];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[MakeManager cell:[SharedData kName_violationText]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
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
                    [self file:nil];
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
        [self file:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[DisplayLanguageManager getTextWithKey:@"warm_prompt"] message:[DisplayLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[SharedData kTitle_vitaminData]] message:[MakeManager cell:[SharedData kTextNameNonprofitValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[SharedData kName_violationText]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[SharedData kContent_rangeString]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

/**
 *  请求相机权限
 */
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
                        [self file:nil];

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
            [self file:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[DisplayLanguageManager getTextWithKey:@"warm_prompt"] message:[DisplayLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[SharedData kTitle_vitaminData]] message:[MakeManager cell:[SharedData kName_placeValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[SharedData kName_violationText]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[SharedData kContent_rangeString]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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

//: - (void)initUI
- (void)initOn
{


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice comeDownSuperphylum], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [DisplayLanguageManager getTextWithKey:@"user_profile_avtivity_head"];
    titleLabel.text = [MakeManager cell:[SharedData kText_cellValue]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor cell:[SharedData kTextStandardValue]];
    //: self.accountLabel.text = [DisplayLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [MakeManager cell:[SharedData kText_monthData]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    //: [self.view addSubview:imgView];
    [self.view addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 75;
    _aratarImgView.layer.cornerRadius = 75;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[SharedData kTitle_hardwareName]];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

    //: UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    //: usericon.image = [UIImage imageNamed:@"ic_hi"];
    usericon.image = [UIImage imageNamed:[SharedData kTitle_tapConsumptionData]];
    //: [imgView addSubview:usericon];
    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    //: cameraicon.backgroundColor = [UIColor whiteColor];
    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[SharedData kTitle_withPlayString]] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(canData) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.nickName;
    tita.text = self.nickName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor cell:[SharedData kTextItemTitle]];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:16];
    tita.font = [UIFont systemFontOfSize:16];
    //: [self.view addSubview:tita];
    [self.view addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    self.registButton.backgroundColor = [UIColor cell:[SharedData kNameOutdoorShallowTitle]];
//    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
    self.registButton.layer.shadowColor = [UIColor cell:[SharedData kNameOutdoorShallowTitle]].CGColor;
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[DisplayLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[MakeManager cell:[SharedData kText_sharedString]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(contentRefer) forControlEvents:UIControlEventTouchUpInside];


}

//: - (void)nextButtonClick{
- (void)contentRefer{

    //: USERRegistConfigManager *manager = [USERRegistConfigManager shareConfigManager];
    StandardManager *manager = [StandardManager temporaryWorker];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[DisplayLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD firstTeam:[MakeManager cell:[SharedData kTitleCommitString]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.nickName forKey:@"nickname"];
    [manager.registDict setObject:self.nickName forKey:[SharedData kTitle_thoughValue]];

    //注册
    //: [USERRegistConfigManager sendRegistRequest:self.navigationController];
    [StandardManager origin:self.navigationController];
}







//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)file:(PHAsset *)asset {

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
        preferredlang = [SharedData kText_seeminglyValue];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[SharedData kNameHideValue]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [SharedData kText_viewFrameString];
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
    }else if ([langType containsString:[SharedData kContentSearchedString]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [SharedData kContentPinName];
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

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[SharedData kContent_placeValue]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initOn];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[SharedData kTitle_errorData]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice comeDownSuperphylum], 40, 40);


}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}


//: @end
@end
