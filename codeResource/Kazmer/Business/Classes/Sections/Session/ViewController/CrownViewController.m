
#import <Foundation/Foundation.h>

@interface ArrestData : NSObject

+ (instancetype)sharedInstance;

//: #F6F6F6
@property (nonatomic, copy) NSString *kText_withString;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *kContentAnyoneData;

//: contact_fragment_friend
@property (nonatomic, copy) NSString *kContentSoulData;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kTitleHydraName;

//: #4B43DE
@property (nonatomic, copy) NSString *kTextColValue;

//: 已发送
@property (nonatomic, copy) NSString *kName_technologicValue;

//: #EEEEEE
@property (nonatomic, copy) NSString *kTitle_hoppingValue;

//: #5D5F66
@property (nonatomic, copy) NSString *kContent_exceptData;

//: contact_fragment_group
@property (nonatomic, copy) NSString *kNameOriginValue;

//: activity_wallet_zhuan
@property (nonatomic, copy) NSString *kName_grayValue;

@end

@implementation ArrestData

+ (instancetype)sharedInstance {
    static ArrestData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ArrestDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ArrestDataToCache:(Byte *)data {
    int munition = data[0];
    int hateGearCute = data[1];
    for (int i = 0; i < munition / 2; i++) {
        int begin = hateGearCute + i;
        int end = hateGearCute + munition - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[hateGearCute + munition] = 0;
    return data + hateGearCute;
}

- (NSString *)StringFromArrestData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ArrestDataToCache:data]];
}  

//: #4B43DE
- (NSString *)kTextColValue {
    if (!_kTextColValue) {
		NSArray<NSNumber *> *origin = @[@7, @10, @66, @202, @166, @201, @229, @115, @1, @191, @69, @68, @51, @52, @66, @52, @35, @230];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextColValue = [self StringFromArrestData:value];
    }
    return _kTextColValue;
}

//: contact_fragment_group
- (NSString *)kNameOriginValue {
    if (!_kNameOriginValue) {
		NSArray<NSNumber *> *origin = @[@22, @9, @178, @179, @162, @148, @143, @172, @13, @112, @117, @111, @114, @103, @95, @116, @110, @101, @109, @103, @97, @114, @102, @95, @116, @99, @97, @116, @110, @111, @99, @170];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameOriginValue = [self StringFromArrestData:value];
    }
    return _kNameOriginValue;
}

//: 已发送
- (NSString *)kName_technologicValue {
    if (!_kName_technologicValue) {
		NSArray<NSNumber *> *origin = @[@9, @10, @29, @108, @79, @247, @58, @154, @148, @56, @129, @128, @233, @145, @143, @229, @178, @183, @229, @158];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_technologicValue = [self StringFromArrestData:value];
    }
    return _kName_technologicValue;
}

//: group_info_activity_op_failed
- (NSString *)kContentAnyoneData {
    if (!_kContentAnyoneData) {
		NSArray<NSNumber *> *origin = @[@29, @10, @114, @229, @110, @98, @183, @178, @170, @223, @100, @101, @108, @105, @97, @102, @95, @112, @111, @95, @121, @116, @105, @118, @105, @116, @99, @97, @95, @111, @102, @110, @105, @95, @112, @117, @111, @114, @103, @251];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentAnyoneData = [self StringFromArrestData:value];
    }
    return _kContentAnyoneData;
}

//: #EEEEEE
- (NSString *)kTitle_hoppingValue {
    if (!_kTitle_hoppingValue) {
		NSArray<NSNumber *> *origin = @[@7, @6, @234, @118, @91, @128, @69, @69, @69, @69, @69, @69, @35, @145];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_hoppingValue = [self StringFromArrestData:value];
    }
    return _kTitle_hoppingValue;
}

//: #5D5F66
- (NSString *)kContent_exceptData {
    if (!_kContent_exceptData) {
		NSArray<NSNumber *> *origin = @[@7, @5, @255, @24, @214, @54, @54, @70, @53, @68, @53, @35, @57];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_exceptData = [self StringFromArrestData:value];
    }
    return _kContent_exceptData;
}

//: contact_fragment_friend
- (NSString *)kContentSoulData {
    if (!_kContentSoulData) {
		NSArray<NSNumber *> *origin = @[@23, @11, @44, @164, @134, @52, @40, @26, @116, @114, @143, @100, @110, @101, @105, @114, @102, @95, @116, @110, @101, @109, @103, @97, @114, @102, @95, @116, @99, @97, @116, @110, @111, @99, @28];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentSoulData = [self StringFromArrestData:value];
    }
    return _kContentSoulData;
}

//: back_arrow_bl
- (NSString *)kTitleHydraName {
    if (!_kTitleHydraName) {
		NSArray<NSNumber *> *origin = @[@13, @6, @31, @23, @133, @137, @108, @98, @95, @119, @111, @114, @114, @97, @95, @107, @99, @97, @98, @217];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleHydraName = [self StringFromArrestData:value];
    }
    return _kTitleHydraName;
}

//: #F6F6F6
- (NSString *)kText_withString {
    if (!_kText_withString) {
		NSArray<NSNumber *> *origin = @[@7, @9, @166, @41, @186, @94, @54, @30, @141, @54, @70, @54, @70, @54, @70, @35, @149];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_withString = [self StringFromArrestData:value];
    }
    return _kText_withString;
}

//: activity_wallet_zhuan
- (NSString *)kName_grayValue {
    if (!_kName_grayValue) {
		NSArray<NSNumber *> *origin = @[@21, @3, @174, @110, @97, @117, @104, @122, @95, @116, @101, @108, @108, @97, @119, @95, @121, @116, @105, @118, @105, @116, @99, @97, @89];
		NSData *data = [ArrestData ArrestDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_grayValue = [self StringFromArrestData:value];
    }
    return _kName_grayValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CrownViewController.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZOMNForwardViewController.h"
#import "CrownViewController.h"
//: #import "USERFriendListTableViewCell.h"
#import "CalendarViewCell.h"
//: #import "USERContactDataCell.h"
#import "StandardContactDataCell.h"

//: @interface ZOMNForwardViewController ()<UITableViewDataSource,UITableViewDelegate>
@interface CrownViewController ()<UITableViewDataSource,UITableViewDelegate>


//: @property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder1;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;
//: @property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIImageView *topborder2;

//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic ,strong) NSArray *friendArray;
@property (nonatomic ,strong) NSArray *friendArray;
//: @property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UITableView *tableView;


//: @end
@end

//: @implementation ZOMNForwardViewController
@implementation CrownViewController

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return 1;
    return 1;
}

//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-64) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(_sliderIndex <= 0){
    if(_sliderIndex <= 0){
        //: NIMUser *friend = self.friendArray[indexPath.section];
        NIMUser *friend = self.friendArray[indexPath.section];
        //: self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
        self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
        self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
    }

    //: NSError *err;
    NSError *err;
    //: if (self.isCard) {
    if (self.isCard) {
        //: [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
    }


    //: if(!err){
    if(!err){
        //: [self.view makeToast:@"已发送".nim_localized duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:[ArrestData sharedInstance].kName_technologicValue.disable duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[DisplayLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[MakeManager cell:[ArrestData sharedInstance].kContentAnyoneData] duration:2.0 position:CSToastPositionCenter];
    }

}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return self.friendArray.count;
        return self.friendArray.count;
    //: }else{
    }else{
        //: return self.groupArray.count;
        return self.groupArray.count;
    }
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)receiver:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (_sliderIndex <= 0) {
//        NIMUser *user = self.friendArray[indexPath.section];
//
//        CalendarViewCell *cell = [CalendarViewCell cellWithTableView:tableView];
////        cell.delegate = self;
//        [cell reloadUserItem:user];
//        cell.messageBtn.hidden = YES;
//        
//        return cell;
//        
//    }else{
//        
//        NIMTeam *team = self.groupArray[indexPath.section];
//
//        StandardContactDataCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KEKEItemCell"];
//        if (!cell) {
//            cell = [[StandardContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KEKEItemCell"];
//        }
//        cell.backgroundColor = [UIColor clearColor];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        [cell refreshTeam:team];
////        [cell setDelegate:self];
//        
//        return cell;
//    }

    //: USERFriendListTableViewCell *cell = [USERFriendListTableViewCell cellWithTableView:tableView];
    CalendarViewCell *cell = [CalendarViewCell tingView:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: NIMUser *user = self.friendArray[indexPath.section];
        NIMUser *user = self.friendArray[indexPath.section];
        //: [cell reloadUserItem:user];
        [cell usufructuary:user];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell member:team];
    }
    //: return cell;
    return cell;
}

//: - (void)prepareData
- (void)visualAspect
{
    //: self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    //: self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;
    self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 64;
    return 64;
}

//: -(void)sliderButtonClick:(UIButton *)sender
-(void)rangeClick:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btnfriend.backgroundColor = [UIColor cell:[ArrestData sharedInstance].kTextColValue];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor cell:[ArrestData sharedInstance].kContent_exceptData] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btngroup.backgroundColor = [UIColor cell:[ArrestData sharedInstance].kTextColValue];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor cell:[ArrestData sharedInstance].kContent_exceptData] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }

    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
    //: [_tableView reloadData];
    [_tableView reloadData];

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight])+64)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum])+64)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ArrestData sharedInstance].kTitleHydraName] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [navView addSubview:backButton];
    [navView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice comeDownSuperphylum]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [DisplayLanguageManager getTextWithKey:@"activity_wallet_zhuan"];
    labtitle.text = [MakeManager cell:[ArrestData sharedInstance].kName_grayValue];
    //: [navView addSubview:labtitle];
    [navView addSubview:labtitle];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor cell:[ArrestData sharedInstance].kText_withString];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _btnfriend.backgroundColor = [UIColor cell:[ArrestData sharedInstance].kTextColValue];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[DisplayLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[MakeManager cell:[ArrestData sharedInstance].kContentSoulData] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(rangeClick:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor cell:[ArrestData sharedInstance].kContent_exceptData] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[DisplayLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[MakeManager cell:[ArrestData sharedInstance].kNameOriginValue] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(rangeClick:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor cell:[ArrestData sharedInstance].kTitle_hoppingValue];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: _sliderIndex = 0;
    _sliderIndex = 0;
    //: [self prepareData];
    [self visualAspect];
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
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
}

//: @end
@end
