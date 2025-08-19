
#import <Foundation/Foundation.h>

typedef struct {
    Byte compete;
    Byte *huddled;
    unsigned int reported;
	int numberSham;
	int collectImage;
	int hullo;
} StructConventMaxData;

@interface ConventMaxData : NSObject

+ (instancetype)sharedInstance;

//: %@.code:%zd
@property (nonatomic, copy) NSString *dreamCollectiveAchieveKey;

//: contact_fragment_group
@property (nonatomic, copy) NSString *user_responseText;

//: 转发失败
@property (nonatomic, copy) NSString *appHonorFearTubePath;

//: 选择会话类型
@property (nonatomic, copy) NSString *main_sueInevitableMessage;

//: message_super_team
@property (nonatomic, copy) NSString *k_neatStr;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *showLoudKinUrl;

//: 确认转发给
@property (nonatomic, copy) NSString *noti_teamFeverStr;

//: 已发送
@property (nonatomic, copy) NSString *dream_collectFormat;

//: watch_multiretweet_activity_person
@property (nonatomic, copy) NSString *notiConsultantTitle;

//: 确认转发
@property (nonatomic, copy) NSString *user_centerRetainControlPath;

@end

@implementation ConventMaxData

+ (instancetype)sharedInstance {
    static ConventMaxData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ConventMaxDataToByte:(StructConventMaxData *)data {
    for (int i = 0; i < data->reported; i++) {
        data->huddled[i] ^= data->compete;
    }
    data->huddled[data->reported] = 0;
	if (data->reported >= 3) {
		data->numberSham = data->huddled[0];
		data->collectImage = data->huddled[1];
		data->hullo = data->huddled[2];
	}
    return data->huddled;
}

- (NSString *)StringFromConventMaxData:(StructConventMaxData *)data {
    return [NSString stringWithUTF8String:(char *)[self ConventMaxDataToByte:data]];
}

//: contact_tag_fragment_cancel
- (NSString *)showLoudKinUrl {
    if (!_showLoudKinUrl) {
        StructConventMaxData value = (StructConventMaxData){137, (Byte []){234, 230, 231, 253, 232, 234, 253, 214, 253, 232, 238, 214, 239, 251, 232, 238, 228, 236, 231, 253, 214, 234, 232, 231, 234, 236, 229, 38}, 27, 42, 150, 222};
        _showLoudKinUrl = [self StringFromConventMaxData:&value];
    }
    return _showLoudKinUrl;
}

//: message_super_team
- (NSString *)k_neatStr {
    if (!_k_neatStr) {
        StructConventMaxData value = (StructConventMaxData){159, (Byte []){242, 250, 236, 236, 254, 248, 250, 192, 236, 234, 239, 250, 237, 192, 235, 250, 254, 242, 27}, 18, 64, 4, 124};
        _k_neatStr = [self StringFromConventMaxData:&value];
    }
    return _k_neatStr;
}

//: %@.code:%zd
- (NSString *)dreamCollectiveAchieveKey {
    if (!_dreamCollectiveAchieveKey) {
        StructConventMaxData value = (StructConventMaxData){209, (Byte []){244, 145, 255, 178, 190, 181, 180, 235, 244, 171, 181, 29}, 11, 103, 60, 45};
        _dreamCollectiveAchieveKey = [self StringFromConventMaxData:&value];
    }
    return _dreamCollectiveAchieveKey;
}

//: 确认转发给
- (NSString *)noti_teamFeverStr {
    if (!_noti_teamFeverStr) {
        StructConventMaxData value = (StructConventMaxData){107, (Byte []){140, 202, 197, 131, 197, 207, 131, 214, 199, 142, 228, 250, 140, 208, 242, 103}, 15, 40, 168, 58};
        _noti_teamFeverStr = [self StringFromConventMaxData:&value];
    }
    return _noti_teamFeverStr;
}

//: contact_fragment_group
- (NSString *)user_responseText {
    if (!_user_responseText) {
        StructConventMaxData value = (StructConventMaxData){217, (Byte []){186, 182, 183, 173, 184, 186, 173, 134, 191, 171, 184, 190, 180, 188, 183, 173, 134, 190, 171, 182, 172, 169, 199}, 22, 218, 159, 28};
        _user_responseText = [self StringFromConventMaxData:&value];
    }
    return _user_responseText;
}

//: 已发送
- (NSString *)dream_collectFormat {
    if (!_dream_collectFormat) {
        StructConventMaxData value = (StructConventMaxData){82, (Byte []){183, 229, 224, 183, 221, 195, 187, 210, 211, 135}, 9, 105, 56, 117};
        _dream_collectFormat = [self StringFromConventMaxData:&value];
    }
    return _dream_collectFormat;
}

//: 转发失败
- (NSString *)appHonorFearTubePath {
    if (!_appHonorFearTubePath) {
        StructConventMaxData value = (StructConventMaxData){182, (Byte []){94, 11, 26, 83, 57, 39, 83, 18, 7, 94, 2, 19, 13}, 12, 151, 148, 177};
        _appHonorFearTubePath = [self StringFromConventMaxData:&value];
    }
    return _appHonorFearTubePath;
}

//: 确认转发
- (NSString *)user_centerRetainControlPath {
    if (!_user_centerRetainControlPath) {
        StructConventMaxData value = (StructConventMaxData){231, (Byte []){0, 70, 73, 15, 73, 67, 15, 90, 75, 2, 104, 118, 190}, 12, 186, 210, 245};
        _user_centerRetainControlPath = [self StringFromConventMaxData:&value];
    }
    return _user_centerRetainControlPath;
}

//: 选择会话类型
- (NSString *)main_sueInevitableMessage {
    if (!_main_sueInevitableMessage) {
        StructConventMaxData value = (StructConventMaxData){190, (Byte []){87, 62, 55, 88, 53, 23, 90, 2, 36, 86, 17, 35, 89, 15, 5, 91, 32, 53, 224}, 18, 173, 228, 235};
        _main_sueInevitableMessage = [self StringFromConventMaxData:&value];
    }
    return _main_sueInevitableMessage;
}

//: watch_multiretweet_activity_person
- (NSString *)notiConsultantTitle {
    if (!_notiConsultantTitle) {
        StructConventMaxData value = (StructConventMaxData){19, (Byte []){100, 114, 103, 112, 123, 76, 126, 102, 127, 103, 122, 97, 118, 103, 100, 118, 118, 103, 76, 114, 112, 103, 122, 101, 122, 103, 106, 76, 99, 118, 97, 96, 124, 125, 152}, 34, 203, 175, 215};
        _notiConsultantTitle = [self StringFromConventMaxData:&value];
    }
    return _notiConsultantTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ZoneUimanager.m
// ButtonKit
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFChatUIManager.h"
#import "ZoneUimanager.h"
//: #import "FFFContactSelectConfig.h"
#import "FindRecent.h"
//: #import "FFFContactSelectViewController.h"
#import "NominateViewController.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "UIView+FFFToast.h"
#import "UIView+FrameKey.h"

//: @implementation FFFChatUIManager
@implementation ZoneUimanager

//: + (instancetype)sharedManager
+ (instancetype)abstract
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static FFFChatUIManager *instance;
    static ZoneUimanager *instance;
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
- (void)window:(NIMMessage *)message aggregation:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[PaintedNaturalLanguageTo exhibit:[ConventMaxData sharedInstance].main_sueInevitableMessage] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ConventMaxData sharedInstance].notiConsultantTitle] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        OldPin *config = [[OldPin alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self conferenceViewMessageToBubbleFromForward:message radiogram:session recordingView:fromVC];
        //: };
        };
        //: [vc show];
        [vc center];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ConventMaxData sharedInstance].user_responseText] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        OptionSession *config = [[OptionSession alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self conferenceViewMessageToBubbleFromForward:message radiogram:session recordingView:fromVC];
        //: };
        };
        //: [vc show];
        [vc center];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ConventMaxData sharedInstance].k_neatStr] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        OptionSession *config = [[OptionSession alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        NominateViewController *vc = [[NominateViewController alloc] initWithColorPlace:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self conferenceViewMessageToBubbleFromForward:message radiogram:session recordingView:fromVC];
        //: };
        };
        //: [vc show];
        [vc center];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[PaintedNaturalLanguageTo exhibit:[ConventMaxData sharedInstance].showLoudKinUrl] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)conferenceViewMessageToBubbleFromForward:(NIMMessage *)message radiogram:(NIMSession *)session recordingView:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[ButtonKit sheerOption] past:session.sessionId skinColour_strong:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[ButtonKit sheerOption] pressMedia:session.sessionId sizeOption:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[ButtonKit sheerOption] tiddler:session.sessionId ting:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString([ConventMaxData sharedInstance].noti_teamFeverStr, nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString([ConventMaxData sharedInstance].user_centerRetainControlPath, nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
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
            NSString *errorMessage = [NSString stringWithFormat:[ConventMaxData sharedInstance].dreamCollectiveAchieveKey, NSLocalizedString([ConventMaxData sharedInstance].appHonorFearTubePath, nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view change:errorMessage bubbleLight:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view change:NSLocalizedString([ConventMaxData sharedInstance].dream_collectFormat, nil) bubbleLight:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end