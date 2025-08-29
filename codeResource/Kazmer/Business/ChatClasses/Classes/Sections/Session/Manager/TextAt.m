
#import <Foundation/Foundation.h>

typedef struct {
    Byte saveFie;
    Byte *adolescent;
    unsigned int heavilyGrow;
	int securityEasily;
	int galleryFavorable;
} StructSpecifyData;

@interface SpecifyData : NSObject

@end

@implementation SpecifyData

+ (NSData *)SpecifyDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)SpecifyDataToByte:(StructSpecifyData *)data {
    for (int i = 0; i < data->heavilyGrow; i++) {
        data->adolescent[i] ^= data->saveFie;
    }
    data->adolescent[data->heavilyGrow] = 0;
	if (data->heavilyGrow >= 2) {
		data->securityEasily = data->adolescent[0];
		data->galleryFavorable = data->adolescent[1];
	}
    return data->adolescent;
}

+ (NSString *)StringFromSpecifyData:(StructSpecifyData *)data {
    return [NSString stringWithUTF8String:(char *)[self SpecifyDataToByte:data]];
}

//: 确认转发给
+ (NSString *)kTextBendString {
    /* static */ NSString *kTextBendString = nil;
    if (!kTextBendString) {
		NSArray<NSString *> *origin = @[@"177", @"247", @"248", @"190", @"248", @"242", @"190", @"235", @"250", @"179", @"217", @"199", @"177", @"237", @"207", @"187"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){86, (Byte *)data.bytes, 15, 83, 33};
        kTextBendString = [self StringFromSpecifyData:&value];
    }
    return kTextBendString;
}

//: message_super_team
+ (NSString *)kTextMarriedData {
    /* static */ NSString *kTextMarriedData = nil;
    if (!kTextMarriedData) {
		NSArray<NSString *> *origin = @[@"120", @"112", @"102", @"102", @"116", @"114", @"112", @"74", @"102", @"96", @"101", @"112", @"103", @"74", @"97", @"112", @"116", @"120", @"229"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){21, (Byte *)data.bytes, 18, 61, 169};
        kTextMarriedData = [self StringFromSpecifyData:&value];
    }
    return kTextMarriedData;
}

//: 确认转发
+ (NSString *)kContentRegulatorValue {
    /* static */ NSString *kContentRegulatorValue = nil;
    if (!kContentRegulatorValue) {
		NSArray<NSString *> *origin = @[@"178", @"244", @"251", @"189", @"251", @"241", @"189", @"232", @"249", @"176", @"218", @"196", @"1"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){85, (Byte *)data.bytes, 12, 77, 95};
        kContentRegulatorValue = [self StringFromSpecifyData:&value];
    }
    return kContentRegulatorValue;
}

//: contact_tag_fragment_cancel
+ (NSString *)kName_giftedRentalString {
    /* static */ NSString *kName_giftedRentalString = nil;
    if (!kName_giftedRentalString) {
		NSArray<NSString *> *origin = @[@"87", @"91", @"90", @"64", @"85", @"87", @"64", @"107", @"64", @"85", @"83", @"107", @"82", @"70", @"85", @"83", @"89", @"81", @"90", @"64", @"107", @"87", @"85", @"90", @"87", @"81", @"88", @"160"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){52, (Byte *)data.bytes, 27, 117, 7};
        kName_giftedRentalString = [self StringFromSpecifyData:&value];
    }
    return kName_giftedRentalString;
}

//: 选择会话类型
+ (NSString *)kContentStandardThereName {
    /* static */ NSString *kContentStandardThereName = nil;
    if (!kContentStandardThereName) {
		NSArray<NSString *> *origin = @[@"197", @"172", @"165", @"202", @"167", @"133", @"200", @"144", @"182", @"196", @"131", @"177", @"203", @"157", @"151", @"201", @"178", @"167", @"108"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){44, (Byte *)data.bytes, 18, 243, 244};
        kContentStandardThereName = [self StringFromSpecifyData:&value];
    }
    return kContentStandardThereName;
}

//: 转发失败
+ (NSString *)kTitleReputationData {
    /* static */ NSString *kTitleReputationData = nil;
    if (!kTitleReputationData) {
		NSArray<NSString *> *origin = @[@"67", @"22", @"7", @"78", @"36", @"58", @"78", @"15", @"26", @"67", @"31", @"14", @"60"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){171, (Byte *)data.bytes, 12, 3, 16};
        kTitleReputationData = [self StringFromSpecifyData:&value];
    }
    return kTitleReputationData;
}

//: watch_multiretweet_activity_person
+ (NSString *)kName_squareTitle {
    /* static */ NSString *kName_squareTitle = nil;
    if (!kName_squareTitle) {
		NSArray<NSString *> *origin = @[@"70", @"80", @"69", @"82", @"89", @"110", @"92", @"68", @"93", @"69", @"88", @"67", @"84", @"69", @"70", @"84", @"84", @"69", @"110", @"80", @"82", @"69", @"88", @"71", @"88", @"69", @"72", @"110", @"65", @"84", @"67", @"66", @"94", @"95", @"109"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){49, (Byte *)data.bytes, 34, 136, 1};
        kName_squareTitle = [self StringFromSpecifyData:&value];
    }
    return kName_squareTitle;
}

//: %@.code:%zd
+ (NSString *)kName_collegeHardwareData {
    /* static */ NSString *kName_collegeHardwareData = nil;
    if (!kName_collegeHardwareData) {
		NSArray<NSString *> *origin = @[@"5", @"96", @"14", @"67", @"79", @"68", @"69", @"26", @"5", @"90", @"68", @"240"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){32, (Byte *)data.bytes, 11, 128, 162};
        kName_collegeHardwareData = [self StringFromSpecifyData:&value];
    }
    return kName_collegeHardwareData;
}

//: contact_fragment_group
+ (NSString *)kNameSeedValue {
    /* static */ NSString *kNameSeedValue = nil;
    if (!kNameSeedValue) {
		NSArray<NSString *> *origin = @[@"222", @"210", @"211", @"201", @"220", @"222", @"201", @"226", @"219", @"207", @"220", @"218", @"208", @"216", @"211", @"201", @"226", @"218", @"207", @"210", @"200", @"205", @"34"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){189, (Byte *)data.bytes, 22, 80, 246};
        kNameSeedValue = [self StringFromSpecifyData:&value];
    }
    return kNameSeedValue;
}

//: 已发送
+ (NSString *)kTitle_leadingValue {
    /* static */ NSString *kTitle_leadingValue = nil;
    if (!kTitle_leadingValue) {
		NSArray<NSString *> *origin = @[@"222", @"140", @"137", @"222", @"180", @"170", @"210", @"187", @"186", @"79"];
		NSData *data = [SpecifyData SpecifyDataToData:origin];
        StructSpecifyData value = (StructSpecifyData){59, (Byte *)data.bytes, 9, 201, 114};
        kTitle_leadingValue = [self StringFromSpecifyData:&value];
    }
    return kTitle_leadingValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextAt.m
// Mortification
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFChatUIManager.h"
#import "TextAt.h"
//: #import "FFFContactSelectConfig.h"
#import "QueryConfig.h"
//: #import "FFFContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "UIView+FFFToast.h"
#import "UIView+VisualProperty.h"

//: @implementation FFFChatUIManager
@implementation TextAt

//: + (instancetype)sharedManager
+ (instancetype)member
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static FFFChatUIManager *instance;
    static TextAt *instance;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [self.alloc init];
        instance = [self.alloc init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC
- (void)markContainer:(NIMMessage *)message dateController:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[MakeManager cell:[SpecifyData kContentStandardThereName]] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[MakeManager cell:[SpecifyData kName_squareTitle]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        MakeAction *config = [[MakeAction alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self directKeyController:message remove:session tableContainer:fromVC];
        //: };
        };
        //: [vc show];
        [vc recent];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[MakeManager cell:[SpecifyData kNameSeedValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        LabelTarget *config = [[LabelTarget alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self directKeyController:message remove:session tableContainer:fromVC];
        //: };
        };
        //: [vc show];
        [vc recent];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[MakeManager cell:[SpecifyData kTextMarriedData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        LabelTarget *config = [[LabelTarget alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self directKeyController:message remove:session tableContainer:fromVC];
        //: };
        };
        //: [vc show];
        [vc recent];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[MakeManager cell:[SpecifyData kName_giftedRentalString]] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)directKeyController:(NIMMessage *)message remove:(NIMSession *)session tableContainer:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Mortification text] tingVoice:session.sessionId keepingOption:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Mortification text] ability:session.sessionId naturalEvent_strong:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Mortification text] cellList:session.sessionId view:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString([SpecifyData kTextBendString], nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString([SpecifyData kContentRegulatorValue], nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: if (message.session) {
        if (message.session) {
            //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
        }
        //: if (error) {
        if (error) {
            //: NSString *errorMessage = [NSString stringWithFormat:@"%@.code:%zd", NSLocalizedString(@"转发失败", nil), error.code];
            NSString *errorMessage = [NSString stringWithFormat:[SpecifyData kName_collegeHardwareData], NSLocalizedString([SpecifyData kTitleReputationData], nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view view:errorMessage more:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view view:NSLocalizedString([SpecifyData kTitle_leadingValue], nil) more:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end