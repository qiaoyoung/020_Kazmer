
#import <Foundation/Foundation.h>

typedef struct {
    Byte itVersus;
    Byte *teach;
    unsigned int traditionalRather;
	int off;
	int capture;
} StructStepData;

@interface StepData : NSObject

+ (instancetype)sharedInstance;

//: mobile
@property (nonatomic, copy) NSString *kTitlePlayName;

//: password
@property (nonatomic, copy) NSString *kNameClimateString;

//: passwd
@property (nonatomic, copy) NSString *kText_receptionString;

//: head_default
@property (nonatomic, copy) NSString *kContentPorchString;

//: invitecode
@property (nonatomic, copy) NSString *kTextVolunteerData;

//: msg
@property (nonatomic, copy) NSString *kContentHerbInspectorString;

//: question
@property (nonatomic, copy) NSString *kName_productiveString;

//: answer
@property (nonatomic, copy) NSString *kName_itemGarbageValue;

//: code
@property (nonatomic, copy) NSString *kTitle_surelyVarietyString;

//: register_avtivity3_register_fail
@property (nonatomic, copy) NSString *kNameIronValue;

//: UserPassWord
@property (nonatomic, copy) NSString *kName_serveHydraValue;

//: mobilecode
@property (nonatomic, copy) NSString *kContent_estimatedRuralString;

//: /user/register
@property (nonatomic, copy) NSString *kName_regulatorString;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *kTextRentalTitle;

//: client
@property (nonatomic, copy) NSString *kTextLessData;

//: /user/smsregister
@property (nonatomic, copy) NSString *kName_satisfyValue;

//: RegistFinshNotification
@property (nonatomic, copy) NSString *kTitlePrecedentData;

//: iOS
@property (nonatomic, copy) NSString *kName_operaFilePoetValue;

//: /validate/check_username_available
@property (nonatomic, copy) NSString *kTitle_harassmentData;

//: username
@property (nonatomic, copy) NSString *kTitle_folioValue;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *kContent_tribeString;

//: UserAccount
@property (nonatomic, copy) NSString *kName_nousValue;

@end

@implementation StepData

+ (instancetype)sharedInstance {
    static StepData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)StepDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)StepDataToByte:(StructStepData *)data {
    for (int i = 0; i < data->traditionalRather; i++) {
        data->teach[i] ^= data->itVersus;
    }
    data->teach[data->traditionalRather] = 0;
	if (data->traditionalRather >= 2) {
		data->off = data->teach[0];
		data->capture = data->teach[1];
	}
    return data->teach;
}

- (NSString *)StringFromStepData:(StructStepData *)data {
    return [NSString stringWithUTF8String:(char *)[self StepDataToByte:data]];
}

//: /user/register
- (NSString *)kName_regulatorString {
    if (!_kName_regulatorString) {
		NSArray<NSString *> *origin = @[@"159", @"197", @"195", @"213", @"194", @"159", @"194", @"213", @"215", @"217", @"195", @"196", @"213", @"194", @"231"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){176, (Byte *)data.bytes, 14, 225, 185};
        _kName_regulatorString = [self StringFromStepData:&value];
    }
    return _kName_regulatorString;
}

//: mobilecode
- (NSString *)kContent_estimatedRuralString {
    if (!_kContent_estimatedRuralString) {
		NSArray<NSString *> *origin = @[@"105", @"107", @"102", @"109", @"104", @"97", @"103", @"107", @"96", @"97", @"111"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){4, (Byte *)data.bytes, 10, 86, 214};
        _kContent_estimatedRuralString = [self StringFromStepData:&value];
    }
    return _kContent_estimatedRuralString;
}

//: username
- (NSString *)kTitle_folioValue {
    if (!_kTitle_folioValue) {
		NSArray<NSString *> *origin = @[@"151", @"145", @"135", @"144", @"140", @"131", @"143", @"135", @"132"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){226, (Byte *)data.bytes, 8, 255, 185};
        _kTitle_folioValue = [self StringFromStepData:&value];
    }
    return _kTitle_folioValue;
}

//: UserAccount
- (NSString *)kName_nousValue {
    if (!_kName_nousValue) {
		NSArray<NSString *> *origin = @[@"199", @"225", @"247", @"224", @"211", @"241", @"241", @"253", @"231", @"252", @"230", @"123"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){146, (Byte *)data.bytes, 11, 98, 82};
        _kName_nousValue = [self StringFromStepData:&value];
    }
    return _kName_nousValue;
}

//: iOS
- (NSString *)kName_operaFilePoetValue {
    if (!_kName_operaFilePoetValue) {
		NSArray<NSString *> *origin = @[@"90", @"124", @"96", @"43"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){51, (Byte *)data.bytes, 3, 101, 99};
        _kName_operaFilePoetValue = [self StringFromStepData:&value];
    }
    return _kName_operaFilePoetValue;
}

//: question
- (NSString *)kName_productiveString {
    if (!_kName_productiveString) {
		NSArray<NSString *> *origin = @[@"151", @"147", @"131", @"149", @"146", @"143", @"137", @"136", @"102"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){230, (Byte *)data.bytes, 8, 138, 60};
        _kName_productiveString = [self StringFromStepData:&value];
    }
    return _kName_productiveString;
}

//: friend_verify_avtivity_net_error
- (NSString *)kContent_tribeString {
    if (!_kContent_tribeString) {
		NSArray<NSString *> *origin = @[@"71", @"83", @"72", @"68", @"79", @"69", @"126", @"87", @"68", @"83", @"72", @"71", @"88", @"126", @"64", @"87", @"85", @"72", @"87", @"72", @"85", @"88", @"126", @"79", @"68", @"85", @"126", @"68", @"83", @"83", @"78", @"83", @"231"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){33, (Byte *)data.bytes, 32, 45, 81};
        _kContent_tribeString = [self StringFromStepData:&value];
    }
    return _kContent_tribeString;
}

//: register_avtivity3_register_fail
- (NSString *)kNameIronValue {
    if (!_kNameIronValue) {
		NSArray<NSString *> *origin = @[@"97", @"118", @"116", @"122", @"96", @"103", @"118", @"97", @"76", @"114", @"101", @"103", @"122", @"101", @"122", @"103", @"106", @"32", @"76", @"97", @"118", @"116", @"122", @"96", @"103", @"118", @"97", @"76", @"117", @"114", @"122", @"127", @"238"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){19, (Byte *)data.bytes, 32, 187, 56};
        _kNameIronValue = [self StringFromStepData:&value];
    }
    return _kNameIronValue;
}

//: mobile
- (NSString *)kTitlePlayName {
    if (!_kTitlePlayName) {
		NSArray<NSString *> *origin = @[@"130", @"128", @"141", @"134", @"131", @"138", @"27"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){239, (Byte *)data.bytes, 6, 214, 61};
        _kTitlePlayName = [self StringFromStepData:&value];
    }
    return _kTitlePlayName;
}

//: UserPassWord
- (NSString *)kName_serveHydraValue {
    if (!_kName_serveHydraValue) {
		NSArray<NSString *> *origin = @[@"225", @"199", @"209", @"198", @"228", @"213", @"199", @"199", @"227", @"219", @"198", @"208", @"158"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){180, (Byte *)data.bytes, 12, 138, 171};
        _kName_serveHydraValue = [self StringFromStepData:&value];
    }
    return _kName_serveHydraValue;
}

//: head_default
- (NSString *)kContentPorchString {
    if (!_kContentPorchString) {
		NSArray<NSString *> *origin = @[@"213", @"216", @"220", @"217", @"226", @"217", @"216", @"219", @"220", @"200", @"209", @"201", @"100"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){189, (Byte *)data.bytes, 12, 113, 124};
        _kContentPorchString = [self StringFromStepData:&value];
    }
    return _kContentPorchString;
}

//: /validate/check_username_available
- (NSString *)kTitle_harassmentData {
    if (!_kTitle_harassmentData) {
		NSArray<NSString *> *origin = @[@"54", @"111", @"120", @"117", @"112", @"125", @"120", @"109", @"124", @"54", @"122", @"113", @"124", @"122", @"114", @"70", @"108", @"106", @"124", @"107", @"119", @"120", @"116", @"124", @"70", @"120", @"111", @"120", @"112", @"117", @"120", @"123", @"117", @"124", @"188"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){25, (Byte *)data.bytes, 34, 101, 93};
        _kTitle_harassmentData = [self StringFromStepData:&value];
    }
    return _kTitle_harassmentData;
}

//: invitecode
- (NSString *)kTextVolunteerData {
    if (!_kTextVolunteerData) {
		NSArray<NSString *> *origin = @[@"197", @"194", @"218", @"197", @"216", @"201", @"207", @"195", @"200", @"201", @"96"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){172, (Byte *)data.bytes, 10, 48, 253};
        _kTextVolunteerData = [self StringFromStepData:&value];
    }
    return _kTextVolunteerData;
}

//: client
- (NSString *)kTextLessData {
    if (!_kTextLessData) {
		NSArray<NSString *> *origin = @[@"30", @"17", @"20", @"24", @"19", @"9", @"204"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){125, (Byte *)data.bytes, 6, 5, 162};
        _kTextLessData = [self StringFromStepData:&value];
    }
    return _kTextLessData;
}

//: code
- (NSString *)kTitle_surelyVarietyString {
    if (!_kTitle_surelyVarietyString) {
		NSArray<NSString *> *origin = @[@"21", @"25", @"18", @"19", @"25"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){118, (Byte *)data.bytes, 4, 42, 88};
        _kTitle_surelyVarietyString = [self StringFromStepData:&value];
    }
    return _kTitle_surelyVarietyString;
}

//: answer
- (NSString *)kName_itemGarbageValue {
    if (!_kName_itemGarbageValue) {
		NSArray<NSString *> *origin = @[@"241", @"254", @"227", @"231", @"245", @"226", @"97"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){144, (Byte *)data.bytes, 6, 246, 1};
        _kName_itemGarbageValue = [self StringFromStepData:&value];
    }
    return _kName_itemGarbageValue;
}

//: RegistFinshNotification
- (NSString *)kTitlePrecedentData {
    if (!_kTitlePrecedentData) {
		NSArray<NSString *> *origin = @[@"17", @"38", @"36", @"42", @"48", @"55", @"5", @"42", @"45", @"48", @"43", @"13", @"44", @"55", @"42", @"37", @"42", @"32", @"34", @"55", @"42", @"44", @"45", @"132"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){67, (Byte *)data.bytes, 23, 244, 137};
        _kTitlePrecedentData = [self StringFromStepData:&value];
    }
    return _kTitlePrecedentData;
}

//: /user/ismustmobile
- (NSString *)kTextRentalTitle {
    if (!_kTextRentalTitle) {
		NSArray<NSString *> *origin = @[@"227", @"185", @"191", @"169", @"190", @"227", @"165", @"191", @"161", @"185", @"191", @"184", @"161", @"163", @"174", @"165", @"160", @"169", @"20"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){204, (Byte *)data.bytes, 18, 146, 16};
        _kTextRentalTitle = [self StringFromStepData:&value];
    }
    return _kTextRentalTitle;
}

//: passwd
- (NSString *)kText_receptionString {
    if (!_kText_receptionString) {
		NSArray<NSString *> *origin = @[@"186", @"171", @"185", @"185", @"189", @"174", @"106"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){202, (Byte *)data.bytes, 6, 147, 10};
        _kText_receptionString = [self StringFromStepData:&value];
    }
    return _kText_receptionString;
}

//: /user/smsregister
- (NSString *)kName_satisfyValue {
    if (!_kName_satisfyValue) {
		NSArray<NSString *> *origin = @[@"91", @"1", @"7", @"17", @"6", @"91", @"7", @"25", @"7", @"6", @"17", @"19", @"29", @"7", @"0", @"17", @"6", @"136"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){116, (Byte *)data.bytes, 17, 206, 13};
        _kName_satisfyValue = [self StringFromStepData:&value];
    }
    return _kName_satisfyValue;
}

//: password
- (NSString *)kNameClimateString {
    if (!_kNameClimateString) {
		NSArray<NSString *> *origin = @[@"113", @"96", @"114", @"114", @"118", @"110", @"115", @"101", @"125"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){1, (Byte *)data.bytes, 8, 111, 192};
        _kNameClimateString = [self StringFromStepData:&value];
    }
    return _kNameClimateString;
}

//: msg
- (NSString *)kContentHerbInspectorString {
    if (!_kContentHerbInspectorString) {
		NSArray<NSString *> *origin = @[@"1", @"31", @"11", @"252"];
		NSData *data = [StepData StepDataToData:origin];
        StructStepData value = (StructStepData){108, (Byte *)data.bytes, 3, 36, 237};
        _kContentHerbInspectorString = [self StringFromStepData:&value];
    }
    return _kContentHerbInspectorString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERRegistConfigManager.h"
#import "StandardManager.h"

//: @interface USERRegistConfigManager ()
@interface StandardManager ()
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: @end
@end

//: @implementation USERRegistConfigManager
@implementation StandardManager

//: static USERRegistConfigManager *shareConfigManager = nil;
static StandardManager *user_linkMessage = nil;

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL sucess, NSString * msg))complete {
+ (void)day:(NSString *)name target:(NSString *)pd eldestForCompleteness:(void(^)(BOOL sucess, NSString * msg))complete {

    //#define Server_first_regist_config    [NSString stringWithFormat:@"%@/api/validate/check_username_available",[ContextTeam sharedConfig].domainURL]
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/validate/check_username_available"] params:@{@"username":name , @"passwd":pd } isShow:NO success:^(id responseObject) {
    [BlendView descriptionDemonstrate:[NSString stringWithFormat:[StepData sharedInstance].kTitle_harassmentData] outsideAccount:@{[StepData sharedInstance].kTitle_folioValue:name , [StepData sharedInstance].kText_receptionString:pd } sprechgesangEnable:NO media:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[StepData sharedInstance].kTitle_surelyVarietyString];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict comment:[StepData sharedInstance].kContentHerbInspectorString];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: !complete ? : complete(YES,msg);
            !complete ? : complete(YES,msg);
        //: } else {
        } else {
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD firstTeam:msg];
            //: !complete ? : complete(NO,msg);
            !complete ? : complete(NO,msg);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } show:^(id responseObject, NSError *error) {
        //: !complete ? : complete(NO,[DisplayLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]);
        !complete ? : complete(NO,[MakeManager cell:[StepData sharedInstance].kContent_tribeString]);
    //: }];
    }];
}

//: + (void)sendRegistRequest:(UINavigationController *)nav{
+ (void)origin:(UINavigationController *)nav{

    //: [USERRegistConfigManager shareConfigManager].nav = nav;
    [StandardManager temporaryWorker].nav = nav;
    //: NSString *ismustmobile = [NIMUserDefaults standardUserDefaults].ismustmobile;
    NSString *ismustmobile = [TableContext name].ismustmobile;//是否手机

    //: if ([USERRegistConfigManager shareConfigManager].headerImage == nil) {
    if ([StandardManager temporaryWorker].headerImage == nil) {//默认头像
        //: [USERRegistConfigManager shareConfigManager].headerImage = [UIImage imageNamed:@"head_default"];
        [StandardManager temporaryWorker].headerImage = [UIImage imageNamed:[StepData sharedInstance].kContentPorchString];
    }

    //: if (ismustmobile.integerValue > 0) {
    if (ismustmobile.integerValue > 0) {
        //: [[USERRegistConfigManager shareConfigManager] mobileRegist];
        [[StandardManager temporaryWorker] viewVoice];
    //: }else{
    }else{
        //: [[USERRegistConfigManager shareConfigManager] accountRegist];
        [[StandardManager temporaryWorker] event];

    }

}

//: + (USERRegistConfigManager *)shareConfigManager {
+ (StandardManager *)temporaryWorker {
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (user_linkMessage == nil) {
            //: shareConfigManager = [[USERRegistConfigManager alloc] init];
            user_linkMessage = [[StandardManager alloc] init];

            //: [shareConfigManager registDictDefault];
            [user_linkMessage month];
        }
        //: return shareConfigManager;
        return user_linkMessage;
    }
}

//: + (void)refreshRegistConfig{
+ (void)magnitudeReplacement{

    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView descriptionDemonstrate:[NSString stringWithFormat:[StepData sharedInstance].kTextRentalTitle] outsideAccount:nil sprechgesangEnable:NO media:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } show:^(id responseObject, NSError *error) {

    //: }];
    }];
}


//: - (NSMutableDictionary *)registDictDefault{
- (NSMutableDictionary *)month{
    //: [USERRegistConfigManager shareConfigManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [StandardManager temporaryWorker].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: NSMutableDictionary *dict = [USERRegistConfigManager shareConfigManager].registDict;
    NSMutableDictionary *dict = [StandardManager temporaryWorker].registDict;
    //: [dict setObject:@"iOS" forKey:@"client"];
    [dict setObject:[StepData sharedInstance].kName_operaFilePoetValue forKey:[StepData sharedInstance].kTextLessData];
    //: [dict setObject:@"" forKey:@"invitecode"];
    [dict setObject:@"" forKey:[StepData sharedInstance].kTextVolunteerData];
    //: [dict setObject:@"" forKey:@"mobilecode"];
    [dict setObject:@"" forKey:[StepData sharedInstance].kContent_estimatedRuralString];
    //: [dict setObject:@"" forKey:@"question"];
    [dict setObject:@"" forKey:[StepData sharedInstance].kName_productiveString];
    //: [dict setObject:@"" forKey:@"answer"];
    [dict setObject:@"" forKey:[StepData sharedInstance].kName_itemGarbageValue];
    //: [dict setObject:@"1" forKey:@"gender"];
    [dict setObject:@"1" forKey:@"gender"];

    //: return [USERRegistConfigManager shareConfigManager].registDict;
    return [StandardManager temporaryWorker].registDict;
}

//: -(void)mobileRegist{
-(void)viewVoice{

    //: NSString *account = [[USERRegistConfigManager shareConfigManager].registDict newStringValueForKey:@"account"];
    NSString *account = [[StandardManager temporaryWorker].registDict comment:@"account"];
    //: [[USERRegistConfigManager shareConfigManager].registDict setObject:account forKey:@"mobile"];
    [[StandardManager temporaryWorker].registDict setObject:account forKey:[StepData sharedInstance].kTitlePlayName];

    //: NSDictionary *dict = [USERRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [StandardManager temporaryWorker].registDict;
    //: UIImage *image = [USERRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [StandardManager temporaryWorker].headerImage;

    //: if (!image) {
    if (!image) {

        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/smsregister"] parameters:dict images:@[UIImageJPEGRepresentation(image, 0.3)] progress:^(NSProgress *progress) {
        [BlendView noTing:[NSString stringWithFormat:[StepData sharedInstance].kName_satisfyValue] userId:dict show:@[UIImageJPEGRepresentation(image, 0.3)] images:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } name:^(id responseObject) {
            //: NSLog(@"%@",responseObject);
            //: [self.nav popToRootViewControllerAnimated:YES];
            [self.nav popToRootViewControllerAnimated:YES];


        //: } failed:^(id responseObject, NSError *error) {
        } roundColor:^(id responseObject, NSError *error) {
            //: NSLog(@"%@",error);

        //: }];
        }];
    //: }else{
    }else{
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/smsregister"] params:dict isShow:YES success:^(id responseObject) {
        [BlendView read:[NSString stringWithFormat:[StepData sharedInstance].kName_satisfyValue] query:dict showThan:YES green:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict comment:[StepData sharedInstance].kTitle_surelyVarietyString];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict comment:[StepData sharedInstance].kContentHerbInspectorString];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD firstTeam:msg];
            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];

                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: [notiDict setObject:[dict newStringValueForKey:@"account"] ? :@"" forKey:@"UserAccount"];
                [notiDict setObject:[dict comment:@"account"] ? :@"" forKey:[StepData sharedInstance].kName_nousValue];
                //: [notiDict setObject:[dict newStringValueForKey:@"password"] ? :@"" forKey:@"UserPassWord"];
                [notiDict setObject:[dict comment:[StepData sharedInstance].kNameClimateString] ? :@"" forKey:[StepData sharedInstance].kName_serveHydraValue];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[StepData sharedInstance].kTitlePrecedentData object:notiDict];


            }
        //: } failed:^(id responseObject, NSError *error) {
        } blue:^(id responseObject, NSError *error) {

        //: }];
        }];
    }


}

//: -(void)accountRegist{
-(void)event{

    //: NSDictionary *dict = [USERRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [StandardManager temporaryWorker].registDict;
    //: UIImage *image = [USERRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [StandardManager temporaryWorker].headerImage;
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image be:CGSizeMake(150, 150)];

    //: if (image) {
    if (image) {
        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/register"] parameters:dict images:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] progress:^(NSProgress *progress) {
        [BlendView noTing:[NSString stringWithFormat:[StepData sharedInstance].kName_regulatorString] userId:dict show:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] images:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } name:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict comment:[StepData sharedInstance].kTitle_surelyVarietyString];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict comment:[StepData sharedInstance].kContentHerbInspectorString];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD firstTeam:msg];

            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];
                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: NSString *mobile = [dict newStringValueForKey:@"mobile"] ? :@"";
                NSString *mobile = [dict comment:[StepData sharedInstance].kTitlePlayName] ? :@"";
                //: NSString *account = [dict newStringValueForKey:@"account"] ? :@"";
                NSString *account = [dict comment:@"account"] ? :@"";
                //: NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                //: NSString *UserPassWord = [dict newStringValueForKey:@"password"] ? :@"";
                NSString *UserPassWord = [dict comment:[StepData sharedInstance].kNameClimateString] ? :@"";
                //: [notiDict setObject:UserAccount forKey:@"UserAccount"];
                [notiDict setObject:UserAccount forKey:[StepData sharedInstance].kName_nousValue];
                //: [notiDict setObject:UserPassWord forKey:@"UserPassWord"];
                [notiDict setObject:UserPassWord forKey:[StepData sharedInstance].kName_serveHydraValue];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[StepData sharedInstance].kTitlePrecedentData object:notiDict];
            }

        //: } failed:^(id responseObject, NSError *error) {
        } roundColor:^(id responseObject, NSError *error) {
            //: [SVProgressHUD showMessage:[DisplayLanguageManager getTextWithKey:@"register_avtivity3_register_fail"]];
            [SVProgressHUD firstTeam:[MakeManager cell:[StepData sharedInstance].kNameIronValue]];

        //: }];
        }];
    }
}

//: @end
@end
//: __SAVE__ ignore_string [749.7,629.6,417.4]
