// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueToViewController.h
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchTeamCardOperationViewController.h"
#import "TradingCardViewController.h"

//: @interface WatchAdvancedTeamCardViewController : WatchTeamCardOperationViewController
@interface ValueToViewController : TradingCardViewController



//: - (void)enterMemberCard;
- (void)netShow;//查看群成员
//: - (void)didSelectAddOpeartor;
- (void)successStop;//添加新成员

//: - (void)updateTeamName;
- (void)containerEnableColor;
//: - (void)updateTeamNick;
- (void)sendBorder;
//: - (void)updateTeamIntro;
- (void)teamCover;
//: - (void)updateTeamAnnouncement;
- (void)notAnnouncement;
//: - (void)enterMuteList;
- (void)userEdge;//禁言列表
//: - (void)quitTeam;
- (void)textTeam;
//: - (void)dismissTeam;
- (void)pastTitle;
//: @end
@end
