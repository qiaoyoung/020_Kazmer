//
//  USERContactDataCell.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

#import "USERContactDataCell.h"
#import "USERSessionUtil.h"
@implementation USERContactDataCell

- (void)refreshUser:(id<NIMGroupMemberProtocol>)member
{
    [super refreshUser:member];
    NSString *state = [USERSessionUtil onlineState:self.memberId detail:NO];
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        title = [NSString stringWithFormat:@"%@",member.showName];
//    }
    
    self.textLabel.text = title;
}


@end
