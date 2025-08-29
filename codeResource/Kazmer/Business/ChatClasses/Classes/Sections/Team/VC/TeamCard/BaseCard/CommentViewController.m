
#import <Foundation/Foundation.h>

@interface SilkData : NSObject

+ (instancetype)sharedInstance;

//: TableSwitch%ld%ld
@property (nonatomic, copy) NSString *kTitle_upperString;

//: #2C3042
@property (nonatomic, copy) NSString *kName_consumptionValue;

//: personCard_bg
@property (nonatomic, copy) NSString *kName_silkValue;

//: #F6F7FA
@property (nonatomic, copy) NSString *kTitle_swimmingNumbFlushString;

//: tableButtonCell
@property (nonatomic, copy) NSString *kTextProvedString;

//: tableButtonCell%ld%ld
@property (nonatomic, copy) NSString *kName_endData;

//: tableMemberCell
@property (nonatomic, copy) NSString *kTitle_showNumbString;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kTextHospitalNumbValue;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kName_sellText;

//: builidCommonCell%ld%ld
@property (nonatomic, copy) NSString *kText_aestheticYoursString;

@end

@implementation SilkData

+ (instancetype)sharedInstance {
    static SilkData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SilkDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SilkDataToCache:(Byte *)data {
    int gravityGreetAlone = data[0];
    Byte garbageCharity = data[1];
    int frameClerk = data[2];
    for (int i = frameClerk; i < frameClerk + gravityGreetAlone; i++) {
        int value = data[i] + garbageCharity;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[frameClerk + gravityGreetAlone] = 0;
    return data + frameClerk;
}

- (NSString *)StringFromSilkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SilkDataToCache:data]];
}

//: TableSwitch%ld%ld
- (NSString *)kTitle_upperString {
    if (!_kTitle_upperString) {
		NSArray<NSString *> *origin = @[@"17", @"2", @"11", @"221", @"85", @"59", @"44", @"10", @"51", @"251", @"92", @"82", @"95", @"96", @"106", @"99", @"81", @"117", @"103", @"114", @"97", @"102", @"35", @"106", @"98", @"35", @"106", @"98", @"7"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_upperString = [self StringFromSilkData:value];
    }
    return _kTitle_upperString;
}

//: personCard_bg
- (NSString *)kName_silkValue {
    if (!_kName_silkValue) {
		NSArray<NSString *> *origin = @[@"13", @"57", @"10", @"144", @"188", @"166", @"134", @"228", @"107", @"28", @"55", @"44", @"57", @"58", @"54", @"53", @"10", @"40", @"57", @"43", @"38", @"41", @"46", @"9"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_silkValue = [self StringFromSilkData:value];
    }
    return _kName_silkValue;
}

//: tableButtonCell%ld%ld
- (NSString *)kName_endData {
    if (!_kName_endData) {
		NSArray<NSString *> *origin = @[@"21", @"71", @"12", @"28", @"13", @"94", @"31", @"130", @"85", @"79", @"142", @"6", @"45", @"26", @"27", @"37", @"30", @"251", @"46", @"45", @"45", @"40", @"39", @"252", @"30", @"37", @"37", @"222", @"37", @"29", @"222", @"37", @"29", @"225"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_endData = [self StringFromSilkData:value];
    }
    return _kName_endData;
}

//: builidCommonCell%ld%ld
- (NSString *)kText_aestheticYoursString {
    if (!_kText_aestheticYoursString) {
		NSArray<NSString *> *origin = @[@"22", @"97", @"6", @"43", @"131", @"151", @"1", @"20", @"8", @"11", @"8", @"3", @"226", @"14", @"12", @"12", @"14", @"13", @"226", @"4", @"11", @"11", @"196", @"11", @"3", @"196", @"11", @"3", @"132"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_aestheticYoursString = [self StringFromSilkData:value];
    }
    return _kText_aestheticYoursString;
}

//: #F6F7FA
- (NSString *)kTitle_swimmingNumbFlushString {
    if (!_kTitle_swimmingNumbFlushString) {
		NSArray<NSString *> *origin = @[@"7", @"92", @"6", @"206", @"157", @"163", @"199", @"234", @"218", @"234", @"219", @"234", @"229", @"135"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_swimmingNumbFlushString = [self StringFromSilkData:value];
    }
    return _kTitle_swimmingNumbFlushString;
}

//: tableButtonCell
- (NSString *)kTextProvedString {
    if (!_kTextProvedString) {
		NSArray<NSString *> *origin = @[@"15", @"27", @"10", @"206", @"196", @"173", @"139", @"101", @"222", @"135", @"89", @"70", @"71", @"81", @"74", @"39", @"90", @"89", @"89", @"84", @"83", @"40", @"74", @"81", @"81", @"53"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextProvedString = [self StringFromSilkData:value];
    }
    return _kTextProvedString;
}

//: tableMemberCell
- (NSString *)kTitle_showNumbString {
    if (!_kTitle_showNumbString) {
		NSArray<NSString *> *origin = @[@"15", @"67", @"9", @"129", @"194", @"149", @"39", @"91", @"92", @"49", @"30", @"31", @"41", @"34", @"10", @"34", @"42", @"31", @"34", @"47", @"0", @"34", @"41", @"41", @"90"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_showNumbString = [self StringFromSilkData:value];
    }
    return _kTitle_showNumbString;
}

//: back_arrow_bl
- (NSString *)kName_sellText {
    if (!_kName_sellText) {
		NSArray<NSString *> *origin = @[@"13", @"6", @"4", @"47", @"92", @"91", @"93", @"101", @"89", @"91", @"108", @"108", @"105", @"113", @"89", @"92", @"102", @"25"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_sellText = [self StringFromSilkData:value];
    }
    return _kName_sellText;
}

//: #2C3042
- (NSString *)kName_consumptionValue {
    if (!_kName_consumptionValue) {
		NSArray<NSString *> *origin = @[@"7", @"16", @"11", @"25", @"28", @"214", @"165", @"139", @"141", @"43", @"1", @"19", @"34", @"51", @"35", @"32", @"36", @"34", @"249"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_consumptionValue = [self StringFromSilkData:value];
    }
    return _kName_consumptionValue;
}

//: contact_tag_fragment_cancel
- (NSString *)kTextHospitalNumbValue {
    if (!_kTextHospitalNumbValue) {
		NSArray<NSString *> *origin = @[@"27", @"50", @"5", @"9", @"137", @"49", @"61", @"60", @"66", @"47", @"49", @"66", @"45", @"66", @"47", @"53", @"45", @"52", @"64", @"47", @"53", @"59", @"51", @"60", @"66", @"45", @"49", @"47", @"60", @"49", @"51", @"58", @"226"];
		NSData *data = [SilkData SilkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextHospitalNumbValue = [self StringFromSilkData:value];
    }
    return _kTextHospitalNumbValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentViewController.m
// Mortification
//
//  Created by Netease on 2019/6/11.
//  Copyright © 2019 NetEase. All rights reserved.
//  

// __M_A_C_R_O__
//: #import "FFFTeamCardViewController.h"
#import "CommentViewController.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "FFFKitColorButtonCell.h"
#import "KitView.h"
//: #import "FFFTeamMemberListCell.h"
#import "TargetViewCell.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFTeamCardSelectedViewController.h"
#import "YearViewController.h"
//: #import "FFFGroupEditTableViewCell.h"
#import "TitleSizeViewCell.h"

//: @interface FFFTeamCardViewController () <UITableViewDataSource,
@interface CommentViewController () <UITableViewDataSource,
                                         //: UITableViewDelegate,
                                         UITableViewDelegate,
                                         //: UIImagePickerControllerDelegate,
                                         UIImagePickerControllerDelegate,
                                         //: UINavigationControllerDelegate>
                                         UINavigationControllerDelegate>
//: @property (nonatomic, copy) NIMTeamCardPickerHandle pickerSelectedBlock;
@property (nonatomic, copy) NIMTeamCardPickerHandle pickerSelectedBlock;
//: @end
@end

//: @implementation FFFTeamCardViewController
@implementation CommentViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[SilkData sharedInstance].kTitle_swimmingNumbFlushString];
    //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
    UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
    //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
    Bg.image = [UIImage imageNamed:[SilkData sharedInstance].kName_silkValue];
    //: [self.view addSubview:Bg];
    [self.view addSubview:Bg];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight], 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice comeDownSuperphylum], 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[SilkData sharedInstance].kName_sellText] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(getDown) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
}
//: - (void)backAction{
- (void)getDown{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - Public
#pragma mark - Public
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type
- (void)viewEnable:(UIImagePickerControllerSourceType)type
             //: completion:(NIMTeamCardPickerHandle)completion {
             item:(NIMTeamCardPickerHandle)completion {
    //: _pickerSelectedBlock = [completion copy];
    _pickerSelectedBlock = [completion copy];
    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES;
    picker.allowsEditing = YES;
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}

//: - (UIAlertController *)makeAlertSheetWithTitle:(NSString *)title
- (UIAlertController *)language:(NSString *)title
                                       //: actions:(NSArray <UIAlertAction *>*)actions {
                                       be:(NSArray <UIAlertAction *>*)actions {

    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   //: message:nil
                                                                   message:nil
                                                            //: preferredStyle:UIAlertControllerStyleActionSheet];
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    //: [actions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [actions enumerateObjectsUsingBlock:^(UIAlertAction * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: [alert addAction:obj];
        [alert addAction:obj];
    //: }];
    }];

    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self up]];
    //: return alert;
    return alert;
}

//: - (UIAlertAction *)makeCancelAction {
- (UIAlertAction *)up {
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:[MakeManager cell:[SilkData sharedInstance].kTextHospitalNumbValue]
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: return cancel;
    return cancel;
}

//: - (void)showAlert:(UIAlertController *)alert {
- (void)inputClear:(UIAlertController *)alert {
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:alert animated:YES completion:nil];
    [self presentViewController:alert animated:YES completion:nil];
}

//: - (void)showToastMsg:(NSString *)msg {
- (void)dot:(NSString *)msg {
    //: if (msg) {
    if (msg) {
        //: [self.view makeToast:msg
        [self.view makeToast:msg
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (id<USERCardBodyData>)bodyDataAtIndexPath:(NSIndexPath*)indexpath{
- (id<TranslateName>)circleTitleSelect:(NSIndexPath*)indexpath{
    //: NSArray *sectionData = self.datas[indexpath.section];
    NSArray *sectionData = self.datas[indexpath.section];
    //: return sectionData[indexpath.row];
    return sectionData[indexpath.row];
}
//: #pragma mark - UITableViewDelegate, UITableViewDataSource
#pragma mark - UITableViewDelegate, UITableViewDataSource
//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{

    // 圆角弧度半径
    //: CGFloat cornerRadius = 8.f;
    CGFloat cornerRadius = 8.f;
    // 设置cell的背景色为透明，如果不设置这个的话，则原来的背景色不会被覆盖
    //: cell.backgroundColor = UIColor.clearColor;
    cell.backgroundColor = UIColor.clearColor;

    // 创建一个shapeLayer
    //: CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    //: CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init]; 
    CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init]; //显示选中
    // 创建一个可变的图像Path句柄，该路径用于保存绘图信息
    //: CGMutablePathRef pathRef = CGPathCreateMutable();
    CGMutablePathRef pathRef = CGPathCreateMutable();
    // 获取cell的size
    // 第一个参数,是整个 cell 的 bounds, 第二个参数是距左右两端的距离,第三个参数是距上下两端的距离
    //: CGRect bounds = CGRectInset(cell.bounds, 0, 0);
    CGRect bounds = CGRectInset(cell.bounds, 0, 0);

    // CGRectGetMinY：返回对象顶点坐标
    // CGRectGetMaxY：返回对象底点坐标
    // CGRectGetMinX：返回对象左边缘坐标
    // CGRectGetMaxX：返回对象右边缘坐标
    // CGRectGetMidX: 返回对象中心点的X坐标
    // CGRectGetMidY: 返回对象中心点的Y坐标

    // 这里要判断分组列表中的第一行，每组section的第一行，每组section的中间行
    //: NSInteger row = indexPath.row;
    NSInteger row = indexPath.row;
    //最后一行
    //: NSInteger lastRow =[tableView numberOfRowsInSection:indexPath.section] - 1;
    NSInteger lastRow =[tableView numberOfRowsInSection:indexPath.section] - 1;

    //如果即使第一行也是最后一行,只有一个cell 四个圆角
    //: if (row == 0 && row == lastRow) {
    if (row == 0 && row == lastRow) {

            //: CGPoint p = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds) - cornerRadius);
            CGPoint p = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds) - cornerRadius);
            //: CGPoint p1 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMinY(bounds));
            CGPoint p1 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMinY(bounds));
            //用最小 minX  + cornerRadius
            //: CGPoint p2 = CGPointMake(CGRectGetMinX(bounds) + cornerRadius, CGRectGetMinY(bounds));
            CGPoint p2 = CGPointMake(CGRectGetMinX(bounds) + cornerRadius, CGRectGetMinY(bounds));
            //: CGPoint p3 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
            CGPoint p3 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
            //: CGPoint p4 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds) +cornerRadius);
            CGPoint p4 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMinY(bounds) +cornerRadius);
            //: CGPoint p5 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
            CGPoint p5 = CGPointMake(CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
            //: CGPoint p6 = CGPointMake(CGRectGetMaxX(bounds)- cornerRadius, CGRectGetMaxY(bounds));
            CGPoint p6 = CGPointMake(CGRectGetMaxX(bounds)- cornerRadius, CGRectGetMaxY(bounds));
            //: CGPoint p7 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
            CGPoint p7 = CGPointMake(CGRectGetMinX(bounds), CGRectGetMaxY(bounds));

            //: CGPathMoveToPoint(pathRef, nil, p.x, p.y);
            CGPathMoveToPoint(pathRef, nil, p.x, p.y);
            //左上角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p1.x, p1.y, p2.x, p2.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p1.x, p1.y, p2.x, p2.y, cornerRadius);
            //右上角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p3.x, p3.y, p4.x, p4.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p3.x, p3.y, p4.x, p4.y, cornerRadius);
            //右下角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p5.x, p5.y, p6.x, p6.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p5.x, p5.y, p6.x, p6.y, cornerRadius);
            // 左下角圆角
            //: CGPathAddArcToPoint(pathRef, nil, p7.x, p7.y, p.x, p.y, cornerRadius);
            CGPathAddArcToPoint(pathRef, nil, p7.x, p7.y, p.x, p.y, cornerRadius);

        //: cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cell.layer.shadowOffset = CGSizeMake(0,4);
        cell.layer.shadowOffset = CGSizeMake(0,4);
        //: cell.layer.shadowOpacity = 1;
        cell.layer.shadowOpacity = 1;
        //: cell.layer.shadowRadius = 16;
        cell.layer.shadowRadius = 16;
    }
    //第一行
    //: else if(row == 0)
    else if(row == 0)
    {
        // 初始起点为cell的左下角坐标
        //: CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
        // 起始坐标为左下角，设为p，（CGRectGetMinX(bounds), CGRectGetMinY(bounds)）为左上角的点，设为p1(x1,y1)，(CGRectGetMidX(bounds), CGRectGetMinY(bounds))为顶部中点的点，设为p2(x2,y2)。然后连接p1和p2为一条直线l1，连接初始点p到p1成一条直线l，则在两条直线相交处绘制弧度为r的圆角。
        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), cornerRadius);

        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        // 终点坐标为右下角坐标点，把绘图信息都放到路径中去,根据这些路径就构成了一块区域了
        //: CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
        CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));

    }
    //最后一行
    //: else if (row == lastRow)
    else if (row == lastRow)
    {
        // 初始起点为cell的左上角坐标
        //: CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), cornerRadius);
        //: CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
        // 添加一条直线，终点坐标为右下角坐标点并放到路径中去
        //: CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
        CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));

//        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        cell.layer.shadowOffset = CGSizeMake(0,3);
//        cell.layer.shadowOpacity = 1;
//        cell.layer.shadowRadius = 0;

        //: cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cell.layer.shadowOffset = CGSizeMake(0,4);
        cell.layer.shadowOffset = CGSizeMake(0,4);
        //: cell.layer.shadowOpacity = 1;
        cell.layer.shadowOpacity = 1;
        //: cell.layer.shadowRadius = 16;
        cell.layer.shadowRadius = 16;



    //: }else
    }else
    {
        //添加cell的rectangle信息到path中（不包括圆角）
        //: CGPathAddRect(pathRef, nil, bounds);
        CGPathAddRect(pathRef, nil, bounds);
    }


    // 把已经绘制好的可变图像路径赋值给图层，然后图层根据这图像path进行图像渲染render
    //: layer.path = pathRef;
    layer.path = pathRef;
    //: backgroundLayer.path = pathRef;
    backgroundLayer.path = pathRef;
    // 注意：但凡通过Quartz2D中带有creat/copy/retain方法创建出来的值都必须要释放
    //: CFRelease(pathRef);
    CFRelease(pathRef);
    // 按照shape layer的path填充颜色，类似于渲染render
    // layer.fillColor = [UIColor colorWithWhite:1.f alpha:0.8f].CGColor;
    //: layer.fillColor = [UIColor whiteColor].CGColor;
    layer.fillColor = [UIColor whiteColor].CGColor;
//    layer.strokeColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;

    // view大小与cell一致
    //: UIView *roundView = [[UIView alloc] initWithFrame:bounds];
    UIView *roundView = [[UIView alloc] initWithFrame:bounds];
    // 添加自定义圆角后的图层到roundView中
    //: [roundView.layer insertSublayer:layer atIndex:0];
    [roundView.layer insertSublayer:layer atIndex:0];
    //: roundView.backgroundColor = UIColor.clearColor;
    roundView.backgroundColor = UIColor.clearColor;
    // cell的背景view
    //: cell.backgroundView = roundView;
    cell.backgroundView = roundView;


}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: id<USERCardBodyData> bodyData = [self bodyDataAtIndexPath:indexPath];
    id<TranslateName> bodyData = [self circleTitleSelect:indexPath];
    //: return bodyData.rowHeight;
    return bodyData.doing;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.datas.count;
    return self.datas.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: NSArray *sectionData = self.datas[section];
    NSArray *sectionData = self.datas[section];
    //: return sectionData.count;
    return sectionData.count;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: id<USERCardBodyData> bodyData = [self bodyDataAtIndexPath:indexPath];
    id<TranslateName> bodyData = [self circleTitleSelect:indexPath];
    //: UITableViewCell * cell;
    UITableViewCell * cell;
    //: NIMKitTeamCardRowItemType type = bodyData.type;
    NIMKitTeamCardRowItemType type = bodyData.title;
    //: switch (type) {
    switch (type) {
        //: case TeamCardRowItemTypeCommon:
        case TeamCardRowItemTypeCommon:
            //: cell = [self builidCommonCell:bodyData indexPath:indexPath];
            cell = [self afterSuccessPath:bodyData communication:indexPath];
            //: break;
            break;
        //: case TeamCardRowItemTypeRedButton:
        case TeamCardRowItemTypeRedButton:
            //: cell = [self builidRedButtonCell:bodyData indexPath:indexPath];
            cell = [self systemPressed:bodyData size:indexPath];
            //: break;
            break;
        //: case TeamCardRowItemTypeBlueButton:
        case TeamCardRowItemTypeBlueButton:
            //: cell = [self builidBlueButtonCell:bodyData ];
            cell = [self camera:bodyData ];
            //: break;
            break;
        //: case TeamCardRowItemTypeTeamMember:
        case TeamCardRowItemTypeTeamMember:
            //: cell = [self builidTeamMemberCell:bodyData];
            cell = [self compartmentLengthNameerJoinerCell:bodyData];
            //: break;
            break;
        //: case TeamCardRowItemTypeSwitch:
        case TeamCardRowItemTypeSwitch:
            //: cell = [self buildTeamSwitchCell:bodyData indexPath:indexPath];
            cell = [self item:bodyData direction:indexPath];
            //: break;
            break;
        //: case TeamCardRowItemTypeSelected:
        case TeamCardRowItemTypeSelected:
            //: cell = [self builidCommonCell:bodyData indexPath:indexPath];
            cell = [self afterSuccessPath:bodyData communication:indexPath];
        //: default:
        default:
            //: break;
            break;
    }
    //: return cell;
    return cell;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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
    //: return 16.f;
    return 16.f;
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


//: - (UITableViewCell*)builidCommonCell:(id<USERCardBodyData>) bodyData indexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)afterSuccessPath:(id<TranslateName>) bodyData communication:(NSIndexPath *)indexPath
{
    //: NSString *identifier = [NSString stringWithFormat:@"builidCommonCell%ld%ld",(long)indexPath.section,(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:[SilkData sharedInstance].kText_aestheticYoursString,(long)indexPath.section,(long)indexPath.row];
    //: FFFGroupEditTableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    TitleSizeViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFGroupEditTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TitleSizeViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: CGFloat left = 60.f;
        CGFloat left = 60.f;
        //: CGFloat height = 1.f;
        CGFloat height = 1.f;
        //: UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.device_height-height, cell.device_width-90, height)];
        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.device_height-height, cell.device_width-90, height)];
        //: sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        //: [cell addSubview:sep];
        [cell addSubview:sep];
        //: [sep setTag:10001];
        [sep setTag:10001];
        //: sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    }

    //: UIView *sep = [cell viewWithTag:10001];
    UIView *sep = [cell viewWithTag:10001];
    //: sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);
    sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);

    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.titleLabel.text = bodyData.title;
    cell.titleLabel.text = bodyData.sumeract;
    //: cell.iconImageView.image = bodyData.img;
    cell.iconImageView.image = bodyData.name;
//    cell.contentLabel.text = bodyData.subTitle;
//    if ([bodyData respondsToSelector:@selector(subTitle)]) {
//        cell.contentLabel.text = bodyData.subTitle ?: LangKey(@"未设置");
//    }

    //: return cell;
    return cell;

//    UITableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:TableCellReuseId];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:TableCellReuseId];
//        CGFloat left = 65.f;
//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.device_height-1, cell.device_width-80, 1.f)];
//        sep.backgroundColor = NEEKIT_UIColorFromRGB(0xebebeb);
//        [sep setTag:TableSepTag];
//        [cell addSubview:sep];
//        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
//    }
//
//    UIView *sep = [cell viewWithTag:TableSepTag];
//    sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);
//
//    cell.textLabel.text = bodyData.title;
//    cell.textLabel.font = [UIFont systemFontOfSize:14];
//    cell.textLabel.textColor = [UIColor blackColor];
//
//    cell.imageView.image = bodyData.img;
//
//    if ([bodyData respondsToSelector:@selector(subTitle)]) {
//        cell.detailTextLabel.text = bodyData.subTitle;
//        cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
//        cell.detailTextLabel.textColor = TextColor_3;
//        cell.detailTextLabel.frame = CGRectMake(65, cell.textLabel.bottom, cell.device_width-85, 15);
//    }
//
//
//    if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }else{
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    }
//
//    if ([bodyData respondsToSelector:@selector(disableUserInteraction)] && bodyData.disableUserInteraction) {
//        cell.userInteractionEnabled = NO;
//    } else {
//        cell.userInteractionEnabled = YES;
//    }
//
//    return cell;

}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: id<USERCardBodyData> bodyData = [self bodyDataAtIndexPath:indexPath];
    id<TranslateName> bodyData = [self circleTitleSelect:indexPath];
    //: if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
    if ([bodyData respondsToSelector:@selector(rangeDisabled)] && bodyData.rangeDisabled) {
        //: return;
        return;
    }
    //: if (bodyData.type == TeamCardRowItemTypeSelected) {
    if (bodyData.title == TeamCardRowItemTypeSelected) {
        //: FFFTeamCardSelectedViewController *vc = [FFFTeamCardSelectedViewController instanceWithTitle:bodyData.title
        YearViewController *vc = [YearViewController nameInstance:bodyData.sumeract
                                                                               //: items:bodyData.optionItems
                                                                               item:bodyData.maturityDate
                                                                              //: result:^(id<FFFKitSelectCardData> _Nonnull item) {
                                                                              must:^(id<ChangeLength> _Nonnull item) {
              //: if (bodyData.selectedBlock) {
              if (bodyData.tab) {
                  //: bodyData.selectedBlock(item);
                  bodyData.tab(item);
              }
          //: }];
          }];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: } else {
    } else {
        //: if ([bodyData respondsToSelector:@selector(action)]) {
        if ([bodyData respondsToSelector:@selector(showStyle)]) {
            //: if (bodyData.action) {
            if (bodyData.showStyle) {
                //: do {
                do {
                //: [self performSelector:bodyData.action];
                [self performSelector:bodyData.showStyle];
                //: } while (0);
                } while (0);
            }
        }
    }
}

//: - (UITableViewCell*)builidRedButtonCell:(id<USERCardBodyData>) bodyData indexPath:(NSIndexPath *)indexPath{
- (UITableViewCell*)systemPressed:(id<TranslateName>) bodyData size:(NSIndexPath *)indexPath{
//    tableButtonCell
    //: NSString *identifier = [NSString stringWithFormat:@"tableButtonCell%ld%ld",(long)indexPath.section,(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:[SilkData sharedInstance].kName_endData,(long)indexPath.section,(long)indexPath.row];
    //: FFFKitColorButtonCell * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    KitView * cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFKitColorButtonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[KitView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.button.style = FFFKitColorButtonCellStyleRed;
    cell.button.style = FFFKitColorButtonCellStyleRed;
    //: [cell.button setTitle:bodyData.title forState:UIControlStateNormal];
    [cell.button setTitle:bodyData.sumeract forState:UIControlStateNormal];
    //: return cell;
    return cell;
}

//: - (UITableViewCell*)builidBlueButtonCell:(id<USERCardBodyData>) bodyData{
- (UITableViewCell*)camera:(id<TranslateName>) bodyData{
    //: FFFKitColorButtonCell * cell = [self.tableView dequeueReusableCellWithIdentifier:@"tableButtonCell"];
    KitView * cell = [self.tableView dequeueReusableCellWithIdentifier:[SilkData sharedInstance].kTextProvedString];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFKitColorButtonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableButtonCell"];
        cell = [[KitView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[SilkData sharedInstance].kTextProvedString];
    }
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.button.style = FFFKitColorButtonCellStyleBlue;
    cell.button.style = FFFKitColorButtonCellStyleBlue;
    //: [cell.button setTitle:bodyData.title forState:UIControlStateNormal];
    [cell.button setTitle:bodyData.sumeract forState:UIControlStateNormal];
    //: return cell;
    return cell;
}

//: - (UITableViewCell*)builidTeamMemberCell:(id<USERCardBodyData>) bodyData{
- (UITableViewCell*)compartmentLengthNameerJoinerCell:(id<TranslateName>) bodyData{
    //: FFFTeamMemberListCell * cell = [self.tableView dequeueReusableCellWithIdentifier:@"tableMemberCell"];
    TargetViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:[SilkData sharedInstance].kTitle_showNumbString];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamMemberListCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"tableMemberCell"];
        cell = [[TargetViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:[SilkData sharedInstance].kTitle_showNumbString];
    }
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.textLabel.text = [NSString stringWithFormat:@"%@(%@)",bodyData.title,bodyData.subTitle];
    cell.textLabel.text = [NSString stringWithFormat:@"%@(%@)",bodyData.sumeract,bodyData.media];
    //: cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    //: cell.textLabel.textColor = [UIColor blackColor];
    cell.textLabel.textColor = [UIColor blackColor];

//    cell.imageView.image = bodyData.img;

    //: if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
    if ([bodyData respondsToSelector:@selector(rangeDisabled)] && bodyData.rangeDisabled) {
        //: cell.accessoryType = UITableViewCellAccessoryNone;
        cell.accessoryType = UITableViewCellAccessoryNone;
    //: }else{
    }else{
        //: cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    //: [self didBuildTeamMemberCell:cell];
    [self add:cell];

    //: return cell;
    return cell;
//    UITableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:TableMemberCellReuseId];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:TableMemberCellReuseId];
//    }
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"%@(%@)",bodyData.title,bodyData.subTitle];
//    cell.textLabel.font = [UIFont systemFontOfSize:14];
//    cell.textLabel.textColor = [UIColor blackColor];
//    
//    cell.imageView.image = bodyData.img;
//    
//    if ([bodyData respondsToSelector:@selector(actionDisabled)] && bodyData.actionDisabled) {
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }else{
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    }
//    
//    return cell;
}

//: - (UITableViewCell *)buildTeamSwitchCell:(id<USERCardBodyData>)bodyData indexPath:(NSIndexPath *)indexPath
- (UITableViewCell *)item:(id<TranslateName>)bodyData direction:(NSIndexPath *)indexPath
{
    //: NSString *identifier = [NSString stringWithFormat:@"TableSwitch%ld%ld",(long)indexPath.section,(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:[SilkData sharedInstance].kTitle_upperString,(long)indexPath.section,(long)indexPath.row];
    //: FFFTeamSwitchTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    MarginOfSafetyView *cell = [self.tableView dequeueReusableCellWithIdentifier:identifier];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamSwitchTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[MarginOfSafetyView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: CGFloat left = 60.f;
        CGFloat left = 60.f;
        //: CGFloat height = 1.f;
        CGFloat height = 1.f;
        //: UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.device_height-height, cell.device_width-90, height)];
        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(left, cell.device_height-height, cell.device_width-90, height)];
        //: sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        sep.backgroundColor = [UIColor colorWithRed:((float)((0xebebeb & 0xFF0000) >> 16))/255.0 green:((float)((0xebebeb & 0x00FF00) >> 8))/255.0 blue:((float)(0xebebeb & 0x0000FF))/255.0 alpha:1.0];
        //: [cell addSubview:sep];
        [cell addSubview:sep];
        //: [sep setTag:10001];
        [sep setTag:10001];
        //: sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    }

    //: UIView *sep = [cell viewWithTag:10001];
    UIView *sep = [cell viewWithTag:10001];
    //: sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);
    sep.hidden = (indexPath.row + 1 == [self.tableView numberOfRowsInSection:indexPath.section]);

    //: cell.textLabel.text = bodyData.title;
    cell.textLabel.text = bodyData.sumeract;
    //: cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    //: cell.textLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
    cell.textLabel.textColor = [UIColor cell:[SilkData sharedInstance].kName_consumptionValue];
    //: cell.imageView.image = bodyData.img;
    cell.imageView.image = bodyData.name;

    //: cell.switcher.on = bodyData.switchOn;
    cell.switcher.on = bodyData.cut;
    //: cell.identify = bodyData.identify;
    cell.identify = bodyData.noteIdentify;

    //: [self didBuildTeamSwitchCell:cell];
    [self bubble:cell];

    //: return cell;
    return cell;
}

//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [picker dismissViewControllerAnimated:YES completion:^{
    [picker dismissViewControllerAnimated:YES completion:^{
        //: if (weakSelf.pickerSelectedBlock) {
        if (weakSelf.pickerSelectedBlock) {
            //: weakSelf.pickerSelectedBlock(image);
            weakSelf.pickerSelectedBlock(image);
        }
        //: weakSelf.pickerSelectedBlock = nil;
        weakSelf.pickerSelectedBlock = nil;
    //: }];
    }];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark - Setter
#pragma mark - Setter
//: - (void)setDatas:(NSArray<NSArray<FFFTeamCardRowItem *> *> *)datas {
- (void)setDatas:(NSArray<NSArray<ManPath *> *> *)datas {
    //: _datas = datas;
    _datas = datas;
    //: [_tableView reloadData];
    [_tableView reloadData];
}

//: #pragma mark - 旋转处理 (iOS7)
#pragma mark - 旋转处理 (iOS7)
//: - (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    //: NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    //: [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationNone];
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> _Nonnull context) {
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> _Nonnull context) {
        //: NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        //: [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        [self.tableView reloadRowsAtIndexPaths:@[reloadIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    //: } completion:nil];
    } completion:nil];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])) style:UITableViewStyleGrouped];
//        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//        _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: #pragma mark - virtual function
#pragma mark - virtual function
//: - (UIView *)didGetHeaderView { return [UIView new]; }
- (UIView *)range { return [UIView new]; }

//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell {}
- (void)add:(TargetViewCell *)cell {}

//: - (void)didBuildTeamSwitchCell:(FFFTeamSwitchTableViewCell *)cell {}
- (void)bubble:(MarginOfSafetyView *)cell {}

//: - (void)reloadTableViewData {};
- (void)showNames {};

//: - (void)reloadTableHeaderData {};
- (void)smartView {};

//: - (void)reloadOtherData {};
- (void)someOtherOf {};

//: @end
@end