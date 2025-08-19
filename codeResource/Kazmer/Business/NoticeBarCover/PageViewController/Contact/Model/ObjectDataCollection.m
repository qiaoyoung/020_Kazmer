// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectDataCollection.m
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGroupedContacts.h"
#import "ObjectDataCollection.h"
//: #import "NTESContactDataMember.h"
#import "TimeMember.h"

//: @interface NTESGroupedContacts ()
@interface ObjectDataCollection ()

//: @end
@end

//: @implementation NTESGroupedContacts
@implementation ObjectDataCollection

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: self.groupTitleComparator = ^NSComparisonResult(NSString *title1, NSString *title2) {
        self.groupTitleComparator = ^NSComparisonResult(NSString *title1, NSString *title2) {
            //: if ([title1 isEqualToString:@"#"]) {
            if ([title1 isEqualToString:@"#"]) {
                //: return NSOrderedDescending;
                return NSOrderedDescending;
            }
            //: if ([title2 isEqualToString:@"#"]) {
            if ([title2 isEqualToString:@"#"]) {
                //: return NSOrderedAscending;
                return NSOrderedAscending;
            }
            //: return [title1 compare:title2];
            return [title1 compare:title2];
        //: };
        };
        //: self.groupMemberComparator = ^NSComparisonResult(NSString *key1, NSString *key2) {
        self.groupMemberComparator = ^NSComparisonResult(NSString *key1, NSString *key2) {
            //: return [key1 compare:key2];
            return [key1 compare:key2];
        //: };
        };
        //: [self update];
        [self itemTotaleract];
    }
    //: return self;
    return self;
}

//: - (void)update{
- (void)itemTotaleract{
    //: NSMutableArray *contacts = [NSMutableArray array];
    NSMutableArray *contacts = [NSMutableArray array];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myFriends) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myFriends) {
        //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        TingMessage *info = [[ButtonKit sheerOption] past:user.userId skinColour_strong:nil];
        //: NTESContactDataMember *contact = [[NTESContactDataMember alloc] init];
        TimeMember *contact = [[TimeMember alloc] init];
        //: contact.info = info;
        contact.info = info;
        //: [contacts addObject:contact];
        [contacts addObject:contact];
    }
    //: [self setMembers:contacts];
    [self setMembers:contacts];
}


//: @end
@end
