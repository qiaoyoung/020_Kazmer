
#import <Foundation/Foundation.h>

typedef struct {
    Byte longanimity;
    Byte *valueTime;
    unsigned int provenience;
	int viewBorrowRna;
} StructCarbamideData;

@interface CarbamideData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CarbamideData

+ (instancetype)sharedInstance {
    static CarbamideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CarbamideDataToByte:(StructCarbamideData *)data {
    for (int i = 0; i < data->provenience; i++) {
        data->valueTime[i] ^= data->longanimity;
    }
    data->valueTime[data->provenience] = 0;
	if (data->provenience >= 1) {
		data->viewBorrowRna = data->valueTime[0];
	}
    return data->valueTime;
}

- (NSString *)StringFromCarbamideData:(StructCarbamideData *)data {
    return [NSString stringWithUTF8String:(char *)[self CarbamideDataToByte:data]];
}

//: icon_contact_normal
- (NSString *)showRiotStr {
    /* static */ NSString *showRiotStr = nil;
    if (!showRiotStr) {
        StructCarbamideData value = (StructCarbamideData){75, (Byte []){34, 40, 36, 37, 20, 40, 36, 37, 63, 42, 40, 63, 20, 37, 36, 57, 38, 42, 39, 53}, 19, 41};
        showRiotStr = [self StringFromCarbamideData:&value];
    }
    return showRiotStr;
}

//: contacts_list_title
- (NSString *)mMuscleAccentValue {
    /* static */ NSString *mMuscleAccentValue = nil;
    if (!mMuscleAccentValue) {
        StructCarbamideData value = (StructCarbamideData){217, (Byte []){186, 182, 183, 173, 184, 186, 173, 170, 134, 181, 176, 170, 173, 134, 173, 176, 173, 181, 188, 148}, 19, 82};
        mMuscleAccentValue = [self StringFromCarbamideData:&value];
    }
    return mMuscleAccentValue;
}

//: activity_user_profile_chat
- (NSString *)user_publisherValue {
    /* static */ NSString *user_publisherValue = nil;
    if (!user_publisherValue) {
        StructCarbamideData value = (StructCarbamideData){201, (Byte []){168, 170, 189, 160, 191, 160, 189, 176, 150, 188, 186, 172, 187, 150, 185, 187, 166, 175, 160, 165, 172, 150, 170, 161, 168, 189, 239}, 26, 172};
        user_publisherValue = [self StringFromCarbamideData:&value];
    }
    return user_publisherValue;
}

//: KEKENotificationLanguageChanged
- (NSString *)userEconomicallyBubbleStr {
    /* static */ NSString *userEconomicallyBubbleStr = nil;
    if (!userEconomicallyBubbleStr) {
        StructCarbamideData value = (StructCarbamideData){242, (Byte []){185, 183, 185, 183, 188, 157, 134, 155, 148, 155, 145, 147, 134, 155, 157, 156, 190, 147, 156, 149, 135, 147, 149, 151, 177, 154, 147, 156, 149, 151, 150, 53}, 31, 57};
        userEconomicallyBubbleStr = [self StringFromCarbamideData:&value];
    }
    return userEconomicallyBubbleStr;
}

//: icon_discovery_normal
- (NSString *)dreamImageRepairItchMsg {
    /* static */ NSString *dreamImageRepairItchMsg = nil;
    if (!dreamImageRepairItchMsg) {
        StructCarbamideData value = (StructCarbamideData){38, (Byte []){79, 69, 73, 72, 121, 66, 79, 85, 69, 73, 80, 67, 84, 95, 121, 72, 73, 84, 75, 71, 74, 114}, 21, 162};
        dreamImageRepairItchMsg = [self StringFromCarbamideData:&value];
    }
    return dreamImageRepairItchMsg;
}

//: icon_setting_pressed
- (NSString *)noti_removeTransportIdent {
    /* static */ NSString *noti_removeTransportIdent = nil;
    if (!noti_removeTransportIdent) {
        StructCarbamideData value = (StructCarbamideData){129, (Byte []){232, 226, 238, 239, 222, 242, 228, 245, 245, 232, 239, 230, 222, 241, 243, 228, 242, 242, 228, 229, 147}, 20, 5};
        noti_removeTransportIdent = [self StringFromCarbamideData:&value];
    }
    return noti_removeTransportIdent;
}

//: main_tab_my
- (NSString *)app_heavilyId {
    /* static */ NSString *app_heavilyId = nil;
    if (!app_heavilyId) {
        StructCarbamideData value = (StructCarbamideData){227, (Byte []){142, 130, 138, 141, 188, 151, 130, 129, 188, 142, 154, 237}, 11, 74};
        app_heavilyId = [self StringFromCarbamideData:&value];
    }
    return app_heavilyId;
}

//: icon_setting_normal
- (NSString *)k_accentName {
    /* static */ NSString *k_accentName = nil;
    if (!k_accentName) {
        StructCarbamideData value = (StructCarbamideData){99, (Byte []){10, 0, 12, 13, 60, 16, 6, 23, 23, 10, 13, 4, 60, 13, 12, 17, 14, 2, 15, 223}, 19, 141};
        k_accentName = [self StringFromCarbamideData:&value];
    }
    return k_accentName;
}

//: icon_message_normal
- (NSString *)show_deadlineKey {
    /* static */ NSString *show_deadlineKey = nil;
    if (!show_deadlineKey) {
        StructCarbamideData value = (StructCarbamideData){226, (Byte []){139, 129, 141, 140, 189, 143, 135, 145, 145, 131, 133, 135, 189, 140, 141, 144, 143, 131, 142, 181}, 19, 157};
        show_deadlineKey = [self StringFromCarbamideData:&value];
    }
    return show_deadlineKey;
}

//: #875FFA
- (NSString *)m_nameFormat {
    /* static */ NSString *m_nameFormat = nil;
    if (!m_nameFormat) {
        StructCarbamideData value = (StructCarbamideData){76, (Byte []){111, 116, 123, 121, 10, 10, 13, 54}, 7, 200};
        m_nameFormat = [self StringFromCarbamideData:&value];
    }
    return m_nameFormat;
}

//: badgeValue
- (NSString *)noti_isolationGenetTitle {
    /* static */ NSString *noti_isolationGenetTitle = nil;
    if (!noti_isolationGenetTitle) {
        StructCarbamideData value = (StructCarbamideData){164, (Byte []){198, 197, 192, 195, 193, 242, 197, 200, 209, 193, 241}, 10, 52};
        noti_isolationGenetTitle = [self StringFromCarbamideData:&value];
    }
    return noti_isolationGenetTitle;
}

//: selectedImage
- (NSString *)kArmMessage {
    /* static */ NSString *kArmMessage = nil;
    if (!kArmMessage) {
        StructCarbamideData value = (StructCarbamideData){207, (Byte []){188, 170, 163, 170, 172, 187, 170, 171, 134, 162, 174, 168, 170, 81}, 13, 196};
        kArmMessage = [self StringFromCarbamideData:&value];
    }
    return kArmMessage;
}

//: icon_message_pressed
- (NSString *)noti_libEmployData {
    /* static */ NSString *noti_libEmployData = nil;
    if (!noti_libEmployData) {
        StructCarbamideData value = (StructCarbamideData){1, (Byte []){104, 98, 110, 111, 94, 108, 100, 114, 114, 96, 102, 100, 94, 113, 115, 100, 114, 114, 100, 101, 6}, 20, 89};
        noti_libEmployData = [self StringFromCarbamideData:&value];
    }
    return noti_libEmployData;
}

//: discovery
- (NSString *)dream_onFormat {
    /* static */ NSString *dream_onFormat = nil;
    if (!dream_onFormat) {
        StructCarbamideData value = (StructCarbamideData){81, (Byte []){53, 56, 34, 50, 62, 39, 52, 35, 40, 32}, 9, 90};
        dream_onFormat = [self StringFromCarbamideData:&value];
    }
    return dream_onFormat;
}

//: #4B43DE
- (NSString *)userCueId {
    /* static */ NSString *userCueId = nil;
    if (!userCueId) {
        StructCarbamideData value = (StructCarbamideData){125, (Byte []){94, 73, 63, 73, 78, 57, 56, 62}, 7, 108};
        userCueId = [self StringFromCarbamideData:&value];
    }
    return userCueId;
}

//: image
- (NSString *)showToStr {
    /* static */ NSString *showToStr = nil;
    if (!showToStr) {
        StructCarbamideData value = (StructCarbamideData){197, (Byte []){172, 168, 164, 162, 160, 126}, 5, 177};
        showToStr = [self StringFromCarbamideData:&value];
    }
    return showToStr;
}

//: #A148FF
- (NSString *)notiStyleUrl {
    /* static */ NSString *notiStyleUrl = nil;
    if (!notiStyleUrl) {
        StructCarbamideData value = (StructCarbamideData){61, (Byte []){30, 124, 12, 9, 5, 123, 123, 30}, 7, 250};
        notiStyleUrl = [self StringFromCarbamideData:&value];
    }
    return notiStyleUrl;
}

//: icon_contact_pressed
- (NSString *)notiTapFiftyMessage {
    /* static */ NSString *notiTapFiftyMessage = nil;
    if (!notiTapFiftyMessage) {
        StructCarbamideData value = (StructCarbamideData){114, (Byte []){27, 17, 29, 28, 45, 17, 29, 28, 6, 19, 17, 6, 45, 2, 0, 23, 1, 1, 23, 22, 230}, 20, 237};
        notiTapFiftyMessage = [self StringFromCarbamideData:&value];
    }
    return notiTapFiftyMessage;
}

//: icon_discovery_pressed
- (NSString *)show_scaleCombinationIdent {
    /* static */ NSString *show_scaleCombinationIdent = nil;
    if (!show_scaleCombinationIdent) {
        StructCarbamideData value = (StructCarbamideData){176, (Byte []){217, 211, 223, 222, 239, 212, 217, 195, 211, 223, 198, 213, 194, 201, 239, 192, 194, 213, 195, 195, 213, 212, 126}, 22, 172};
        show_scaleCombinationIdent = [self StringFromCarbamideData:&value];
    }
    return show_scaleCombinationIdent;
}

//: #612CF9
- (NSString *)userShouldFormat {
    /* static */ NSString *userShouldFormat = nil;
    if (!userShouldFormat) {
        StructCarbamideData value = (StructCarbamideData){51, (Byte []){16, 5, 2, 1, 112, 117, 10, 80}, 7, 160};
        userShouldFormat = [self StringFromCarbamideData:&value];
    }
    return userShouldFormat;
}

//: #A3A3A3
- (NSString *)showHunterMessage {
    /* static */ NSString *showHunterMessage = nil;
    if (!showHunterMessage) {
        StructCarbamideData value = (StructCarbamideData){145, (Byte []){178, 208, 162, 208, 162, 208, 162, 17}, 7, 99};
        showHunterMessage = [self StringFromCarbamideData:&value];
    }
    return showHunterMessage;
}

//: title
- (NSString *)kKeyText {
    /* static */ NSString *kKeyText = nil;
    if (!kKeyText) {
        StructCarbamideData value = (StructCarbamideData){251, (Byte []){143, 146, 143, 151, 158, 234}, 5, 177};
        kKeyText = [self StringFromCarbamideData:&value];
    }
    return kKeyText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainTabController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainTabController.h"
#import "UserBarController.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NTESSessionListViewController.h"
#import "ShowSessionViewController.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+ShowObject.h"
//: #import "NTESCustomNotificationDB.h"
#import "ChanceImage.h"
//: #import "NTESNotificationCenter.h"
#import "MidstreamZoneCenter.h"
//: #import "NTESNavigationHandler.h"
#import "ChangeSessionHandlerSelect.h"
//: #import "NTESNavigationAnimator.h"
#import "FrameRecent.h"
//: #import "NTESBundleSetting.h"
#import "NameTing.h"
//: #import "CCCContactsViewController.h"
#import "CrimsonViewController.h"
//: #import "NTESMainCenterViewController.h"
#import "SoapBubbleViewController.h"
//: #import "DisCorveyViewController.h"
#import "AntediluvianViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"

//: typedef NS_ENUM(NSInteger,NTESMainTabType) {
typedef NS_ENUM(NSInteger,NTESMainTabType) {
    //: NTESMainTabTypeMessageList, 
    NTESMainTabTypeMessageList, //聊天
    //: NTESMainTabTypeChatroomList, 
    NTESMainTabTypeChatroomList, //聊天室
    //: NTESMainTabTypeContact, 
    NTESMainTabTypeContact, //通讯录
    //: NTESMainTabTypeSetting, 
    NTESMainTabTypeSetting, //设置
//: };
};



//: @interface NTESMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>
@interface UserBarController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) FrameRecent *animator;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;

//: @property (nonatomic,assign) NSInteger systemUnreadCount;
@property (nonatomic,assign) NSInteger systemUnreadCount;

//: @property (nonatomic,assign) NSInteger customSystemUnreadCount;
@property (nonatomic,assign) NSInteger customSystemUnreadCount;

//: @property (nonatomic,copy) NSDictionary *configs;
@property (nonatomic,copy) NSDictionary *configs;

//: @end
@end

//: @implementation NTESMainTabController
@implementation UserBarController

//: + (instancetype)instance{
+ (instancetype)scaleInstance{
    //: AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[NTESMainTabController class]]) {
    if ([vc isKindOfClass:[UserBarController class]]) {
        //: return (NTESMainTabController *)vc;
        return (UserBarController *)vc;
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpSubNav];
    [self alongMessage];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString * user_minIdent;
    extern NSString * user_minIdent;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name: user_minIdent object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(toed:) name: user_minIdent object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamses:) name:[[CarbamideData sharedInstance] userEconomicallyBubbleStr] object:nil];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor min:[[CarbamideData sharedInstance] showHunterMessage]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#4B43DE"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor min:[[CarbamideData sharedInstance] userCueId]]} forState:UIControlStateSelected];

    //: if (@available(iOS 18, *)) {
    if (@available(iOS 18, *)) {
        //: self.delegate = self;
        self.delegate = self;
    }

    //: [self setupNetworkObserver];
    [self high];
}

//: - (void)setupNetworkObserver {
- (void)high {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(networkChanged:)
                                             selector:@selector(greens:)
                                                 //: name:kReachabilityChangedNotification
                                                 name:kReachabilityChangedNotification
                                               //: object:nil];
                                               object:nil];
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: [reachability startNotifier];
    [reachability startNotifier];
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)greens:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        //: [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
        [[RecordInput file] maxToCompletionUp:^(BOOL success) {
            //: if (success) {
            if (success) {
                //: NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            //: } else {
            } else {
                //: NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            }
        //: }]; 
        }]; // 网络恢复时更新域名
    }
}

//: - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:NO];
    [UIView setAnimationsEnabled:NO];
    //: return YES;
    return YES;
}
//: - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:YES];
    [UIView setAnimationsEnabled:YES];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor min:[[CarbamideData sharedInstance] showHunterMessage]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#4B43DE"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor min:[[CarbamideData sharedInstance] userCueId]]} forState:UIControlStateSelected];


}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //会话界面发送拍摄的视频，拍摄结束后点击发送后可能顶部会有红条，导致的界面错位。
    //: self.view.frame = [UIScreen mainScreen].bounds;
    self.view.frame = [UIScreen mainScreen].bounds;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSArray*)tabbars{
- (NSArray*)titleualMatterTabbars{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];

    //: [items addObject:@(0)];
    [items addObject:@(0)];
    //: [items addObject:@(1)];
    [items addObject:@(1)];
    //: [items addObject:@(2)];
    [items addObject:@(2)];
    //: [items addObject:@(3)];
    [items addObject:@(3)];
    //: return items;
    return items;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)languageChanged:(NSNotification *)noti {
- (void)teamses:(NSNotification *)noti {
    //: [self setUpSubNav];
    [self alongMessage];


}


//: - (void)setUpSubNav{
- (void)alongMessage{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.titleualMatterTabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self visibleWithOrigin:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
//        NSString *title  = item[TabbarTitle];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] user_publisherValue]];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [FFFLanguageManager getTextWithKey:@"discovery"];
            title = [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] dream_onFormat]];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [FFFLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] mMuscleAccentValue]];
        //: }else if (idx == 3){
        }else if (idx == 3){
            //: title = [FFFLanguageManager getTextWithKey:@"main_tab_my"];
            title = [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] app_heavilyId]];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[[[CarbamideData sharedInstance] showToStr]];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[[[CarbamideData sharedInstance] kArmMessage]];
        //: Class clazz = NSClassFromString(vcName);
        Class clazz = NSClassFromString(vcName);
        //: UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        //: vc.hidesBottomBarWhenPushed = NO;
        vc.hidesBottomBarWhenPushed = NO;
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

        //: UIImage *normalImage = [UIImage imageNamed:imageName];
        UIImage *normalImage = [UIImage imageNamed:imageName];
        //: normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //: UIImage *selectImage = [UIImage imageNamed:imageSelected];
        UIImage *selectImage = [UIImage imageNamed:imageSelected];
        //: selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        //: nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                       //: image:normalImage
                                                       image:normalImage
                                               //: selectedImage:selectImage];
                                               selectedImage:selectImage];
        //: nav.tabBarItem.tag = idx;
        nav.tabBarItem.tag = idx;
        //: NSInteger badge = [item[@"badgeValue"] integerValue];
        NSInteger badge = [item[[[CarbamideData sharedInstance] noti_isolationGenetTitle]] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        ChangeSessionHandlerSelect *handler = [[ChangeSessionHandlerSelect alloc] initWithShow:nav];
        //: nav.delegate = handler;
        nav.delegate = handler;

        //: if (@available(iOS 15.0, *)) {
        if (@available(iOS 15.0, *)) {

            //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
            NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                  //: NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};
                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};

            //: UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            //: barApp.backgroundColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.backgroundColor = [UIColor min:[[CarbamideData sharedInstance] notiStyleUrl]];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor min:[[CarbamideData sharedInstance] notiStyleUrl]];
            //: barApp.titleTextAttributes = dic;
            barApp.titleTextAttributes = dic;

            //: nav.navigationBar.scrollEdgeAppearance = barApp;
            nav.navigationBar.scrollEdgeAppearance = barApp;
            //: nav.navigationBar.standardAppearance = barApp;
            nav.navigationBar.standardAppearance = barApp;
        }

        //: [vcArray addObject:nav];
        [vcArray addObject:nav];
        //: [handleArray addObject:handler];
        [handleArray addObject:handler];
    //: }];
    }];
    //: self.viewControllers = [NSArray arrayWithArray:vcArray];
    self.viewControllers = [NSArray arrayWithArray:vcArray];
    //: self.navigationHandlers = [NSArray arrayWithArray:handleArray];
    self.navigationHandlers = [NSArray arrayWithArray:handleArray];


    //: UINavigationBar *navBar = [UINavigationBar appearance];
    UINavigationBar *navBar = [UINavigationBar appearance];

    //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
    NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
                          //: NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};
                          NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};

    //: navBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionVertical]];
    navBar.barTintColor = [UIColor colorWithPatternImage:[NoticeHelper occurrence:[UIColor min:[[CarbamideData sharedInstance] m_nameFormat]] session:[UIColor min:[[CarbamideData sharedInstance] userShouldFormat]] gradientType:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[NoticeHelper occurrence:[UIColor min:[[CarbamideData sharedInstance] m_nameFormat]] session:[UIColor min:[[CarbamideData sharedInstance] userShouldFormat]] gradientType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[NoticeHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
    //: self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    //: self.tabBar.barTintColor = [UIColor blackColor];
    self.tabBar.barTintColor = [UIColor blackColor];
    //: self.tabBar.backgroundImage = [UIImage new];
    self.tabBar.backgroundImage = [UIImage new];
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.layer.cornerRadius = (49/2);
    //: self.tabBar.translucent = YES;
    self.tabBar.translucent = YES;
    //: self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    //: self.tabBar.layer.shadowOpacity = 0.05; 
    self.tabBar.layer.shadowOpacity = 0.05; // 透明度 5%
    //: self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    //: self.tabBar.layer.shadowRadius = 5;
    self.tabBar.layer.shadowRadius = 5;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //防止UITabbar上跳，这里重置一下
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.frame = CGRectMake(20, UIScreenHeight - UITabbarHeight, UIScreenWidth-40, 49);
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
    [self inputDevice];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: - (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
- (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
{
    //: NSLog(@"%@",unreadCountDic);
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    //: self.sessionUnreadCount = unreadCount;
    self.sessionUnreadCount = unreadCount;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self inputDevice];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self split];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)toed:(NSNotification *)notification
{
    //: NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    ChanceImage *db = [ChanceImage travelKit];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self content];
}

//: - (void)refreshSessionBadge{
- (void)inputDevice{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    //: nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

//: - (void)refreshContactBadge{
- (void)split{
//    UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)refreshSettingBadge{
- (void)content{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    //: NSInteger badge = self.customSystemUnreadCount;
    NSInteger badge = self.customSystemUnreadCount;
    //: nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}


//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleDefault;
    return UIStatusBarStyleDefault;
}


//: #pragma mark - Rotate
#pragma mark - Rotate

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [NameTing pin].ting;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [NameTing pin].ting;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
- (NSDictionary *)visibleWithOrigin:(NTESMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(NTESMainTabTypeMessageList) : @{
                     @(NTESMainTabTypeMessageList) : @{
                             //: @"vc" : @"NTESSessionListViewController",
                             @"vc" : @"ShowSessionViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             [[CarbamideData sharedInstance] kKeyText] : [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] user_publisherValue]],
                             //: @"image" : @"icon_message_normal",
                             [[CarbamideData sharedInstance] showToStr] : [[CarbamideData sharedInstance] show_deadlineKey],
                             //: @"selectedImage": @"icon_message_pressed",
                             [[CarbamideData sharedInstance] kArmMessage]: [[CarbamideData sharedInstance] noti_libEmployData],
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             [[CarbamideData sharedInstance] noti_isolationGenetTitle]: @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeChatroomList): @{
                     @(NTESMainTabTypeChatroomList): @{
                             //: @"vc" : @"DisCorveyViewController",
                             @"vc" : @"AntediluvianViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"discovery"],
                             [[CarbamideData sharedInstance] kKeyText] : [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] dream_onFormat]],
                             //: @"image" : @"icon_discovery_normal",
                             [[CarbamideData sharedInstance] showToStr] : [[CarbamideData sharedInstance] dreamImageRepairItchMsg],
                             //: @"selectedImage": @"icon_discovery_pressed",
                             [[CarbamideData sharedInstance] kArmMessage]: [[CarbamideData sharedInstance] show_scaleCombinationIdent],
                             //: },
                             },
                     //: @(NTESMainTabTypeContact) : @{
                     @(NTESMainTabTypeContact) : @{
                             //: @"vc" : @"CCCContactsViewController",
                             @"vc" : @"CrimsonViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"contacts_list_title"],
                             [[CarbamideData sharedInstance] kKeyText] : [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] mMuscleAccentValue]],
                             //: @"image" : @"icon_contact_normal",
                             [[CarbamideData sharedInstance] showToStr] : [[CarbamideData sharedInstance] showRiotStr],
                             //: @"selectedImage": @"icon_contact_pressed",
                             [[CarbamideData sharedInstance] kArmMessage]: [[CarbamideData sharedInstance] notiTapFiftyMessage],
                             //: },
                             },
                     //: @(NTESMainTabTypeSetting) : @{
                     @(NTESMainTabTypeSetting) : @{
                             //: @"vc" : @"NTESMainCenterViewController",
                             @"vc" : @"SoapBubbleViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"main_tab_my"],
                             [[CarbamideData sharedInstance] kKeyText] : [PaintedNaturalLanguageTo exhibit:[[CarbamideData sharedInstance] app_heavilyId]],
                             //: @"image" : @"icon_setting_normal",
                             [[CarbamideData sharedInstance] showToStr] : [[CarbamideData sharedInstance] k_accentName],
                             //: @"selectedImage": @"icon_setting_pressed",
                             [[CarbamideData sharedInstance] kArmMessage]: [[CarbamideData sharedInstance] noti_removeTransportIdent],
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];

}



//: @end
@end
