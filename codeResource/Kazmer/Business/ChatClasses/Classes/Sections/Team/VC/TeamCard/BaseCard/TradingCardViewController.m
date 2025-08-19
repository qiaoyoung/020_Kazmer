
#import <Foundation/Foundation.h>

@interface WalkData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WalkData

+ (instancetype)sharedInstance {
    static WalkData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WalkDataToCache:(Byte *)data {
    int circleSki = data[0];
    Byte periodicTable = data[1];
    int repairCoupleQuantityimate = data[2];
    for (int i = repairCoupleQuantityimate; i < repairCoupleQuantityimate + circleSki; i++) {
        int value = data[i] + periodicTable;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[repairCoupleQuantityimate + circleSki] = 0;
    return data + repairCoupleQuantityimate;
}

- (NSString *)StringFromWalkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WalkDataToCache:data]];
}

//: group_info_activity_update_failed
- (NSString *)kSultanKeyValue {
    /* static */ NSString *kSultanKeyValue = nil;
    if (!kSultanKeyValue) {
        Byte value[] = {33, 10, 11, 107, 93, 93, 14, 48, 230, 18, 157, 93, 104, 101, 107, 102, 85, 95, 100, 92, 101, 85, 87, 89, 106, 95, 108, 95, 106, 111, 85, 107, 102, 90, 87, 106, 91, 85, 92, 87, 95, 98, 91, 90, 141};
        kSultanKeyValue = [self StringFromWalkData:value];
    }
    return kSultanKeyValue;
}

//: attach
- (NSString *)show_knowledgeId {
    /* static */ NSString *show_knowledgeId = nil;
    if (!show_knowledgeId) {
        Byte value[] = {6, 1, 11, 240, 85, 235, 134, 148, 85, 118, 208, 96, 115, 115, 96, 98, 103, 151};
        show_knowledgeId = [self StringFromWalkData:value];
    }
    return show_knowledgeId;
}

//: 邀请你加入讨论组
- (NSString *)appIsolateKey {
    /* static */ NSString *appIsolateKey = nil;
    if (!appIsolateKey) {
        Byte value[] = {24, 22, 9, 178, 158, 23, 105, 221, 242, 211, 108, 106, 210, 153, 161, 206, 167, 138, 207, 116, 138, 207, 111, 143, 210, 152, 146, 210, 152, 164, 209, 165, 110, 202};
        appIsolateKey = [self StringFromWalkData:value];
    }
    return appIsolateKey;
}

//: postscript
- (NSString *)app_countPath {
    /* static */ NSString *app_countPath = nil;
    if (!app_countPath) {
        Byte value[] = {10, 44, 7, 240, 251, 240, 172, 68, 67, 71, 72, 71, 55, 70, 61, 68, 72, 238};
        app_countPath = [self StringFromWalkData:value];
    }
    return app_countPath;
}

//: 邀请你加入高级群
- (NSString *)showBidText {
    /* static */ NSString *showBidText = nil;
    if (!showBidText) {
        Byte value[] = {24, 36, 8, 190, 18, 34, 65, 210, 197, 94, 92, 196, 139, 147, 192, 153, 124, 193, 102, 124, 193, 97, 129, 197, 135, 116, 195, 150, 131, 195, 154, 128, 232};
        showBidText = [self StringFromWalkData:value];
    }
    return showBidText;
}

//: jpg
- (NSString *)userFlowViewId {
    /* static */ NSString *userFlowViewId = nil;
    if (!userFlowViewId) {
        Byte value[] = {3, 40, 10, 165, 206, 161, 126, 228, 78, 3, 66, 72, 63, 147};
        userFlowViewId = [self StringFromWalkData:value];
    }
    return userFlowViewId;
}

//: 扩展消息
- (NSString *)kPeopleMediumTapTitle {
    /* static */ NSString *kPeopleMediumTapTitle = nil;
    if (!kPeopleMediumTapTitle) {
        Byte value[] = {12, 97, 5, 121, 34, 133, 40, 72, 132, 80, 52, 133, 85, 39, 133, 32, 78, 24};
        kPeopleMediumTapTitle = [self StringFromWalkData:value];
    }
    return kPeopleMediumTapTitle;
}

//: 邀请你加入超大群
- (NSString *)dreamShareholderValue {
    /* static */ NSString *dreamShareholderValue = nil;
    if (!dreamShareholderValue) {
        Byte value[] = {24, 19, 8, 81, 138, 202, 146, 182, 214, 111, 109, 213, 156, 164, 209, 170, 141, 210, 119, 141, 210, 114, 146, 213, 163, 114, 210, 145, 148, 212, 171, 145, 20};
        dreamShareholderValue = [self StringFromWalkData:value];
    }
    return dreamShareholderValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TradingCardViewController.m
// ButtonKit
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "TradingCardViewController.h"
//: #import "FFFKitProgressHUD.h"
#import "AlongEffectView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "NTESSessionMsgConverter.h"
#import "BackgroundCover.h"

//: @implementation FFFTeamCardOperationViewController
@implementation TradingCardViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithGlitter:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     withOption:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption *)option {
                      tutorial_strong:(NakedOptionRecent *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[FFFTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[MetadataManager alloc] initWithAboveTingPost:team name:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(modifyInsiderInformationTeam:) name:m_makeStr object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(bottommed:) name:app_textKey object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    ButtonOption *option = [[ButtonOption alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self grayMember:option];
}

//: - (void)reloadData {
- (void)metadata {
    //: [self reloadTableHeaderData];
    [self scale];
    //: [self reloadTableViewData];
    [self item];
    //: [self reloadOtherData];
    [self modeDate];
}

//: - (void)didFetchTeamMember:(FFFMembersFetchOption *)option {
- (void)grayMember:(ButtonOption *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager frameCompletion:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          event:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself metadata];
        }
        //: [wself showToastMsg:msg];
        [wself messagePull:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)bar:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            invite:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[[WalkData sharedInstance] show_knowledgeId]] = [[WalkData sharedInstance] kPeopleMediumTapTitle];
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[[WalkData sharedInstance] app_countPath]] = [[WalkData sharedInstance] appIsolateKey].messageWith;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[[WalkData sharedInstance] app_countPath]] = [[WalkData sharedInstance] showBidText].messageWith;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[[WalkData sharedInstance] app_countPath]] = [[WalkData sharedInstance] dreamShareholderValue].messageWith;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager image:userIds timeSend:info blue:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself scale];
        }
        //: [wself showToastMsg:msg];
        [wself messagePull:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)willQueryed:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager magnitudeerval:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself scale];
        }
        //: [wself showToastMsg:msg];
        [wself messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)show:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager media:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              translate:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself metadata];
        }
        //: [wself showToastMsg:msg];
        [wself messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)enableNick:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager image:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              infoTop:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)towardScaleTable:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager liquidEcstasy:intro afterDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)bottom:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager rootName:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              modifyCompletionMuteTeam:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)display:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self name:type languageTo:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf success:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)uniteSend:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager cypher:mode cut:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)paletteMode:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager session:mode response:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)modifyWithoutMode:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager my:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      onScreenCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)cell:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager associate:mode info:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf metadata];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)can:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager ditheredColor:state showSizeCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf item];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)show:(NSString *)userId analogDigitalConverterImage:(BOOL)leave {
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager clear:userId
                                         //: leave:leave
                                         refer:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    imageCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self metadata];
        }
        //: [self showToastMsg:msg];
        [self messagePull:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)backgroundSize{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager pinCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf messagePull:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)cellCover{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [AlongEffectView holder];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager rubricSuccess:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [AlongEffectView nimDismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself messagePull:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)modifyInsiderInformationTeam:(NSNotification *)note {
    //: [self reloadData];
    [self metadata];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)bottommed:(NSNotification *)note {

    //: [self reloadData];
    [self metadata];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)carryOpen
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: if (members.count>20) {
            if (members.count>20) {

                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];

            //: }else{
            }else{
//                [self didUpdateNotifiyState:NIMTeamNotifyStateAll];
                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];
            }
            //: [self reloadData];
            [self metadata];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image {
- (void)success:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image random];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[[WalkData sharedInstance] userFlowViewId]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [FFFKitProgressHUD show];
        [AlongEffectView holder];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager green:filePath qualifyCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [FFFKitProgressHUD dismiss];
            [AlongEffectView nimDismiss];
            //: if (!error) {
            if (!error) {
                //: NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                //: [sdManager.imageCache storeImage:imageForAvatarUpload
                [sdManager.imageCache storeImage:imageForAvatarUpload
                                       //: imageData:data
                                       imageData:data
                                          //: forKey:urlString
                                          forKey:urlString
                                       //: cacheType:SDImageCacheTypeAll
                                       cacheType:SDImageCacheTypeAll
                                      //: completion:nil];
                                      completion:nil];
                //: [wself reloadTableHeaderData];
                [wself scale];
            }
            //: [wself showToastMsg:msg];
            [wself messagePull:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself messagePull:[PaintedNaturalLanguageTo exhibit:[[WalkData sharedInstance] kSultanKeyValue]]];
    }
}

//: @end
@end

//: @implementation FFFTeamCardViewControllerOption
@implementation NakedOptionRecent

//: @end
@end