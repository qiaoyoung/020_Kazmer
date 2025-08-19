
#import <Foundation/Foundation.h>

@interface ColorRemindData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ColorRemindData

+ (instancetype)sharedInstance {
    static ColorRemindData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ColorRemindDataToCache:(Byte *)data {
    int soggy = data[0];
    int potGlory = data[1];
    for (int i = 0; i < soggy / 2; i++) {
        int begin = potGlory + i;
        int end = potGlory + soggy - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[potGlory + soggy] = 0;
    return data + potGlory;
}

- (NSString *)StringFromColorRemindData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ColorRemindDataToCache:data]];
}  

//: answer
- (NSString *)notiShipContent {
    /* static */ NSString *notiShipContent = nil;
    if (!notiShipContent) {
        Byte value[] = {6, 3, 184, 114, 101, 119, 115, 110, 97, 48};
        notiShipContent = [self StringFromColorRemindData:value];
    }
    return notiShipContent;
}

//: /validate/check_username_available
- (NSString *)appUndergoName {
    /* static */ NSString *appUndergoName = nil;
    if (!appUndergoName) {
        Byte value[] = {34, 7, 88, 100, 156, 61, 26, 101, 108, 98, 97, 108, 105, 97, 118, 97, 95, 101, 109, 97, 110, 114, 101, 115, 117, 95, 107, 99, 101, 104, 99, 47, 101, 116, 97, 100, 105, 108, 97, 118, 47, 143};
        appUndergoName = [self StringFromColorRemindData:value];
    }
    return appUndergoName;
}

//: code
- (NSString *)noti_bookStr {
    /* static */ NSString *noti_bookStr = nil;
    if (!noti_bookStr) {
        Byte value[] = {4, 4, 67, 162, 101, 100, 111, 99, 193};
        noti_bookStr = [self StringFromColorRemindData:value];
    }
    return noti_bookStr;
}

//: RegistFinshNotification
- (NSString *)show_nuclearCutIdent {
    /* static */ NSString *show_nuclearCutIdent = nil;
    if (!show_nuclearCutIdent) {
        Byte value[] = {23, 12, 68, 250, 179, 222, 4, 181, 137, 44, 107, 37, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 78, 104, 115, 110, 105, 70, 116, 115, 105, 103, 101, 82, 209};
        show_nuclearCutIdent = [self StringFromColorRemindData:value];
    }
    return show_nuclearCutIdent;
}

//: password
- (NSString *)kReloadFormat {
    /* static */ NSString *kReloadFormat = nil;
    if (!kReloadFormat) {
        Byte value[] = {8, 6, 11, 145, 195, 62, 100, 114, 111, 119, 115, 115, 97, 112, 74};
        kReloadFormat = [self StringFromColorRemindData:value];
    }
    return kReloadFormat;
}

//: UserAccount
- (NSString *)appFlowCartPath {
    /* static */ NSString *appFlowCartPath = nil;
    if (!appFlowCartPath) {
        Byte value[] = {11, 2, 116, 110, 117, 111, 99, 99, 65, 114, 101, 115, 85, 250};
        appFlowCartPath = [self StringFromColorRemindData:value];
    }
    return appFlowCartPath;
}

//: mobilecode
- (NSString *)m_scalePetitionStr {
    /* static */ NSString *m_scalePetitionStr = nil;
    if (!m_scalePetitionStr) {
        Byte value[] = {10, 6, 38, 10, 104, 232, 101, 100, 111, 99, 101, 108, 105, 98, 111, 109, 201};
        m_scalePetitionStr = [self StringFromColorRemindData:value];
    }
    return m_scalePetitionStr;
}

//: client
- (NSString *)main_manUrl {
    /* static */ NSString *main_manUrl = nil;
    if (!main_manUrl) {
        Byte value[] = {6, 11, 219, 1, 31, 71, 184, 171, 83, 148, 1, 116, 110, 101, 105, 108, 99, 154};
        main_manUrl = [self StringFromColorRemindData:value];
    }
    return main_manUrl;
}

//: iOS
- (NSString *)kPloyUrl {
    /* static */ NSString *kPloyUrl = nil;
    if (!kPloyUrl) {
        Byte value[] = {3, 3, 29, 83, 79, 105, 248};
        kPloyUrl = [self StringFromColorRemindData:value];
    }
    return kPloyUrl;
}

//: passwd
- (NSString *)main_carbohydrateFormat {
    /* static */ NSString *main_carbohydrateFormat = nil;
    if (!main_carbohydrateFormat) {
        Byte value[] = {6, 3, 205, 100, 119, 115, 115, 97, 112, 187};
        main_carbohydrateFormat = [self StringFromColorRemindData:value];
    }
    return main_carbohydrateFormat;
}

//: gender
- (NSString *)noti_eaterMessage {
    /* static */ NSString *noti_eaterMessage = nil;
    if (!noti_eaterMessage) {
        Byte value[] = {6, 8, 170, 235, 160, 57, 249, 209, 114, 101, 100, 110, 101, 103, 104};
        noti_eaterMessage = [self StringFromColorRemindData:value];
    }
    return noti_eaterMessage;
}

//: friend_verify_avtivity_net_error
- (NSString *)appControlShipStr {
    /* static */ NSString *appControlShipStr = nil;
    if (!appControlShipStr) {
        Byte value[] = {32, 9, 121, 206, 47, 128, 175, 122, 45, 114, 111, 114, 114, 101, 95, 116, 101, 110, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 121, 102, 105, 114, 101, 118, 95, 100, 110, 101, 105, 114, 102, 185};
        appControlShipStr = [self StringFromColorRemindData:value];
    }
    return appControlShipStr;
}

//: register_avtivity3_register_fail
- (NSString *)user_workplaceKey {
    /* static */ NSString *user_workplaceKey = nil;
    if (!user_workplaceKey) {
        Byte value[] = {32, 2, 108, 105, 97, 102, 95, 114, 101, 116, 115, 105, 103, 101, 114, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 229};
        user_workplaceKey = [self StringFromColorRemindData:value];
    }
    return user_workplaceKey;
}

//: invitecode
- (NSString *)user_meaningText {
    /* static */ NSString *user_meaningText = nil;
    if (!user_meaningText) {
        Byte value[] = {10, 11, 229, 76, 31, 87, 79, 33, 134, 49, 230, 101, 100, 111, 99, 101, 116, 105, 118, 110, 105, 64};
        user_meaningText = [self StringFromColorRemindData:value];
    }
    return user_meaningText;
}

//: head_default
- (NSString *)k_attractiveKey {
    /* static */ NSString *k_attractiveKey = nil;
    if (!k_attractiveKey) {
        Byte value[] = {12, 12, 8, 140, 36, 45, 210, 200, 217, 78, 242, 197, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 131};
        k_attractiveKey = [self StringFromColorRemindData:value];
    }
    return k_attractiveKey;
}

//: /user/smsregister
- (NSString *)kShootQuirePath {
    /* static */ NSString *kShootQuirePath = nil;
    if (!kShootQuirePath) {
        Byte value[] = {17, 3, 23, 114, 101, 116, 115, 105, 103, 101, 114, 115, 109, 115, 47, 114, 101, 115, 117, 47, 8};
        kShootQuirePath = [self StringFromColorRemindData:value];
    }
    return kShootQuirePath;
}

//: /user/register
- (NSString *)app_banHeavilyUrl {
    /* static */ NSString *app_banHeavilyUrl = nil;
    if (!app_banHeavilyUrl) {
        Byte value[] = {14, 7, 157, 180, 193, 169, 196, 114, 101, 116, 115, 105, 103, 101, 114, 47, 114, 101, 115, 117, 47, 6};
        app_banHeavilyUrl = [self StringFromColorRemindData:value];
    }
    return app_banHeavilyUrl;
}

//: UserPassWord
- (NSString *)mainMentalIdent {
    /* static */ NSString *mainMentalIdent = nil;
    if (!mainMentalIdent) {
        Byte value[] = {12, 12, 133, 159, 108, 94, 247, 216, 13, 39, 4, 158, 100, 114, 111, 87, 115, 115, 97, 80, 114, 101, 115, 85, 135};
        mainMentalIdent = [self StringFromColorRemindData:value];
    }
    return mainMentalIdent;
}

//: /user/ismustmobile
- (NSString *)m_removeData {
    /* static */ NSString *m_removeData = nil;
    if (!m_removeData) {
        Byte value[] = {18, 11, 184, 13, 50, 47, 216, 157, 98, 157, 142, 101, 108, 105, 98, 111, 109, 116, 115, 117, 109, 115, 105, 47, 114, 101, 115, 117, 47, 76};
        m_removeData = [self StringFromColorRemindData:value];
    }
    return m_removeData;
}

//: username
- (NSString *)appPopMsg {
    /* static */ NSString *appPopMsg = nil;
    if (!appPopMsg) {
        Byte value[] = {8, 3, 102, 101, 109, 97, 110, 114, 101, 115, 117, 230};
        appPopMsg = [self StringFromColorRemindData:value];
    }
    return appPopMsg;
}

//: account
- (NSString *)notiDuringUglyIdent {
    /* static */ NSString *notiDuringUglyIdent = nil;
    if (!notiDuringUglyIdent) {
        Byte value[] = {7, 12, 240, 84, 49, 254, 10, 254, 216, 146, 166, 64, 116, 110, 117, 111, 99, 99, 97, 217};
        notiDuringUglyIdent = [self StringFromColorRemindData:value];
    }
    return notiDuringUglyIdent;
}

//: msg
- (NSString *)noti_pointeMessage {
    /* static */ NSString *noti_pointeMessage = nil;
    if (!noti_pointeMessage) {
        Byte value[] = {3, 7, 56, 239, 22, 67, 217, 103, 115, 109, 53};
        noti_pointeMessage = [self StringFromColorRemindData:value];
    }
    return noti_pointeMessage;
}

//: question
- (NSString *)dreamPalEndMsg {
    /* static */ NSString *dreamPalEndMsg = nil;
    if (!dreamPalEndMsg) {
        Byte value[] = {8, 9, 234, 240, 230, 32, 106, 95, 30, 110, 111, 105, 116, 115, 101, 117, 113, 215};
        dreamPalEndMsg = [self StringFromColorRemindData:value];
    }
    return dreamPalEndMsg;
}

//: mobile
- (NSString *)showFishingUrl {
    /* static */ NSString *showFishingUrl = nil;
    if (!showFishingUrl) {
        Byte value[] = {6, 5, 97, 42, 230, 101, 108, 105, 98, 111, 109, 159};
        showFishingUrl = [self StringFromColorRemindData:value];
    }
    return showFishingUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarTo.m
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistConfigManager.h"
#import "BarTo.h"

//: @interface NTESRegistConfigManager ()
@interface BarTo ()
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: @end
@end

//: @implementation NTESRegistConfigManager
@implementation BarTo

//: static NTESRegistConfigManager *shareConfigManager = nil;
static BarTo *mainMinPathKey = nil;

//: + (NTESRegistConfigManager *)shareConfigManager {
+ (BarTo *)districtManager {
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (mainMinPathKey == nil) {
            //: shareConfigManager = [[NTESRegistConfigManager alloc] init];
            mainMinPathKey = [[BarTo alloc] init];

            //: [shareConfigManager registDictDefault];
            [mainMinPathKey itemContent];
        }
        //: return shareConfigManager;
        return mainMinPathKey;
    }
}

//: - (NSMutableDictionary *)registDictDefault{
- (NSMutableDictionary *)itemContent{
    //: [NTESRegistConfigManager shareConfigManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [BarTo districtManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: NSMutableDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSMutableDictionary *dict = [BarTo districtManager].registDict;
    //: [dict setObject:@"iOS" forKey:@"client"];
    [dict setObject:[[ColorRemindData sharedInstance] kPloyUrl] forKey:[[ColorRemindData sharedInstance] main_manUrl]];
    //: [dict setObject:@"" forKey:@"invitecode"];
    [dict setObject:@"" forKey:[[ColorRemindData sharedInstance] user_meaningText]];
    //: [dict setObject:@"" forKey:@"mobilecode"];
    [dict setObject:@"" forKey:[[ColorRemindData sharedInstance] m_scalePetitionStr]];
    //: [dict setObject:@"" forKey:@"question"];
    [dict setObject:@"" forKey:[[ColorRemindData sharedInstance] dreamPalEndMsg]];
    //: [dict setObject:@"" forKey:@"answer"];
    [dict setObject:@"" forKey:[[ColorRemindData sharedInstance] notiShipContent]];
    //: [dict setObject:@"1" forKey:@"gender"];
    [dict setObject:@"1" forKey:[[ColorRemindData sharedInstance] noti_eaterMessage]];

    //: return [NTESRegistConfigManager shareConfigManager].registDict;
    return [BarTo districtManager].registDict;
}

//: + (void)refreshRegistConfig{
+ (void)outsideReply{

    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [CoverPageMode circle:[NSString stringWithFormat:[[ColorRemindData sharedInstance] m_removeData]] godspeed:nil preserve:NO bottom:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } tagStandard:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL sucess, NSString * msg))complete {
+ (void)size:(NSString *)name ting:(NSString *)pd session:(void(^)(BOOL sucess, NSString * msg))complete {

    //#define Server_first_regist_config    [NSString stringWithFormat:@"%@/api/validate/check_username_available",[RecordInput sharedConfig].domainURL]
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/validate/check_username_available"] params:@{@"username":name , @"passwd":pd } isShow:NO success:^(id responseObject) {
    [CoverPageMode circle:[NSString stringWithFormat:[[ColorRemindData sharedInstance] appUndergoName]] godspeed:@{[[ColorRemindData sharedInstance] appPopMsg]:name , [[ColorRemindData sharedInstance] main_carbohydrateFormat]:pd } preserve:NO bottom:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[[ColorRemindData sharedInstance] noti_bookStr]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict record:[[ColorRemindData sharedInstance] noti_pointeMessage]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: !complete ? : complete(YES,msg);
            !complete ? : complete(YES,msg);
        //: } else {
        } else {
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD index:msg];
            //: !complete ? : complete(NO,msg);
            !complete ? : complete(NO,msg);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } tagStandard:^(id responseObject, NSError *error) {
        //: !complete ? : complete(NO,[WatchLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]);
        !complete ? : complete(NO,[PaintedNaturalLanguageTo exhibit:[[ColorRemindData sharedInstance] appControlShipStr]]);
    //: }];
    }];
}


//: + (void)sendRegistRequest:(UINavigationController *)nav{
+ (void)with:(UINavigationController *)nav{

    //: [NTESRegistConfigManager shareConfigManager].nav = nav;
    [BarTo districtManager].nav = nav;
    //: NSString *ismustmobile = [NIMUserDefaults standardUserDefaults].ismustmobile;
    NSString *ismustmobile = [OnName user].ismustmobile;//是否手机

    //: if ([NTESRegistConfigManager shareConfigManager].headerImage == nil) {
    if ([BarTo districtManager].headerImage == nil) {//默认头像
        //: [NTESRegistConfigManager shareConfigManager].headerImage = [UIImage imageNamed:@"head_default"];
        [BarTo districtManager].headerImage = [UIImage imageNamed:[[ColorRemindData sharedInstance] k_attractiveKey]];
    }

    //: if (ismustmobile.integerValue > 0) {
    if (ismustmobile.integerValue > 0) {
        //: [[NTESRegistConfigManager shareConfigManager] mobileRegist];
        [[BarTo districtManager] showRegist];
    //: }else{
    }else{
        //: [[NTESRegistConfigManager shareConfigManager] accountRegist];
        [[BarTo districtManager] optionRegist];

    }

}

//: -(void)mobileRegist{
-(void)showRegist{

    //: NSString *account = [[NTESRegistConfigManager shareConfigManager].registDict newStringValueForKey:@"account"];
    NSString *account = [[BarTo districtManager].registDict record:[[ColorRemindData sharedInstance] notiDuringUglyIdent]];
    //: [[NTESRegistConfigManager shareConfigManager].registDict setObject:account forKey:@"mobile"];
    [[BarTo districtManager].registDict setObject:account forKey:[[ColorRemindData sharedInstance] showFishingUrl]];

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [BarTo districtManager].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [BarTo districtManager].headerImage;

    //: if (!image) {
    if (!image) {

        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/smsregister"] parameters:dict images:@[UIImageJPEGRepresentation(image, 0.3)] progress:^(NSProgress *progress) {
        [CoverPageMode contentSearched:[NSString stringWithFormat:[[ColorRemindData sharedInstance] kShootQuirePath]] title:dict pictureFailed:@[UIImageJPEGRepresentation(image, 0.3)] message:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } complete:^(id responseObject) {
            //: NSLog(@"%@",responseObject);
            //: [self.nav popToRootViewControllerAnimated:YES];
            [self.nav popToRootViewControllerAnimated:YES];


        //: } failed:^(id responseObject, NSError *error) {
        } container:^(id responseObject, NSError *error) {
            //: NSLog(@"%@",error);

        //: }];
        }];
    //: }else{
    }else{
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/smsregister"] params:dict isShow:YES success:^(id responseObject) {
        [CoverPageMode bubbleFailed:[NSString stringWithFormat:[[ColorRemindData sharedInstance] kShootQuirePath]] reload_strong:dict with:YES forward:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict record:[[ColorRemindData sharedInstance] noti_bookStr]];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict record:[[ColorRemindData sharedInstance] noti_pointeMessage]];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD index:msg];
            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];

                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: [notiDict setObject:[dict newStringValueForKey:@"account"] ? :@"" forKey:@"UserAccount"];
                [notiDict setObject:[dict record:[[ColorRemindData sharedInstance] notiDuringUglyIdent]] ? :@"" forKey:[[ColorRemindData sharedInstance] appFlowCartPath]];
                //: [notiDict setObject:[dict newStringValueForKey:@"password"] ? :@"" forKey:@"UserPassWord"];
                [notiDict setObject:[dict record:[[ColorRemindData sharedInstance] kReloadFormat]] ? :@"" forKey:[[ColorRemindData sharedInstance] mainMentalIdent]];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[[ColorRemindData sharedInstance] show_nuclearCutIdent] object:notiDict];


            }
        //: } failed:^(id responseObject, NSError *error) {
        } title:^(id responseObject, NSError *error) {

        //: }];
        }];
    }


}

//: -(void)accountRegist{
-(void)optionRegist{

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [BarTo districtManager].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [BarTo districtManager].headerImage;
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image value:CGSizeMake(150, 150)];

    //: if (image) {
    if (image) {
        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/register"] parameters:dict images:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] progress:^(NSProgress *progress) {
        [CoverPageMode contentSearched:[NSString stringWithFormat:[[ColorRemindData sharedInstance] app_banHeavilyUrl]] title:dict pictureFailed:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] message:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } complete:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict record:[[ColorRemindData sharedInstance] noti_bookStr]];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict record:[[ColorRemindData sharedInstance] noti_pointeMessage]];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD index:msg];

            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];
                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: NSString *mobile = [dict newStringValueForKey:@"mobile"] ? :@"";
                NSString *mobile = [dict record:[[ColorRemindData sharedInstance] showFishingUrl]] ? :@"";
                //: NSString *account = [dict newStringValueForKey:@"account"] ? :@"";
                NSString *account = [dict record:[[ColorRemindData sharedInstance] notiDuringUglyIdent]] ? :@"";
                //: NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                //: NSString *UserPassWord = [dict newStringValueForKey:@"password"] ? :@"";
                NSString *UserPassWord = [dict record:[[ColorRemindData sharedInstance] kReloadFormat]] ? :@"";
                //: [notiDict setObject:UserAccount forKey:@"UserAccount"];
                [notiDict setObject:UserAccount forKey:[[ColorRemindData sharedInstance] appFlowCartPath]];
                //: [notiDict setObject:UserPassWord forKey:@"UserPassWord"];
                [notiDict setObject:UserPassWord forKey:[[ColorRemindData sharedInstance] mainMentalIdent]];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[[ColorRemindData sharedInstance] show_nuclearCutIdent] object:notiDict];
            }

        //: } failed:^(id responseObject, NSError *error) {
        } container:^(id responseObject, NSError *error) {
            //: [SVProgressHUD showMessage:[WatchLanguageManager getTextWithKey:@"register_avtivity3_register_fail"]];
            [SVProgressHUD index:[PaintedNaturalLanguageTo exhibit:[[ColorRemindData sharedInstance] user_workplaceKey]]];

        //: }];
        }];
    }
}

//: @end
@end
