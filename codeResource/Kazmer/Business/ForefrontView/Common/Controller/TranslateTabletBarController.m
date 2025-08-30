
#import <Foundation/Foundation.h>

@interface ScrewData : NSObject

@end

@implementation ScrewData

+ (NSData *)ScrewDataToData:(NSString *)value {
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

+ (Byte *)ScrewDataToCache:(Byte *)data {
    int excitementRange = data[0];
    Byte captureBurning = data[1];
    int meltSheet = data[2];
    for (int i = meltSheet; i < meltSheet + excitementRange; i++) {
        int value = data[i] - captureBurning;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[meltSheet + excitementRange] = 0;
    return data + meltSheet;
}

+ (NSString *)StringFromScrewData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ScrewDataToCache:data]];
}

//: icon_setting_normal
+ (NSString *)kNameOkayPrivilegeString {
    /* static */ NSString *kNameOkayPrivilegeString = nil;
    if (!kNameOkayPrivilegeString) {
		NSString *origin = @"134f0b9fbea9954b1415adb8b2bebdaec2b4c3c3b8bdb6aebdbec1bcb0bbed";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameOkayPrivilegeString = [self StringFromScrewData:value];
    }
    return kNameOkayPrivilegeString;
}

//: icon_discovery_pressed
+ (NSString *)kName_merelyString {
    /* static */ NSString *kName_merelyString = nil;
    if (!kName_merelyString) {
		NSString *origin = @"16560cc4404d6eeacfd685d6bfb9c5c4b5babfc9b9c5ccbbc8cfb5c6c8bbc9c9bbba05";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_merelyString = [self StringFromScrewData:value];
    }
    return kName_merelyString;
}

//: #612CF9
+ (NSString *)kContentThreadVarietyData {
    /* static */ NSString *kContentThreadVarietyData = nil;
    if (!kContentThreadVarietyData) {
		NSString *origin = @"072304674659545566695c6b";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentThreadVarietyData = [self StringFromScrewData:value];
    }
    return kContentThreadVarietyData;
}

//: #A3A3A3
+ (NSString *)kTitle_wildernessData {
    /* static */ NSString *kTitle_wildernessData = nil;
    if (!kTitle_wildernessData) {
		NSString *origin = @"07440da41eca625d57a0b92ccd6785778577857780";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_wildernessData = [self StringFromScrewData:value];
    }
    return kTitle_wildernessData;
}

//: icon_message_pressed
+ (NSString *)kTitleAvailabilityColString {
    /* static */ NSString *kTitleAvailabilityColString = nil;
    if (!kTitleAvailabilityColString) {
		NSString *origin = @"14350b2e220dd340a513249e98a4a394a29aa8a8969c9a94a5a79aa8a89a9904";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleAvailabilityColString = [self StringFromScrewData:value];
    }
    return kTitleAvailabilityColString;
}

//: discovery
+ (NSString *)kTextWildernessData {
    /* static */ NSString *kTextWildernessData = nil;
    if (!kTextWildernessData) {
		NSString *origin = @"095a0b66d6e5e72b46da7ebec3cdbdc9d0bfccd350";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextWildernessData = [self StringFromScrewData:value];
    }
    return kTextWildernessData;
}

//: icon_contact_normal
+ (NSString *)kNameFolioThumbDegreeString {
    /* static */ NSString *kNameFolioThumbDegreeString = nil;
    if (!kNameFolioThumbDegreeString) {
		NSString *origin = @"1359046ac2bcc8c7b8bcc8c7cdbabccdb8c7c8cbc6bac542";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameFolioThumbDegreeString = [self StringFromScrewData:value];
    }
    return kNameFolioThumbDegreeString;
}

//: icon_contact_pressed
+ (NSString *)kTitle_approveData {
    /* static */ NSString *kTitle_approveData = nil;
    if (!kTitle_approveData) {
		NSString *origin = @"144c064e2034b5afbbbaabafbbbac0adafc0abbcbeb1bfbfb1b066";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_approveData = [self StringFromScrewData:value];
    }
    return kTitle_approveData;
}

//: icon_message_normal
+ (NSString *)kTitle_tideValue {
    /* static */ NSString *kTitle_tideValue = nil;
    if (!kTitle_tideValue) {
		NSString *origin = @"132e07055bbf5f97919d9c8d9b93a1a18f95938d9c9da09b8f9a74";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_tideValue = [self StringFromScrewData:value];
    }
    return kTitle_tideValue;
}

//: selectedImage
+ (NSString *)kNameStepChickString {
    /* static */ NSString *kNameStepChickString = nil;
    if (!kNameStepChickString) {
		NSString *origin = @"0d62075e9e3640d5c7cec7c5d6c7c6abcfc3c9c7e8";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameStepChickString = [self StringFromScrewData:value];
    }
    return kNameStepChickString;
}

//: icon_discovery_normal
+ (NSString *)kContent_sellString {
    /* static */ NSString *kContent_sellString = nil;
    if (!kContent_sellString) {
		NSString *origin = @"15290cb77281092c642fc4b1928c9897888d929c8c989f8e9ba28897989b968a952b";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_sellString = [self StringFromScrewData:value];
    }
    return kContent_sellString;
}

//: contacts_list_title
+ (NSString *)kTitleCastRoveData {
    /* static */ NSString *kTitleCastRoveData = nil;
    if (!kTitleCastRoveData) {
		NSString *origin = @"130c04266f7b7a806d6f807f6b78757f806b80758078719d";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCastRoveData = [self StringFromScrewData:value];
    }
    return kTitleCastRoveData;
}

//: main_tab_my
+ (NSString *)kTitle_viewString {
    /* static */ NSString *kTitle_viewString = nil;
    if (!kTitle_viewString) {
		NSString *origin = @"0b3e066c8acfab9fa7ac9db29fa09dabb7ad";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_viewString = [self StringFromScrewData:value];
    }
    return kTitle_viewString;
}

//: #A148FF
+ (NSString *)kTitleSuburbanValue {
    /* static */ NSString *kTitleSuburbanValue = nil;
    if (!kTitleSuburbanValue) {
		NSString *origin = @"073d08890e6532a9607e6e71758383ef";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSuburbanValue = [self StringFromScrewData:value];
    }
    return kTitleSuburbanValue;
}

//: #4B43DE
+ (NSString *)kNameRecentString {
    /* static */ NSString *kNameRecentString = nil;
    if (!kNameRecentString) {
		NSString *origin = @"0751046e748593858495962d";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRecentString = [self StringFromScrewData:value];
    }
    return kNameRecentString;
}

//: KEKENotificationLanguageChanged
+ (NSString *)kText_searcherName {
    /* static */ NSString *kText_searcherName = nil;
    if (!kText_searcherName) {
		NSString *origin = @"1f5909816401120ac3a49ea49ea7c8cdc2bfc2bcbacdc2c8c7a5bac7c0cebac0be9cc1bac7c0bebdd5";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_searcherName = [self StringFromScrewData:value];
    }
    return kText_searcherName;
}

//: #875FFA
+ (NSString *)kTextTwistValue {
    /* static */ NSString *kTextTwistValue = nil;
    if (!kTextTwistValue) {
		NSString *origin = @"070d0734aec8d33045444253534e4d";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTwistValue = [self StringFromScrewData:value];
    }
    return kTextTwistValue;
}

//: activity_user_profile_chat
+ (NSString *)kContent_yoursMarriedNessString {
    /* static */ NSString *kContent_yoursMarriedNessString = nil;
    if (!kContent_yoursMarriedNessString) {
		NSString *origin = @"1a260d48a197311a5e244beffd87899a8f9c8f9a9f859b998b98859698958c8f928b85898e879a6e";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_yoursMarriedNessString = [self StringFromScrewData:value];
    }
    return kContent_yoursMarriedNessString;
}

//: icon_setting_pressed
+ (NSString *)kTextAnyoneConsistString {
    /* static */ NSString *kTextAnyoneConsistString = nil;
    if (!kTextAnyoneConsistString) {
		NSString *origin = @"145f09842ee58eb52dc8c2cecdbed2c4d3d3c8cdc6becfd1c4d2d2c4c329";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextAnyoneConsistString = [self StringFromScrewData:value];
    }
    return kTextAnyoneConsistString;
}

//: badgeValue
+ (NSString *)kNameWortValue {
    /* static */ NSString *kNameWortValue = nil;
    if (!kNameWortValue) {
		NSString *origin = @"0a5103b3b2b5b8b6a7b2bdc6b6a9";
		NSData *data = [ScrewData ScrewDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameWortValue = [self StringFromScrewData:value];
    }
    return kNameWortValue;
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
//: #import "USERMainTabController.h"
#import "TranslateTabletBarController.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "USERSessionListViewController.h"
#import "TopViewController.h"
//: #import "UIImage+USERColor.h"
#import "UIImage+Clean.h"
//: #import "USERCustomNotificationDB.h"
#import "ContentCell.h"
//: #import "USERNotificationCenter.h"
#import "CellCornerInside.h"
//: #import "USERNavigationHandler.h"
#import "ToLabel.h"
//: #import "USERNavigationAnimator.h"
#import "SizeLabel.h"
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"
//: #import "CCCContactsViewController.h"
#import "ActionViewController.h"
//: #import "USERMainCenterViewController.h"
#import "CommentSizeViewController.h"
//: #import "DisCorveyViewController.h"
#import "ShouldViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"

//: typedef NS_ENUM(NSInteger,USERMainTabType) {
typedef NS_ENUM(NSInteger,USERMainTabType) {
    //: USERMainTabTypeMessageList, 
    USERMainTabTypeMessageList, //聊天
    //: USERMainTabTypeChatroomList, 
    USERMainTabTypeChatroomList, //聊天室
    //: USERMainTabTypeContact, 
    USERMainTabTypeContact, //通讯录
    //: USERMainTabTypeSetting, 
    USERMainTabTypeSetting, //设置
//: };
};



//: @interface USERMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>
@interface TranslateTabletBarController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;

//: @property (nonatomic,assign) NSInteger systemUnreadCount;
@property (nonatomic,assign) NSInteger systemUnreadCount;

//: @property (nonatomic,strong) USERNavigationAnimator *animator;
@property (nonatomic,strong) SizeLabel *animator;

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,assign) NSInteger customSystemUnreadCount;
@property (nonatomic,assign) NSInteger customSystemUnreadCount;

//: @property (nonatomic,copy) NSDictionary *configs;
@property (nonatomic,copy) NSDictionary *configs;

//: @end
@end

//: @implementation USERMainTabController
@implementation TranslateTabletBarController

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self name];
}


//: - (void)networkChanged:(NSNotification *)note {
- (void)networkForChanged:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        //: [[DisplayConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
        [[ContextTeam mutual] latestBubble:^(BOOL success) {
            //: if (success) {
            if (success) {
                //: NSLog(@"域名更新成功: %@", [[DisplayConfig sharedConfig] getCurrentDomain]);
            //: } else {
            } else {
                //: NSLog(@"使用默认域名: %@", [[DisplayConfig sharedConfig] getCurrentDomain]);
            }
        //: }]; 
        }]; // 网络恢复时更新域名
    }
}

//: - (void)setUpSubNav{
- (void)counterval{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.packetTabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self playerOpen:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
//        NSString *title  = item[TabbarTitle];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [DisplayLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [MakeManager cell:[ScrewData kContent_yoursMarriedNessString]];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [DisplayLanguageManager getTextWithKey:@"discovery"];
            title = [MakeManager cell:[ScrewData kTextWildernessData]];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [DisplayLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [MakeManager cell:[ScrewData kTitleCastRoveData]];
        //: }else if (idx == 3){
        }else if (idx == 3){
            //: title = [DisplayLanguageManager getTextWithKey:@"main_tab_my"];
            title = [MakeManager cell:[ScrewData kTitle_viewString]];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[@"image"];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[[ScrewData kNameStepChickString]];
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
        NSInteger badge = [item[[ScrewData kNameWortValue]] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: USERNavigationHandler *handler = [[USERNavigationHandler alloc] initWithNavigationController:nav];
        ToLabel *handler = [[ToLabel alloc] initWithTitleCur:nav];
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
            barApp.backgroundColor = [UIColor cell:[ScrewData kTitleSuburbanValue]];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor cell:[ScrewData kTitleSuburbanValue]];
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
    navBar.barTintColor = [UIColor colorWithPatternImage:[ColorHelper play:[UIColor cell:[ScrewData kTextTwistValue]] stop:[UIColor cell:[ScrewData kContentThreadVarietyData]] progress:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[ColorHelper play:[UIColor cell:[ScrewData kTextTwistValue]] stop:[UIColor cell:[ScrewData kContentThreadVarietyData]] progress:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[ColorHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
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

//: - (void)refreshContactBadge{
- (void)teamAdd{
//    UINavigationController *nav = self.viewControllers[USERMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
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
//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self name];
}

//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(USERMainTabType)type{
- (NSDictionary *)playerOpen:(USERMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(USERMainTabTypeMessageList) : @{
                     @(USERMainTabTypeMessageList) : @{
                             //: @"vc" : @"USERSessionListViewController",
                             @"vc" : @"TopViewController",
                             //: @"title" : [DisplayLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             @"title" : [MakeManager cell:[ScrewData kContent_yoursMarriedNessString]],
                             //: @"image" : @"icon_message_normal",
                             @"image" : [ScrewData kTitle_tideValue],
                             //: @"selectedImage": @"icon_message_pressed",
                             [ScrewData kNameStepChickString]: [ScrewData kTitleAvailabilityColString],
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             [ScrewData kNameWortValue]: @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(USERMainTabTypeChatroomList): @{
                     @(USERMainTabTypeChatroomList): @{
                             //: @"vc" : @"DisCorveyViewController",
                             @"vc" : @"ShouldViewController",
                             //: @"title" : [DisplayLanguageManager getTextWithKey:@"discovery"],
                             @"title" : [MakeManager cell:[ScrewData kTextWildernessData]],
                             //: @"image" : @"icon_discovery_normal",
                             @"image" : [ScrewData kContent_sellString],
                             //: @"selectedImage": @"icon_discovery_pressed",
                             [ScrewData kNameStepChickString]: [ScrewData kName_merelyString],
                             //: },
                             },
                     //: @(USERMainTabTypeContact) : @{
                     @(USERMainTabTypeContact) : @{
                             //: @"vc" : @"CCCContactsViewController",
                             @"vc" : @"ActionViewController",
                             //: @"title" : [DisplayLanguageManager getTextWithKey:@"contacts_list_title"],
                             @"title" : [MakeManager cell:[ScrewData kTitleCastRoveData]],
                             //: @"image" : @"icon_contact_normal",
                             @"image" : [ScrewData kNameFolioThumbDegreeString],
                             //: @"selectedImage": @"icon_contact_pressed",
                             [ScrewData kNameStepChickString]: [ScrewData kTitle_approveData],
                             //: },
                             },
                     //: @(USERMainTabTypeSetting) : @{
                     @(USERMainTabTypeSetting) : @{
                             //: @"vc" : @"USERMainCenterViewController",
                             @"vc" : @"CommentSizeViewController",
                             //: @"title" : [DisplayLanguageManager getTextWithKey:@"main_tab_my"],
                             @"title" : [MakeManager cell:[ScrewData kTitle_viewString]],
                             //: @"image" : @"icon_setting_normal",
                             @"image" : [ScrewData kNameOkayPrivilegeString],
                             //: @"selectedImage": @"icon_setting_pressed",
                             [ScrewData kNameStepChickString]: [ScrewData kTextAnyoneConsistString],
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];

}

//: - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:YES];
    [UIView setAnimationsEnabled:YES];
}

//: - (void)refreshSettingBadge{
- (void)environment{
    //: UINavigationController *nav = self.viewControllers[USERMainTabTypeSetting];
    UINavigationController *nav = self.viewControllers[USERMainTabTypeSetting];
    //: NSInteger badge = self.customSystemUnreadCount;
    NSInteger badge = self.customSystemUnreadCount;
    //: nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self name];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self name];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpSubNav];
    [self counterval];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString *showUserKey;
    extern NSString *showUserKey;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:showUserKey object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backgrounded:) name:showUserKey object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(instanced:) name:[ScrewData kText_searcherName] object:nil];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor cell:[ScrewData kTitle_wildernessData]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#4B43DE"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor cell:[ScrewData kNameRecentString]]} forState:UIControlStateSelected];

    //: if (@available(iOS 18, *)) {
    if (@available(iOS 18, *)) {
        //: self.delegate = self;
        self.delegate = self;
    }

    //: [self setupNetworkObserver];
    [self listener];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self name];
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [USERBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [UserLabelMan user].center;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: - (void)setupNetworkObserver {
- (void)listener {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(networkChanged:)
                                             selector:@selector(networkForChanged:)
                                                 //: name:kReachabilityChangedNotification
                                                 name:kReachabilityChangedNotification
                                               //: object:nil];
                                               object:nil];
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: [reachability startNotifier];
    [reachability startNotifier];
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

//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleDefault;
    return UIStatusBarStyleDefault;
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
    [self name];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor cell:[ScrewData kTitle_wildernessData]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#4B43DE"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor cell:[ScrewData kNameRecentString]]} forState:UIControlStateSelected];


}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self teamAdd];
}

//: #pragma mark - Rotate
#pragma mark - Rotate

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: BOOL enableRotate = [USERBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [UserLabelMan user].center;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)languageChanged:(NSNotification *)noti {
- (void)instanced:(NSNotification *)noti {
    //: [self setUpSubNav];
    [self counterval];


}

//: - (void)refreshSessionBadge{
- (void)name{
    //: UINavigationController *nav = self.viewControllers[USERMainTabTypeMessageList];
    UINavigationController *nav = self.viewControllers[USERMainTabTypeMessageList];
    //: nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)backgrounded:(NSNotification *)notification
{
    //: USERCustomNotificationDB *db = [USERCustomNotificationDB sharedInstance];
    ContentCell *db = [ContentCell session];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self environment];
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

//: - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:NO];
    [UIView setAnimationsEnabled:NO];
    //: return YES;
    return YES;
}


//: - (NSArray*)tabbars{
- (NSArray*)packetTabbars{
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


//: + (instancetype)instance{
+ (instancetype)with{
    //: AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[USERMainTabController class]]) {
    if ([vc isKindOfClass:[TranslateTabletBarController class]]) {
        //: return (USERMainTabController *)vc;
        return (TranslateTabletBarController *)vc;
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self name];
}


//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self name];
}



//: @end
@end
//: __SAVE__ ignore_string [515.5,546.5]
