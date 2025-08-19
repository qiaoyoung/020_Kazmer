
#import <Foundation/Foundation.h>

typedef struct {
    Byte component;
    Byte *cedeDevelopmental;
    unsigned int significant;
	int legHeavily;
} StructDeerData;

@interface DeerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DeerData

+ (instancetype)sharedInstance {
    static DeerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DeerDataToByte:(StructDeerData *)data {
    for (int i = 0; i < data->significant; i++) {
        data->cedeDevelopmental[i] ^= data->component;
    }
    data->cedeDevelopmental[data->significant] = 0;
	if (data->significant >= 1) {
		data->legHeavily = data->cedeDevelopmental[0];
	}
    return data->cedeDevelopmental;
}

- (NSString *)StringFromDeerData:(StructDeerData *)data {
    return [NSString stringWithUTF8String:(char *)[self DeerDataToByte:data]];
}

//: user_profile_avtivity_send
- (NSString *)app_meltNeatId {
    /* static */ NSString *app_meltNeatId = nil;
    if (!app_meltNeatId) {
        StructDeerData value = (StructDeerData){241, (Byte []){132, 130, 148, 131, 174, 129, 131, 158, 151, 152, 157, 148, 174, 144, 135, 133, 152, 135, 152, 133, 136, 174, 130, 148, 159, 149, 157}, 26, 239};
        app_meltNeatId = [self StringFromDeerData:&value];
    }
    return app_meltNeatId;
}

//: TEXT
- (NSString *)show_salmonUreaFormat {
    /* static */ NSString *show_salmonUreaFormat = nil;
    if (!show_salmonUreaFormat) {
        StructDeerData value = (StructDeerData){96, (Byte []){52, 37, 56, 52, 28}, 4, 20};
        show_salmonUreaFormat = [self StringFromDeerData:&value];
    }
    return show_salmonUreaFormat;
}

//: icon_toolview_album
- (NSString *)kAbsorbPersonFormat {
    /* static */ NSString *kAbsorbPersonFormat = nil;
    if (!kAbsorbPersonFormat) {
        StructDeerData value = (StructDeerData){41, (Byte []){64, 74, 70, 71, 118, 93, 70, 70, 69, 95, 64, 76, 94, 118, 72, 69, 75, 92, 68, 73}, 19, 197};
        kAbsorbPersonFormat = [self StringFromDeerData:&value];
    }
    return kAbsorbPersonFormat;
}

//: back_arrow_bl
- (NSString *)app_ployHumanText {
    /* static */ NSString *app_ployHumanText = nil;
    if (!app_ployHumanText) {
        StructDeerData value = (StructDeerData){170, (Byte []){200, 203, 201, 193, 245, 203, 216, 216, 197, 221, 245, 200, 198, 89}, 13, 126};
        app_ployHumanText = [self StringFromDeerData:&value];
    }
    return app_ployHumanText;
}

//: ic_block_no
- (NSString *)user_shovePath {
    /* static */ NSString *user_shovePath = nil;
    if (!user_shovePath) {
        StructDeerData value = (StructDeerData){35, (Byte []){74, 64, 124, 65, 79, 76, 64, 72, 124, 77, 76, 245}, 11, 117};
        user_shovePath = [self StringFromDeerData:&value];
    }
    return user_shovePath;
}

//: userName
- (NSString *)showToMsg {
    /* static */ NSString *showToMsg = nil;
    if (!showToMsg) {
        StructDeerData value = (StructDeerData){47, (Byte []){90, 92, 74, 93, 97, 78, 66, 74, 200}, 8, 152};
        showToMsg = [self StringFromDeerData:&value];
    }
    return showToMsg;
}

//: icon_toolview_voice_normal
- (NSString *)appCrushContent {
    /* static */ NSString *appCrushContent = nil;
    if (!appCrushContent) {
        StructDeerData value = (StructDeerData){175, (Byte []){198, 204, 192, 193, 240, 219, 192, 192, 195, 217, 198, 202, 216, 240, 217, 192, 198, 204, 202, 240, 193, 192, 221, 194, 206, 195, 161}, 26, 100};
        appCrushContent = [self StringFromDeerData:&value];
    }
    return appCrushContent;
}

//: temp_image_%@.jpg
- (NSString *)user_aftHeavilyData {
    /* static */ NSString *user_aftHeavilyData = nil;
    if (!user_aftHeavilyData) {
        StructDeerData value = (StructDeerData){107, (Byte []){31, 14, 6, 27, 52, 2, 6, 10, 12, 14, 52, 78, 43, 69, 1, 27, 12, 235}, 17, 34};
        user_aftHeavilyData = [self StringFromDeerData:&value];
    }
    return user_aftHeavilyData;
}

//: ic_block
- (NSString *)dream_inflationText {
    /* static */ NSString *dream_inflationText = nil;
    if (!dream_inflationText) {
        StructDeerData value = (StructDeerData){141, (Byte []){228, 238, 210, 239, 225, 226, 238, 230, 156}, 8, 93};
        dream_inflationText = [self StringFromDeerData:&value];
    }
    return dream_inflationText;
}

//: ic_more
- (NSString *)dreamEscapePactTextUrl {
    /* static */ NSString *dreamEscapePactTextUrl = nil;
    if (!dreamEscapePactTextUrl) {
        StructDeerData value = (StructDeerData){224, (Byte []){137, 131, 191, 141, 143, 146, 133, 137}, 7, 197};
        dreamEscapePactTextUrl = [self StringFromDeerData:&value];
    }
    return dreamEscapePactTextUrl;
}

//: head_default_group
- (NSString *)app_attendanceRadTitle {
    /* static */ NSString *app_attendanceRadTitle = nil;
    if (!app_attendanceRadTitle) {
        StructDeerData value = (StructDeerData){161, (Byte []){201, 196, 192, 197, 254, 197, 196, 199, 192, 212, 205, 213, 254, 198, 211, 206, 212, 209, 206}, 18, 201};
        app_attendanceRadTitle = [self StringFromDeerData:&value];
    }
    return app_attendanceRadTitle;
}

//: messageid
- (NSString *)noti_immediatelyName {
    /* static */ NSString *noti_immediatelyName = nil;
    if (!noti_immediatelyName) {
        StructDeerData value = (StructDeerData){136, (Byte []){229, 237, 251, 251, 233, 239, 237, 225, 236, 102}, 9, 188};
        noti_immediatelyName = [self StringFromDeerData:&value];
    }
    return noti_immediatelyName;
}

//: temp_video_%@.mp4
- (NSString *)show_ayTitle {
    /* static */ NSString *show_ayTitle = nil;
    if (!show_ayTitle) {
        StructDeerData value = (StructDeerData){7, (Byte []){115, 98, 106, 119, 88, 113, 110, 99, 98, 104, 88, 34, 71, 41, 106, 119, 51, 127}, 17, 89};
        show_ayTitle = [self StringFromDeerData:&value];
    }
    return show_ayTitle;
}

//: message_send_camera
- (NSString *)notiTechnologicId {
    /* static */ NSString *notiTechnologicId = nil;
    if (!notiTechnologicId) {
        StructDeerData value = (StructDeerData){104, (Byte []){5, 13, 27, 27, 9, 15, 13, 55, 27, 13, 6, 12, 55, 11, 9, 5, 13, 26, 9, 39}, 19, 241};
        notiTechnologicId = [self StringFromDeerData:&value];
    }
    return notiTechnologicId;
}

//: 777777
- (NSString *)noti_mediumValue {
    /* static */ NSString *noti_mediumValue = nil;
    if (!noti_mediumValue) {
        StructDeerData value = (StructDeerData){214, (Byte []){225, 225, 225, 225, 225, 225, 171}, 6, 183};
        noti_mediumValue = [self StringFromDeerData:&value];
    }
    return noti_mediumValue;
}

//: VIDEO
- (NSString *)show_impulseData {
    /* static */ NSString *show_impulseData = nil;
    if (!show_impulseData) {
        StructDeerData value = (StructDeerData){135, (Byte []){209, 206, 195, 194, 200, 228}, 5, 239};
        show_impulseData = [self StringFromDeerData:&value];
    }
    return show_impulseData;
}

//: F6F7FA
- (NSString *)user_universityFormat {
    /* static */ NSString *user_universityFormat = nil;
    if (!user_universityFormat) {
        StructDeerData value = (StructDeerData){67, (Byte []){5, 117, 5, 116, 5, 2, 14}, 6, 112};
        user_universityFormat = [self StringFromDeerData:&value];
    }
    return user_universityFormat;
}

//: AUDIO
- (NSString *)mCharityData {
    /* static */ NSString *mCharityData = nil;
    if (!mCharityData) {
        StructDeerData value = (StructDeerData){226, (Byte []){163, 183, 166, 171, 173, 5}, 5, 35};
        mCharityData = [self StringFromDeerData:&value];
    }
    return mCharityData;
}

//: #00B01B
- (NSString *)notiPubliclyId {
    /* static */ NSString *notiPubliclyId = nil;
    if (!notiPubliclyId) {
        StructDeerData value = (StructDeerData){46, (Byte []){13, 30, 30, 108, 30, 31, 108, 250}, 7, 46};
        notiPubliclyId = [self StringFromDeerData:&value];
    }
    return notiPubliclyId;
}

//: message_please_enter_content
- (NSString *)userThreatenId {
    /* static */ NSString *userThreatenId = nil;
    if (!userThreatenId) {
        StructDeerData value = (StructDeerData){1, (Byte []){108, 100, 114, 114, 96, 102, 100, 94, 113, 109, 100, 96, 114, 100, 94, 100, 111, 117, 100, 115, 94, 98, 110, 111, 117, 100, 111, 117, 228}, 28, 172};
        userThreatenId = [self StringFromDeerData:&value];
    }
    return userThreatenId;
}

//: #4B43DE
- (NSString *)main_economicallyPdaIdent {
    /* static */ NSString *main_economicallyPdaIdent = nil;
    if (!main_economicallyPdaIdent) {
        StructDeerData value = (StructDeerData){6, (Byte []){37, 50, 68, 50, 53, 66, 67, 109}, 7, 200};
        main_economicallyPdaIdent = [self StringFromDeerData:&value];
    }
    return main_economicallyPdaIdent;
}

//: %@在群里@了你
- (NSString *)showNamePath {
    /* static */ NSString *showNamePath = nil;
    if (!showNamePath) {
        StructDeerData value = (StructDeerData){24, (Byte []){61, 88, 253, 132, 176, 255, 166, 188, 241, 159, 148, 88, 252, 162, 158, 252, 165, 184, 245}, 18, 20};
        showNamePath = [self StringFromDeerData:&value];
    }
    return showNamePath;
}

//: message_send_album
- (NSString *)kConsultantIdent {
    /* static */ NSString *kConsultantIdent = nil;
    if (!kConsultantIdent) {
        StructDeerData value = (StructDeerData){15, (Byte []){98, 106, 124, 124, 110, 104, 106, 80, 124, 106, 97, 107, 80, 110, 99, 109, 122, 98, 121}, 18, 161};
        kConsultantIdent = [self StringFromDeerData:&value];
    }
    return kConsultantIdent;
}

//: #F6F7FA
- (NSString *)user_originOptPath {
    /* static */ NSString *user_originOptPath = nil;
    if (!user_originOptPath) {
        StructDeerData value = (StructDeerData){77, (Byte []){110, 11, 123, 11, 122, 11, 12, 94}, 7, 165};
        user_originOptPath = [self StringFromDeerData:&value];
    }
    return user_originOptPath;
}

//: message_administrator_speak
- (NSString *)main_introductionContent {
    /* static */ NSString *main_introductionContent = nil;
    if (!main_introductionContent) {
        StructDeerData value = (StructDeerData){137, (Byte []){228, 236, 250, 250, 232, 238, 236, 214, 232, 237, 228, 224, 231, 224, 250, 253, 251, 232, 253, 230, 251, 214, 250, 249, 236, 232, 226, 173}, 27, 113};
        main_introductionContent = [self StringFromDeerData:&value];
    }
    return main_introductionContent;
}

//: icon_toolview_camera
- (NSString *)kPressedIdent {
    /* static */ NSString *kPressedIdent = nil;
    if (!kPressedIdent) {
        StructDeerData value = (StructDeerData){51, (Byte []){90, 80, 92, 93, 108, 71, 92, 92, 95, 69, 90, 86, 68, 108, 80, 82, 94, 86, 65, 82, 30}, 20, 111};
        kPressedIdent = [self StringFromDeerData:&value];
    }
    return kPressedIdent;
}

//: reply
- (NSString *)mYouStr {
    /* static */ NSString *mYouStr = nil;
    if (!mYouStr) {
        StructDeerData value = (StructDeerData){71, (Byte []){53, 34, 55, 43, 62, 90}, 5, 196};
        mYouStr = [self StringFromDeerData:&value];
    }
    return mYouStr;
}

//: type
- (NSString *)appCamFormat {
    /* static */ NSString *appCamFormat = nil;
    if (!appCamFormat) {
        StructDeerData value = (StructDeerData){234, (Byte []){158, 147, 154, 143, 189}, 4, 118};
        appCamFormat = [self StringFromDeerData:&value];
    }
    return appCamFormat;
}

//: content
- (NSString *)showDirectorMessage {
    /* static */ NSString *showDirectorMessage = nil;
    if (!showDirectorMessage) {
        StructDeerData value = (StructDeerData){97, (Byte []){2, 14, 15, 21, 4, 15, 21, 58}, 7, 18};
        showDirectorMessage = [self StringFromDeerData:&value];
    }
    return showDirectorMessage;
}

//: IMAGE
- (NSString *)k_ofTitle {
    /* static */ NSString *k_ofTitle = nil;
    if (!k_ofTitle) {
        StructDeerData value = (StructDeerData){10, (Byte []){67, 71, 75, 77, 79, 149}, 5, 108};
        k_ofTitle = [self StringFromDeerData:&value];
    }
    return k_ofTitle;
}

//: group_info_activity_op_failed
- (NSString *)kCrowdedValue {
    /* static */ NSString *kCrowdedValue = nil;
    if (!kCrowdedValue) {
        StructDeerData value = (StructDeerData){214, (Byte []){177, 164, 185, 163, 166, 137, 191, 184, 176, 185, 137, 183, 181, 162, 191, 160, 191, 162, 175, 137, 185, 166, 137, 176, 183, 191, 186, 179, 178, 211}, 29, 133};
        kCrowdedValue = [self StringFromDeerData:&value];
    }
    return kCrowdedValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionViewController.m
// ButtonKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "FFFBadgeView.h"
#import "NameSessionView.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "FFFMessageMaker.h"
#import "ImpendentMaker.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFSessionConfigurator.h"
#import "MaxConfigurator.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "FFFKitTitleView.h"
#import "DoingToView.h"
//: #import "FFFKitKeyboardInfo.h"
#import "UserInfo.h"
//: #import "FFFReplyContentView.h"
#import "AnswerView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "NameUtilPath.h"
//: #import "FFFBubbleMenuView.h"
#import "BroadcastView.h"
//: #import "FFFTextView.h"
#import "ReplacementNameView.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+SumrinsicIdentifier.h"
//: #import "FFFBubbleMenuView.h"
#import "BroadcastView.h"
//: #import "FFFBubbleButtonModel.h"
#import "PageCountImage.h"
//:  
 
//: #import "FFFInputAudioView.h"
#import "InputMessageView.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESPersonalCardViewController.h"
#import "ApproximateViewController.h"
//: #import "FFFTeamCardViewController.h"
#import "ChronicleViewController.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "ValueToViewController.h"
//: #import "PhotoContainerView.h"
#import "CuttingEdgeRadiogramTroughView.h"
//: #import "SSZipArchiveManager.h"
#import "EmptyTing.h"

//: @interface FFFSessionViewController ()<NIMMediaManagerDelegate,NIMInputDelegate,FFFTeamCardViewControllerDelegate,NIMConversationManagerDelegate,CustomUISeletePhotosDelegate,UIGestureRecognizerDelegate>
@interface CollectionViewController ()<NIMMediaManagerDelegate,CloseDelegate,ModePath,NIMConversationManagerDelegate,EnableButton,UIGestureRecognizerDelegate>

//: @property (nonatomic,readwrite) NIMMessage *messageForMenu;
@property (nonatomic,readwrite) NIMMessage *messageForMenu;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subTitleLabel;
@property (nonatomic,strong) UILabel *subTitleLabel;

//: @property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;
@property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;

//: @property (nonatomic,strong) FFFSessionConfigurator *configurator;
@property (nonatomic,strong) MaxConfigurator *configurator;

//: @property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;
@property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;
//: @property (nonatomic,strong) FFFBadgeView *badgeView;
@property (nonatomic,strong) NameSessionView *badgeView;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *labtitle;
@property (nonatomic,strong) UILabel *labtitle;
//: @property (nonatomic,strong) UILabel *subtitle;
@property (nonatomic,strong) UILabel *subtitle;
//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;

//: @property (nonatomic, strong) UIView *topview;
@property (nonatomic, strong) UIView *topview;
//: @property (nonatomic, strong) UIButton *btnAudio;
@property (nonatomic, strong) UIButton *btnAudio;
//: @property (nonatomic, strong) FFFInputAudioView *audioContent;
@property (nonatomic, strong) InputMessageView *audioContent;

//: @property (nonatomic, strong) UIView *photopicview;
@property (nonatomic, strong) UIView *photopicview;
//: @property (nonatomic, strong) PhotoContainerView *customAlbumView;
@property (nonatomic, strong) CuttingEdgeRadiogramTroughView *customAlbumView;


//: @end
@end

//: @implementation FFFSessionViewController
@implementation CollectionViewController

//: - (instancetype)initWithSession:(NIMSession *)session{
- (instancetype)initWithUnder:(NIMSession *)session{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListener];
    [self change];

    //: _tableView.delegate = nil;
    _tableView.delegate = nil;
    //: _tableView.dataSource = nil;
    _tableView.dataSource = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
    self.view.backgroundColor = [UIColor min:[[DeerData sharedInstance] user_universityFormat]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"chating_bg"];
//        [self.view addSubview:bg];

    //: UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: bottomview.backgroundColor = [UIColor whiteColor];
    bottomview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:bottomview];
    [self.view addSubview:bottomview];

    //消息 tableView
    //: [self setupTableView];
    [self sizeView];
    //导航栏
    //: [self setupNav];
    [self cut];

    //输入框 inputView
    //: [self setupInputView];
    [self clickDoingView];
    //会话相关逻辑配置器安装
    //: [self setupConfigurator];
    [self remote];
    //进入会话时，标记所有消息已读，并发送已读回执
    //: [self markRead];
    [self isTing];
    //更新已读位置


//    [self.view addSubview:self.btnAudio];


     //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
     dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
         //: [self setBanned];
         [self add];
     //: });
     });

//    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    // 执行设置回调监听
//    [NERtcCallKit.sharedInstance addDelegate:self];
 }

//- (void)onInvited:(NSString *)invitor
//          userIDs:(NSArray<NSString *> *)userIDs
//      isFromGroup:(BOOL)isFromGroup
//          groupID:(nullable NSString *)groupID
//             type:(NERtcCallType)type
//       attachment:(nullable NSString *)attachment
//{
//    ZMONVideoCallViewController *vc = [[ZMONVideoCallViewController alloc] init];
//    vc.isInvait = YES;
//    vc.userId = invitor;
//    vc.roomId = self.session.sessionId;
//    [self.navigationController pushViewController:vc animated:YES];
//}

 //: - (void)setBanned {
 - (void)add {
     //: NIMSessionType type = self.session.sessionType;
     NIMSessionType type = self.session.sessionType;
     //: switch (type) {
     switch (type) {
         //: case NIMSessionTypeTeam:{
         case NIMSessionTypeTeam:{
             //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setObject:YES];
                     }
                 }
             }
         }
             //: break;
             break;

             //: break;
             break;
         //: case NIMSessionTypeSuperTeam: {
         case NIMSessionTypeSuperTeam: {
             //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setObject:YES];
                     }
                 }
             }
         }
         //: default:
         default:
             //: break;
             break;
     }
 }

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self data];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self data];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];

}


//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self data];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self data];
    //: [self.interactor resetMessages:nil];
    [self.interactor messages:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self data];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self data];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self data];
}


//: - (void)refreshSessionBadge
- (void)data
{

    //: if(self.sessionUnreadCount>0){
    if(self.sessionUnreadCount>0){
        //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        //: _badgeView.hidden = NO;
        _badgeView.hidden = NO;
//        _labtitle.frame = CGRectMake(_badgeView.right+10, SCREEN_STATUS_HEIGHT, 100, 40);
    }
    //: else{
    else{
        //: _badgeView.hidden = YES;
        _badgeView.hidden = YES;
//        _labtitle.frame = CGRectMake(65, SCREEN_STATUS_HEIGHT, 200, 40);
    }
}

//: - (void)setupNav
- (void)cut
{
    //: _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice tingHeight]))];
    //: _topview.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    _topview.backgroundColor = [UIColor min:[[DeerData sharedInstance] user_originOptPath]];
    //: [self.view addSubview:_topview];
    [self.view addSubview:_topview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice tingHeight], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(skullSessionAdd:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[[DeerData sharedInstance] app_ployHumanText]] forState:UIControlStateNormal];
    //: [_topview addSubview:backBtn];
    [_topview addSubview:backBtn];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
     //: _badgeView = [FFFBadgeView viewWithBadgeTip:@""];
     _badgeView = [NameSessionView title:@""];
    //: _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    //: [_topview addSubview:_badgeView];
    [_topview addSubview:_badgeView];
    //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight], 200, 40)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice tingHeight], 200, 40)];
    //: _labtitle.textColor = [UIColor blackColor];
    _labtitle.textColor = [UIColor blackColor];
    //: _labtitle.textAlignment = NSTextAlignmentCenter;
    _labtitle.textAlignment = NSTextAlignmentCenter;
    //: _labtitle.font = [UIFont boldSystemFontOfSize:16];
    _labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: _labtitle.text = self.sessionTitle;
    _labtitle.text = self.file;
    //: [_topview addSubview:_labtitle];
    [_topview addSubview:_labtitle];

//    _subtitle = [[UILabel alloc]initWithFrame:CGRectMake(_headerImage.right+10, _labtitle.bottom, 100, 20)];
//    _subtitle.textColor = RGB_COLOR_String(@"777777");
//    _subtitle.font = [UIFont boldSystemFontOfSize:12];
//    _subtitle.text = self.sessionSubTitle;
//    [topview addSubview:_subtitle];
//    if([self.sessionSubTitle isEqualToString:@"离线".ntes_localized]){
//        self.subtitle.textColor = RGB_COLOR_String(@"777777");
//    }else{
//        self.subtitle.textColor = RGB_COLOR_String(@"#00B01B");
//    }


    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];

        //: CGFloat width = 30;
        CGFloat width = 30;
        //: UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
        [enterTeamCard addTarget:self action:@selector(reportCard:) forControlEvents:UIControlEventTouchUpInside];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:[[DeerData sharedInstance] app_attendanceRadTitle]]];
        //: enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice tingHeight]+10, width, width);
        //: enterTeamCard.layer.cornerRadius = width/2;
        enterTeamCard.layer.cornerRadius = width/2;
        //: enterTeamCard.layer.masksToBounds = YES;
        enterTeamCard.layer.masksToBounds = YES;
        //: [_topview addSubview:enterTeamCard];
        [_topview addSubview:enterTeamCard];
    }
    //: else if(self.session.sessionType == NIMSessionTypeP2P)
    else if(self.session.sessionType == NIMSessionTypeP2P)
    {
        //: CGFloat width = 20;
        CGFloat width = 20;


        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice vg_statusBarHeight]+10, width, width);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice tingHeight]+10, width, width);
        //: [_btnBlock addTarget:self action:@selector(handlerBtnBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(makeFull:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[[DeerData sharedInstance] dream_inflationText]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block_no"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[[DeerData sharedInstance] user_shovePath]] forState:UIControlStateSelected];
        //: [_topview addSubview:_btnBlock];
        [_topview addSubview:_btnBlock];

        //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        //: _btnBlock.selected = needNotify;
        _btnBlock.selected = needNotify;


        //: UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
        [infoBtn addTarget:self action:@selector(sized:) forControlEvents:UIControlEventTouchUpInside];
        //: [infoBtn setImage:[UIImage imageNamed:@"ic_more"] forState:UIControlStateNormal];
        [infoBtn setImage:[UIImage imageNamed:[[DeerData sharedInstance] dreamEscapePactTextUrl]] forState:UIControlStateNormal];
        //: infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice tingHeight]+10, width, width);
        //: [_topview addSubview:infoBtn];
        [_topview addSubview:infoBtn];
    }



}
//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)handlerBtnBlock:(UIButton *)sender
- (void)makeFull:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (error) {
            if (error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];
}
//: - (void)enterPersonInfoCard:(id)sender
- (void)sized:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    ApproximateViewController *vc = [[ApproximateViewController alloc] initWithSmart:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: - (void)enterTeamCard:(id)sender {
- (void)reportCard:(id)sender {
    //: FFFTeamCardViewController *vc = nil;
    ChronicleViewController *vc = nil;
    //: FFFTeamCardViewControllerOption *option = [[FFFTeamCardViewControllerOption alloc] init];
    NakedOptionRecent *option = [[NakedOptionRecent alloc] init];
    //: option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if(team.type == NIMTeamTypeAdvanced){
    if(team.type == NIMTeamTypeAdvanced){
            //: vc = [[FFFAdvancedTeamCardViewController alloc] initWithTeam:team
            vc = [[ValueToViewController alloc] initWithGlitter:team
                                                                 //: session:self.session
                                                                 withOption:self.session
                                                                  //: option:option];
                                                                  tutorial_strong:option];
            //: vc.delegate = self;
            vc.delegate = self;
            //: vc.canMemberInfo = self.canMemberInfo;
            vc.canMemberInfo = self.canMemberInfo;
    }

    //: if (vc) {
    if (vc) {
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)gotoBack:(id)sender {
- (void)skullSessionAdd:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)setupTableView
- (void)sizeView
{
    //: CGFloat safeAreaInsetsBottom = [UIDevice vg_safeDistanceBottom];
    CGFloat safeAreaInsetsBottom = [UIDevice old];
    //: CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice vg_statusBarHeight]);
    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice tingHeight]);

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT-SCREEN_BOTTOM_HEIGHT) style:UITableViewStylePlain];
//    self.tableView.backgroundColor = NEEKIT_UIColorFromRGB(0xe4e7ec);
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: self.tableView.estimatedSectionHeaderHeight = 0;
    self.tableView.estimatedSectionHeaderHeight = 0;
    //: self.tableView.estimatedSectionFooterHeight = 0;
    self.tableView.estimatedSectionFooterHeight = 0;
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    //: self.tableViewTapGesture.cancelsTouchesInView = NO;
    self.tableViewTapGesture.cancelsTouchesInView = NO;
    //: [self.tableViewTapGesture addTarget:self action:@selector(onTapTableView:)];
    [self.tableViewTapGesture addTarget:self action:@selector(storages:)];
    //: [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    //: self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;

//    if ([self.sessionConfig respondsToSelector:@selector(sessionBackgroundImage)] && [self.sessionConfig sessionBackgroundImage]) {
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//        imgView.image = [self.sessionConfig sessionBackgroundImage];
//        imgView.contentMode = UIViewContentModeScaleAspectFill;
//        self.tableView.backgroundView = imgView;
//    }
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

}


//: - (void)setupInputView
- (void)clickDoingView
{
    //: if ([self shouldShowInputView])
    if ([self phase])
    {
        //: self.sessionInputView = [[FFFInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.nim_width,0) config:self.sessionConfig];
        self.sessionInputView = [[SignView alloc] initWithLabelConfig:CGRectMake(0, 0, self.view.nim_width,0) tool:self.sessionConfig];
        //: self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        //: [self.sessionInputView setSession:self.session];
        [self.sessionInputView setSession:self.session];
        //: [self.sessionInputView setInputDelegate:self];
        [self.sessionInputView setInputDelegate:self];
        //: [self.sessionInputView setInputActionDelegate:self];
        [self.sessionInputView setSignaling:self];
        //: [self.sessionInputView refreshStatus:NIMInputStatusText];
        [self.sessionInputView max:NIMInputStatusText];
        //: [self.view addSubview:_sessionInputView];
        [self.view addSubview:_sessionInputView];
        //: self.tableView.bottom = self.sessionInputView.top;
        self.tableView.bottom = self.sessionInputView.top;
//        self.tableView.top = self.topview.bottom;
        //: [self.tableView sizeToFit];
        [self.tableView sizeToFit];
    }
}


//: - (void)setupConfigurator
- (void)remote
{
    //: _configurator = [[FFFSessionConfigurator alloc] init];
    _configurator = [[MaxConfigurator alloc] init];
    //: [_configurator setup:self];
    [_configurator messageAt:self];

    //: BOOL needProximityMonitor = [self needProximityMonitor];
    BOOL needProximityMonitor = [self sizeMonitor];
    //: [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
    [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.interactor onViewWillAppear];
    [self.interactor stud];
    //: [self addListener];
    [self haveAndEavesdropper];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self data];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    // 隐藏长按弹窗
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [BroadcastView.dismissDisappear removeFromSuperview];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidDisappear:(BOOL)animated
- (void)viewDidDisappear:(BOOL)animated
{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.interactor onViewDidDisappear];
    [self.interactor view];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)viewDidLayoutSubviews
- (void)viewDidLayoutSubviews
{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    [self changeLeftBarBadge:self.conversationManager.allUnreadCount];
    //: [self.interactor resetLayout];
    [self.interactor cell];
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.serviceContentTextView hideTextSelection];
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [BroadcastView.dismissDisappear removeFromSuperview];
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)barScroll:(UIScrollView *)scrollView {
    //: if ([scrollView isKindOfClass:[UITextView class]]) {
    if ([scrollView isKindOfClass:[UITextView class]]) {
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [BroadcastView.dismissDisappear removeFromSuperview];
    }
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}



//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)maxTeam:(NIMMessage *)message
{
    //: [self.interactor sendMessage:message toMessage:nil];
    [self.interactor immobilise:message send:nil];
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
       //: [self cleanMenuMessage];
       [self contentPicture];
    //: });
    });
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * err))completion
- (void)cover:(NIMMessage *)message lifeStyle:(void(^)(NSError * err))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.interactor sendMessage:message
    [self.interactor by:message
                        //: toMessage:nil
                        inscription:nil
                      //: completion:^(NSError *err)
                      ironed:^(NSError *err)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf cleanMenuMessage];
        [weakSelf contentPicture];
    //: }];
    }];
}


//: #pragma mark - FFFSessionConfiguratorDelegate
#pragma mark - FFFSessionConfiguratorDelegate

//: - (void)didFetchMessageData
- (void)onExist
{
//    [self uiCheckReceipts:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [self.tableView nim_scrollToBottom:NO];
}

//: - (void)didRefreshMessageData
- (void)textMessage
{
    //: [self refreshSessionTitle:self.sessionTitle];
    [self windowLock:self.file];
    //: [self refreshSessionSubTitle:self.sessionSubTitle];
    [self afterInputContent:self.statuteTitle];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)didPullUpMessageData {}
- (void)userCell {}

//: #pragma mark - 会话title
#pragma mark - 会话title
//: - (NSString *)sessionTitle
- (NSString *)file
{
    //: NSString *title = @"";
    NSString *title = @"";
    //: NIMSessionType type = self.session.sessionType;
    NIMSessionType type = self.session.sessionType;
    //: switch (type) {
    switch (type) {
        //: case NIMSessionTypeTeam:{
        case NIMSessionTypeTeam:{
            //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
            //: break;
            break;
        //: case NIMSessionTypeP2P:{
        case NIMSessionTypeP2P:{
            //: title = [FFFKitUtil showNick:self.session.sessionId inSession:self.session];
            title = [ObjectUtil message:self.session.sessionId sessionView:self.session];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam: {
        case NIMSessionTypeSuperTeam: {
            //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return title;
    return title;
}

//: - (NSString *)sessionSubTitle{return @"";};
- (NSString *)statuteTitle{return @"";};

//: #pragma mark - 状态操作
#pragma mark - 状态操作
//: - (NIMKitSessionState)sessionState {
- (NIMKitSessionState)state {
    //: return [self.interactor sessionState];
    return [self.interactor nameThread];
}

//: - (void)setSessionState:(NIMKitSessionState)state {
- (void)setState:(NIMKitSessionState)state {
    //: [self.interactor setSessionState:state];
    [self.interactor setNameThread:state];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//开始发送
//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: id<NIMSessionInteractor> interactor = self.interactor;
    id<StuffTotaleractor> interactor = self.interactor;

    //: if ([message.session isEqual:self.session]) {
    if ([message.session isEqual:self.session]) {
        //: if ([interactor findMessageModel:message]) {
        if ([interactor towardMessage:message]) {
            //: [interactor updateMessage:message];
            [interactor mortalLink:message];
        //: }else{
        }else{
            //: [interactor addMessages:@[message]];
            [interactor input:@[message]];
        }
    }
}

//上传资源文件成功
//: - (void)uploadAttachmentSuccess:(NSString *)urlString
- (void)uploadAttachmentSuccess:(NSString *)urlString
                     //: forMessage:(NIMMessage *)message
                     forMessage:(NIMMessage *)message
{
    //如果需要使用富文本推送，可以在这里进行 message apns payload 的设置
//    [self.tableView reloadData];
}


//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: if( message.messageType == NIMMessageTypeImage){
        if( message.messageType == NIMMessageTypeImage){
            //缓存图片URL
            //: NIMImageObject *imageObject = message.messageObject;
            NIMImageObject *imageObject = message.messageObject;
            //: NSString *urlString = imageObject.url;
            NSString *urlString = imageObject.url;

            //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[RecordInput file] Gdic];
            //: NSData *data = [dic objectForKey:message.messageId];
            NSData *data = [dic objectForKey:message.messageId];
            //: if(data && urlString){
            if(data && urlString){
                //: NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                //: dic[message.messageId] = nil;
                dic[message.messageId] = nil;
                //: __weak typeof(self) weakSelf = self;
                __weak typeof(self) weakSelf = self;
                //: [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                    //: [weakSelf.interactor updateMessage:message];
                    [weakSelf.interactor mortalLink:message];
                //: }];
                }];
            }
        //: }else{
        }else{
            //: [self.interactor updateMessage:message];
            [self.interactor mortalLink:message];
//            [self.tableView reloadData];
        }


        //: if (message.session.sessionType == NIMSessionTypeTeam ||
        if (message.session.sessionType == NIMSessionTypeTeam ||
            //: message.session.sessionType == NIMSessionTypeSuperTeam)
            message.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //如果是群的话需要检查一下回执显示情况
            //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            //: [self.interactor checkReceipts:@[receipt]];
            [self.interactor bar:@[receipt]];
        }
    }

}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session]) {
    if ([message.session isEqual:_session]) {
        //: [self.interactor updateMessage:message];
        [self.interactor mortalLink:message];
    }
}

//接收消息
//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self version])
    {
        //: NIMMessage *message = messages.firstObject;
        NIMMessage *message = messages.firstObject;
        //: NIMSession *session = message.session;
        NIMSession *session = message.session;

        //: UIViewController *topvc = [self getTopMostController];
        UIViewController *topvc = [self error];
        //: if (![topvc isKindOfClass:NSClassFromString(@"NTESSessionViewController")] && ![topvc isKindOfClass:[FFFSessionViewController class]]) {
        if (![topvc isKindOfClass:NSClassFromString(@"BroadcastViewController")] && ![topvc isKindOfClass:[CollectionViewController class]]) {
            //: return;
            return;
        }

        //: if (![session isEqual:self.session] || !messages.count)
        if (![session isEqual:self.session] || !messages.count)
        {
            //: return;
            return;
        }

        //: [self uiInsertMessages:messages];
        [self cannulize:messages];
        //: [self.interactor markRead:NO];
        [self.interactor readByDate:NO];

        // 群禁言后输入框改变占位符文字
        //: [self setBannedSpeakingWithMessage:messages];
        [self setShowSub:messages];
    }
}

//: - (void)setBannedSpeakingWithMessage:(NSArray <NIMMessage *>*)messages {
- (void)setShowSub:(NSArray <NIMMessage *>*)messages {

    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {

        //: NIMNotificationObject *object = message.messageObject;
        NIMNotificationObject *object = message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: id attachment = [content attachment];
            id attachment = [content attachment];
            //: if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
            if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {

                //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                //: if (teamAttachment && [teamAttachment.values count] > 0) {
                if (teamAttachment && [teamAttachment.values count] > 0) {

                    /**
                     *  群禁言模式
                     *  @discussion 0: 禁言关闭 1: 全员禁言，不包括管理员
                     */
                    // NIMTeamUpdateTagMuteMode       = 100,
                    /**
                     *  群全体禁言模式
                     *  @discussion 参考NIMTeamAllMuteMode定义。0: 禁言关闭 1: 全员禁言，不包括管理员 3: 全员禁言，包括群组和管理员
                     */
                    // NIMTeamUpdateTagAllMuteMode    = 101,

                    //                        if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    //                            BOOL banned = [teamAttachment.values objectForKey:@(100)];
                    //                        }


                    //: if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                    if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(101)];
                        BOOL banned = [teamAttachment.values vanguard:@(101)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setObject:banned];
                    }

                    //: else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(100)];
                        BOOL banned = [teamAttachment.values vanguard:@(100)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setObject:banned];
                    }

                }

            }
        }
    //: }];
    }];
}

//: - (void)setInputViewPlaceholder:(BOOL)ban {
- (void)setObject:(BOOL)ban {
    //: if (ban){
    if (ban){
        //: [self.sessionInputView setInputTextPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_administrator_speak"] color:[UIColor redColor]];
        [self.sessionInputView holderDisplay:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] main_introductionContent]] flushMessage:[UIColor redColor]];
        //: self.sessionInputView.userInteractionEnabled = NO;
        self.sessionInputView.userInteractionEnabled = NO;
        //: self.canTapVoiceBtn = NO;
        self.canTapVoiceBtn = NO;
    //: } else {
    } else {
        //: [self.sessionInputView setInputTextPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"] color:[UIColor grayColor]];
        [self.sessionInputView holderDisplay:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] userThreatenId]] flushMessage:[UIColor grayColor]];
        //: self.sessionInputView.userInteractionEnabled = YES;
        self.sessionInputView.userInteractionEnabled = YES;
        //: self.canTapVoiceBtn = YES;
        self.canTapVoiceBtn = YES;
    }
}


//获取当前最上层的控制器
//: - (UIViewController *)getTopMostController {
- (UIViewController *)error {
    //: UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //循环之前tempVC和topVC是一样的
    //: UIViewController *tempVC = topVC;
    UIViewController *tempVC = topVC;
    //: while (1) {
    while (1) {
        //: if ([topVC isKindOfClass:[UITabBarController class]]) {
        if ([topVC isKindOfClass:[UITabBarController class]]) {
            //: topVC = ((UITabBarController*)topVC).selectedViewController;
            topVC = ((UITabBarController*)topVC).selectedViewController;
        }
        //: if ([topVC isKindOfClass:[UINavigationController class]]) {
        if ([topVC isKindOfClass:[UINavigationController class]]) {
            //: topVC = ((UINavigationController*)topVC).visibleViewController;
            topVC = ((UINavigationController*)topVC).visibleViewController;
        }
        //: if (topVC.presentedViewController) {
        if (topVC.presentedViewController) {
            //: topVC = topVC.presentedViewController;
            topVC = topVC.presentedViewController;
        }
        //如果两者一样，说明循环结束了
        //: if ([tempVC isEqual:topVC]) {
        if ([tempVC isEqual:topVC]) {
            //: break;
            break;
        //: } else {
        } else {
        //如果两者不一样，继续循环
            //: tempVC = topVC;
            tempVC = topVC;
        }
    }
    //: return topVC;
    return topVC;
}


//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: [self.interactor updateMessage:message];
        [self.interactor mortalLink:message];
    }
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: FFFMessageModel *model = [self.interactor findMessageModel:message];
        CentralProcessingUnitModel *model = [self.interactor towardMessage:message];
        //下完缩略图之后，因为比例有变化，重新刷下宽高。
        //: [model cleanCache];
        [model pristine];
        //: [self.interactor updateMessage:message];
        [self.interactor mortalLink:message];
    }
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self version])
    {
        //: NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        //: for (NIMMessageReceipt *receipt in receipts) {
        for (NIMMessageReceipt *receipt in receipts) {
            //: if ([receipt.session isEqual:self.session])
            if ([receipt.session isEqual:self.session])
            {
                //: [handledReceipts addObject:receipt];
                [handledReceipts addObject:receipt];
            }
        }
        //: if (handledReceipts.count)
        if (handledReceipts.count)
        {
            //: [self uiCheckReceipts:handledReceipts];
            [self viewReceipts:handledReceipts];
        }
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//- (void)messagesDeletedInSession:(NIMSession *)session{
//    [self.interactor resetMessages:nil];
//    [self.tableView reloadData];
//}

// 远端消息清空回调
//: - (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
- (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
{
    //: [self refreshMessages];
    [self circle];
}

// 远端消息批量删除删除回调
//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
{
    //: [self refreshMessages];
    [self circle];
}

//- (void)didAddRecentSession:(NIMRecentSession *)recentSession
//           totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}


//: - (void)changeUnreadCount:(NIMRecentSession *)recentSession
- (void)domain:(NIMRecentSession *)recentSession
         //: totalUnreadCount:(NSInteger)totalUnreadCount{
         managerInput:(NSInteger)totalUnreadCount{
    //: if ([recentSession.session isEqual:self.session]) {
    if ([recentSession.session isEqual:self.session]) {
        //: return;
        return;
    }

}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if (!filePath || error) {
    if (!filePath || error) {
        //: _sessionInputView.recording = NO;
        _sessionInputView.recording = NO;
        //: [self onRecordFailed:error];
        [self halogen:error];
    }
}

//: - (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
    //: if(!error) {
    if(!error) {
        //: if ([self recordFileCanBeSend:filePath]) {
        if ([self putUp:filePath]) {
            //: [self sendMessage:[FFFMessageMaker msgWithAudio:filePath]];
            [self maxTeam:[ImpendentMaker info:filePath]];
        //: }else{
        }else{
            //: [self showRecordFileNotSendReason];
            [self total];
        }
    //: } else {
    } else {
        //: [self onRecordFailed:error];
        [self halogen:error];
    }
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}


//: - (void)recordAudioDidCancelled {
- (void)recordAudioDidCancelled {
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}

//: - (void)recordAudioProgress:(NSTimeInterval)currentTime {
- (void)recordAudioProgress:(NSTimeInterval)currentTime {
    //: [_sessionInputView updateAudioRecordTime:currentTime];
    [_sessionInputView should:currentTime];
}

//: - (void)recordAudioInterruptionBegin {
- (void)recordAudioInterruptionBegin {
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: #pragma mark - 录音相关接口
#pragma mark - 录音相关接口
//: - (void)onRecordFailed:(NSError *)error{}
- (void)halogen:(NSError *)error{}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)putUp:(NSString *)filepath
{
    //: return YES;
    return YES;
}

//: - (void)showRecordFileNotSendReason{}
- (void)total{}

//: #pragma mark - NIMInputDelegate
#pragma mark - CloseDelegate

//: - (void)didChangeInputHeight:(CGFloat)inputHeight
- (void)red:(CGFloat)inputHeight
{
    //: [self.interactor changeLayout:inputHeight];
    [self.interactor soap:inputHeight];

//    self.btnAudio.bottom = self.sessionInputView.top-20;
}

//: #pragma mark - NIMInputActionDelegate
#pragma mark - ShowKeyBar
//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message
- (void)value:(NSInteger)index user:(NIMMessage *)message
{
//    self.messageForMenu = message;
//    [self praiseViewdidSelectIndex:index];

    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [QuickMaker successUserText:index valueTingClean:@"" last:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
            //: [weakSelf.interactor addQuickComment:newComment toMessage:message completion:^(NSError *error)
            [weakSelf.interactor disk:newComment combineMediaMaxTing:message size:^(NSError *error)
            {
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf contentPicture];
            //: }];
            }];

}
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item{
- (BOOL)colorBlueItem:(InfoMakeBar *)item{
    //: SEL sel = item.selctor;
    SEL sel = item.selctor;
    //: BOOL handled = sel && [self respondsToSelector:sel];
    BOOL handled = sel && [self respondsToSelector:sel];
    //: if (handled) {
    if (handled) {
        //: do {
        do {
        //: [self performSelector:sel withObject:item];
        [self performSelector:sel withObject:item];
        //: } while (0);
        } while (0);
        //: handled = YES;
        handled = YES;
    }
    //: return handled;
    return handled;
}

//: - (void)onTextChanged:(id)sender{}
- (void)texted:(id)sender{}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers
- (void)time:(NSString *)text possibility_strong:(NSArray *)atUsers
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [FFFMessageMaker msgWithText:text];
    NIMMessage *message = [ImpendentMaker colorColumn:text];
    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[ButtonKit sheerOption].provider past:[NIMSDK sharedSDK].loginManager.currentAccount skinColour_strong:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[[DeerData sharedInstance] showNamePath].messageWith, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message];
    [self maxTeam:message];
}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage
- (void)cell:(NSString *)text information:(NSArray *)atUsers icon:(NIMMessage *)replymessage
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [FFFMessageMaker msgWithText:text];
    NIMMessage *message = [ImpendentMaker colorColumn:text];
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *contents = @"";
    NSString *contents = @"";

    //: if(replymessage.messageType == NIMMessageTypeText){
    if(replymessage.messageType == NIMMessageTypeText){
        //: type = @"TEXT";
        type = [[DeerData sharedInstance] show_salmonUreaFormat];
        //: contents = replymessage.text;
        contents = replymessage.text;
    //: }else if (replymessage.messageType == NIMMessageTypeImage){
    }else if (replymessage.messageType == NIMMessageTypeImage){
        //: type = @"IMAGE";
        type = [[DeerData sharedInstance] k_ofTitle];
        //: NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        //: contents = url;
        contents = url;
    //: }else if (replymessage.messageType == NIMMessageTypeVideo){
    }else if (replymessage.messageType == NIMMessageTypeVideo){
        //: type = @"VIDEO";
        type = [[DeerData sharedInstance] show_impulseData];
        //: NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        //: contents = videoObject.coverUrl;
        contents = videoObject.coverUrl;
    //: }else if (replymessage.messageType == NIMMessageTypeAudio){
    }else if (replymessage.messageType == NIMMessageTypeAudio){
        //: type = @"AUDIO";
        type = [[DeerData sharedInstance] mCharityData];
        //: NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        //: NSLog(@"%ld",(long)audioObject.duration);
        //: contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
        contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
    }

    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CoverTingContent *option = [[CoverTingContent alloc] init];
    //: option.message = replymessage;
    option.message = replymessage;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:replymessage.from option:option];
    TingMessage *info = [[ButtonKit sheerOption] past:replymessage.from skinColour_strong:option];

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
            //: @"type": type,//type:TEXT、IMAGE、VIDEO
            [[DeerData sharedInstance] appCamFormat]: type,//type:TEXT、IMAGE、VIDEO
            //: @"content": contents,//content:文本内容、图片url、视频url
            [[DeerData sharedInstance] showDirectorMessage]: contents,//content:文本内容、图片url、视频url
            //: @"userName": info.showName,//消息发送者
            [[DeerData sharedInstance] showToMsg]: info.showName,//消息发送者
            //: @"messageid": replymessage.messageId,//messageid：留着备用
            [[DeerData sharedInstance] noti_immediatelyName]: replymessage.messageId,//messageid：留着备用
    //: };
    };

    //: message.remoteExt = @{@"reply": dic };
    message.remoteExt = @{[[DeerData sharedInstance] mYouStr]: dic };

    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[ButtonKit sheerOption].provider past:[NIMSDK sharedSDK].loginManager.currentAccount skinColour_strong:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[[DeerData sharedInstance] showNamePath].messageWith, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message completion:^(NSError *err) {
    [self cover:message lifeStyle:^(NSError *err) {
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: - (void)onSelectEmoticon:(NIMInputEmoticon *)emoticon
- (void)view:(ButtonTableEmoticon *)emoticon
{
    //: NSString *emoticonID = emoticon.emoticonID;
    NSString *emoticonID = emoticon.emoticonID;
    //: NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    //: NSString *numberStr = [array lastObject];
    NSString *numberStr = [array lastObject];
    //: NSInteger number = [numberStr integerValue];
    NSInteger number = [numberStr integerValue];
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:number content:emoticon.tag ext:@"扩展"];
    __block NIMQuickComment *newComment = [QuickMaker successUserText:number valueTingClean:emoticon.tag last:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:number
    [self colorNotice:self.messageForMenu message:number
                      //: compltion:^(NSMapTable *result)
                      channelize:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [FFFKitQuickCommentUtil myCommentFromComments:0 keys:@[@(number)] comments:result];
        NIMQuickComment *oldComment = [NameUtilPath necessary:0 saloon:@[@(number)] title:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment
            [weakSelf.interactor heritageCompletion:newComment
                                  //: completion:^(NSError *error)
                                  data:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf contentPicture];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor spy:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   with:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      activity:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf contentPicture];
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)didReplyCancelled
- (void)rangeView
{
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
    //: [self.interactor setReferenceMessage:nil];
    [self.interactor setReferenceMessage:nil];

    //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
    if ([self.sessionConfig respondsToSelector:@selector(mySent)])
    {
        //: if ([self.sessionConfig clearThreadMessageAfterSent])
        if ([self.sessionConfig mySent])
        {
            //: [self.sessionConfig cleanThreadMessage];
            [self.sessionConfig messageCell];
        }
    }
}


//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)ironed:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId
                 spacePull:(NSString *)catalogId
{
//    NSBundle *bundle = [ButtonKit sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:chartletId ofType:nil inDirectory:NEEKIT_EmojiPath]];
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[EmptyTing intervalegrated] gray];
    //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    //: NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
    NSData *imageData = [NSData dataWithContentsOfFile:imagePath];

//    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
//
//    NIMMessage *message = [ImpendentMaker msgWithImage:gif];
//    [self sendMessage:message];
//

    //: NIMMessage *message = [FFFMessageMaker msgWithImageData:imageData extension:@""];
    NIMMessage *message = [ImpendentMaker noWill:imageData model_strong:@""];
//    message.messageSubType = 77;//标记gif用
    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
    NSMutableDictionary *dic = [[RecordInput file] Gdic];
//    NSData *imageData = UIImagePNGRepresentation(image);
    //: [dic setObject:imageData forKey:message.messageId];
    [dic setObject:imageData forKey:message.messageId];

    //: [self sendMessage:message];
    [self maxTeam:message];

    //: [self.sessionInputView.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.sessionInputView.toolBar setUtiliser:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] userThreatenId]]];

//    [self.sessionInputView endEditing:YES];
}

//: - (void)onCancelRecording
- (void)upOn
{
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: - (void)onStopRecording
- (void)stopBy
{
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
//    [self.audioContent animationClose];
}

//: - (void)onStartRecording
- (void)tableColor
{
    //: _sessionInputView.recording = YES;
    _sessionInputView.recording = YES;
//    [_sessionInputView endEditing:YES];

    //: NIMAudioType type = [self recordAudioType];
    NIMAudioType type = [self menu];
    //: NSTimeInterval duration = [MyUserKit sharedKit].config.recordMaxDuration;
    NSTimeInterval duration = [ButtonKit sheerOption].config.recordMaxDuration;

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];

    //: [[NIMSDK sharedSDK].mediaManager record:type
    [[NIMSDK sharedSDK].mediaManager record:type
                                   //: duration:duration];
                                   duration:duration];
}

//: #pragma mark NIMChatExtendManagerDelegate
#pragma mark NIMChatExtendManagerDelegate

//: - (void)onRecvQuickComment:(NIMQuickComment *)comment
- (void)onRecvQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor mortalLink:comment.message];
}


//: - (void)onRemoveQuickComment:(NIMQuickComment *)comment
- (void)onRemoveQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor mortalLink:comment.message];
}

//: - (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiPinMessage:message];
    [self region:message];
}

//: - (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiUnpinMessage:message];
    [self container:message];
}

//: #pragma mark - FFFMessageCellDelegate
#pragma mark - ModeQueryTime
//: - (BOOL)onTapCell:(FFFKitEvent *)event{
- (BOOL)hides:(CoverShowEvent *)event{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;
    //: if ([eventName isEqualToString:FFFKitEventNameTapAudio])
    if ([eventName isEqualToString:m_originalMsg])
    {
        //: [self.interactor mediaAudioPressed:event.messageModel];
        [self.interactor mentalRepresentation:event.messageModel];
        //: handle = YES;
        handle = YES;
    }
    //: return handle;
    return handle;
}

//: - (void)onRetryMessage:(NIMMessage *)message
- (void)belowStandard:(NIMMessage *)message
{
    //: if (message.isReceivedMsg) {
    if (message.isReceivedMsg) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
                                                           //: error:nil];
                                                           error:nil];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] resendMessage:message
        [[[NIMSDK sharedSDK] chatManager] resendMessage:message
                                                  //: error:nil];
                                                  error:nil];
    }
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)inwardView:(NIMMessage *)message
                 //: inView:(UIView *)view
                 leftHandedness:(UIView *)view
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: if ([self shouldShowMenuByMessage:message])
    if ([self exhibit:message])
    {
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [BroadcastView.dismissDisappear removeFromSuperview];
        //: [self showMenuWithMessage:message withView:view];
        [self redView:message exceptTeam:view];
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)headspringCell:(NIMMessage *)message smallness:(void(^)(id data))complete; {
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];

    //: handle = [self shouldShowMenuByMessage:message];
    handle = [self exhibit:message];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: !complete ? : complete(wself);
    !complete ? : complete(wself);

    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)unders:(NIMMessage *)message
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}


//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message
- (BOOL)atBottom:(NIMMessage *)message
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAudioPlayedStatusIcon)])
    if ([self.sessionConfig respondsToSelector:@selector(colorTitle)])
    {
        //: disable = [self.sessionConfig disableAudioPlayedStatusIcon];
        disable = [self.sessionConfig colorTitle];
    }
    //: return disable;
    return disable;
}

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)fileElect:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                alongPage:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected
               languageSection:(BOOL)isSelected
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (isSelected)
    if (isSelected)
    {
        //: [self.interactor delQuickComment:comment
        [self.interactor spy:comment
                           //: targetMessage:message
                           with:message
                              //: completion:^(NSError *error)
                              activity:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }
    //: else
    else
    {
        //: NIMQuickComment *aComment = [comment copy];
        NIMQuickComment *aComment = [comment copy];
        //: [self.interactor addQuickComment:aComment
        [self.interactor disk:aComment
                               //: toMessage:message
                               combineMediaMaxTing:message
                              //: completion:^(NSError *error)
                              size:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }

}

//: #pragma mark - 配置项
#pragma mark - 配置项
//: - (id<FFFSessionConfig>)sessionConfig
- (id<MessagePinImage>)sessionConfig
{
    //: return nil; 
    return nil; //使用默认配置
}

//: #pragma mark - 配置项列表
#pragma mark - 配置项列表
//是否需要监听新消息通知 : 某些场景不需要监听新消息，如浏览服务器消息历史界面
//: - (BOOL)shouldAddListenerForNewMsg
- (BOOL)version
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableReceiveNewMessages)]) {
    if ([self.sessionConfig respondsToSelector:@selector(ofSelected)]) {
        //: should = ![self.sessionConfig disableReceiveNewMessages];
        should = ![self.sessionConfig ofSelected];
    }
    //: return should;
    return should;
}



//是否需要显示输入框 : 某些场景不需要显示输入框，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldShowInputView
- (BOOL)phase
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableInputView)]) {
    if ([self.sessionConfig respondsToSelector:@selector(enableText)]) {
        //: should = ![self.sessionConfig disableInputView];
        should = ![self.sessionConfig enableText];
    }
    //: return should;
    return should;
}


//当前录音格式 : NIMSDK 支持 aac 和 amr 两种格式
//: - (NIMAudioType)recordAudioType
- (NIMAudioType)menu
{
    //: NIMAudioType type = NIMAudioTypeAAC;
    NIMAudioType type = NIMAudioTypeAAC;
    //: if ([self.sessionConfig respondsToSelector:@selector(recordType)]) {
    if ([self.sessionConfig respondsToSelector:@selector(tableFrom)]) {
        //: type = [self.sessionConfig recordType];
        type = [self.sessionConfig tableFrom];
    }
    //: return type;
    return type;
}

//是否需要监听感应器事件
//: - (BOOL)needProximityMonitor
- (BOOL)sizeMonitor
{
    //: BOOL needProximityMonitor = YES;
    BOOL needProximityMonitor = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableProximityMonitor)]) {
    if ([self.sessionConfig respondsToSelector:@selector(atShow)]) {
        //: needProximityMonitor = !self.sessionConfig.disableProximityMonitor;
        needProximityMonitor = !self.sessionConfig.atShow;
    }
    //: return needProximityMonitor;
    return needProximityMonitor;
}


//: #pragma mark -
#pragma mark -
//: #pragma mark - 长按菜单事件
#pragma mark - 长按菜单事件
//: - (NIMMessage *)messageForMenu
- (NIMMessage *)messageForMenu
{
    //: return _messageForMenu;
    return _messageForMenu;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    //: for (UIMenuItem *item in items) {
    for (UIMenuItem *item in items) {
        //: if (action == [item action]){
        if (action == [item action]){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (void)copyText:(id)sender
- (void)buttonText:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.SumrinsicIdentifier.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.SumrinsicIdentifier];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)deleteMsg:(id)sender
- (void)labelAdd:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self color:message];
    //: [self.conversationManager deleteMessage:message];
    [self.manager deleteMessage:message];
}

//: - (void)menuDidHide:(NSNotification *)notification
- (void)lengthed:(NSNotification *)notification
{
    //: [UIMenuController sharedMenuController].menuItems = nil;
    [UIMenuController sharedMenuController].menuItems = nil;
}

//: - (void)onTapMenuItemCopy:(FFFMediaItem *)item
- (void)onTapMenuItemCopy:(InfoMakeBar *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.SumrinsicIdentifier.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.SumrinsicIdentifier];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)roundCut:(InfoMakeBar *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self color:message];
    //: [self.conversationManager deleteMessage:message];
    [self.manager deleteMessage:message];
}

//: #pragma mark - 操作接口
#pragma mark - 操作接口
//: - (void)uiAddMessages:(NSArray *)messages
- (void)textIcon:(NSArray *)messages
{
    //: [self.interactor addMessages:messages];
    [self.interactor input:messages];
}

//: - (void)uiInsertMessages:(NSArray *)messages
- (void)cannulize:(NSArray *)messages
{
    //: [self.interactor insertMessages:messages];
    [self.interactor quickShared:messages];
}

//: - (FFFMessageModel *)uiDeleteMessage:(NIMMessage *)message{
- (CentralProcessingUnitModel *)color:(NIMMessage *)message{
    //: FFFMessageModel *model = [self.interactor deleteMessage:message];
    CentralProcessingUnitModel *model = [self.interactor full:message];
    //: if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: [self uiCheckReceipts:nil];
        [self viewReceipts:nil];
    }
    //: return model;
    return model;
}

//: - (void)uiUpdateMessage:(NIMMessage *)message{
- (void)high:(NIMMessage *)message{
    //: [self.interactor updateMessage:message];
    [self.interactor mortalLink:message];
}

//: - (void)uiPinMessage:(NIMMessage *)message
- (void)region:(NIMMessage *)message
{
    //: [self.interactor addPinForMessage:message];
    [self.interactor bubble:message];
}

//: - (void)uiUnpinMessage:(NIMMessage *)message
- (void)container:(NIMMessage *)message
{
    //: [self.interactor removePinForMessage:message];
    [self.interactor modeOrigin:message];
}

//: - (void)uiCheckReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)viewReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: [self.interactor checkReceipts:receipts];
    [self.interactor bar:receipts];
}

//: - (void)onTapCameraBtn:(id)sender
- (void)alonged:(id)sender
{
//    [self.interactor mediaShootPressed];

    //: [self.view addSubview:self.customAlbumView];
    [self.view addSubview:self.customAlbumView];
    //: [self.customAlbumView.albumPickerView reloadMediaData];
    [self.customAlbumView.albumPickerView notShowValue];
    //: [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    //: [self.customAlbumView.albumPickerView.collectionView reloadData];
    [self.customAlbumView.albumPickerView.collectionView reloadData];
    //: [self.customAlbumView.confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [self.customAlbumView.confirmButton setTitle:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] app_meltNeatId]] forState:UIControlStateNormal];
    //: [self.customAlbumView animationShow];
    [self.customAlbumView title];

}

//: - (void)onTapAlbunBtn:(id)sender
- (void)infoIn:(id)sender
{
//    [self.interactor mediaPicturePressed];

//    [self.view addSubview:self.photopicview];
//    self.photopicview.hidden = NO;
}

//: - (void)CustomPickerDidSelectCamera
- (void)trailheadValue
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView impendentImage];
    //: [self.interactor mediaShootPressed];
    [self.interactor shootNumber];
}

//- (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets
//: - (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)domains:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"assets:%@",assets);

    //: for (PHAsset *asset in assets) {
    for (PHAsset *asset in assets) {
        //: if (asset.mediaType == PHAssetMediaTypeVideo) {
        if (asset.mediaType == PHAssetMediaTypeVideo) {

            // 获取视频路径
            //: [self getVideoPathFromPHAsset:asset completion:^(NSString *path) {
            [self value:asset custom:^(NSString *path) {
                //: if (path) {
                if (path) {
                    //: NSLog(@"视频路径: %@", path);
                    // 使用路径...
                    //: NIMMessage *message = [FFFMessageMaker msgWithVideo:path];
                    NIMMessage *message = [ImpendentMaker video:path];
                    //: [self sendMessage:message];
                    [self maxTeam:message];
                //: } else {
                } else {
                    //: NSLog(@"获取视频路径失败");
                }
            //: }];
            }];

        //: }else{
        }else{




            //: [self getOriginalImageFromAsset:asset completion:^(UIImage *image) {
            [self tingKey:asset input:^(UIImage *image) {
                //: if (image) {
                if (image) {
                    //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
                    NIMMessage *message = [ImpendentMaker source:image];

                    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[RecordInput file] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [self sendMessage:message];
                    [self maxTeam:message];

                //: } else {
                } else {
                    //: NSLog(@"获取图片路径失败");
                }
            //: }];
            }];

//            // 获取图片路径
//            [self getImagePathFromPHAsset:asset completion:^(NSString *path) {
//                if (path) {
//                    NSLog(@"图片路径: %@", path);
//                    // 使用路径...
//                    NIMMessage *message = [ImpendentMaker msgWithImagePath:path];
//                    [self sendMessage:message];
//                } else {
//                    NSLog(@"获取图片路径失败");
//                }
//            }];


        }
    }

}
//获取图片
//: - (void)getOriginalImageFromAsset:(PHAsset *)asset completion:(void (^)(UIImage *image))completion {
- (void)tingKey:(PHAsset *)asset input:(void (^)(UIImage *image))completion {
    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset
    [[PHImageManager defaultManager] requestImageDataForAsset:asset
                                                     //: options:options
                                                     options:options
                                               //: resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
                                               resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: UIImage *image = [UIImage imageWithData:imageData];
            UIImage *image = [UIImage imageWithData:imageData];
            //: completion(image);
            completion(image);
        //: } else {
        } else {
            //: NSLog(@"获取原始图片失败: %@", info);
            //: completion(nil);
            completion(nil);
        }
    //: }];
    }];
}

// 获取图片路径
//: - (void)getImagePathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)message:(PHAsset *)asset viewTemp:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeImage) {
    if (asset.mediaType != PHAssetMediaTypeImage) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;
    //: options.synchronous = NO;
    options.synchronous = NO;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_image_%@.jpg", [NSUUID UUID].UUIDString]];
            NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[[DeerData sharedInstance] user_aftHeavilyData], [NSUUID UUID].UUIDString]];
            //: [imageData writeToFile:filePath atomically:YES];
            [imageData writeToFile:filePath atomically:YES];
            //: if (completion) completion(filePath);
            if (completion) completion(filePath);
        //: } else {
        } else {
            //: if (completion) completion(nil);
            if (completion) completion(nil);
        }
    //: }];
    }];
}
// 获取视频路径
//: - (void)getVideoPathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)value:(PHAsset *)asset custom:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeVideo) {
    if (asset.mediaType != PHAssetMediaTypeVideo) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    //: options.version = PHVideoRequestOptionsVersionOriginal;
    options.version = PHVideoRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
        //: if ([avAsset isKindOfClass:[AVURLAsset class]]) {
        if ([avAsset isKindOfClass:[AVURLAsset class]]) {
            //: AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            //: NSURL *url = urlAsset.URL;
            NSURL *url = urlAsset.URL;
            //: if (completion) completion(url.path);
            if (completion) completion(url.path);
        //: } else {
        } else {
            // 如果无法直接获取URL，则需要导出到临时文件
            //: [self exportVideoToTempFile:avAsset completion:completion];
            [self clearImage:avAsset size:completion];
        }
    //: }];
    }];
}

//: - (void)exportVideoToTempFile:(AVAsset *)avAsset completion:(void (^)(NSString *path))completion {
- (void)clearImage:(AVAsset *)avAsset size:(void (^)(NSString *path))completion {
    //: NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    //: if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
    if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
        //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];
        AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];

        //: NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_video_%@.mp4", [NSUUID UUID].UUIDString]];
        NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[[DeerData sharedInstance] show_ayTitle], [NSUUID UUID].UUIDString]];
        //: session.outputURL = [NSURL fileURLWithPath:outputPath];
        session.outputURL = [NSURL fileURLWithPath:outputPath];
        //: session.outputFileType = AVFileTypeMPEG4;
        session.outputFileType = AVFileTypeMPEG4;
        //: session.shouldOptimizeForNetworkUse = YES;
        session.shouldOptimizeForNetworkUse = YES;

        //: [session exportAsynchronouslyWithCompletionHandler:^{
        [session exportAsynchronouslyWithCompletionHandler:^{
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (session.status == AVAssetExportSessionStatusCompleted) {
                if (session.status == AVAssetExportSessionStatusCompleted) {
                    //: if (completion) completion(outputPath);
                    if (completion) completion(outputPath);
                //: } else {
                } else {
                    //: if (completion) completion(nil);
                    if (completion) completion(nil);
                }
            //: });
            });
        //: }];
        }];
    //: } else {
    } else {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)onTapMediaItemPicture:(FFFMediaItem *)item
- (void)alongReferChiaroscuro:(InfoMakeBar *)item
{
    //: [self.interactor mediaPicturePressed];
    [self.interactor button];
}

//: - (void)onTapMediaItemShoot:(FFFMediaItem *)item
- (void)cancel:(InfoMakeBar *)item
{
    //: [self.interactor mediaShootPressed];
    [self.interactor shootNumber];
}

//: - (void)onTapMediaItemLocation:(FFFMediaItem *)item
- (void)name:(InfoMakeBar *)item
{
//    [self.interactor mediaLocationPressed];
    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent begin];

}

//: - (void)onTapTableView:(id)sender
- (void)storages:(id)sender
{
//    BroadcastView.shareMenuView.praiseView.hidden = YES;
//    BroadcastView.shareMenuView.buttonsBgView.hidden = NO;
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [BroadcastView.dismissDisappear removeFromSuperview];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    //: self.photopicview.hidden = YES;
    self.photopicview.hidden = YES;
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: if (self.view.window) {
    if (self.view.window) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
        [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
         {
             //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
             [[NIMSDK sharedSDK].mediaManager cancelRecord];
             //: [wself.interactor cleanCache];
             [wself.interactor randomEnable];
             //: [wself.sessionInputView reset];
             [wself.sessionInputView showImage];
             //: [wself.tableView reloadData];
             [wself.tableView reloadData];
             //: [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
             [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
         //: } completion:nil];
         } completion:nil];
    }
}


//: #pragma mark - 标记已读
#pragma mark - 标记已读
//: - (void)markRead
- (void)isTing
{
    //: [self.interactor markRead:YES];
    [self.interactor readByDate:YES];
}


//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)haveAndEavesdropper
{
    //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
    [[NIMSDK sharedSDK].chatManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
}

//: - (void)removeListener
- (void)change
{
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];

}


//: - (id<NIMConversationManager>)conversationManager{
- (id<NIMConversationManager>)manager{
    //: switch (self.session.sessionType) {
    switch (self.session.sessionType) {
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
            //: return nil;
            return nil;
            //: break;
            break;
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        //: default:
        default:
            //: return [NIMSDK sharedSDK].conversationManager;
            return [NIMSDK sharedSDK].conversationManager;
    }
}


//: - (void)setUpTitleView
- (void)reclineView
{
    //: FFFKitTitleView *titleView = (FFFKitTitleView *)self.navigationItem.titleView;
    DoingToView *titleView = (DoingToView *)self.navigationItem.titleView;
    //: if (!titleView || ![titleView isKindOfClass:[FFFKitTitleView class]])
    if (!titleView || ![titleView isKindOfClass:[DoingToView class]])
    {
        //: titleView = [[FFFKitTitleView alloc] initWithFrame:CGRectZero];
        titleView = [[DoingToView alloc] initWithFrame:CGRectZero];
        //: self.navigationItem.titleView = titleView;
        self.navigationItem.titleView = titleView;

        //: titleView.titleLabel.text = self.sessionTitle;
        titleView.titleLabel.text = self.file;
        //: titleView.subtitleLabel.text = self.sessionSubTitle;
        titleView.subtitleLabel.text = self.statuteTitle;

        //: self.titleLabel = titleView.titleLabel;
        self.titleLabel = titleView.titleLabel;
        //: self.subTitleLabel = titleView.subtitleLabel;
        self.subTitleLabel = titleView.subtitleLabel;
    }

    //: [titleView sizeToFit];
    [titleView sizeToFit];
    //: self.subtitle.text = self.sessionSubTitle;
    self.subtitle.text = self.statuteTitle;
}

//: - (void)refreshSessionTitle:(NSString *)title
- (void)windowLock:(NSString *)title
{
    //: self.titleLabel.text = title;
    self.titleLabel.text = title;
//    self.labtitle.text = self.sessionTitle;
    //: [self setUpTitleView];
    [self reclineView];
}


//: - (void)refreshSessionSubTitle:(NSString *)title
- (void)afterInputContent:(NSString *)title
{
    //: self.subTitleLabel.text = title;
    self.subTitleLabel.text = title;
    //: self.subtitle.text = title;
    self.subtitle.text = title;
    //: if([title isEqualToString:@"离线".ntes_localized]){
    if([title isEqualToString:@"离线".textIndex]){
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"777777"];
        self.subtitle.textColor = [UIColor min:[[DeerData sharedInstance] noti_mediumValue]];
    //: }else{
    }else{
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"#00B01B"];
        self.subtitle.textColor = [UIColor min:[[DeerData sharedInstance] notiPubliclyId]];
    }
    //: [self setUpTitleView];
    [self reclineView];
}

//: - (void)refreshMessages
- (void)circle
{
    //: [self.interactor resetMessages:nil];
    [self.interactor messages:nil];
}

//: - (NSArray *)menusItems:(NIMMessage *)message {
- (NSArray *)reply:(NIMMessage *)message {
    //: return nil;
    return nil;
}

//: - (void)scrollToMessage:(NIMMessage *)message
- (void)tapTo:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor text:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        //: [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
}

//: - (void)cleanMenuMessage
- (void)contentPicture
{
    //: [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
}

//: - (void)hadCommentThisMessage:(NIMMessage *)message
- (void)colorNotice:(NIMMessage *)message
                         //: type:(int64_t)type
                         message:(int64_t)type
                    //: compltion:(void(^)(NSMapTable *))completion
                    channelize:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
        //: if (completion)
        if (completion)
        {
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)exhibit:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification)
        message.messageType == NIMMessageTypeNotification)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (void)showMenuWithMessage:(NIMMessage *)message withView:(UIView *)view {
- (void)redView:(NIMMessage *)message exceptTeam:(UIView *)view {

    //: [[FFFBubbleMenuView shareMenuView] removeFromSuperview];
    [[BroadcastView dismissDisappear] removeFromSuperview];

    //: NSArray *btns = [self genMediaButtonsWithMessage:message];
    NSArray *btns = [self selected:message];

    //: if (btns.count > 0) {
    if (btns.count > 0) {

        //: CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        //: CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];
        CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: [[FFFBubbleMenuView shareMenuView] showViewWithButtonModels:btns cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(FFFMediaItem *item) {
        [[BroadcastView dismissDisappear] accountIn:btns openBlock:cursorStartRectToWindow queryion:tempRect bubble:^(InfoMakeBar *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: [self onTapMediaItem:item];
            [self colorBlueItem:item];

            //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
            [BroadcastView.dismissDisappear removeFromSuperview];
        //: }praiseBlock:^(NSInteger tag) {
        }show:^(NSInteger tag) {
            //: [self praiseViewdidSelectIndex:tag];
            [self sum:tag];
        //: }];
        }];
    }

}
//: - (void)praiseViewdidSelectIndex:(NSInteger)index
- (void)sum:(NSInteger)index
{
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [QuickMaker successUserText:index valueTingClean:@"" last:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:index
    [self colorNotice:self.messageForMenu message:index
                      //: compltion:^(NSMapTable *result)
                      channelize:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [FFFKitQuickCommentUtil myCommentFromComments:0 keys:@[@(index)] comments:result];
        NIMQuickComment *oldComment = [NameUtilPath necessary:0 saloon:@[@(index)] title:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment toMessage:self.messageForMenu completion:^(NSError *error)
            [weakSelf.interactor disk:newComment combineMediaMaxTing:self.messageForMenu size:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf contentPicture];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor spy:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   with:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      activity:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kCrowdedValue]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf contentPicture];
            //: }];
            }];
        }
    //: }];
    }];
}
//: - (NSArray *)genMediaButtonsWithMessage:(NIMMessage *)message {
- (NSArray *)selected:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.sessionConfig)
    if (!self.sessionConfig)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[ButtonKit sheerOption].config name:message];
    }
    //: else if([self.sessionConfig respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.sessionConfig respondsToSelector:@selector(tableOfTextsToInscription:)])
    {
        //: items = [self.sessionConfig menuItemsWithMessage:message];
        items = [self.sessionConfig tableOfTextsToInscription:message];
    }

    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(InfoMakeBar *item, NSUInteger idx, BOOL *stop) {

        //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
        PageCountImage *model = [[PageCountImage alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

    //: }];
    }];

    //: return selectedAllRangeButtons;
    return selectedAllRangeButtons;
}

//: - (void)onTapAudioBtn:(id)sender
- (void)doingValue:(id)sender
{
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent begin];
}

//: - (void)handleAudioBtn
- (void)titleMenu
{
//    [self.sessionInputView refreshStatus:NIMInputStatusText];
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent begin];
}

//: - (UIButton *)btnAudio
- (UIButton *)btnAudio
{
    //: if (!_btnAudio) {
    if (!_btnAudio) {
        //: _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice tingHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        //: _btnAudio.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btnAudio.backgroundColor = [UIColor min:[[DeerData sharedInstance] main_economicallyPdaIdent]];
        //: [_btnAudio setImage:[UIImage imageNamed:@"icon_toolview_voice_normal"] forState:UIControlStateNormal];
        [_btnAudio setImage:[UIImage imageNamed:[[DeerData sharedInstance] appCrushContent]] forState:UIControlStateNormal];
        //: _btnAudio.layer.cornerRadius = 20;
        _btnAudio.layer.cornerRadius = 20;
        //: [_btnAudio addTarget:self action:@selector(handleAudioBtn) forControlEvents:UIControlEventTouchUpInside];
        [_btnAudio addTarget:self action:@selector(titleMenu) forControlEvents:UIControlEventTouchUpInside];

    }
    //: return _btnAudio;
    return _btnAudio;
}

//: - (void)handleAlbumBtn
- (void)handleBar
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaPicturePressed];
    [self.interactor button];
}

//: - (void)handleShotBtn
- (void)upBtn
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaShootPressed];
    [self.interactor shootNumber];
}

//: - (PhotoContainerView *)customAlbumView
- (CuttingEdgeRadiogramTroughView *)customAlbumView
{
    //: if(!_customAlbumView){
    if(!_customAlbumView){
        //: _customAlbumView = [[PhotoContainerView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _customAlbumView = [[CuttingEdgeRadiogramTroughView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _customAlbumView.delegate = self;
        _customAlbumView.delegate = self;

                //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleParentTap)];
                UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(lozengeOf)];
                //: singleTapclose.delegate = self;
                singleTapclose.delegate = self;
                //: singleTapclose.cancelsTouchesInView = NO; 
                singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
                //: [_customAlbumView addGestureRecognizer:singleTapclose];
                [_customAlbumView addGestureRecognizer:singleTapclose];
    }
    //: return _customAlbumView;
    return _customAlbumView;
}
//: - (void)handleParentTap
- (void)lozengeOf
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView impendentImage];
}

// 实现UIGestureRecognizerDelegate方法
//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // 获取触摸点位置
    //: CGPoint touchPoint = [touch locationInView:self.customAlbumView];
    CGPoint touchPoint = [touch locationInView:self.customAlbumView];

    // 检查触摸点是否在子视图上
    //: for (UIView *subview in self.customAlbumView.subviews) {
    for (UIView *subview in self.customAlbumView.subviews) {
        //: if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
        if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
            //: return NO; 
            return NO; // 如果触摸点在子视图上，父视图手势不响应
        }
    }

    //: return YES; 
    return YES; // 其他区域父视图手势响应
}

//: - (UIView *)photopicview
- (UIView *)photopicview
{
    //: if (!_photopicview) {
    if (!_photopicview) {
        //: _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        //: _photopicview.backgroundColor = [UIColor whiteColor];
        _photopicview.backgroundColor = [UIColor whiteColor];
        //: _photopicview.layer.cornerRadius = 12;
        _photopicview.layer.cornerRadius = 12;
        //: _photopicview.layer.masksToBounds = YES;
        _photopicview.layer.masksToBounds = YES;
        //: _photopicview.hidden = YES;
        _photopicview.hidden = YES;

        //: UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnAlbum.frame = CGRectMake(0, 0, 120, 78);
        btnAlbum.frame = CGRectMake(0, 0, 120, 78);
//        btnAlbum.backgroundColor = ThemeColor;
        //: [btnAlbum setImage:[UIImage imageNamed:@"icon_toolview_album"] forState:UIControlStateNormal];
        [btnAlbum setImage:[UIImage imageNamed:[[DeerData sharedInstance] kAbsorbPersonFormat]] forState:UIControlStateNormal];
//        btnAlbum.layer.cornerRadius = 20;
        //: [btnAlbum addTarget:self action:@selector(handleAlbumBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnAlbum addTarget:self action:@selector(handleBar) forControlEvents:UIControlEventTouchUpInside];
        //: btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnAlbum setTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] forState:UIControlStateNormal];
        [btnAlbum setTitle:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] kConsultantIdent]] forState:UIControlStateNormal];
        //: [btnAlbum layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnAlbum title:(MKButtonEdgeInsetsStyleTop) tillVideo:10];
        //: [_photopicview addSubview:btnAlbum];
        [_photopicview addSubview:btnAlbum];

        //: UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnShot.frame = CGRectMake(120, 0, 120, 78);
        btnShot.frame = CGRectMake(120, 0, 120, 78);
//        btnShot.backgroundColor = ThemeColor;
        //: [btnShot setImage:[UIImage imageNamed:@"icon_toolview_camera"] forState:UIControlStateNormal];
        [btnShot setImage:[UIImage imageNamed:[[DeerData sharedInstance] kPressedIdent]] forState:UIControlStateNormal];
//        btnShot.layer.cornerRadius = 20;
        //: [btnShot addTarget:self action:@selector(handleShotBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnShot addTarget:self action:@selector(upBtn) forControlEvents:UIControlEventTouchUpInside];
        //: btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnShot setTitle:[FFFLanguageManager getTextWithKey:@"message_send_camera"] forState:UIControlStateNormal];
        [btnShot setTitle:[PaintedNaturalLanguageTo exhibit:[[DeerData sharedInstance] notiTechnologicId]] forState:UIControlStateNormal];
        //: [btnShot layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnShot title:(MKButtonEdgeInsetsStyleTop) tillVideo:10];
        //: [_photopicview addSubview:btnShot];
        [_photopicview addSubview:btnShot];
    }
    //: return _photopicview;
    return _photopicview;
}

//: - (FFFInputAudioView *)audioContent
- (InputMessageView *)audioContent
{
    //: if(!_audioContent){
    if(!_audioContent){
        //: _audioContent = [[FFFInputAudioView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _audioContent = [[InputMessageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _audioContent.hidden = YES;
    }
    //: return _audioContent;
    return _audioContent;
}

//: @end
@end
