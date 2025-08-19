
#import <Foundation/Foundation.h>

@interface CommentRiotData : NSObject

@end

@implementation CommentRiotData

+ (Byte *)CommentRiotDataToCache:(Byte *)data {
    int property = data[0];
    Byte viewFishing = data[1];
    int nock = data[2];
    for (int i = nock; i < nock + property; i++) {
        int value = data[i] - viewFishing;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[nock + property] = 0;
    return data + nock;
}

+ (NSString *)StringFromCommentRiotData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CommentRiotDataToCache:data]];
}

//: #F6F7FA
+ (NSString *)showHateData {
    /* static */ NSString *showHateData = nil;
    if (!showHateData) {
        Byte value[] = {7, 43, 10, 130, 198, 24, 253, 61, 23, 220, 78, 113, 97, 113, 98, 113, 108, 227};
        showHateData = [self StringFromCommentRiotData:value];
    }
    return showHateData;
}

//: my_log
+ (NSString *)mAllMarkName {
    /* static */ NSString *mAllMarkName = nil;
    if (!mAllMarkName) {
        Byte value[] = {6, 82, 4, 124, 191, 203, 177, 190, 193, 185, 112};
        mAllMarkName = [self StringFromCommentRiotData:value];
    }
    return mAllMarkName;
}

//: #000000
+ (NSString *)dream_userData {
    /* static */ NSString *dream_userData = nil;
    if (!dream_userData) {
        Byte value[] = {7, 57, 9, 151, 243, 184, 196, 102, 131, 92, 105, 105, 105, 105, 105, 105, 247};
        dream_userData = [self StringFromCommentRiotData:value];
    }
    return dream_userData;
}

//: #999999
+ (NSString *)show_endKey {
    /* static */ NSString *show_endKey = nil;
    if (!show_endKey) {
        Byte value[] = {7, 28, 8, 43, 130, 147, 127, 75, 63, 85, 85, 85, 85, 85, 85, 182};
        show_endKey = [self StringFromCommentRiotData:value];
    }
    return show_endKey;
}

//: group_info_activity_without
+ (NSString *)k_givingViewMsg {
    /* static */ NSString *k_givingViewMsg = nil;
    if (!k_givingViewMsg) {
        Byte value[] = {27, 57, 13, 42, 124, 110, 146, 96, 59, 66, 18, 193, 109, 160, 171, 168, 174, 169, 152, 162, 167, 159, 168, 152, 154, 156, 173, 162, 175, 162, 173, 178, 152, 176, 162, 173, 161, 168, 174, 173, 110};
        k_givingViewMsg = [self StringFromCommentRiotData:value];
    }
    return k_givingViewMsg;
}

//: ic_none_LogList
+ (NSString *)app_patienceCloudText {
    /* static */ NSString *app_patienceCloudText = nil;
    if (!app_patienceCloudText) {
        Byte value[] = {15, 66, 3, 171, 165, 161, 176, 177, 176, 167, 161, 142, 177, 169, 142, 171, 181, 182, 23};
        app_patienceCloudText = [self StringFromCommentRiotData:value];
    }
    return app_patienceCloudText;
}

//: back_arrow_bl
+ (NSString *)mDateMsg {
    /* static */ NSString *mDateMsg = nil;
    if (!mDateMsg) {
        Byte value[] = {13, 20, 12, 233, 10, 235, 31, 110, 101, 229, 181, 208, 118, 117, 119, 127, 115, 117, 134, 134, 131, 139, 115, 118, 128, 241};
        mDateMsg = [self StringFromCommentRiotData:value];
    }
    return mDateMsg;
}

//: 日志项目 %ld
+ (NSString *)mainNameShowerTitle {
    /* static */ NSString *mainNameShowerTitle = nil;
    if (!mainNameShowerTitle) {
        Byte value[] = {16, 27, 6, 172, 160, 91, 1, 178, 192, 0, 218, 178, 4, 188, 212, 2, 182, 201, 59, 64, 135, 127, 193};
        mainNameShowerTitle = [self StringFromCommentRiotData:value];
    }
    return mainNameShowerTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorPinViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "ColorPinViewController.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource>
@interface ColorPinViewController ()<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation MyLogViewController
@implementation ColorPinViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}
//: - (void)backAction{
- (void)barCan{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor min:[CommentRiotData showHateData]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice tingHeight]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[CommentRiotData mDateMsg]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(barCan) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice tingHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor min:[CommentRiotData dream_userData]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [WatchLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[CommentRiotData mAllMarkName]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice tingHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: self.data = [NSMutableArray array];
    self.data = [NSMutableArray array];
    //: [self loadData];
    [self doing];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (void)loadData {
- (void)doing {
    // 这里可以加载其他类型的数据，或者显示空状态
    //: if (self.data.count == 0) {
    if (self.data.count == 0) {
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: } else {
    } else {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    }
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return 60;
    return 60;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
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

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: static NSString *cellIdentifier = @"LogCell";
    static NSString *cellIdentifier = @"LogCell";
    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        //: cell.backgroundColor = [UIColor whiteColor];
        cell.backgroundColor = [UIColor whiteColor];
        //: cell.layer.cornerRadius = 8;
        cell.layer.cornerRadius = 8;
        //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    // 配置cell内容
    //: cell.textLabel.text = [NSString stringWithFormat:@"日志项目 %ld", (long)indexPath.section + 1];
    cell.textLabel.text = [NSString stringWithFormat:[CommentRiotData mainNameShowerTitle], (long)indexPath.section + 1];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 处理点击事件
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[CommentRiotData app_patienceCloudText]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor min:[CommentRiotData show_endKey]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [WatchLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:[CommentRiotData k_givingViewMsg]];
    }
    //: return _defView;
    return _defView;
}

//: @end
@end
