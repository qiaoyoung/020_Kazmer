
#import <Foundation/Foundation.h>

@interface FrameDenseData : NSObject

@end

@implementation FrameDenseData

//: #000000
+ (NSString *)kNameChickText {
    /* static */ NSString *kNameChickText = nil;
    if (!kNameChickText) {
		NSString *origin = @"070BD0C216D5E55576388D30303030303023D1";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameChickText = [self StringFromFrameDenseData:value];
    }
    return kNameChickText;
}

//: #F6F7FA
+ (NSString *)kContent_commitData {
    /* static */ NSString *kContent_commitData = nil;
    if (!kContent_commitData) {
		NSString *origin = @"07024146374636462341";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_commitData = [self StringFromFrameDenseData:value];
    }
    return kContent_commitData;
}

//: 日志项目 %ld
+ (NSString *)kContentDeviceStandardValue {
    /* static */ NSString *kContentDeviceStandardValue = nil;
    if (!kContentDeviceStandardValue) {
		NSString *origin = @"100374646C2520AE9BE7B9A1E997BFE5A597E693";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentDeviceStandardValue = [self StringFromFrameDenseData:value];
    }
    return kContentDeviceStandardValue;
}  

//: back_arrow_bl
+ (NSString *)kTextStableContent {
    /* static */ NSString *kTextStableContent = nil;
    if (!kTextStableContent) {
		NSString *origin = @"0D0B8BF43BBB4609BAE9F76C625F776F7272615F6B63616268";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextStableContent = [self StringFromFrameDenseData:value];
    }
    return kTextStableContent;
}

+ (Byte *)FrameDenseDataToCache:(Byte *)data {
    int frameInevitably = data[0];
    int wheat = data[1];
    for (int i = 0; i < frameInevitably / 2; i++) {
        int begin = wheat + i;
        int end = wheat + frameInevitably - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[wheat + frameInevitably] = 0;
    return data + wheat;
}

+ (NSData *)FrameDenseDataToData:(NSString *)value {
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

//: #999999
+ (NSString *)kName_withText {
    /* static */ NSString *kName_withText = nil;
    if (!kName_withText) {
		NSString *origin = @"0706FDD1449C3939393939392325";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_withText = [self StringFromFrameDenseData:value];
    }
    return kName_withText;
}

+ (NSString *)StringFromFrameDenseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FrameDenseDataToCache:data]];
}

//: ic_none_LogList
+ (NSString *)kTitleAtData {
    /* static */ NSString *kTitleAtData = nil;
    if (!kTitleAtData) {
		NSString *origin = @"0F0C3BF9A31784C0EC9957C57473694C676F4C5F656E6F6E5F636911";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleAtData = [self StringFromFrameDenseData:value];
    }
    return kTitleAtData;
}

//: my_log
+ (NSString *)kNameViewButData {
    /* static */ NSString *kNameViewButData = nil;
    if (!kNameViewButData) {
		NSString *origin = @"0606CB27C0BE676F6C5F796D27";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameViewButData = [self StringFromFrameDenseData:value];
    }
    return kNameViewButData;
}

//: group_info_activity_without
+ (NSString *)kTitleTapThoughText {
    /* static */ NSString *kTitleTapThoughText = nil;
    if (!kTitleTapThoughText) {
		NSString *origin = @"1B0BAD57ADD3E969577B6374756F687469775F79746976697463615F6F666E695F70756F7267FB";
		NSData *data = [FrameDenseData FrameDenseDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleTapThoughText = [self StringFromFrameDenseData:value];
    }
    return kTitleTapThoughText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeggarMyNeighbourPolicyAddViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "BeggarMyNeighbourPolicyAddViewController.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource>
@interface BeggarMyNeighbourPolicyAddViewController ()<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;

//: @end
@end

//: @implementation MyLogViewController
@implementation BeggarMyNeighbourPolicyAddViewController

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[FrameDenseData kContent_commitData]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[FrameDenseData kTextStableContent]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor cell:[FrameDenseData kNameChickText]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [MakeManager cell:[FrameDenseData kNameViewButData]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-15) style:UITableViewStyleGrouped];
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
    [self info];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}
//: - (void)loadData {
- (void)info {
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
    cell.textLabel.text = [NSString stringWithFormat:[FrameDenseData kContentDeviceStandardValue], (long)indexPath.section + 1];

    //: return cell;
    return cell;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return 60;
    return 60;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
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
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[FrameDenseData kTitleAtData]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[FrameDenseData kName_withText]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MakeManager cell:[FrameDenseData kTitleTapThoughText]];
    }
    //: return _defView;
    return _defView;
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

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: @end
@end