
#import <Foundation/Foundation.h>

@interface ChickData : NSObject

+ (instancetype)sharedInstance;

//: ic_none_blockList
@property (nonatomic, copy) NSString *kText_colorPinName;

//: black_list_activity_black
@property (nonatomic, copy) NSString *kName_placeShallowString;

//: #FF483D
@property (nonatomic, copy) NSString *kContent_everData;

//: #999999
@property (nonatomic, copy) NSString *kNameRedRecentString;

//: ic_tip_r
@property (nonatomic, copy) NSString *kTitle_dateStableData;

//: black_list_activity_black_list_tip
@property (nonatomic, copy) NSString *kTextToothName;

//: group_info_activity_without
@property (nonatomic, copy) NSString *kName_itemValue;

//: group_chat_avatar_activity_remove_black_success
@property (nonatomic, copy) NSString *kNameReservationValue;

//: #F6F7FA
@property (nonatomic, copy) NSString *kName_monthTitle;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kNameSculptureString;

//: #Display6CF
@property (nonatomic, copy) NSString *kTextRecordData;

@end

@implementation ChickData

//: #F6F7FA
- (NSString *)kName_monthTitle {
    if (!_kName_monthTitle) {
		NSString *origin = @"07370b12935d32daddafa75a7d6d7d6e7d7846";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_monthTitle = [self StringFromChickData:value];
    }
    return _kName_monthTitle;
}

- (Byte *)ChickDataToCache:(Byte *)data {
    int thoughEnable = data[0];
    Byte paradigmSelected = data[1];
    int cembraNut = data[2];
    for (int i = cembraNut; i < cembraNut + thoughEnable; i++) {
        int value = data[i] - paradigmSelected;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[cembraNut + thoughEnable] = 0;
    return data + cembraNut;
}

//: black_list_activity_black_list_tip
- (NSString *)kTextToothName {
    if (!_kTextToothName) {
		NSString *origin = @"22180b58823f519fdce07f7a84797b837784818b8c77797b8c818e818c91777a84797b837784818b8c778c8188f9";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextToothName = [self StringFromChickData:value];
    }
    return _kTextToothName;
}

+ (instancetype)sharedInstance {
    static ChickData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (NSString *)StringFromChickData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChickDataToCache:data]];
}

//: ic_none_blockList
- (NSString *)kText_colorPinName {
    if (!_kText_colorPinName) {
		NSString *origin = @"113d08df24e48ff7a6a09cabacaba29c9fa9aca0a889a6b0b124";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_colorPinName = [self StringFromChickData:value];
    }
    return _kText_colorPinName;
}

//: black_list_activity_black
- (NSString *)kName_placeShallowString {
    if (!_kName_placeShallowString) {
		NSString *origin = @"1906068c7fcd687267697165726f797a6567697a6f7c6f7a7f656872676971a4";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_placeShallowString = [self StringFromChickData:value];
    }
    return _kName_placeShallowString;
}

//: #999999
- (NSString *)kNameRedRecentString {
    if (!_kNameRedRecentString) {
		NSString *origin = @"075f0bcef7845205333904829898989898985d";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameRedRecentString = [self StringFromChickData:value];
    }
    return _kNameRedRecentString;
}

//: #Display6CF
- (NSString *)kTextRecordData {
    if (!_kTextRecordData) {
		NSString *origin = @"073a04555d808080707d806e";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextRecordData = [self StringFromChickData:value];
    }
    return _kTextRecordData;
}

//: ic_tip_r
- (NSString *)kTitle_dateStableData {
    if (!_kTitle_dateStableData) {
		NSString *origin = @"08080cd65a93ebd81bc203f6716b677c7178677a3c";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_dateStableData = [self StringFromChickData:value];
    }
    return _kTitle_dateStableData;
}

//: group_chat_avatar_activity_remove_black_success
- (NSString *)kNameReservationValue {
    if (!_kNameReservationValue) {
		NSString *origin = @"2f0c0bae8a63b5bfd8bf62737e7b817c6b6f746d806b6d826d806d7e6b6d6f8075827580856b7e71797b82716b6e786d6f776b7f816f6f717f7f81";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameReservationValue = [self StringFromChickData:value];
    }
    return _kNameReservationValue;
}

//: #FF483D
- (NSString *)kContent_everData {
    if (!_kContent_everData) {
		NSString *origin = @"07350d2718e86124a3df9ebcd9587b7b696d687915";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_everData = [self StringFromChickData:value];
    }
    return _kContent_everData;
}

+ (NSData *)ChickDataToData:(NSString *)value {
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

//: back_arrow_bl
- (NSString *)kNameSculptureString {
    if (!_kNameSculptureString) {
		NSString *origin = @"0d220c7ff01da4f9a1f143eb8483858d81839494919981848eb9";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameSculptureString = [self StringFromChickData:value];
    }
    return _kNameSculptureString;
}

//: group_info_activity_without
- (NSString *)kName_itemValue {
    if (!_kName_itemValue) {
		NSString *origin = @"1b20086f8382913187928f95907f898e868f7f81839489968994997f978994888f95948c";
		NSData *data = [ChickData ChickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_itemValue = [self StringFromChickData:value];
    }
    return _kName_itemValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextColorViewController.m
// Mortification
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayTeamMuteMemberListViewController.h"
#import "TextColorViewController.h"
//: #import "DisplayTeamMemberCardViewController.h"
#import "RowViewController.h"
//: #import "DisplayCardHeaderCell.h"
#import "SwitchenceReusableView.h"
//: #import "DisplayTeamCardMemberItem.h"
#import "IndexItem.h"
//: #import "DisplayKitDependency.h"
#import "DisplayKitDependency.h"
//: #import "DisplayKitProgressHUD.h"
#import "NameMessageEffectView.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "USERContactDataMember.h"
#import "InformationMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERBlackListTableViewCell.h"
#import "TranslateViewCell.h"

//: @interface DisplayTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,USERUserListCellDelegate>
@interface TextColorViewController ()<UITableViewDataSource,UITableViewDelegate,EasyLayDelegate>

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NSMutableArray *memberList;
@property (nonatomic,strong) NSMutableArray *memberList;

//: @end
@end

//: @implementation DisplayTeamMuteMemberListViewController
@implementation TextColorViewController


//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
- (void)maxButton:(NIMTeamMember *)teamMemeber
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:NO
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             //: userId:teamMemeber.userId
                                             userId:teamMemeber.userId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {

        //: if(!error) {
        if(!error) {
            //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"group_chat_avatar_activity_remove_black_success"]
            [self.view makeToast:[MakeManager cell:[ChickData sharedInstance].kNameReservationValue]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self.memberList removeObject:teamMemeber];
            [self.memberList removeObject:teamMemeber];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        //: }else{
        }else{
            //: [self.view makeToast:error.description
            [self.view makeToast:error.description
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
     //: }];
     }];
}
//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: USERBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    TranslateViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[USERBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[TranslateViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];
    //: [cell refreshData:member];
    [cell bringUp:member];
    //: return cell;
    return cell;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}


//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

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
    [self model];
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#Display6CF"];
        _box.backgroundColor = [UIColor cell:[ChickData sharedInstance].kTextRecordData];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[ChickData sharedInstance].kTitle_dateStableData];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor cell:[ChickData sharedInstance].kContent_everData];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [DisplayLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [MakeManager cell:[ChickData sharedInstance].kTextToothName];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];

    //: DisplayTeamMemberCardViewController *vc = [[DisplayTeamMemberCardViewController alloc] init];
    RowViewController *vc = [[RowViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: vc.memberId = member.userId;
    vc.memberId = member.userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:[ChickData sharedInstance].kText_colorPinName];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[ChickData sharedInstance].kNameRedRecentString];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [DisplayLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MakeManager cell:[ChickData sharedInstance].kName_itemValue];


    }
    //: return _defView;
    return _defView;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[ChickData sharedInstance].kName_monthTitle];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ChickData sharedInstance].kNameSculptureString] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [MakeManager cell:[ChickData sharedInstance].kName_placeShallowString];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTeamManageList];
    [self model];
}

//: - (void)loadTeamManageList
- (void)model
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: self.memberList = [NSMutableArray arrayWithArray:members];
            self.memberList = [NSMutableArray arrayWithArray:members];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        }
    //: }];
    }];
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}


//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.memberList.count;
    return self.memberList.count;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}




//: @end
@end
//: __SAVE__ ignore_string [416.4]
