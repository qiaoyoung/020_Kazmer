
#import <Foundation/Foundation.h>

@interface RecordResearchData : NSObject

+ (instancetype)sharedInstance;

//: 邀请你加入超大群
@property (nonatomic, copy) NSString *kNameExcitementViewTitle;

//: postscript
@property (nonatomic, copy) NSString *kContentDesireName;

//: attach
@property (nonatomic, copy) NSString *kText_hamString;

//: 邀请你加入讨论组
@property (nonatomic, copy) NSString *kNameAmberScienceString;

//: 邀请你加入高级群
@property (nonatomic, copy) NSString *kTitleHistorianString;

//: jpg
@property (nonatomic, copy) NSString *kNameHeavilyData;

//: group_info_activity_update_failed
@property (nonatomic, copy) NSString *kNameGarbageString;

//: 扩展消息
@property (nonatomic, copy) NSString *kName_inkText;

@end

@implementation RecordResearchData

+ (instancetype)sharedInstance {
    static RecordResearchData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RecordResearchDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)RecordResearchDataToCache:(Byte *)data {
    int criticismOkay = data[0];
    Byte showCard = data[1];
    int literalRatedView = data[2];
    for (int i = literalRatedView; i < literalRatedView + criticismOkay; i++) {
        int value = data[i] - showCard;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[literalRatedView + criticismOkay] = 0;
    return data + literalRatedView;
}

- (NSString *)StringFromRecordResearchData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RecordResearchDataToCache:data]];
}

//: 扩展消息
- (NSString *)kName_inkText {
    if (!_kName_inkText) {
		NSArray<NSNumber *> *origin = @[@12, @41, @13, @182, @77, @155, @105, @204, @155, @76, @153, @44, @107, @15, @178, @210, @14, @218, @190, @15, @223, @177, @15, @170, @216, @186];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_inkText = [self StringFromRecordResearchData:value];
    }
    return _kName_inkText;
}

//: group_info_activity_update_failed
- (NSString *)kNameGarbageString {
    if (!_kNameGarbageString) {
		NSArray<NSNumber *> *origin = @[@33, @43, @3, @146, @157, @154, @160, @155, @138, @148, @153, @145, @154, @138, @140, @142, @159, @148, @161, @148, @159, @164, @138, @160, @155, @143, @140, @159, @144, @138, @145, @140, @148, @151, @144, @143, @154];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameGarbageString = [self StringFromRecordResearchData:value];
    }
    return _kNameGarbageString;
}

//: 邀请你加入讨论组
- (NSString *)kNameAmberScienceString {
    if (!_kNameAmberScienceString) {
		NSArray<NSNumber *> *origin = @[@24, @96, @8, @56, @16, @214, @96, @75, @73, @226, @224, @72, @15, @23, @68, @29, @0, @69, @234, @0, @69, @229, @5, @72, @14, @8, @72, @14, @26, @71, @27, @228, @31];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameAmberScienceString = [self StringFromRecordResearchData:value];
    }
    return _kNameAmberScienceString;
}

//: 邀请你加入超大群
- (NSString *)kNameExcitementViewTitle {
    if (!_kNameExcitementViewTitle) {
		NSArray<NSNumber *> *origin = @[@24, @4, @8, @137, @35, @132, @74, @178, @237, @134, @132, @236, @179, @187, @232, @193, @164, @233, @142, @164, @233, @137, @169, @236, @186, @137, @233, @168, @171, @235, @194, @168, @186];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameExcitementViewTitle = [self StringFromRecordResearchData:value];
    }
    return _kNameExcitementViewTitle;
}

//: postscript
- (NSString *)kContentDesireName {
    if (!_kContentDesireName) {
		NSArray<NSNumber *> *origin = @[@10, @33, @8, @210, @175, @148, @4, @255, @145, @144, @148, @149, @148, @132, @147, @138, @145, @149, @149];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentDesireName = [self StringFromRecordResearchData:value];
    }
    return _kContentDesireName;
}

//: attach
- (NSString *)kText_hamString {
    if (!_kText_hamString) {
		NSArray<NSNumber *> *origin = @[@6, @30, @4, @186, @127, @146, @146, @127, @129, @134, @249];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_hamString = [self StringFromRecordResearchData:value];
    }
    return _kText_hamString;
}

//: jpg
- (NSString *)kNameHeavilyData {
    if (!_kNameHeavilyData) {
		NSArray<NSNumber *> *origin = @[@3, @83, @6, @169, @130, @134, @189, @195, @186, @22];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameHeavilyData = [self StringFromRecordResearchData:value];
    }
    return _kNameHeavilyData;
}

//: 邀请你加入高级群
- (NSString *)kTitleHistorianString {
    if (!_kTitleHistorianString) {
		NSArray<NSNumber *> *origin = @[@24, @43, @13, @148, @118, @37, @199, @178, @63, @39, @107, @53, @83, @20, @173, @171, @19, @218, @226, @15, @232, @203, @16, @181, @203, @16, @176, @208, @20, @214, @195, @18, @229, @210, @18, @233, @207, @25];
		NSData *data = [RecordResearchData RecordResearchDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleHistorianString = [self StringFromRecordResearchData:value];
    }
    return _kTitleHistorianString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FlipViewController.m
// Mortification
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "FlipViewController.h"
//: #import "FFFKitProgressHUD.h"
#import "NameMessageEffectView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "USERSessionMsgConverter.h"
#import "TopConverter.h"

//: @implementation FFFTeamCardOperationViewController
@implementation FlipViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithTowardRecording:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     pass:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption *)option {
                      session:(SessionOption *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[FFFTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[MentionManager alloc] initWithSizeSession:team exceptRecord:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sizeTo:) name:notiBeginStr object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tingModify:) name:app_contentKey object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    LengthOption *option = [[LengthOption alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self top:option];
}

//: - (void)reloadData {
- (void)cell {
    //: [self reloadTableHeaderData];
    [self smartView];
    //: [self reloadTableViewData];
    [self showNames];
    //: [self reloadOtherData];
    [self someOtherOf];
}

//: - (void)didFetchTeamMember:(FFFMembersFetchOption *)option {
- (void)top:(LengthOption *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager atTitle:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          seatCompletion:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself cell];
        }
        //: [wself showToastMsg:msg];
        [wself dot:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)quickDown:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            contentText:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[RecordResearchData sharedInstance].kText_hamString] = [RecordResearchData sharedInstance].kName_inkText;
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[RecordResearchData sharedInstance].kContentDesireName] = [RecordResearchData sharedInstance].kNameAmberScienceString.disable;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[RecordResearchData sharedInstance].kContentDesireName] = [RecordResearchData sharedInstance].kTitleHistorianString.disable;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[RecordResearchData sharedInstance].kContentDesireName] = [RecordResearchData sharedInstance].kNameExcitementViewTitle.disable;
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
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager length:userIds exceptName:info step:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself smartView];
        }
        //: [wself showToastMsg:msg];
        [wself dot:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)showImage:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager moveCompletion:@[userId] holder:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself smartView];
        }
        //: [wself showToastMsg:msg];
        [wself dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)closeTeam:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager fromQuantity:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              alter:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself cell];
        }
        //: [wself showToastMsg:msg];
        [wself dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)someTeam:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager inputName:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              will:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)playMagnitudero:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager magnitude:intro endue:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)terrace:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager messageSize:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              save:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)tool:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self viewEnable:type item:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf east:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)jvTing:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager keep:mode frame:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)max:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager inputBeMessage:mode image:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)year:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager with:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      permit:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)limit:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager magnitude:mode nutsAndBolts:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf cell];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)analogDigitalConverter:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager touch:state soundChild:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf showNames];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)beingSend:(NSString *)userId success:(BOOL)leave {
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager cellBefore:userId
                                         //: leave:leave
                                         can:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    person:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self cell];
        }
        //: [self showToastMsg:msg];
        [self dot:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)dismissAtRange{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager nowadays:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf dot:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)quitReplace{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [NameMessageEffectView viewWithShow];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager placeRed:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [NameMessageEffectView input];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself dot:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)sizeTo:(NSNotification *)note {
    //: [self reloadData];
    [self cell];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)tingModify:(NSNotification *)note {

    //: [self reloadData];
    [self cell];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)load
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
            [self cell];
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
- (void)east:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image small];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[RecordResearchData sharedInstance].kNameHeavilyData];
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
        [NameMessageEffectView viewWithShow];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager centerTo:filePath wordPainting:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [FFFKitProgressHUD dismiss];
            [NameMessageEffectView input];
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
                [wself smartView];
            }
            //: [wself showToastMsg:msg];
            [wself dot:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself dot:[MakeManager cell:[RecordResearchData sharedInstance].kNameGarbageString]];
    }
}

//: @end
@end

//: @implementation FFFTeamCardViewControllerOption
@implementation SessionOption

//: @end
@end