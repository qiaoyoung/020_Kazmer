// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardContactDataCell.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactDataCell.h"
#import "StandardContactDataCell.h"
//: #import "USERSessionUtil.h"
#import "SessionStandard.h"

//: @implementation USERContactDataCell
@implementation StandardContactDataCell

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)pathColor:(id<DisplayRow>)member
{
    //: [super refreshUser:member];
    [super pathColor:member];
    //: NSString *state = [USERSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [SessionStandard imageDetail:self.memberId shouldPath:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.tabTitle];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end