
#import <Foundation/Foundation.h>

@interface ConfinesData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ConfinesData

//: ic_none_blockList
- (NSString *)kNameStopString {
    /* static */ NSString *kNameStopString = nil;
    if (!kNameStopString) {
        Byte value[] = {17, 57, 13, 69, 237, 168, 130, 217, 157, 253, 192, 182, 4, 48, 42, 38, 53, 54, 53, 44, 38, 41, 51, 54, 42, 50, 19, 48, 58, 59, 117};
        kNameStopString = [self StringFromConfinesData:value];
    }
    return kNameStopString;
}

//: ic_tip_r
- (NSString *)kText_imageValue {
    /* static */ NSString *kText_imageValue = nil;
    if (!kText_imageValue) {
        Byte value[] = {8, 55, 12, 15, 235, 121, 71, 243, 243, 112, 203, 50, 50, 44, 40, 61, 50, 57, 40, 59, 251};
        kText_imageValue = [self StringFromConfinesData:value];
    }
    return kText_imageValue;
}

- (Byte *)ConfinesDataToCache:(Byte *)data {
    int loopScale = data[0];
    Byte dataDetail = data[1];
    int detail = data[2];
    for (int i = detail; i < detail + loopScale; i++) {
        int value = data[i] + dataDetail;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[detail + loopScale] = 0;
    return data + detail;
}

+ (instancetype)sharedInstance {
    static ConfinesData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: black_list_activity_black
- (NSString *)kTitle_colorData {
    /* static */ NSString *kTitle_colorData = nil;
    if (!kTitle_colorData) {
        Byte value[] = {25, 51, 13, 129, 234, 213, 135, 99, 56, 244, 222, 157, 101, 47, 57, 46, 48, 56, 44, 57, 54, 64, 65, 44, 46, 48, 65, 54, 67, 54, 65, 70, 44, 47, 57, 46, 48, 56, 251};
        kTitle_colorData = [self StringFromConfinesData:value];
    }
    return kTitle_colorData;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)kNameRestoreString {
    /* static */ NSString *kNameRestoreString = nil;
    if (!kNameRestoreString) {
        Byte value[] = {44, 89, 4, 220, 14, 25, 22, 28, 23, 6, 10, 15, 8, 27, 6, 8, 29, 8, 27, 8, 25, 6, 8, 10, 27, 16, 29, 16, 27, 32, 6, 8, 11, 11, 6, 9, 19, 8, 10, 18, 6, 26, 28, 10, 10, 12, 26, 26, 244};
        kNameRestoreString = [self StringFromConfinesData:value];
    }
    return kNameRestoreString;
}

//: group_info_activity_without
- (NSString *)kTitleMessageModelString {
    /* static */ NSString *kTitleMessageModelString = nil;
    if (!kTitleMessageModelString) {
        Byte value[] = {27, 74, 13, 210, 199, 6, 200, 109, 99, 214, 141, 74, 121, 29, 40, 37, 43, 38, 21, 31, 36, 28, 37, 21, 23, 25, 42, 31, 44, 31, 42, 47, 21, 45, 31, 42, 30, 37, 43, 42, 179};
        kTitleMessageModelString = [self StringFromConfinesData:value];
    }
    return kTitleMessageModelString;
}

//: black_list_activity_black_list_tip
- (NSString *)kText_mainValue {
    /* static */ NSString *kText_mainValue = nil;
    if (!kText_mainValue) {
        Byte value[] = {34, 91, 6, 13, 54, 181, 7, 17, 6, 8, 16, 4, 17, 14, 24, 25, 4, 6, 8, 25, 14, 27, 14, 25, 30, 4, 7, 17, 6, 8, 16, 4, 17, 14, 24, 25, 4, 25, 14, 21, 128};
        kText_mainValue = [self StringFromConfinesData:value];
    }
    return kText_mainValue;
}

//: back_arrow_bl
- (NSString *)kTitleSendValue {
    /* static */ NSString *kTitleSendValue = nil;
    if (!kTitleSendValue) {
        Byte value[] = {13, 74, 11, 42, 127, 214, 250, 233, 222, 168, 166, 24, 23, 25, 33, 21, 23, 40, 40, 37, 45, 21, 24, 34, 112};
        kTitleSendValue = [self StringFromConfinesData:value];
    }
    return kTitleSendValue;
}

//: #999999
- (NSString *)kTitleKeyFrameString {
    /* static */ NSString *kTitleKeyFrameString = nil;
    if (!kTitleKeyFrameString) {
        Byte value[] = {7, 27, 7, 92, 24, 66, 67, 8, 30, 30, 30, 30, 30, 30, 86};
        kTitleKeyFrameString = [self StringFromConfinesData:value];
    }
    return kTitleKeyFrameString;
}

//: group_info_activity_op_failed
- (NSString *)kText_toName {
    /* static */ NSString *kText_toName = nil;
    if (!kText_toName) {
        Byte value[] = {29, 33, 10, 8, 17, 116, 246, 62, 49, 93, 70, 81, 78, 84, 79, 62, 72, 77, 69, 78, 62, 64, 66, 83, 72, 85, 72, 83, 88, 62, 78, 79, 62, 69, 64, 72, 75, 68, 67, 2};
        kText_toName = [self StringFromConfinesData:value];
    }
    return kText_toName;
}

//: #FFF6CF
- (NSString *)kTextErrorString {
    /* static */ NSString *kTextErrorString = nil;
    if (!kTextErrorString) {
        Byte value[] = {7, 89, 9, 236, 31, 70, 45, 66, 50, 202, 237, 237, 237, 221, 234, 237, 77};
        kTextErrorString = [self StringFromConfinesData:value];
    }
    return kTextErrorString;
}

//: #F6F7FA
- (NSString *)kContent_tapCellValue {
    /* static */ NSString *kContent_tapCellValue = nil;
    if (!kContent_tapCellValue) {
        Byte value[] = {7, 74, 6, 242, 83, 26, 217, 252, 236, 252, 237, 252, 247, 91};
        kContent_tapCellValue = [self StringFromConfinesData:value];
    }
    return kContent_tapCellValue;
}

//: friend_delete_fail
- (NSString *)kTitleToolName {
    /* static */ NSString *kTitleToolName = nil;
    if (!kTitleToolName) {
        Byte value[] = {18, 21, 11, 22, 207, 176, 122, 140, 32, 31, 216, 81, 93, 84, 80, 89, 79, 74, 79, 80, 87, 80, 95, 80, 74, 81, 76, 84, 87, 160};
        kTitleToolName = [self StringFromConfinesData:value];
    }
    return kTitleToolName;
}

- (NSString *)StringFromConfinesData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConfinesDataToCache:data]];
}

//: #FF483D
- (NSString *)kTitleTeamString {
    /* static */ NSString *kTitleTeamString = nil;
    if (!kTitleTeamString) {
        Byte value[] = {7, 74, 10, 99, 86, 16, 21, 22, 70, 15, 217, 252, 252, 234, 238, 233, 250, 212};
        kTitleTeamString = [self StringFromConfinesData:value];
    }
    return kTitleTeamString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CropViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "CommentTopViewCell.h"
//#import "FlipRecordView.h"

// __M_A_C_R_O__
//: #import "CCCBlackListViewController.h"
#import "CropViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "FFFContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "USERContactDataMember.h"
#import "InformationMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERBlackListTableViewCell.h"
#import "TranslateViewCell.h"

//: @interface CCCBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,USERUserListCellDelegate>
@interface CropViewController ()<UITableViewDataSource,UITableViewDelegate,LengthDelegate,EasyLayDelegate>

//@property (nonatomic,strong) FlipRecordView *header;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;


//: @end
@end

//: @implementation CCCBlackListViewController
@implementation CropViewController

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)name
{
}
//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor cell:[[ConfinesData sharedInstance] kTextErrorString]];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[[ConfinesData sharedInstance] kText_imageValue]];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor cell:[[ConfinesData sharedInstance] kTitleTeamString]];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [MakeManager cell:[[ConfinesData sharedInstance] kText_mainValue]];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
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

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (void)didTouchCancleButton:(USERContactDataMember *)dataMemeber {
- (void)cancled:(InformationMember *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView reloadData];
                //: if (wself.data.count>0) {
                if (wself.data.count>0) {
                    //: wself.defView.hidden = YES;
                    wself.defView.hidden = YES;
                    //: wself.tableView.hidden = NO;
                    wself.tableView.hidden = NO;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else{
                }else{
                    //: wself.defView.hidden = NO;
                    wself.defView.hidden = NO;
                    //: wself.tableView.hidden = YES;
                    wself.tableView.hidden = YES;
                }
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[MakeManager cell:[[ConfinesData sharedInstance] kTitleToolName]] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: USERContactDataMember *member = self.data[indexPath.section];
    InformationMember *member = self.data[indexPath.section];

    //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:member.info.infoId];
    CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)loadTheView
- (void)loadOn
{
    //: self.data = self.myBlackListUser;
    self.data = self.someSubInput;
    //: if (self.data.count>0) {
    if (self.data.count>0) {
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

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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
    //: USERContactDataMember *member = self.data[indexPath.section];
    InformationMember *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell show:member];
    //: return cell;
    return cell;
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
        defImg.image = [UIImage imageNamed:[[ConfinesData sharedInstance] kNameStopString]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[[ConfinesData sharedInstance] kTitleKeyFrameString]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MakeManager cell:[[ConfinesData sharedInstance] kTitleMessageModelString]];


    }
    //: return _defView;
    return _defView;
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - USERContactSelectDelegate
#pragma mark - USERContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)emptySkimEnable:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MakeManager cell:[[ConfinesData sharedInstance] kNameRestoreString]] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.someSubInput;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MakeManager cell:[[ConfinesData sharedInstance] kText_toName]] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}


//: - (void)onOpera:(id)sender{
- (void)add:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (USERContactDataMember *member in self.data) {
    for (InformationMember *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    MakeAction *config = [[MakeAction alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc recent];
}


//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[[ConfinesData sharedInstance] kContent_tapCellValue]];
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
    [backButton setImage:[UIImage imageNamed:[[ConfinesData sharedInstance] kTitleSendValue]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [MakeManager cell:[[ConfinesData sharedInstance] kTitle_colorData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

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

    //: [self loadTheView];
    [self loadOn];
}
//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)someSubInput{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: USERContactDataMember *member = [[USERContactDataMember alloc] init];
        InformationMember *member = [[InformationMember alloc] init];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        CancelTeamCorner *info = [[Mortification text] tingVoice:user.userId keepingOption:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}

//: @end
@end
//: __SAVE__ ignore_string [416.4]