// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.h
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol NTESCreateTeamAnnouncementDelegate <NSObject>
@protocol EmptyDelegate <NSObject>

//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content;
- (void)with:(NSString *)title insideInformation:(NSString *)content;

//: @end
@end

//: @interface FFFCreateTeamAnnouncement : UIViewController
@interface ImmobiliseViewController : UIViewController

//: @property (nonatomic, weak) id<NTESCreateTeamAnnouncementDelegate> delegate;
@property (nonatomic, weak) id<EmptyDelegate> delegate;

//: @property (nonatomic, copy) NSString *defaultTitle;
@property (nonatomic, copy) NSString *defaultTitle;

//: @property (nonatomic, copy) NSString *defaultContent;
@property (nonatomic, copy) NSString *defaultContent;

//: @end
@end