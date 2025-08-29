// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenDefenceViewController.h
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "FlipViewController.h"

//: @interface FFFAdvancedTeamCardViewController : FFFTeamCardOperationViewController
@interface OpenDefenceViewController : FlipViewController



//: - (void)enterMemberCard;
- (void)itemSelected;//查看群成员
//: - (void)didSelectAddOpeartor;
- (void)currentPath;//添加新成员

//: - (void)updateTeamName;
- (void)emptyMargin;
//: - (void)updateTeamNick;
- (void)formatBlue;
//: - (void)updateTeamIntro;
- (void)shouldFull;
//: - (void)updateTeamAnnouncement;
- (void)occurrenceAnnouncement;
//: - (void)enterMuteList;
- (void)showList;//禁言列表
//: - (void)quitTeam;
- (void)giveUp;
//: - (void)dismissTeam;
- (void)placePicture;
//: @end
@end