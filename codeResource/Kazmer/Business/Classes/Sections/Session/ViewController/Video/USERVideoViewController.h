//
//  USERVideoViewController.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USERAVMoivePlayerController.h"

@interface USERVideoViewItem : NSObject

@property (nonatomic,copy) NSString *itemId;//message Id

@property (nonatomic,copy) NSString *path;

@property (nonatomic,copy) NSString *url;

@property (nonatomic,strong) NIMSession *session;

@end

@interface USERVideoViewController : UIViewController

- (instancetype)initWithVideoViewItem:(USERVideoViewItem *)item;

@property (nonatomic,strong)  NIMMessage *message;

@property (nonatomic, readonly) USERAVMoivePlayerController *avPlayer;

@end
