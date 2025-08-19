
#import <Foundation/Foundation.h>

typedef struct {
    Byte communication;
    Byte *distinctiveMedia;
    unsigned int cast;
} StructDeleteData;

@interface DeleteData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DeleteData

+ (instancetype)sharedInstance {
    static DeleteData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DeleteDataToByte:(StructDeleteData *)data {
    for (int i = 0; i < data->cast; i++) {
        data->distinctiveMedia[i] ^= data->communication;
    }
    data->distinctiveMedia[data->cast] = 0;
    return data->distinctiveMedia;
}

- (NSString *)StringFromDeleteData:(StructDeleteData *)data {
    return [NSString stringWithUTF8String:(char *)[self DeleteDataToByte:data]];
}

//: onTouchImportLocalMessages:
- (NSString *)dream_premisePath {
    /* static */ NSString *dream_premisePath = nil;
    if (!dream_premisePath) {
        StructDeleteData value = (StructDeleteData){211, (Byte []){188, 189, 135, 188, 166, 176, 187, 154, 190, 163, 188, 161, 167, 159, 188, 176, 178, 191, 158, 182, 160, 160, 178, 180, 182, 160, 233, 154}, 27};
        dream_premisePath = [self StringFromDeleteData:&value];
    }
    return dream_premisePath;
}

//: row
- (NSString *)app_dominateTitle {
    /* static */ NSString *app_dominateTitle = nil;
    if (!app_dominateTitle) {
        StructDeleteData value = (StructDeleteData){64, (Byte []){50, 47, 55, 61}, 3};
        app_dominateTitle = [self StringFromDeleteData:&value];
    }
    return app_dominateTitle;
}

//: 发生了错误
- (NSString *)mainDiskMessage {
    /* static */ NSString *mainDiskMessage = nil;
    if (!mainDiskMessage) {
        StructDeleteData value = (StructDeleteData){152, (Byte []){125, 23, 9, 127, 12, 7, 124, 34, 30, 113, 12, 1, 112, 55, 55, 64}, 15};
        mainDiskMessage = [self StringFromDeleteData:&value];
    }
    return mainDiskMessage;
}

//: action
- (NSString *)mainEmployIdent {
    /* static */ NSString *mainEmployIdent = nil;
    if (!mainEmployIdent) {
        StructDeleteData value = (StructDeleteData){217, (Byte []){184, 186, 173, 176, 182, 183, 34}, 6};
        mainEmployIdent = [self StringFromDeleteData:&value];
    }
    return mainEmployIdent;
}

//: headerTitle
- (NSString *)kCabinUserPath {
    /* static */ NSString *kCabinUserPath = nil;
    if (!kCabinUserPath) {
        StructDeleteData value = (StructDeleteData){190, (Byte []){214, 219, 223, 218, 219, 204, 234, 215, 202, 210, 219, 158}, 11};
        kCabinUserPath = [self StringFromDeleteData:&value];
    }
    return kCabinUserPath;
}

//: 本地消息迁移
- (NSString *)dream_patienceHoppingId {
    /* static */ NSString *dream_patienceHoppingId = nil;
    if (!dream_patienceHoppingId) {
        StructDeleteData value = (StructDeleteData){111, (Byte []){137, 243, 195, 138, 243, 223, 137, 217, 231, 137, 238, 192, 135, 208, 238, 136, 200, 212, 26}, 18};
        dream_patienceHoppingId = [self StringFromDeleteData:&value];
    }
    return dream_patienceHoppingId;
}

//: 本地消息将存至云端，会耗费较长时间
- (NSString *)notiBarrePath {
    /* static */ NSString *notiBarrePath = nil;
    if (!notiBarrePath) {
        StructDeleteData value = (StructDeleteData){88, (Byte []){190, 196, 244, 189, 196, 232, 190, 238, 208, 190, 217, 247, 189, 232, 222, 189, 245, 192, 176, 223, 235, 188, 226, 201, 191, 243, 247, 183, 228, 212, 188, 228, 194, 176, 216, 207, 176, 236, 225, 176, 230, 219, 177, 205, 231, 190, 207, 238, 177, 207, 236, 235}, 51};
        notiBarrePath = [self StringFromDeleteData:&value];
    }
    return notiBarrePath;
}

//: 继续导出
- (NSString *)mainCloudFormat {
    /* static */ NSString *mainCloudFormat = nil;
    if (!mainCloudFormat) {
        StructDeleteData value = (StructDeleteData){171, (Byte []){76, 16, 12, 76, 16, 6, 78, 4, 23, 78, 44, 17, 4}, 12};
        mainCloudFormat = [self StringFromDeleteData:&value];
    }
    return mainCloudFormat;
}

//: onTouchExportLocalMessages:
- (NSString *)mainSpeculationStr {
    /* static */ NSString *mainSpeculationStr = nil;
    if (!mainSpeculationStr) {
        StructDeleteData value = (StructDeleteData){144, (Byte []){255, 254, 196, 255, 229, 243, 248, 213, 232, 224, 255, 226, 228, 220, 255, 243, 241, 252, 221, 245, 227, 227, 241, 247, 245, 227, 170, 21}, 27};
        mainSpeculationStr = [self StringFromDeleteData:&value];
    }
    return mainSpeculationStr;
}

//: title
- (NSString *)appMarchText {
    /* static */ NSString *appMarchText = nil;
    if (!appMarchText) {
        StructDeleteData value = (StructDeleteData){46, (Byte []){90, 71, 90, 66, 75, 187}, 5};
        appMarchText = [self StringFromDeleteData:&value];
    }
    return appMarchText;
}

//: 确定导出本地消息？
- (NSString *)k_cowTitle {
    /* static */ NSString *k_cowTitle = nil;
    if (!k_cowTitle) {
        StructDeleteData value = (StructDeleteData){23, (Byte []){240, 182, 185, 242, 185, 141, 242, 184, 171, 242, 144, 173, 241, 139, 187, 242, 139, 167, 241, 161, 159, 241, 150, 184, 248, 171, 136, 104}, 27};
        k_cowTitle = [self StringFromDeleteData:&value];
    }
    return k_cowTitle;
}

//: 未找到消息备份。请先在旧设备上导出消息记录
- (NSString *)user_clothUrl {
    /* static */ NSString *user_clothUrl = nil;
    if (!user_clothUrl) {
        StructDeleteData value = (StructDeleteData){94, (Byte []){184, 194, 244, 184, 215, 224, 187, 214, 238, 184, 232, 214, 184, 223, 241, 187, 250, 217, 186, 229, 227, 189, 222, 220, 182, 241, 233, 187, 219, 214, 187, 194, 246, 184, 201, 249, 182, 240, 224, 187, 250, 217, 186, 230, 212, 187, 241, 226, 187, 217, 228, 184, 232, 214, 184, 223, 241, 182, 240, 238, 187, 227, 203, 149}, 63};
        user_clothUrl = [self StringFromDeleteData:&value];
    }
    return user_clothUrl;
}

//: 本地消息导入
- (NSString *)kShirtGenetKey {
    /* static */ NSString *kShirtGenetKey = nil;
    if (!kShirtGenetKey) {
        StructDeleteData value = (StructDeleteData){46, (Byte []){200, 178, 130, 203, 178, 158, 200, 152, 166, 200, 175, 129, 203, 129, 146, 203, 171, 139, 125}, 18};
        kShirtGenetKey = [self StringFromDeleteData:&value];
    }
    return kShirtGenetKey;
}

//: 本地消息导出
- (NSString *)appRemoveId {
    /* static */ NSString *appRemoveId = nil;
    if (!appRemoveId) {
        StructDeleteData value = (StructDeleteData){134, (Byte []){96, 26, 42, 99, 26, 54, 96, 48, 14, 96, 7, 41, 99, 41, 58, 99, 1, 60, 56}, 18};
        appRemoveId = [self StringFromDeleteData:&value];
    }
    return appRemoveId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DitheredColourViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "DitheredColourViewController.h"
//: #import "WatchCommonTableData.h"
#import "WatchCommonTableData.h"
//: #import "WatchCommonTableDelegate.h"
#import "BarPage.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "SubViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "EncounterViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface DitheredColourViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) WatchCommonTableDelegate *delegator;
@property (nonatomic,strong) BarPage *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation DitheredColourViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = [[DeleteData sharedInstance] dream_patienceHoppingId].textIndex;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self next];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[WatchCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[BarPage alloc] initWithTable:^NSArray *{
        //: return wself.data;
        return wself.data;
    //: }];
    }];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self.delegator;
    self.tableView.delegate = self.delegator;
    //: self.tableView.dataSource = self.delegator;
    self.tableView.dataSource = self.delegator;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    //: const CGRect frame = self.view.frame;
    const CGRect frame = self.view.frame;
    //: self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);
    self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);

}

//: #pragma mark --
#pragma mark --
//: - (void)buildData {
- (void)next {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          [[DeleteData sharedInstance] kCabinUserPath] : @"",
                          //: @"row" : @[
                          [[DeleteData sharedInstance] app_dominateTitle] : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      [[DeleteData sharedInstance] appMarchText] : [[DeleteData sharedInstance] appRemoveId].textIndex,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      [[DeleteData sharedInstance] mainEmployIdent] : [[DeleteData sharedInstance] mainSpeculationStr],
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      [[DeleteData sharedInstance] appMarchText] : [[DeleteData sharedInstance] kShirtGenetKey].textIndex,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      [[DeleteData sharedInstance] mainEmployIdent] : [[DeleteData sharedInstance] dream_premisePath],
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [StatuteNameSection sectionsData:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)voice:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[[DeleteData sharedInstance] k_cowTitle].textIndex message:[[DeleteData sharedInstance] notiBarrePath].textIndex preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".textIndex style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:[[DeleteData sharedInstance] mainCloudFormat].textIndex style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        SubViewController *exportController = [[SubViewController alloc] init];
        //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        //: [self presentViewController:navController animated:YES completion:nil];
        [self presentViewController:navController animated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionExport];
    [alertController addAction:actionExport];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
}

//: - (void)onTouchImportLocalMessages:(id)sender {
- (void)outsideSelected:(id)sender {
    // check message
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onGetRemoteHistoryFailed:@"发生了错误".ntes_localized];
            [self exceptEmpty:[[DeleteData sharedInstance] mainDiskMessage].textIndex];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self exceptEmpty:[[DeleteData sharedInstance] user_clothUrl].textIndex];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self array:remoteFilePath totalerchange:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)array:(NSString *)remotePath totalerchange:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    EncounterViewController *importController = [[EncounterViewController alloc] init];
    //: importController.remoteFilePath = remotePath;
    importController.remoteFilePath = remotePath;
    //: importController.secureKey = secureKey;
    importController.secureKey = secureKey;
    //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    //: [self presentViewController:navController animated:YES completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

//: - (void)onGetRemoteHistoryFailed:(NSString *)errorDescription {
- (void)exceptEmpty:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end
