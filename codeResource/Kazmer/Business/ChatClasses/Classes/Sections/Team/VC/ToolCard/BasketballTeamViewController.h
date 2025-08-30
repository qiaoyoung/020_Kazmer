// __DEBUG__
// __CLOSE_PRINT__
//
//  USERCreateTeamAnnouncement.h
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol USERCreateTeamAnnouncementDelegate <NSObject>
@protocol AtDelegate <NSObject>

//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content;
- (void)enable:(NSString *)title send:(NSString *)content;

//: @end
@end

//: @interface DisplayCreateTeamAnnouncement : UIViewController
@interface BasketballTeamViewController : UIViewController

//: @property (nonatomic, weak) id<USERCreateTeamAnnouncementDelegate> delegate;
@property (nonatomic, weak) id<AtDelegate> delegate;

//: @property (nonatomic, copy) NSString *defaultTitle;
@property (nonatomic, copy) NSString *defaultTitle;

//: @property (nonatomic, copy) NSString *defaultContent;
@property (nonatomic, copy) NSString *defaultContent;

//: @end
@end
