
#import <Foundation/Foundation.h>

@interface MembershipData : NSObject

@end

@implementation MembershipData

+ (Byte *)MembershipDataToCache:(Byte *)data {
    int accentAmendment = data[0];
    Byte destination = data[1];
    int ugly = data[2];
    for (int i = ugly; i < ugly + accentAmendment; i++) {
        int value = data[i] - destination;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[ugly + accentAmendment] = 0;
    return data + ugly;
}

+ (NSString *)StringFromMembershipData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MembershipDataToCache:data]];
}

//: select * from notifications where status != ? order by timetag desc limit ?
+ (NSString *)m_countUrl {
    /* static */ NSString *m_countUrl = nil;
    if (!m_countUrl) {
        Byte value[] = {75, 63, 3, 178, 164, 171, 164, 162, 179, 95, 105, 95, 165, 177, 174, 172, 95, 173, 174, 179, 168, 165, 168, 162, 160, 179, 168, 174, 173, 178, 95, 182, 167, 164, 177, 164, 95, 178, 179, 160, 179, 180, 178, 95, 96, 124, 95, 126, 95, 174, 177, 163, 164, 177, 95, 161, 184, 95, 179, 168, 172, 164, 179, 160, 166, 95, 163, 164, 178, 162, 95, 171, 168, 172, 168, 179, 95, 126, 164};
        m_countUrl = [self StringFromMembershipData:value];
    }
    return m_countUrl;
}

//: update notifications set status  = ? where serial = ?
+ (NSString *)userFreedGuidanceId {
    /* static */ NSString *userFreedGuidanceId = nil;
    if (!userFreedGuidanceId) {
        Byte value[] = {53, 15, 13, 134, 205, 186, 81, 128, 6, 8, 195, 196, 206, 132, 127, 115, 112, 131, 116, 47, 125, 126, 131, 120, 117, 120, 114, 112, 131, 120, 126, 125, 130, 47, 130, 116, 131, 47, 130, 131, 112, 131, 132, 130, 47, 47, 76, 47, 78, 47, 134, 119, 116, 129, 116, 47, 130, 116, 129, 120, 112, 123, 47, 76, 47, 78, 240};
        userFreedGuidanceId = [self StringFromMembershipData:value];
    }
    return userFreedGuidanceId;
}

//: update notifications set status  = ? where status < ? or status > ?
+ (NSString *)main_crushUrl {
    /* static */ NSString *main_crushUrl = nil;
    if (!main_crushUrl) {
        Byte value[] = {67, 47, 7, 160, 20, 199, 27, 164, 159, 147, 144, 163, 148, 79, 157, 158, 163, 152, 149, 152, 146, 144, 163, 152, 158, 157, 162, 79, 162, 148, 163, 79, 162, 163, 144, 163, 164, 162, 79, 79, 108, 79, 110, 79, 166, 151, 148, 161, 148, 79, 162, 163, 144, 163, 164, 162, 79, 107, 79, 110, 79, 158, 161, 79, 162, 163, 144, 163, 164, 162, 79, 109, 79, 110, 97};
        main_crushUrl = [self StringFromMembershipData:value];
    }
    return main_crushUrl;
}

//: update notifications set status  = ? where status = ?
+ (NSString *)noti_colorCharterIdent {
    /* static */ NSString *noti_colorCharterIdent = nil;
    if (!noti_colorCharterIdent) {
        Byte value[] = {53, 1, 12, 206, 114, 1, 97, 225, 226, 233, 161, 64, 118, 113, 101, 98, 117, 102, 33, 111, 112, 117, 106, 103, 106, 100, 98, 117, 106, 112, 111, 116, 33, 116, 102, 117, 33, 116, 117, 98, 117, 118, 116, 33, 33, 62, 33, 64, 33, 120, 105, 102, 115, 102, 33, 116, 117, 98, 117, 118, 116, 33, 62, 33, 64, 194};
        noti_colorCharterIdent = [self StringFromMembershipData:value];
    }
    return noti_colorCharterIdent;
}

//: select count(serial) from notifications where status = ?
+ (NSString *)kOpenIdent {
    /* static */ NSString *kOpenIdent = nil;
    if (!kOpenIdent) {
        Byte value[] = {56, 93, 11, 123, 229, 141, 45, 36, 165, 123, 150, 208, 194, 201, 194, 192, 209, 125, 192, 204, 210, 203, 209, 133, 208, 194, 207, 198, 190, 201, 134, 125, 195, 207, 204, 202, 125, 203, 204, 209, 198, 195, 198, 192, 190, 209, 198, 204, 203, 208, 125, 212, 197, 194, 207, 194, 125, 208, 209, 190, 209, 210, 208, 125, 154, 125, 156, 175};
        kOpenIdent = [self StringFromMembershipData:value];
    }
    return kOpenIdent;
}

//: create index if not exists readindex on notifications(status)
+ (NSString *)user_cloudResortId {
    /* static */ NSString *user_cloudResortId = nil;
    if (!user_cloudResortId) {
        Byte value[] = {61, 80, 4, 142, 179, 194, 181, 177, 196, 181, 112, 185, 190, 180, 181, 200, 112, 185, 182, 112, 190, 191, 196, 112, 181, 200, 185, 195, 196, 195, 112, 194, 181, 177, 180, 185, 190, 180, 181, 200, 112, 191, 190, 112, 190, 191, 196, 185, 182, 185, 179, 177, 196, 185, 191, 190, 195, 120, 195, 196, 177, 196, 197, 195, 121, 15};
        user_cloudResortId = [self StringFromMembershipData:value];
    }
    return user_cloudResortId;
}

//: content
+ (NSString *)dreamContainerId {
    /* static */ NSString *dreamContainerId = nil;
    if (!dreamContainerId) {
        Byte value[] = {7, 79, 7, 241, 253, 83, 88, 178, 190, 189, 195, 180, 189, 195, 185};
        dreamContainerId = [self StringFromMembershipData:value];
    }
    return dreamContainerId;
}

//: receiver
+ (NSString *)user_textData {
    /* static */ NSString *user_textData = nil;
    if (!user_textData) {
        Byte value[] = {8, 34, 12, 81, 199, 79, 6, 220, 202, 223, 237, 122, 148, 135, 133, 135, 139, 152, 135, 148, 186};
        user_textData = [self StringFromMembershipData:value];
    }
    return user_textData;
}

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
+ (NSString *)noti_userKey {
    /* static */ NSString *noti_userKey = nil;
    if (!noti_userKey) {
        Byte value[] = {96, 70, 7, 207, 237, 161, 21, 175, 180, 185, 171, 184, 186, 102, 175, 180, 186, 181, 102, 180, 181, 186, 175, 172, 175, 169, 167, 186, 175, 181, 180, 185, 110, 186, 175, 179, 171, 186, 167, 173, 114, 185, 171, 180, 170, 171, 184, 114, 184, 171, 169, 171, 175, 188, 171, 184, 114, 169, 181, 180, 186, 171, 180, 186, 114, 185, 186, 167, 186, 187, 185, 111, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 102, 188, 167, 178, 187, 171, 185, 110, 133, 114, 133, 114, 133, 114, 133, 114, 133, 111, 249};
        noti_userKey = [self StringFromMembershipData:value];
    }
    return noti_userKey;
}

//: timetag
+ (NSString *)dream_workplaceId {
    /* static */ NSString *dream_workplaceId = nil;
    if (!dream_workplaceId) {
        Byte value[] = {7, 30, 3, 146, 135, 139, 131, 146, 127, 133, 53};
        dream_workplaceId = [self StringFromMembershipData:value];
    }
    return dream_workplaceId;
}

//: sender
+ (NSString *)dreamModerateName {
    /* static */ NSString *dreamModerateName = nil;
    if (!dreamModerateName) {
        Byte value[] = {6, 99, 11, 182, 76, 54, 193, 246, 183, 130, 253, 214, 200, 209, 199, 200, 213, 111};
        dreamModerateName = [self StringFromMembershipData:value];
    }
    return dreamModerateName;
}

//: notification.db
+ (NSString *)showCornerItemMsg {
    /* static */ NSString *showCornerItemMsg = nil;
    if (!showCornerItemMsg) {
        Byte value[] = {15, 47, 11, 173, 204, 239, 141, 77, 158, 50, 12, 157, 158, 163, 152, 149, 152, 146, 144, 163, 152, 158, 157, 93, 147, 145, 57};
        showCornerItemMsg = [self StringFromMembershipData:value];
    }
    return showCornerItemMsg;
}

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
+ (NSString *)user_threshStr {
    /* static */ NSString *user_threshStr = nil;
    if (!user_threshStr) {
        Byte value[] = {165, 89, 6, 52, 211, 169, 188, 203, 190, 186, 205, 190, 121, 205, 186, 187, 197, 190, 121, 194, 191, 121, 199, 200, 205, 121, 190, 209, 194, 204, 205, 204, 121, 199, 200, 205, 194, 191, 194, 188, 186, 205, 194, 200, 199, 204, 129, 204, 190, 203, 194, 186, 197, 121, 194, 199, 205, 190, 192, 190, 203, 121, 201, 203, 194, 198, 186, 203, 210, 121, 196, 190, 210, 133, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 205, 194, 198, 190, 205, 186, 192, 121, 194, 199, 205, 190, 192, 190, 203, 133, 204, 190, 199, 189, 190, 203, 121, 205, 190, 209, 205, 133, 203, 190, 188, 190, 194, 207, 190, 203, 121, 205, 190, 209, 205, 133, 188, 200, 199, 205, 190, 199, 205, 121, 205, 190, 209, 205, 133, 204, 205, 186, 205, 206, 204, 121, 194, 199, 205, 190, 192, 190, 203, 130, 24};
        user_threshStr = [self StringFromMembershipData:value];
    }
    return user_threshStr;
}

//: serial
+ (NSString *)user_closeAdmitId {
    /* static */ NSString *user_closeAdmitId = nil;
    if (!user_closeAdmitId) {
        Byte value[] = {6, 43, 9, 102, 250, 139, 203, 72, 182, 158, 144, 157, 148, 140, 151, 125};
        user_closeAdmitId = [self StringFromMembershipData:value];
    }
    return user_closeAdmitId;
}

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
+ (NSString *)dream_teamUrl {
    /* static */ NSString *dream_teamUrl = nil;
    if (!dream_teamUrl) {
        Byte value[] = {92, 49, 6, 209, 243, 254, 164, 150, 157, 150, 148, 165, 81, 91, 81, 151, 163, 160, 158, 81, 159, 160, 165, 154, 151, 154, 148, 146, 165, 154, 160, 159, 164, 81, 168, 153, 150, 163, 150, 81, 165, 154, 158, 150, 165, 146, 152, 81, 109, 81, 86, 151, 81, 146, 159, 149, 81, 164, 165, 146, 165, 166, 164, 81, 82, 110, 81, 112, 81, 160, 163, 149, 150, 163, 81, 147, 170, 81, 165, 154, 158, 150, 165, 146, 152, 81, 149, 150, 164, 148, 81, 157, 154, 158, 154, 165, 81, 112, 193};
        dream_teamUrl = [self StringFromMembershipData:value];
    }
    return dream_teamUrl;
}

//: create index if not exists timetagindex on notifications(timetag)
+ (NSString *)kOnHeavilyIdent {
    /* static */ NSString *kOnHeavilyIdent = nil;
    if (!kOnHeavilyIdent) {
        Byte value[] = {65, 43, 6, 46, 215, 106, 142, 157, 144, 140, 159, 144, 75, 148, 153, 143, 144, 163, 75, 148, 145, 75, 153, 154, 159, 75, 144, 163, 148, 158, 159, 158, 75, 159, 148, 152, 144, 159, 140, 146, 148, 153, 143, 144, 163, 75, 154, 153, 75, 153, 154, 159, 148, 145, 148, 142, 140, 159, 148, 154, 153, 158, 83, 159, 148, 152, 144, 159, 140, 146, 84, 216};
        kOnHeavilyIdent = [self StringFromMembershipData:value];
    }
    return kOnHeavilyIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChanceImage.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "ChanceImage.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "RegisterColor.h"
//: #import "NTESCustomNotificationObject.h"
#import "ModeObject.h"

//: typedef NS_ENUM(NSInteger, CustomNotificationStatus){
typedef NS_ENUM(NSInteger, CustomNotificationStatus){
    //: CustomNotificationStatusNone = 0,
    CustomNotificationStatusNone = 0,
    //: CustomNotificationStatusRead = 1,
    CustomNotificationStatusRead = 1,
    //: CustomNotificationStatusDeleted = 2,
    CustomNotificationStatusDeleted = 2,
//: };
};

//: @interface NTESCustomNotificationDB ()
@interface ChanceImage ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation ChanceImage

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)travelKit { static ChanceImage *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[ChanceImage alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self unbarIndexSubdataBase];
    }
    //: return self;
    return self;
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    messageFile(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)compartment:(ModeObject *)notification
                          //: limit:(NSInteger)limit{
                          language:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:[MembershipData dream_teamUrl],
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = [MembershipData m_countUrl];
    }
    //: io_sync_safe(^{
    messageFile(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            ModeObject *notification = [[ModeObject alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:[MembershipData user_closeAdmitId]];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:[MembershipData dream_workplaceId]];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:[MembershipData dreamModerateName]];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:[MembershipData user_textData]];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:[MembershipData dreamContainerId]];
            //: [array addObject:notification];
            [array addObject:notification];
        }
        //: [rs close];
        [rs close];
        //: result = array;
        result = array;
    //: });
    });

    //: return result;
    return result;

}

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification{
- (BOOL)salvage:(ModeObject *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    messageFile(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = [MembershipData noti_userKey];

            //: if (![self.db executeUpdate:sql,
            if (![self.db executeUpdate:sql,
                  //: @(notification.timestamp),
                  @(notification.timestamp),
                  //: notification.sender,
                  notification.sender,
                  //: notification.receiver,
                  notification.receiver,
                  //: notification.content,
                  notification.content,
                  //: @(status)])
                  @(status)])
            {
            }
            //: else
            else
            {
                //: notification.serial = (NSInteger)[self.db lastInsertRowId];
                notification.serial = (NSInteger)[self.db lastInsertRowId];
                //: if (notification.needBadge) {
                if (notification.needBadge) {
                    //: self.unreadCount++;
                    self.unreadCount++;
                }
                //: result = YES;
                result = YES;
            }
        }
    //: });
    });
    //: return result;
    return result;

}

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification{
- (void)color:(ModeObject *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = [MembershipData userFreedGuidanceId];
    //: io_async(^{
    valueAsync(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self styleTouch];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)all{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = [MembershipData main_crushUrl];
    //: io_async(^{
    valueAsync(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self styleTouch];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)media{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = [MembershipData noti_colorCharterIdent];
    //: io_sync_safe(^{
    messageFile(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self styleTouch];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)styleTouch{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = [MembershipData kOpenIdent];
    //: FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    //: if ([rs next])
    if ([rs next])
    {
        //: count = (NSInteger)[rs intForColumnIndex:0];
        count = (NSInteger)[rs intForColumnIndex:0];
    }
    //: [rs close];
    [rs close];

    //: if (count != _unreadCount)
    if (count != _unreadCount)
    {
        //: self.unreadCount = count;
        self.unreadCount = count;
    }
}


//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)unbarIndexSubdataBase
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[RegisterColor hull] stringByAppendingString:[MembershipData showCornerItemMsg]];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[[MembershipData user_threshStr],

                          //: @"create index if not exists readindex on notifications(status)",
                          [MembershipData user_cloudResortId],
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          [MembershipData kOnHeavilyIdent]];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self styleTouch];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const userMemberId = &userMemberId;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t dispatchContactCell()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchIOSpecificKey, (void *)NTESDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, userMemberId, (void *)userMemberId, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void messageFile(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(userMemberId))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(dispatchContactCell(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void valueAsync(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(dispatchContactCell(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end