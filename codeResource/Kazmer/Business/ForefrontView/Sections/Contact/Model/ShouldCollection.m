// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldCollection.m
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERGroupedDataCollection.h"
#import "ShouldCollection.h"

//: @interface Pair : NSObject
@interface Pair : NSObject

//: @property (nonatomic, strong) id first;
@property (nonatomic, strong) id first;
//: @property (nonatomic, strong) id second;
@property (nonatomic, strong) id second;

//: @end
@end

//: @implementation Pair
@implementation Pair

//: - (instancetype)initWithFirst:(id)first second:(id)second {
- (instancetype)initWithTitle:(id)first lightReply:(id)second {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: _first = first;
        _first = first;
        //: _second = second;
        _second = second;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface USERGroupedDataCollection () {
@interface ShouldCollection () {
    //: NSMutableOrderedSet *_specialGroupTtiles;
    NSMutableOrderedSet *_specialGroupTtiles;
    //: NSMutableOrderedSet *_groupTtiles;
    NSMutableOrderedSet *_groupTtiles;
    //: NSMutableOrderedSet *_groups;
    NSMutableOrderedSet *_groups;
    //: NSMutableOrderedSet *_specialGroups;
    NSMutableOrderedSet *_specialGroups;
}

//: @end
@end

//: @implementation USERGroupedDataCollection
@implementation ShouldCollection

//: - (void)sort
- (void)info
{
    //: [self sortGroupTitle];
    [self index];
    //: [self sortGroupMember];
    [self image];
}

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members {
- (void)press:(NSString *)title visualImageMembers:(NSArray *)members {
    //: Pair *pair = [[Pair alloc] initWithFirst:title second:members];
    Pair *pair = [[Pair alloc] initWithTitle:title lightReply:members];
    //: [_specialGroupTtiles addObject:title];
    [_specialGroupTtiles addObject:title];
    //: [_specialGroups addObject:pair];
    [_specialGroups addObject:pair];
}

//: - (void)sortGroupTitle
- (void)index
{
    //: [_groupTtiles sortUsingComparator:_groupTitleComparator];
    [_groupTtiles sortUsingComparator:_groupTitleComparator];
    //: [_groups sortUsingComparator:^NSComparisonResult(Pair *pair1, Pair *pair2) {
    [_groups sortUsingComparator:^NSComparisonResult(Pair *pair1, Pair *pair2) {
        //: return _groupTitleComparator(pair1.first, pair2.first);
        return _groupTitleComparator(pair1.first, pair2.first);
    //: }];
    }];
}

//: - (id<USERGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath
- (id<CancelProtocol>)theGreen:(NSIndexPath *)indexPath
{
    //: NSArray *members = nil;
    NSArray *members = nil;
    //: NSInteger groupIndex = indexPath.section;
    NSInteger groupIndex = indexPath.section;
    //: if(groupIndex >= 0 && groupIndex < _specialGroups.count) {
    if(groupIndex >= 0 && groupIndex < _specialGroups.count) {
        //: Pair *pair = [_specialGroups objectAtIndex:groupIndex];
        Pair *pair = [_specialGroups objectAtIndex:groupIndex];
        //: members = pair.second;
        members = pair.second;
    }
    //: groupIndex -= _specialGroups.count;
    groupIndex -= _specialGroups.count;
    //: if(groupIndex >= 0 && groupIndex < _groups.count) {
    if(groupIndex >= 0 && groupIndex < _groups.count) {
        //: Pair *pair = [_groups objectAtIndex:groupIndex];
        Pair *pair = [_groups objectAtIndex:groupIndex];
        //: members = pair.second;
        members = pair.second;
    }
    //: NSInteger memberIndex = indexPath.row;
    NSInteger memberIndex = indexPath.row;
    //: if(memberIndex < 0 || memberIndex >= members.count) return nil;
    if(memberIndex < 0 || memberIndex >= members.count) return nil;
    //: return [members objectAtIndex:memberIndex];
    return [members objectAtIndex:memberIndex];
}

//: - (id<USERGroupMemberProtocol>)memberOfId:(NSString *)uid{
- (id<CancelProtocol>)voiceFormat:(NSString *)uid{
    //: for (Pair *pair in _groups) {
    for (Pair *pair in _groups) {
        //: NSArray *members = pair.second;
        NSArray *members = pair.second;
        //: for (id<USERGroupMemberProtocol> member in members) {
        for (id<CancelProtocol> member in members) {
            //: if ([[member memberId] isEqualToString:uid]) {
            if ([[member littleLeagueTeam] isEqualToString:uid]) {
                //: return member;
                return member;
            }
        }
    }
    //: return nil;
    return nil;
}

//: - (void)setGroupMemberComparator:(NSComparator)groupMemberComparator
- (void)setGroupMemberComparator:(NSComparator)groupMemberComparator
{
    //: _groupMemberComparator = groupMemberComparator;
    _groupMemberComparator = groupMemberComparator;
    //: [self sortGroupMember];
    [self image];
}

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex
- (NSInteger)colorTo:(NSInteger)groupIndex
{
    //: NSArray *members = nil;
    NSArray *members = nil;
    //: if(groupIndex >= 0 && groupIndex < _specialGroups.count) {
    if(groupIndex >= 0 && groupIndex < _specialGroups.count) {
        //: Pair *pair = [_specialGroups objectAtIndex:groupIndex];
        Pair *pair = [_specialGroups objectAtIndex:groupIndex];
        //: members = pair.second;
        members = pair.second;
    }
    //: groupIndex -= _specialGroups.count;
    groupIndex -= _specialGroups.count;
    //: if(groupIndex >= 0 && groupIndex < _groups.count) {
    if(groupIndex >= 0 && groupIndex < _groups.count) {
        //: Pair *pair = [_groups objectAtIndex:groupIndex];
        Pair *pair = [_groups objectAtIndex:groupIndex];
        //: members = pair.second;
        members = pair.second;
    }
    //: return members.count;
    return members.count;
}

//: - (NSInteger)groupCount
- (NSInteger)intervalSum
{
    //: return _specialGroupTtiles.count + _groupTtiles.count;
    return _specialGroupTtiles.count + _groupTtiles.count;
}

//: - (void)removeGroupMember:(id<USERGroupMemberProtocol>)member{
- (void)removeTeam:(id<CancelProtocol>)member{
    //: NSString *groupTitle = [member groupTitle];
    NSString *groupTitle = [member roundPathTitle];
    //: NSInteger groupIndex = [_groupTtiles indexOfObject:groupTitle];
    NSInteger groupIndex = [_groupTtiles indexOfObject:groupTitle];
    //: Pair *pair = [_groups objectAtIndex:groupIndex];
    Pair *pair = [_groups objectAtIndex:groupIndex];
    //: [pair.second removeObject:member];
    [pair.second removeObject:member];
    //: if (![pair.second count]) {
    if (![pair.second count]) {
        //: [_groups removeObject:pair];
        [_groups removeObject:pair];
    }
    //: [self sort];
    [self info];
}

//: - (void)setGroupTitleComparator:(NSComparator)groupTitleComparator
- (void)setGroupTitleComparator:(NSComparator)groupTitleComparator
{
    //: _groupTitleComparator = groupTitleComparator;
    _groupTitleComparator = groupTitleComparator;
    //: [self sortGroupTitle];
    [self index];
}

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: _specialGroupTtiles = [[NSMutableOrderedSet alloc] init];
        _specialGroupTtiles = [[NSMutableOrderedSet alloc] init];
        //: _specialGroups = [[NSMutableOrderedSet alloc] init];
        _specialGroups = [[NSMutableOrderedSet alloc] init];
        //: _groupTtiles = [[NSMutableOrderedSet alloc] init];
        _groupTtiles = [[NSMutableOrderedSet alloc] init];
        //: _groups = [[NSMutableOrderedSet alloc] init];
        _groups = [[NSMutableOrderedSet alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSArray *)sortedGroupTitles
- (NSArray *)sortedGroupTitles
{
    //: return [_groupTtiles array];
    return [_groupTtiles array];
}

//: - (void)setMembers:(NSArray *)members
- (void)setMembers:(NSArray *)members
{
    //: _members = members;
    _members = members;
    //: NSMutableDictionary *tmp = [NSMutableDictionary dictionary];
    NSMutableDictionary *tmp = [NSMutableDictionary dictionary];
    //: NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: for (id<USERGroupMemberProtocol>member in members) {
    for (id<CancelProtocol>member in members) {
        //: if ([[member memberId] isEqualToString:me]) {
        if ([[member littleLeagueTeam] isEqualToString:me]) {
            //: continue;
            continue;
        }
        //: NSString *groupTitle = [member groupTitle];
        NSString *groupTitle = [member roundPathTitle];
        //: NSMutableArray *groupedMembers = [tmp objectForKey:groupTitle];
        NSMutableArray *groupedMembers = [tmp objectForKey:groupTitle];
        //: if(!groupedMembers) {
        if(!groupedMembers) {
            //: groupedMembers = [NSMutableArray array];
            groupedMembers = [NSMutableArray array];
        }
        //: [groupedMembers addObject:member];
        [groupedMembers addObject:member];
        //: [tmp setObject:groupedMembers forKey:groupTitle];
        [tmp setObject:groupedMembers forKey:groupTitle];
    }
    //: [_groupTtiles removeAllObjects];
    [_groupTtiles removeAllObjects];
    //: [_groups removeAllObjects];
    [_groups removeAllObjects];

    //: [tmp enumerateKeysAndObjectsUsingBlock:^(NSString *groupTitle, NSMutableArray *groupedMembers, BOOL *stop) {
    [tmp enumerateKeysAndObjectsUsingBlock:^(NSString *groupTitle, NSMutableArray *groupedMembers, BOOL *stop) {
        //: if (groupTitle.length) {
        if (groupTitle.length) {
            //: unichar character = [groupTitle characterAtIndex:0];
            unichar character = [groupTitle characterAtIndex:0];
            //: if (character >= 'A' && character <= 'Z') {
            if (character >= 'A' && character <= 'Z') {
                //: [_groupTtiles addObject:groupTitle];
                [_groupTtiles addObject:groupTitle];
            //: }else{
            }else{
                //: [_groupTtiles addObject:@"#"];
                [_groupTtiles addObject:@"#"];
            }
            //: [_groups addObject:[[Pair alloc] initWithFirst:groupTitle second:groupedMembers]];
            [_groups addObject:[[Pair alloc] initWithTitle:groupTitle lightReply:groupedMembers]];
        }
    //: }];
    }];
    //: [self sort];
    [self info];
}

//: - (void)addGroupMember:(id<USERGroupMemberProtocol>)member
- (void)tingMember:(id<CancelProtocol>)member
{
    //: NSString *groupTitle = [member groupTitle];
    NSString *groupTitle = [member roundPathTitle];
    //: NSInteger groupIndex = [_groupTtiles indexOfObject:groupTitle];
    NSInteger groupIndex = [_groupTtiles indexOfObject:groupTitle];
    //: Pair *pair = [_groups objectAtIndex:groupIndex];
    Pair *pair = [_groups objectAtIndex:groupIndex];
    //: if(!pair) {
    if(!pair) {
        //: NSMutableArray *members = [NSMutableArray array];
        NSMutableArray *members = [NSMutableArray array];
        //: pair = [[Pair alloc] initWithFirst:groupTitle second:members];
        pair = [[Pair alloc] initWithTitle:groupTitle lightReply:members];
    }
    //: NSMutableArray *members = pair.second;
    NSMutableArray *members = pair.second;
    //: [members addObject:member];
    [members addObject:member];
    //: [_groupTtiles addObject:groupTitle];
    [_groupTtiles addObject:groupTitle];
    //: [_groups addObject:pair];
    [_groups addObject:pair];
    //: [self sort];
    [self info];
}

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex
- (NSArray *)device:(NSInteger)groupIndex
{
    //: if(groupIndex >= 0 && groupIndex < _specialGroups.count) {
    if(groupIndex >= 0 && groupIndex < _specialGroups.count) {
        //: Pair *pair = [_specialGroups objectAtIndex:groupIndex];
        Pair *pair = [_specialGroups objectAtIndex:groupIndex];
        //: return pair.second;
        return pair.second;
    }
    //: groupIndex -= _specialGroups.count;
    groupIndex -= _specialGroups.count;
    //: if(groupIndex >= 0 && groupIndex < _groups.count) {
    if(groupIndex >= 0 && groupIndex < _groups.count) {
        //: Pair *pair = [_groups objectAtIndex:groupIndex];
        Pair *pair = [_groups objectAtIndex:groupIndex];
        //: return pair.second;
        return pair.second;
    }
    //: return nil;
    return nil;
}

//: - (void)sortGroupMember
- (void)image
{
    //: [_groups enumerateObjectsUsingBlock:^(Pair *obj, NSUInteger idx, BOOL *stop) {
    [_groups enumerateObjectsUsingBlock:^(Pair *obj, NSUInteger idx, BOOL *stop) {
        //: NSMutableArray *groupedMembers = obj.second;
        NSMutableArray *groupedMembers = obj.second;
        //: [groupedMembers sortUsingComparator:^NSComparisonResult(id<USERGroupMemberProtocol> member1, id<USERGroupMemberProtocol> member2) {
        [groupedMembers sortUsingComparator:^NSComparisonResult(id<CancelProtocol> member1, id<CancelProtocol> member2) {
            return _groupMemberComparator([member1 sortKey], [member2 sortKey]);
//            return _groupMemberComparator([member1 shank], [member2 shank]);
        //: }];
        }];
    //: }];
    }];
}

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex
- (NSString *)picture:(NSInteger)groupIndex
{
    //: if(groupIndex >= 0 && groupIndex < _specialGroupTtiles.count) {
    if(groupIndex >= 0 && groupIndex < _specialGroupTtiles.count) {
        //: return [_specialGroupTtiles objectAtIndex:groupIndex];
        return [_specialGroupTtiles objectAtIndex:groupIndex];
    }
    //: groupIndex -= _specialGroupTtiles.count;
    groupIndex -= _specialGroupTtiles.count;
    //: if(groupIndex >= 0 && groupIndex < _groupTtiles.count) {
    if(groupIndex >= 0 && groupIndex < _groupTtiles.count) {
        //: return [_groupTtiles objectAtIndex:groupIndex];
        return [_groupTtiles objectAtIndex:groupIndex];
    }
    //: return nil;
    return nil;
}

//: @end
@end
