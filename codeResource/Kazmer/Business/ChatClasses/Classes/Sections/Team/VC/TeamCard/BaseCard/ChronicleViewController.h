// __DEBUG__
// __CLOSE_PRINT__
//
//  ChronicleViewController.h
// ButtonKit
//
//  Created by Netease on 2019/6/11.
//  Copyright © 2019 NetEase. All rights reserved.
//  基础UI

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFTeamCardRowItem.h"
#import "ShowKey.h"
//: #import "FFFTeamMemberListCell.h"
#import "SizeViewCell.h"
//: #import "FFFTeamSwitchTableViewCell.h"
#import "TableViewCell.h"
//: #import "FFFTeamListDataManager.h"
#import "MetadataManager.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
typedef NS_ENUM (NSInteger, NIMTeamCardSwithCellType){
    //: NIMTeamCardSwithCellTypeTop = 1,
    NIMTeamCardSwithCellTypeTop = 1,
    //: NIMTeamCardSwithCellTypeNotify,
    NIMTeamCardSwithCellTypeNotify,
    //: NIMTeamCardSwithCellTypeMute,
    NIMTeamCardSwithCellTypeMute,
//: };
};

//: typedef void(^NIMTeamCardPickerHandle)(UIImage *image);
typedef void(^NIMTeamCardPickerHandle)(UIImage *image);

//: @protocol FFFTeamCardViewControllerDelegate <NSObject>
@protocol ModePath <NSObject>

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)on;
- (void)regionRefresh:(BOOL)on;

//: - (void)NIMTeamCardVCDidSetMute:(BOOL)on;
- (void)shared:(BOOL)on;

//: @end
@end

//: #pragma mark - UI基类
#pragma mark - UI基类
//: @interface FFFTeamCardViewController : UIViewController
@interface ChronicleViewController : UIViewController

//: @property (nonatomic,weak) id <FFFTeamCardViewControllerDelegate> delegate;
@property (nonatomic,weak) id <ModePath> delegate;

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//数据源
//: @property (nonatomic,strong) NSArray <NSArray <FFFTeamCardRowItem *> *> *datas;
@property (nonatomic,strong) NSArray <NSArray <ShowKey *> *> *datas;

// "canMemberInfo": 1,//0 不允许查看资料 1 是允许
//: @property (nonatomic,assign) BOOL canMemberInfo;
@property (nonatomic,assign) BOOL canMemberInfo;

//显示相册
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type
- (void)name:(UIImagePickerControllerSourceType)type
             //: completion:(NIMTeamCardPickerHandle)completion;
             languageTo:(NIMTeamCardPickerHandle)completion;

//弹框 - 标题
//: - (UIAlertController *)makeAlertSheetWithTitle:(NSString *)title
- (UIAlertController *)headerDoSheetAlertStreetwisePath:(NSString *)title
                                       //: actions:(NSArray <UIAlertAction *>*)actions;
                                       systemComplete:(NSArray <UIAlertAction *>*)actions;

//弹框 - 取消action
//: - (UIAlertAction *)makeCancelAction;
- (UIAlertAction *)withRecent;

//显示弹框
//: - (void)showAlert:(UIAlertController *)alert;
- (void)interval:(UIAlertController *)alert;

//显示Toast
//: - (void)showToastMsg:(NSString *)msg;
- (void)messagePull:(NSString *)msg;


/* --- need reload by child class ---- */
// 子类自定义头文件
//: - (UIView *)didGetHeaderView;
- (UIView *)sizeMedia;

// 子类自定义cell
//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell;
- (void)teamRed:(SizeViewCell *)cell;

// 子类刷新tableview
//: - (void)reloadTableViewData;
- (void)item;

// 子类刷新header
//: - (void)reloadTableHeaderData;
- (void)scale;

// 子类刷新其他数据
//: - (void)reloadOtherData;
- (void)modeDate;

//: @end
@end




//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END