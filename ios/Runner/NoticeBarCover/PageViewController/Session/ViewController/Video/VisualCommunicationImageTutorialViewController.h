// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualCommunicationImageTutorialViewController.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESAVMoivePlayerController.h"
#import "RecentController.h"

//: @interface NTESVideoViewItem : NSObject
@interface QueryItem : NSObject

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

//: @interface NTESVideoViewController : UIViewController
@interface VisualCommunicationImageTutorialViewController : UIViewController

//: - (instancetype)initWithVideoViewItem:(NTESVideoViewItem *)item;
- (instancetype)initWithAt:(QueryItem *)item;

//: @property (nonatomic,strong) NIMMessage *message;
@property (nonatomic,strong) NIMMessage *message;

//: @property (nonatomic, readonly) NTESAVMoivePlayerController *avPlayer;
@property (nonatomic, readonly) RecentController *avPlayer;

//: @end
@end