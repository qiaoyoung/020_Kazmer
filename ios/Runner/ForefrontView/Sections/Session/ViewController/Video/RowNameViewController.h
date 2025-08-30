// __DEBUG__
// __CLOSE_PRINT__
//
//  RowNameViewController.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "USERAVMoivePlayerController.h"
#import "RefreshController.h"

//: @interface USERVideoViewItem : NSObject
@interface GrowingItem : NSObject

//: @property (nonatomic,copy) NSString *itemId;
@property (nonatomic,copy) NSString *itemId;//message Id

//: @property (nonatomic,copy) NSString *path;
@property (nonatomic,copy) NSString *path;

//: @property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *url;

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @end
@end

//: @interface USERVideoViewController : UIViewController
@interface RowNameViewController : UIViewController

//: - (instancetype)initWithVideoViewItem:(USERVideoViewItem *)item;
- (instancetype)initWithShared:(GrowingItem *)item;

//: @property (nonatomic,strong) NIMMessage *message;
@property (nonatomic,strong) NIMMessage *message;

//: @property (nonatomic, readonly) USERAVMoivePlayerController *avPlayer;
@property (nonatomic, readonly) RefreshController *avPlayer;

//: @end
@end