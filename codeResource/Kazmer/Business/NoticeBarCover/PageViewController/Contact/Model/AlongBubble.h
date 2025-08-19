// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongBubble.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol OldProgress <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)background;
//: - (NSString *)memberId;
- (NSString *)dataWith;
//: - (id)sortKey;
- (id)outsideScale;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface AlongBubble : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)mix:(id<OldProgress>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)label:(id<OldProgress>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)tap:(NSString *)title valueMembers:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)size:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)color:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<OldProgress>)content:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<OldProgress>)monthMemberId:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)wellhead;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)exceptName:(NSInteger)groupIndex;

//: @end
@end