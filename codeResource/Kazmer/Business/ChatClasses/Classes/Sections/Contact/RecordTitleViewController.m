
#import <Foundation/Foundation.h>

@interface ShoppingSilkData : NSObject

+ (instancetype)sharedInstance;

//: #4B43DE
@property (nonatomic, copy) NSString *kText_thoughValue;

//: icon_checkbox_selected
@property (nonatomic, copy) NSString *kTitleAmberString;

//: ic_close_b
@property (nonatomic, copy) NSString *kTitle_colaHerbRacyData;

//: no_friend
@property (nonatomic, copy) NSString *kTextAloneString;

//: ic_choose_w
@property (nonatomic, copy) NSString *kName_volunteerText;

//: No friends，please add friends
@property (nonatomic, copy) NSString *kName_growWrapValue;

//: main_activity_choose_least_one
@property (nonatomic, copy) NSString *kNameJustData;

//: #999999
@property (nonatomic, copy) NSString *kTitle_teamData;

//: select_contact
@property (nonatomic, copy) NSString *kNameHateDiscoString;

//: SelectContactCellID
@property (nonatomic, copy) NSString *kNameReservationData;

@end

@implementation ShoppingSilkData

+ (instancetype)sharedInstance {
    static ShoppingSilkData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ShoppingSilkDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ShoppingSilkDataToCache:(Byte *)data {
    int universeTap = data[0];
    Byte compareBroadcast = data[1];
    int questThere = data[2];
    for (int i = questThere; i < questThere + universeTap; i++) {
        int value = data[i] - compareBroadcast;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[questThere + universeTap] = 0;
    return data + questThere;
}

- (NSString *)StringFromShoppingSilkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShoppingSilkDataToCache:data]];
}

//: icon_checkbox_selected
- (NSString *)kTitleAmberString {
    if (!_kTitleAmberString) {
		NSArray<NSString *> *origin = @[@"22", @"63", @"7", @"77", @"8", @"236", @"187", @"168", @"162", @"174", @"173", @"158", @"162", @"167", @"164", @"162", @"170", @"161", @"174", @"183", @"158", @"178", @"164", @"171", @"164", @"162", @"179", @"164", @"163", @"46"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleAmberString = [self StringFromShoppingSilkData:value];
    }
    return _kTitleAmberString;
}

//: SelectContactCellID
- (NSString *)kNameReservationData {
    if (!_kNameReservationData) {
		NSArray<NSString *> *origin = @[@"19", @"8", @"4", @"68", @"91", @"109", @"116", @"109", @"107", @"124", @"75", @"119", @"118", @"124", @"105", @"107", @"124", @"75", @"109", @"116", @"116", @"81", @"76", @"135"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameReservationData = [self StringFromShoppingSilkData:value];
    }
    return _kNameReservationData;
}

//: ic_choose_w
- (NSString *)kName_volunteerText {
    if (!_kName_volunteerText) {
		NSArray<NSString *> *origin = @[@"11", @"91", @"6", @"95", @"220", @"188", @"196", @"190", @"186", @"190", @"195", @"202", @"202", @"206", @"192", @"186", @"210", @"235"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_volunteerText = [self StringFromShoppingSilkData:value];
    }
    return _kName_volunteerText;
}

//: main_activity_choose_least_one
- (NSString *)kNameJustData {
    if (!_kNameJustData) {
		NSArray<NSString *> *origin = @[@"30", @"61", @"5", @"106", @"33", @"170", @"158", @"166", @"171", @"156", @"158", @"160", @"177", @"166", @"179", @"166", @"177", @"182", @"156", @"160", @"165", @"172", @"172", @"176", @"162", @"156", @"169", @"162", @"158", @"176", @"177", @"156", @"172", @"171", @"162", @"216"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameJustData = [self StringFromShoppingSilkData:value];
    }
    return _kNameJustData;
}

//: No friends，please add friends
- (NSString *)kName_growWrapValue {
    if (!_kName_growWrapValue) {
		NSArray<NSString *> *origin = @[@"31", @"95", @"5", @"190", @"65", @"173", @"206", @"127", @"197", @"209", @"200", @"196", @"205", @"195", @"210", @"78", @"27", @"235", @"207", @"203", @"196", @"192", @"210", @"196", @"127", @"192", @"195", @"195", @"127", @"197", @"209", @"200", @"196", @"205", @"195", @"210", @"71"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_growWrapValue = [self StringFromShoppingSilkData:value];
    }
    return _kName_growWrapValue;
}

//: ic_close_b
- (NSString *)kTitle_colaHerbRacyData {
    if (!_kTitle_colaHerbRacyData) {
		NSArray<NSString *> *origin = @[@"10", @"31", @"7", @"214", @"226", @"63", @"253", @"136", @"130", @"126", @"130", @"139", @"142", @"146", @"132", @"126", @"129", @"65"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_colaHerbRacyData = [self StringFromShoppingSilkData:value];
    }
    return _kTitle_colaHerbRacyData;
}

//: #999999
- (NSString *)kTitle_teamData {
    if (!_kTitle_teamData) {
		NSArray<NSString *> *origin = @[@"7", @"94", @"3", @"129", @"151", @"151", @"151", @"151", @"151", @"151", @"2"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_teamData = [self StringFromShoppingSilkData:value];
    }
    return _kTitle_teamData;
}

//: select_contact
- (NSString *)kNameHateDiscoString {
    if (!_kNameHateDiscoString) {
		NSArray<NSString *> *origin = @[@"14", @"46", @"3", @"161", @"147", @"154", @"147", @"145", @"162", @"141", @"145", @"157", @"156", @"162", @"143", @"145", @"162", @"120"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameHateDiscoString = [self StringFromShoppingSilkData:value];
    }
    return _kNameHateDiscoString;
}

//: no_friend
- (NSString *)kTextAloneString {
    if (!_kTextAloneString) {
		NSArray<NSString *> *origin = @[@"9", @"60", @"3", @"170", @"171", @"155", @"162", @"174", @"165", @"161", @"170", @"160", @"74"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextAloneString = [self StringFromShoppingSilkData:value];
    }
    return _kTextAloneString;
}

//: #4B43DE
- (NSString *)kText_thoughValue {
    if (!_kText_thoughValue) {
		NSArray<NSString *> *origin = @[@"7", @"5", @"9", @"77", @"117", @"128", @"71", @"4", @"216", @"40", @"57", @"71", @"57", @"56", @"73", @"74", @"138"];
		NSData *data = [ShoppingSilkData ShoppingSilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_thoughValue = [self StringFromShoppingSilkData:value];
    }
    return _kText_thoughValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordTitleViewController.m
// Mortification
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "FFFContactSelectTabView.h"
#import "ParadigmColorView.h"
//: #import "FFFContactPickedView.h"
#import "LittleLeagueTeamView.h"
//: #import "FFFGroupedUsrInfo.h"
#import "FFFGroupedUsrInfo.h"
//: #import "UserGroupedData.h"
#import "UserRecord.h"
//: #import "FFFContactDataCell.h"
#import "ContactViewCell.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSetGroupNameView.h"
#import "ColorTableView.h"
//: #import "FFFGroupAvatarViewController.h"
#import "IndoorsViewController.h"

//: @interface FFFContactSelectViewController ()<UITableViewDataSource, UITableViewDelegate, FFFContactPickedViewDelegate>{
@interface RecordTitleViewController ()<UITableViewDataSource, UITableViewDelegate, DelegateClean>{
    //: NSMutableArray *_selectecContacts;
    NSMutableArray *_selectecContacts;
}
//: @property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UITableView *tableView;
//: @property(nonatomic, strong) NSDictionary *contentDic;
@property(nonatomic, strong) NSDictionary *contentDic;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property(nonatomic, strong) UIView *headerview;
@property(nonatomic, strong) UIView *headerview;
//: @property(nonatomic, strong) UIButton *selectedBtn;
@property(nonatomic, strong) UIButton *selectedBtn;
//: @property (nonatomic, assign) NSInteger maxSelectCount;
@property (nonatomic, assign) NSInteger maxSelectCount;

//: @property(nonatomic, strong) UITextField *textfield;
@property(nonatomic, strong) UITextField *textfield;

//: @property(nonatomic, strong) UIImage *headPortrait;
@property(nonatomic, strong) UIImage *headPortrait;

//: @property(nonatomic, strong) FFFSetGroupNameView *setGroupnameView;
@property(nonatomic, strong) ColorTableView *setGroupnameView;

//: @property(nonatomic, strong) NSArray *sectionTitles;
@property(nonatomic, strong) NSArray *sectionTitles;
//: @property (strong, nonatomic) FFFContactSelectTabView *selectIndicatorView;
@property (strong, nonatomic) ParadigmColorView *selectIndicatorView;

//: @end
@end

//: @implementation FFFContactSelectViewController
@implementation RecordTitleViewController

//: - (void)viewDidLoad
- (void)viewDidLoad
{
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])) style:UITableViewStylePlain];
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: [self.view addSubview:self.selectIndicatorView];
    [self.view addSubview:self.selectIndicatorView];
    //: [self isshowSelectindicator];
    [self queryed];

    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;

    //: [self setUpNav];
    [self key];

    //: self.selectIndicatorView.pickedView.delegate = self;
    self.selectIndicatorView.pickedView.delegate = self;
//    [self.selectIndicatorView.doneButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.sectionTitles.count;
    return self.sectionTitles.count;
}


//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if(self) {
    if(self) {
        //: _maxSelectCount = 9223372036854775807L;
        _maxSelectCount = 9223372036854775807L;
    }
    //: return self;
    return self;
}

//: - (void)makeData{
- (void)make{
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: [self.config getContactData:^(NSDictionary *contentDic, NSArray *titles) {
    [self.config linkData:^(NSDictionary *contentDic, NSArray *titles) {
        //: self.contentDic = contentDic;
        self.contentDic = contentDic;
        //: self.sectionTitles = titles;
        self.sectionTitles = titles;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if(self.sectionTitles.count>0){
            if(self.sectionTitles.count>0){
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: [weakSelf.tableView reloadData];
                [weakSelf.tableView reloadData];
            //: }else{
            }else{
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
            }

        //: });
        });
    //: }];
    }];
    //: if ([self.config respondsToSelector:@selector(alreadySelectedMemberId)])
    if ([self.config respondsToSelector:@selector(handleBlue)])
    {
        //: _selectecContacts = [[self.config alreadySelectedMemberId] mutableCopy];
        _selectecContacts = [[self.config handleBlue] mutableCopy];
    }

    //: _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    _selectecContacts = _selectecContacts.count ? _selectecContacts : [NSMutableArray array];
    //: for (NSString *selectId in _selectecContacts) {
    for (NSString *selectId in _selectecContacts) {
        //: FFFKitInfo *info;
        CancelTeamCorner *info;
        //: info = [self.config getInfoById:selectId];
        info = [self.config frame:selectId];
        //: [self.selectIndicatorView.pickedView addMemberInfo:info];
        [self.selectIndicatorView.pickedView memberInfo:info];
    }
}

//: - (void)refreshDetailTitle
- (void)to
{
    //: UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    UIButton *btn = (UIButton *)self.navigationItem.rightBarButtonItem.customView;
    //: if(_selectecContacts.count > 0){
    if(_selectecContacts.count > 0){
        //: [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setTitle:self.nearCenter forState:UIControlStateNormal];
        //: [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:[ShoppingSilkData sharedInstance].kTitleAmberString] forState:UIControlStateNormal];
//        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        //: btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, -5);
        //: btn.frame = CGRectMake(0, 0, 70, 40);
        btn.frame = CGRectMake(0, 0, 70, 40);

    //: }else{
    }else{
        //: [btn setTitle:self.detailTitle forState:UIControlStateNormal];
        [btn setTitle:self.nearCenter forState:UIControlStateNormal];
        //: [btn setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:[ShoppingSilkData sharedInstance].kTitleAmberString] forState:UIControlStateNormal];
        //: btn.frame = CGRectMake(0, 0, 40, 40);
        btn.frame = CGRectMake(0, 0, 40, 40);
    }

//    UILabel *label = (UILabel *)self.navigationItem.rightBarButtonItem.customView;
//    [label setText:self.detailTitle];
//    [label sizeToFit];
}

//: - (void)show{
- (void)recent{
    //: UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: vc.modalPresentationStyle = UIModalPresentationFullScreen;
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
    [vc presentViewController:[[UINavigationController alloc] initWithRootViewController:self] animated:YES completion:nil];
}

//: - (void)setUpNav
- (void)key
{
    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[ShoppingSilkData sharedInstance].kTitle_colaHerbRacyData] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"select_contact"];
    labtitle.text = [MakeManager cell:[ShoppingSilkData sharedInstance].kNameHateDiscoString];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, [UIDevice vg_statusBarHeight]+10, 48, 28);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, [UIDevice comeDownSuperphylum]+10, 48, 28);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    submitButton.backgroundColor = [UIColor cell:[ShoppingSilkData sharedInstance].kText_thoughValue];
    //: submitButton.layer.cornerRadius = 14;
    submitButton.layer.cornerRadius = 14;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_choose_w"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[ShoppingSilkData sharedInstance].kName_volunteerText] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(onDoneBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(tables:) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

}

//: #pragma mark - Private
#pragma mark - Private

//: - (FFFContactSelectTabView *)selectIndicatorView{
- (ParadigmColorView *)selectIndicatorView{
    //: if (_selectIndicatorView) {
    if (_selectIndicatorView) {
        //: return _selectIndicatorView;
        return _selectIndicatorView;
    }

    //: _selectIndicatorView = [[FFFContactSelectTabView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 64)];
    _selectIndicatorView = [[ParadigmColorView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, 64)];
    //: _selectIndicatorView.doneButton.hidden = YES;
    _selectIndicatorView.doneButton.hidden = YES;
    //: return _selectIndicatorView;
    return _selectIndicatorView;
}

//: - (IBAction)onDoneBtnClick:(id)sender {
- (IBAction)tables:(id)sender {

    //: if (_selectecContacts.count == 0) {
    if (_selectecContacts.count == 0) {
        //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"main_activity_choose_least_one"]];
        [SVProgressHUD firstTeam:[MakeManager cell:[ShoppingSilkData sharedInstance].kNameJustData]];
        //: return;
        return;
    }


    //: if (self.config.showSelectHeaderview) {
    if (self.config.bar) {

        //: [self.view addSubview:self.setGroupnameView];
        [self.view addSubview:self.setGroupnameView];
        //: [self.setGroupnameView animationShow];
        [self.setGroupnameView languageDown];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
        self.setGroupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                //: if (_selectecContacts.count) {
                if (_selectecContacts.count) {
                    //: if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
                    if ([self.delegate respondsToSelector:@selector(emptySkimEnable:)]) {
                        //: [self.delegate didFinishedSelect:_selectecContacts];
                        [self.delegate emptySkimEnable:_selectecContacts];
                    }

                    //: FFFGroupAvatarViewController *vc = [[FFFGroupAvatarViewController alloc]init];
                    IndoorsViewController *vc = [[IndoorsViewController alloc]init];
                    //: vc.groupName = groupName;
                    vc.groupName = groupName;
    //                vc.teamListManager = self.teamListManager;
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: vc.speiceBackBlock = ^(UIImage *avater){
                    vc.speiceBackBlock = ^(UIImage *avater){
                        //: [self dismissViewControllerAnimated:YES completion:nil];
                        [self dismissViewControllerAnimated:YES completion:nil];
                                            //: if (self.finshBlock) {
                                            if (self.finshBlock) {

                                                //: self.finshBlock(_selectecContacts, groupName, avater);
                                                self.finshBlock(_selectecContacts, groupName, avater);
                                                //: self.finshBlock = nil;
                                                self.finshBlock = nil;
                                            }
                    //: };
                    };


                }
                //: else {
                else {
                    //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
                    if([_delegate respondsToSelector:@selector(cancelledOrQueryVoice)]) {
                        //: [_delegate didCancelledSelect];
                        [_delegate cancelledOrQueryVoice];
                    }
                    //: if (self.cancelBlock) {
                    if (self.cancelBlock) {
                        //: self.cancelBlock();
                        self.cancelBlock();
                        //: self.cancelBlock = nil;
                        self.cancelBlock = nil;
                    }
                }

        //: };
        };

    //: }else{
    }else{

        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: if (_selectecContacts.count) {
        if (_selectecContacts.count) {
            //: if ([self.delegate respondsToSelector:@selector(didFinishedSelect:)]) {
            if ([self.delegate respondsToSelector:@selector(emptySkimEnable:)]) {
                //: [self.delegate didFinishedSelect:_selectecContacts];
                [self.delegate emptySkimEnable:_selectecContacts];
            }
            //: if (self.finshBlock) {
            if (self.finshBlock) {
                //: self.finshBlock(_selectecContacts, @"", nil);
                self.finshBlock(_selectecContacts, @"", nil);
                //: self.finshBlock = nil;
                self.finshBlock = nil;
            }
        }
        //: else {
        else {
            //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
            if([_delegate respondsToSelector:@selector(cancelledOrQueryVoice)]) {
                //: [_delegate didCancelledSelect];
                [_delegate cancelledOrQueryVoice];
            }
            //: if (self.cancelBlock) {
            if (self.cancelBlock) {
                //: self.cancelBlock();
                self.cancelBlock();
                //: self.cancelBlock = nil;
                self.cancelBlock = nil;
            }
        }
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    NSArray *arr = [self.contentDic valueForKey:self.sectionTitles[section]];
    //: return arr.count;
    return arr.count;
}

//: - (instancetype)initWithConfig:(id<FFFContactSelectConfig>) config{
- (instancetype)initWithSightConfig:(id<QueryConfig>) config{
    //: self = [self initWithNibName:nil bundle:nil];
    self = [self initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: self.config = config;
        self.config = config;
    }
    //: return self;
    return self;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    //: NSString *title = self.sectionTitles[indexPath.section];
    NSString *title = self.sectionTitles[indexPath.section];
    //: NSMutableArray *arr = [self.contentDic valueForKey:title];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    //: id<NIMGroupMemberProtocol> member = arr[indexPath.row];
    id<DisplayRow> member = arr[indexPath.row];

    //: NSString *memberId = [(id<NIMGroupMemberProtocol>)member memberId];
    NSString *memberId = [(id<DisplayRow>)member littleLeagueTeam];
    //: FFFContactDataCell *cell = (FFFContactDataCell *)[tableView cellForRowAtIndexPath:indexPath];
    ContactViewCell *cell = (ContactViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    //: FFFKitInfo *info;
    CancelTeamCorner *info;
    //: info = [self.config getInfoById:memberId];
    info = [self.config frame:memberId];
    //: if([_selectecContacts containsObject:memberId]) {
    if([_selectecContacts containsObject:memberId]) {
        //: [_selectecContacts removeObject:memberId];
        [_selectecContacts removeObject:memberId];
        //: cell.accessoryBtn.selected = NO;
        cell.accessoryBtn.selected = NO;
        //: [self.selectIndicatorView.pickedView removeMemberInfo:info];
        [self.selectIndicatorView.pickedView invisibleColor:info];
    //: } else if(_selectecContacts.count >= _maxSelectCount) {
    } else if(_selectecContacts.count >= _maxSelectCount) {
        //: if ([self.config respondsToSelector:@selector(selectedOverFlowTip)]) {
        if ([self.config respondsToSelector:@selector(societyWithBeak)]) {
            //: NSString *tip = [self.config selectedOverFlowTip];
            NSString *tip = [self.config societyWithBeak];
            //: [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:tip duration:2.0 position:CSToastPositionCenter];
        }
        //: cell.accessoryBtn.selected = NO;
        cell.accessoryBtn.selected = NO;
    //: } else {
    } else {
        //: [_selectecContacts addObject:memberId];
        [_selectecContacts addObject:memberId];
        //: cell.accessoryBtn.selected = YES;
        cell.accessoryBtn.selected = YES;
        //: [self.selectIndicatorView.pickedView addMemberInfo:info];
        [self.selectIndicatorView.pickedView memberInfo:info];
    }
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
//    [self refreshDetailTitle];
    //: [self isshowSelectindicator];
    [self queryed];
}

//- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
//    return [self.sectionTitles mutableCopy];
//}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: return 80;
    return 80;
}

//: #pragma mark - ContactPickedViewDelegate
#pragma mark - ContactPickedViewDelegate

//: - (void)removeUser:(NSString *)userId {
- (void)bearDownUser:(NSString *)userId {
    //: [_selectecContacts removeObject:userId];
    [_selectecContacts removeObject:userId];
    //: [_tableView reloadData];
    [_tableView reloadData];
//    [self refreshDetailTitle];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (NSString *)detailTitle
- (NSString *)nearCenter
{
    //: NSString *detail = @"";
    NSString *detail = @"";
    //: if (_selectecContacts.count > 0)
    if (_selectecContacts.count > 0)
    {
        //: detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
        detail = [NSString stringWithFormat:@"（%zd）",_selectecContacts.count];
    }

    //: return detail;
    return detail;
}


//: - (void)backAction{
- (void)getDown{
    //: if (self.presentingViewController) {
    if (self.presentingViewController) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: } else {
    } else {
        //: [self.navigationController popViewControllerAnimated:NO];
        [self.navigationController popViewControllerAnimated:NO];
    }
}

//: - (void)setConfig:(id<FFFContactSelectConfig>)config{
- (void)setConfig:(id<QueryConfig>)config{
    //: _config = config;
    _config = config;
    //: if ([config respondsToSelector:@selector(maxSelectedNum)]) {
    if ([config respondsToSelector:@selector(checkedNum)]) {
        //: _maxSelectCount = [config maxSelectedNum];
        _maxSelectCount = [config checkedNum];
        //: _contentDic = @{}.mutableCopy;
        _contentDic = @{}.mutableCopy;
        //: _sectionTitles = @[].mutableCopy;
        _sectionTitles = @[].mutableCopy;
    }
    //: [self makeData];
    [self make];
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    UIEdgeInsets safeAreaInsets = self.view.safeAreaInsets;

//    self.selectIndicatorView.device_width = self.view.device_width;
//    self.tableView.device_height = self.view.device_height - self.selectIndicatorView.device_height - safeAreaInsets.bottom;
//    self.selectIndicatorView.device_bottom = self.view.device_height - safeAreaInsets.bottom;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 400)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, 400)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-276)/2, 150, 276, 160)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-276)/2, 150, 276, 160)];
        //: defImg.image = [UIImage imageNamed:@"no_friend"];
        defImg.image = [UIImage imageNamed:[ShoppingSilkData sharedInstance].kTextAloneString];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[ShoppingSilkData sharedInstance].kTitle_teamData];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = @"No friends，please add friends";
        emptyTipLabel.text = [ShoppingSilkData sharedInstance].kName_growWrapValue;


    }
    //: return _defView;
    return _defView;
}

//: - (FFFSetGroupNameView *)setGroupnameView{
- (ColorTableView *)setGroupnameView{
    //: if(!_setGroupnameView){
    if(!_setGroupnameView){
        //: _setGroupnameView = [[FFFSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _setGroupnameView = [[ColorTableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _setGroupnameView;
    return _setGroupnameView;
}

//: - (void)isshowSelectindicator
- (void)queryed
{
    //: if(_selectecContacts.count > 0){
    if(_selectecContacts.count > 0){
        //: self.selectIndicatorView.hidden = NO;
        self.selectIndicatorView.hidden = NO;
        //: self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64);
        self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-64);
    //: }else{
    }else{
        //: self.selectIndicatorView.hidden = YES;
        self.selectIndicatorView.hidden = YES;
        //: self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]));
        self.tableView.frame = CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum]));
    }
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSString *title = self.sectionTitles[indexPath.section];
    NSString *title = self.sectionTitles[indexPath.section];
    //: NSMutableArray *arr = [self.contentDic valueForKey:title];
    NSMutableArray *arr = [self.contentDic valueForKey:title];
    //: id<NIMGroupMemberProtocol> contactItem = arr[indexPath.row];
    id<DisplayRow> contactItem = arr[indexPath.row];

    //: FFFContactDataCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SelectContactCellID"];
    ContactViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ShoppingSilkData sharedInstance].kNameReservationData];
    //: if (cell == nil) {
    if (cell == nil) {
        //: cell = [[FFFContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SelectContactCellID"];
        cell = [[ContactViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[ShoppingSilkData sharedInstance].kNameReservationData];
    }
    //: cell.accessoryBtn.hidden = NO;
    cell.accessoryBtn.hidden = NO;
    //: cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem memberId]];
    cell.accessoryBtn.selected = [_selectecContacts containsObject:[contactItem littleLeagueTeam]];
    //: [cell refreshItem:contactItem];
    [cell temp:contactItem];
    //: return cell;
    return cell;
}

//: - (void)onCancelBtnClick:(id)sender {
- (void)streetwise:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:^() {
    [self dismissViewControllerAnimated:YES completion:^() {
        //: if (self.cancelBlock) {
        if (self.cancelBlock) {
            //: self.cancelBlock();
            self.cancelBlock();
            //: self.cancelBlock = nil;
            self.cancelBlock = nil;
        }
        //: if([_delegate respondsToSelector:@selector(didCancelledSelect)]) {
        if([_delegate respondsToSelector:@selector(cancelledOrQueryVoice)]) {
            //: [_delegate didCancelledSelect];
            [_delegate cancelledOrQueryVoice];
        }
    //: }];
    }];
}

//: @end
@end