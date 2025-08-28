// __DEBUG__
// __CLOSE_PRINT__
//
//  NominateViewController.h
// ButtonKit
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchContactSelectConfig.h"
#import "FindRecent.h"

//: typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
//: typedef void(^ContactSelectCancelBlock)(void);
typedef void(^ContactSelectCancelBlock)(void);

//: @protocol NIMContactSelectDelegate <NSObject>
@protocol DelegateZone <NSObject>

//: @optional
@optional

//: - (void)didFinishedSelect:(NSArray *)selectedContacts; 
- (void)messaged:(NSArray *)selectedContacts; // 返回userID

//: - (void)didCancelledSelect;
- (void)cancelledTeam;

//: @end
@end


//: @interface WatchContactSelectViewController : UIViewController
@interface NominateViewController : UIViewController

//: @property (nonatomic, strong, readonly) UITableView *tableView;
@property (nonatomic, strong, readonly) UITableView *tableView;

//: @property (nonatomic, strong, readonly) id<WatchContactSelectConfig> config;
@property (nonatomic, strong, readonly) id<FindRecent> config;

//回调处理
//: @property (nonatomic, weak) id<NIMContactSelectDelegate> delegate;
@property (nonatomic, weak) id<DelegateZone> delegate;

//: @property (nonatomic, copy) ContactSelectFinishBlock finshBlock;
@property (nonatomic, copy) ContactSelectFinishBlock finshBlock;

//: @property (nonatomic, copy) ContactSelectCancelBlock cancelBlock;
@property (nonatomic, copy) ContactSelectCancelBlock cancelBlock;

/**
 *  初始化方法
 *
 *  @param config 联系人选择器配置
 *
 *  @return 选择器
 */
//: - (instancetype)initWithConfig:(id<WatchContactSelectConfig>) config;
- (instancetype)initWithColorPlace:(id<FindRecent>) config;

/**
 *  弹出联系人选择器
 */
//: - (void)show;
- (void)center;

//: @end
@end
