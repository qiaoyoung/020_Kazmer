// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldCollection.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol USERGroupMemberProtocol <NSObject>
@protocol CancelProtocol <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)album;
//: - (NSString *)memberId;
- (NSString *)corner;
//: - (id)sortKey;
- (id)shank;

//: @end
@end

//: @interface USERGroupedDataCollection : NSObject
@interface ShouldCollection : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)press:(NSString *)title visualImageMembers:(NSArray *)members;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)device:(NSInteger)groupIndex;

//: - (id<USERGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<CancelProtocol>)voiceFormat:(NSString *)uid;

//: - (void)addGroupMember:(id<USERGroupMemberProtocol>)member;
- (void)tingMember:(id<CancelProtocol>)member;

//: - (id<USERGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<CancelProtocol>)theGreen:(NSIndexPath *)indexPath;

//: - (void)removeGroupMember:(id<USERGroupMemberProtocol>)member;
- (void)removeTeam:(id<CancelProtocol>)member;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)colorTo:(NSInteger)groupIndex;

//: - (NSInteger)groupCount;
- (NSInteger)intervalSum;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)picture:(NSInteger)groupIndex;

//: @end
@end