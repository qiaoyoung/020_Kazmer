
#import <Foundation/Foundation.h>

@interface ButData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ButData

//: 邀请你加入讨论组
- (NSString *)kContent_itemString {
    /* static */ NSString *kContent_itemString = nil;
    if (!kContent_itemString) {
		NSString *origin = @"18600cf1b904f6aa2f8e0b78892220884f57845d40852a40852545884e48884e5a875b244d";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_itemString = [self StringFromButData:value];
    }
    return kContent_itemString;
}

//: attach
- (NSString *)kTitlePinString {
    /* static */ NSString *kTitlePinString = nil;
    if (!kTitlePinString) {
		NSString *origin = @"062304d53e51513e404573";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePinString = [self StringFromButData:value];
    }
    return kTitlePinString;
}

//: kNIMTeamListDataTeamMembersChanged
- (NSString *)kName_toolString {
    /* static */ NSString *kName_toolString = nil;
    if (!kName_toolString) {
		NSString *origin = @"22500ddff2801eba918ebc28121bfef9fd0415111dfc192324f41124110415111dfd151d12152223f318111e17151416";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_toolString = [self StringFromButData:value];
    }
    return kName_toolString;
}

//: 扩展消息
- (NSString *)kTitleTapData {
    /* static */ NSString *kTitleTapData = nil;
    if (!kTitleTapData) {
		NSString *origin = @"0c350bd5e0695934fb2447b15474b07c60b18153b14c7a06";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleTapData = [self StringFromButData:value];
    }
    return kTitleTapData;
}

//: head_default
- (NSString *)kTextItemContent {
    /* static */ NSString *kTextItemContent = nil;
    if (!kTextItemContent) {
		NSString *origin = @"0c0f0619255b595652555055565752665d65e8";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextItemContent = [self StringFromButData:value];
    }
    return kTextItemContent;
}

+ (instancetype)sharedInstance {
    static ButData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: 邀请你加入高级群
- (NSString *)kTextViolenceModelValue {
    /* static */ NSString *kTextViolenceModelValue = nil;
    if (!kTextViolenceModelValue) {
		NSString *origin = @"18290d2ed7559abad06d7c8654c05957bf868ebb9477bc6177bc5c7cc0826fbe917ebe957b07";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextViolenceModelValue = [self StringFromButData:value];
    }
    return kTextViolenceModelValue;
}

- (Byte *)ButDataToCache:(Byte *)data {
    int lyric = data[0];
    Byte necessarily = data[1];
    int simply = data[2];
    for (int i = simply; i < simply + lyric; i++) {
        int value = data[i] + necessarily;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[simply + lyric] = 0;
    return data + simply;
}

//: group_member_info_activity_team_creator
- (NSString *)kName_violenceString {
    /* static */ NSString *kName_violenceString = nil;
    if (!kName_violenceString) {
		NSString *origin = @"273a04e92d38353b3625332b33282b38252f342c352527293a2f3c2f3a3f253a2b27332529382b273a35389f";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_violenceString = [self StringFromButData:value];
    }
    return kName_violenceString;
}

//: canAddFriend
- (NSString *)kTextSendKeyName {
    /* static */ NSString *kTextSendKeyName = nil;
    if (!kTextSendKeyName) {
		NSString *origin = @"0c07035c5a673a5d5d3f6b625e675d6b";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSendKeyName = [self StringFromButData:value];
    }
    return kTextSendKeyName;
}

//: code
- (NSString *)kName_fierceValue {
    /* static */ NSString *kName_fierceValue = nil;
    if (!kName_fierceValue) {
		NSString *origin = @"04010562d2626e6364e5";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fierceValue = [self StringFromButData:value];
    }
    return kName_fierceValue;
}

//: #000000
- (NSString *)kName_dataString {
    /* static */ NSString *kName_dataString = nil;
    if (!kName_dataString) {
		NSString *origin = @"072e0cd0803dde7e1accc686f502020202020288";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_dataString = [self StringFromButData:value];
    }
    return kName_dataString;
}

//: #4B43DE
- (NSString *)kTextHideValue {
    /* static */ NSString *kTextHideValue = nil;
    if (!kTextHideValue) {
		NSString *origin = @"07590bc563293914512840cadbe9dbdaebec48";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextHideValue = [self StringFromButData:value];
    }
    return kTextHideValue;
}

+ (NSData *)ButDataToData:(NSString *)value {
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

//: #F6F6F6
- (NSString *)kTextEnableString {
    /* static */ NSString *kTextEnableString = nil;
    if (!kTextEnableString) {
		NSString *origin = @"0728048bfb1e0e1e0e1e0eee";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextEnableString = [self StringFromButData:value];
    }
    return kTextEnableString;
}

//: ic_group_addmember
- (NSString *)kContentSuggestStableText {
    /* static */ NSString *kContentSuggestStableText = nil;
    if (!kContentSuggestStableText) {
		NSString *origin = @"12620c4998bd5da82b9aa1970701fd05100d130efdff02020b030b0003104b";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentSuggestStableText = [self StringFromButData:value];
    }
    return kContentSuggestStableText;
}

//: group_info_activity_team_member
- (NSString *)kContentToothValue {
    /* static */ NSString *kContentToothValue = nil;
    if (!kContentToothValue) {
		NSString *origin = @"1f1403535e5b615c4b555a525b4b4d4f6055625560654b60514d594b5951594e515e02";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentToothValue = [self StringFromButData:value];
    }
    return kContentToothValue;
}

//: 5D5F66
- (NSString *)kTextAircraftName {
    /* static */ NSString *kTextAircraftName = nil;
    if (!kTextAircraftName) {
		NSString *origin = @"06090bc1f2e5cf1803157d2c3b2c3d2d2daf";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextAircraftName = [self StringFromButData:value];
    }
    return kTextAircraftName;
}

//: 邀请你加入超大群
- (NSString *)kText_hardwareData {
    /* static */ NSString *kText_hardwareData = nil;
    if (!kText_hardwareData) {
		NSString *origin = @"181e06f912efcb6462ca9199c69f82c76c82c76787ca9867c78689c9a08698";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_hardwareData = [self StringFromButData:value];
    }
    return kText_hardwareData;
}

- (NSString *)StringFromButData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ButDataToCache:data]];
}

//: /team/getTeamSetting
- (NSString *)kTextToothString {
    /* static */ NSString *kTextToothString = nil;
    if (!kTextToothString) {
		NSString *origin = @"1432054683fd42332f3bfd35334222332f3b21334242373c35a9";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextToothString = [self StringFromButData:value];
    }
    return kTextToothString;
}

//: back_arrow_bl
- (NSString *)kName_wheatData {
    /* static */ NSString *kName_wheatData = nil;
    if (!kName_wheatData) {
		NSString *origin = @"0d1a089d52ca8c5c4847495145475858555d4548527a";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_wheatData = [self StringFromButData:value];
    }
    return kName_wheatData;
}

//: postscript
- (NSString *)kContentMonthData {
    /* static */ NSString *kContentMonthData = nil;
    if (!kContentMonthData) {
		NSString *origin = @"0a5c062686f0141317181707160d1418e4";
		NSData *data = [ButData ButDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentMonthData = [self StringFromButData:value];
    }
    return kContentMonthData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelViewController.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalViewController.h"
#import "CancelViewController.h"
//: #import "DisplayContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "DisplayCardHeaderCell.h"
#import "SwitchenceReusableView.h"
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "ResultViewCell.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "DisplayTeamMemberCardViewController.h"
#import "RowViewController.h"

//: @interface TeamMemberNormalViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NIMContactSelectDelegate>
@interface CancelViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,LengthDelegate>

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;
//: @property (nonatomic, strong) NSMutableArray *memberList;
@property (nonatomic, strong) NSMutableArray *memberList;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic, strong) NIMTeamMember *owerInfo;
@property (nonatomic, strong) NIMTeamMember *owerInfo;

//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @end
@end

//: @implementation TeamMemberNormalViewController
@implementation CancelViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self gray];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[[ButData sharedInstance] kTextToothString]] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[[ButData sharedInstance] kName_fierceValue]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
    //: }];
    }];


    //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
    NSString *kNIMTeamListDataTeamMembersChanged = [[ButData sharedInstance] kName_toolString];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tingModify:) name:kNIMTeamListDataTeamMembersChanged object:nil];
}
//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)option:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            mark:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[[ButData sharedInstance] kTitlePinString]] = [[ButData sharedInstance] kTitleTapData];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[[ButData sharedInstance] kContentMonthData]] = [[ButData sharedInstance] kContent_itemString].disable;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[[ButData sharedInstance] kContentMonthData]] = [[ButData sharedInstance] kTextViolenceModelValue].disable;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[[ButData sharedInstance] kContentMonthData]] = [[ButData sharedInstance] kText_hardwareData].disable;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [NameMessageEffectView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager length:userIds exceptName:info step:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [NameMessageEffectView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}
// 配置每个 item 的 cell
//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: TeamMemberNormalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell" forIndexPath:indexPath];
    ResultViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ResultViewCell" forIndexPath:indexPath];
    //    cell.delegate = self;
//    cell.backgroundColor  = RGB_COLOR_String(@"#fffDisplay");

    //: NIMTeamMember *member = self.memberList[indexPath.row];
    NIMTeamMember *member = self.memberList[indexPath.row];
    //: [cell refreshWithModel:member];
    [cell by:member];


    //: return cell;
    return cell;
}
//: - (void)rightNavButtonClick{
- (void)keyDown{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        MakeAction *config = [[MakeAction alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: DisplayContactSelectViewController *vc = [[DisplayContactSelectViewController alloc] initWithConfig:config];
        RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc recent];
}
//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

// 选择 item 时触发的事件
//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: NSLog(@"Item at index %ld selected", indexPath.row);

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig comment:[[ButData sharedInstance] kTextSendKeyName]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {

        //: NIMTeamMember *member = self.memberList[indexPath.row];
        NIMTeamMember *member = self.memberList[indexPath.row];
//        RowViewController *vc = [[RowViewController alloc] init];
//        vc.teamListManager = self.teamListManager;
//        vc.memberId = member.userId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:member.userId];
        CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:member.userId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self manageOf];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)emptySkimEnable:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self option:selectedContacts mark:nil];
}


//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

// 返回每个 section 中的 item 数量
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.memberList.count;
    return self.memberList.count;
}
//: - (void)loadTeamManageList
- (void)manageOf
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
            //: for (NIMTeamMember *member in members) {
            for (NIMTeamMember *member in members) {
                //: if (member.type == NIMTeamMemberTypeNormal) {
                if (member.type == NIMTeamMemberTypeNormal) {
                    //: [self.memberList addObject:member];
                    [self.memberList addObject:member];

                //: }else if (member.type == NIMTeamMemberTypeOwner){
                }else if (member.type == NIMTeamMemberTypeOwner){
                    //: self.owerInfo = member;
                    self.owerInfo = member;

                    //: DisplayKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
                    CancelTeamCorner *info = [[Mortification text] tingVoice:member.userId keepingOption:nil];
                    //: self.titleLabel.text = info.showName;
                    self.titleLabel.text = info.showName;
                    //: [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[[ButData sharedInstance] kTextItemContent]]];
                }
            }
            //: [self.collectionView reloadData];
            [self.collectionView reloadData];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}

//: - (void)teamMemberUpdate:(NSNotification *)note
- (void)tingModify:(NSNotification *)note
{
    //: [self loadTeamManageList];
    [self manageOf];
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)setupUI {
- (void)gray {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[ButData sharedInstance] kName_wheatData]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice comeDownSuperphylum]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [MakeManager cell:[[ButData sharedInstance] kContentToothValue]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice comeDownSuperphylum]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    submitButton.backgroundColor = [UIColor cell:[[ButData sharedInstance] kTextHideValue]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[[ButData sharedInstance] kContentSuggestStableText]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(keyDown) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: owerView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    owerView.backgroundColor = [UIColor cell:[[ButData sharedInstance] kTextEnableString]];
    //: owerView.layer.masksToBounds = YES;
    owerView.layer.masksToBounds = YES;
    //: owerView.layer.cornerRadius = 16;
    owerView.layer.cornerRadius = 16;
    //: [self.view addSubview:owerView];
    [self.view addSubview:owerView];
    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [owerView addSubview:_roleImageView];
    [owerView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor cell:[[ButData sharedInstance] kName_dataString]];
    //: [owerView addSubview:_titleLabel];
    [owerView addSubview:_titleLabel];

    //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    subtitleLabel.textColor = [UIColor cell:[[ButData sharedInstance] kTextAircraftName]];
    //: subtitleLabel.textAlignment = NSTextAlignmentRight;
    subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: subtitleLabel.text = [DisplayLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    subtitleLabel.text = [MakeManager cell:[[ButData sharedInstance] kName_violenceString]];
    //: [owerView addSubview:subtitleLabel];
    [owerView addSubview:subtitleLabel];

    // 设置 UICollectionView 的布局
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.itemSize = CGSizeMake(width, 70); 
    layout.itemSize = CGSizeMake(width, 70); // 每个 item 的大小
    //: layout.minimumInteritemSpacing = 0; 
    layout.minimumInteritemSpacing = 0; // item 之间的水平间距
    //: layout.minimumLineSpacing = 5; 
    layout.minimumLineSpacing = 5; // item 之间的垂直间距
    //: layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); 
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距

    // 初始化 UICollectionView 并设置布局
    //: self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-90) collectionViewLayout:layout];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-90) collectionViewLayout:layout];
    //: self.collectionView.delegate = self; 
    self.collectionView.delegate = self; // 设置代理
    //: self.collectionView.dataSource = self; 
    self.collectionView.dataSource = self; // 设置数据源
    //: self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    //: self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //: [self.collectionView registerClass:[TeamMemberNormalCollectionViewCell class] forCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell"];
    [self.collectionView registerClass:[ResultViewCell class] forCellWithReuseIdentifier:@"ResultViewCell"];
    //: self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView];

}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
// 返回 section 的数量
//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //: return 1;
    return 1;
}



//: @end
@end
//: __SAVE__ ignore_string [428.4,410.4]
