// __DEBUG__
// __CLOSE_PRINT__
//
//  PlacementToCompartmentView.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "PlacementToCompartmentView.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"

//: @implementation NTESContactDataCell
@implementation PlacementToCompartmentView

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)range:(id<VarnaSessionProtocolUser>)member
{
    //: [super refreshUser:member];
    [super range:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [OldUtil item:self.memberId team:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.representation];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end