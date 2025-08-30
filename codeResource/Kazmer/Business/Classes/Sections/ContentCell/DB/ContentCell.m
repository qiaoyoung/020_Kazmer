
#import <Foundation/Foundation.h>

@interface TotalerfoilData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TotalerfoilData

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
- (NSString *)kTextFileValue {
    /* static */ NSString *kTextFileValue = nil;
    if (!kTextFileValue) {
		NSString *origin = @"601d0791cf0da04c5156485557034c515752035152574c494c4644574c5251560b574c504857444a0f5648514748550f554846484c5948550f465251574851570f5657445758560c030303030303030303030303030359444f5848560b220f220f220f220f220cf8";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextFileValue = [self StringFromTotalerfoilData:value];
    }
    return kTextFileValue;
}

//: receiver
- (NSString *)kTitleFrameValue {
    /* static */ NSString *kTitleFrameValue = nil;
    if (!kTitleFrameValue) {
		NSString *origin = @"08190b9683812ddd2d5fb4594c4a4c505d4c59c6";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleFrameValue = [self StringFromTotalerfoilData:value];
    }
    return kTitleFrameValue;
}

//: select * from notifications where status != ? order by timetag desc limit ?
- (NSString *)kTextName {
    /* static */ NSString *kTextName = nil;
    if (!kTextName) {
		NSString *origin = @"4b330ae4d80ac681d124403239323041edf7ed333f3c3aed3b3c41363336302e41363c3b40ed4435323f32ed40412e414240edee0aed0ced3c3f31323fed2f46ed41363a32412e34ed31324030ed39363a3641ed0c81";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextName = [self StringFromTotalerfoilData:value];
    }
    return kTextName;
}

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
- (NSString *)kTitle_withText {
    /* static */ NSString *kTitle_withText = nil;
    if (!kTitle_withText) {
		NSString *origin = @"5c2804fd4b3d443d3b4cf802f83e4a4745f846474c413e413b394c4147464bf84f403d4a3df84c41453d4c393ff814f8fd3ef839463cf84b4c394c4d4bf8f915f817f8474a3c3d4af83a51f84c41453d4c393ff83c3d4b3bf8444145414cf81748";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_withText = [self StringFromTotalerfoilData:value];
    }
    return kTitle_withText;
}

//: update notifications set status  = ? where status = ?
- (NSString *)kTitle_stopValue {
    /* static */ NSString *kTitle_stopValue = nil;
    if (!kTitle_stopValue) {
		NSString *origin = @"350f0ba198207a3eecbd36666155526556115f60655a575a5452655a605f64116456651164655265666411112e113011685956635611646552656664112e11305d";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_stopValue = [self StringFromTotalerfoilData:value];
    }
    return kTitle_stopValue;
}

- (NSString *)StringFromTotalerfoilData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TotalerfoilDataToCache:data]];
}

//: serial
- (NSString *)kTitleProgressValue {
    /* static */ NSString *kTitleProgressValue = nil;
    if (!kTitleProgressValue) {
		NSString *origin = @"065405a3ce1f111e150d1886";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleProgressValue = [self StringFromTotalerfoilData:value];
    }
    return kTitleProgressValue;
}

- (Byte *)TotalerfoilDataToCache:(Byte *)data {
    int characteristicRootOfASquareMatrix = data[0];
    Byte keyLast = data[1];
    int hideModel = data[2];
    for (int i = hideModel; i < hideModel + characteristicRootOfASquareMatrix; i++) {
        int value = data[i] + keyLast;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[hideModel + characteristicRootOfASquareMatrix] = 0;
    return data + hideModel;
}

//: update notifications set status  = ? where serial = ?
- (NSString *)kTextStopData {
    /* static */ NSString *kTextStopData = nil;
    if (!kTextStopData) {
		NSString *origin = @"351005ecfe656054516455105e5f64595659535164595f5e63106355641063645164656310102d102f1067585562551063556259515c102d102f52";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextStopData = [self StringFromTotalerfoilData:value];
    }
    return kTextStopData;
}

//: create index if not exists timetagindex on notifications(timetag)
- (NSString *)kTitle_detailValue {
    /* static */ NSString *kTitle_detailValue = nil;
    if (!kTitle_detailValue) {
		NSString *origin = @"4136032d3c2f2b3e2fea33382e2f42ea3330ea38393eea2f42333d3e3dea3e33372f3e2b3133382e2f42ea3938ea38393e3330332d2b3e3339383df23e33372f3e2b31f37a";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_detailValue = [self StringFromTotalerfoilData:value];
    }
    return kTitle_detailValue;
}

//: sender
- (NSString *)kContent_messageValue {
    /* static */ NSString *kContent_messageValue = nil;
    if (!kContent_messageValue) {
		NSString *origin = @"062c0b5c0b345f1760efbb47394238394631";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_messageValue = [self StringFromTotalerfoilData:value];
    }
    return kContent_messageValue;
}

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
- (NSString *)kTitle_atData {
    /* static */ NSString *kTitle_atData = nil;
    if (!kTitle_atData) {
		NSString *origin = @"a51b0a2f6a1ae2199bbb48574a46594a05594647514a054e4b05535459054a5d4e585958055354594e4b4e4846594e5453580d584a574e4651054e53594a4c4a570555574e5246575e05504a5e11050505050505050505050505050505050505050505050505050505594e524a59464c054e53594a4c4a5711584a53494a5705594a5d5911574a484a4e5b4a5705594a5d5911485453594a535905594a5d5911585946595a58054e53594a4c4a570e13";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_atData = [self StringFromTotalerfoilData:value];
    }
    return kTitle_atData;
}

//: update notifications set status  = ? where status < ? or status > ?
- (NSString *)kNameScaleValue {
    /* static */ NSString *kNameScaleValue = nil;
    if (!kNameScaleValue) {
		NSString *origin = @"434f05c799262115122516d11f20251a171a1412251a201f24d1241625d1242512252624d1d1eed1f0d12819162316d1242512252624d1edd1f0d12023d1242512252624d1efd1f0df";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameScaleValue = [self StringFromTotalerfoilData:value];
    }
    return kNameScaleValue;
}

//: create index if not exists readindex on notifications(status)
- (NSString *)kContentCellValue {
    /* static */ NSString *kContentCellValue = nil;
    if (!kContentCellValue) {
		NSString *origin = @"3d0f08986b5a895d546356526556115a5f555669115a57115f60651156695a64656411635652555a5f55566911605f115f60655a575a5452655a605f64196465526566641ab5";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentCellValue = [self StringFromTotalerfoilData:value];
    }
    return kContentCellValue;
}

+ (NSData *)TotalerfoilDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: select count(serial) from notifications where status = ?
- (NSString *)kName_onValue {
    /* static */ NSString *kName_onValue = nil;
    if (!kName_onValue) {
		NSString *origin = @"385b0512b6180a110a0819c508141a1319cd180a170e0611cec50b171412c51314190e0b0e0806190e141318c51c0d0a170ac5181906191a18c5e2c5e45e";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_onValue = [self StringFromTotalerfoilData:value];
    }
    return kName_onValue;
}

+ (instancetype)sharedInstance {
    static TotalerfoilData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: timetag
- (NSString *)kNameReloadData {
    /* static */ NSString *kNameReloadData = nil;
    if (!kNameReloadData) {
		NSString *origin = @"071a094003662376ae5a4f534b5a474d80";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameReloadData = [self StringFromTotalerfoilData:value];
    }
    return kNameReloadData;
}

//: notification.db
- (NSString *)kNameLastValue {
    /* static */ NSString *kNameLastValue = nil;
    if (!kNameLastValue) {
		NSString *origin = @"0f3608c6efdfae5638393e3330332d2b3e333938f82e2c38";
		NSData *data = [TotalerfoilData TotalerfoilDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameLastValue = [self StringFromTotalerfoilData:value];
    }
    return kNameLastValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentCell.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERCustomNotificationDB.h"
#import "ContentCell.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "USERFileLocationHelper.h"
#import "DisplayHelper.h"
//: #import "USERCustomNotificationObject.h"
#import "CommentObject.h"

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

//: @interface USERCustomNotificationDB ()
@interface ContentCell ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation USERCustomNotificationDB
@implementation ContentCell

//: + (instancetype)sharedInstance { static USERCustomNotificationDB *sharedUSERCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedUSERCustomNotificationDB = [[USERCustomNotificationDB alloc] init]; }); return sharedUSERCustomNotificationDB; };
+ (instancetype)session { static ContentCell *sharedUSERCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedUSERCustomNotificationDB = [[ContentCell alloc] init]; }); return sharedUSERCustomNotificationDB; };

//: - (void)markAllNotificationsAsRead{
- (void)overViewBe{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = [[TotalerfoilData sharedInstance] kTitle_stopValue];
    //: io_sync_safe(^{
    searchedNameTeam(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self voiceUser];
    //: });
    });
}


//: - (void)deleteNotification:(USERCustomNotificationObject *)notification{
- (void)should:(CommentObject *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = [[TotalerfoilData sharedInstance] kTextStopData];
    //: io_async(^{
    colorItem(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self voiceUser];
    //: });
    });
}

//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)menu
{
    //: NSString *filepath = [[USERFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[DisplayHelper quick] stringByAppendingString:[[TotalerfoilData sharedInstance] kNameLastValue]];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[[[TotalerfoilData sharedInstance] kTitle_atData],

                          //: @"create index if not exists readindex on notifications(status)",
                          [[TotalerfoilData sharedInstance] kContentCellValue],
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          [[TotalerfoilData sharedInstance] kTitle_detailValue]];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self voiceUser];
    }
    //: else
    else
    {
    }
}

//: - (BOOL)saveNotification:(USERCustomNotificationObject *)notification{
- (BOOL)subNotification:(CommentObject *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    searchedNameTeam(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = [[TotalerfoilData sharedInstance] kTextFileValue];

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

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self menu];
    }
    //: return self;
    return self;
}


//: - (void)queryUnreadCount{
- (void)voiceUser{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = [[TotalerfoilData sharedInstance] kName_onValue];
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


//: - (NSArray *)fetchNotifications:(USERCustomNotificationObject *)notification
- (NSArray *)telecastingLimit:(CommentObject *)notification
                          //: limit:(NSInteger)limit{
                          clear:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:[[TotalerfoilData sharedInstance] kTitle_withText],
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = [[TotalerfoilData sharedInstance] kTextName];
    }
    //: io_sync_safe(^{
    searchedNameTeam(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: USERCustomNotificationObject *notification = [[USERCustomNotificationObject alloc] init];
            CommentObject *notification = [[CommentObject alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:[[TotalerfoilData sharedInstance] kTitleProgressValue]];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:[[TotalerfoilData sharedInstance] kNameReloadData]];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:[[TotalerfoilData sharedInstance] kContent_messageValue]];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:[[TotalerfoilData sharedInstance] kTitleFrameValue]];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:@"content"];
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

//: - (void)deleteAllNotification{
- (void)allBackgroundBetween{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = [[TotalerfoilData sharedInstance] kNameScaleValue];
    //: io_async(^{
    colorItem(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self voiceUser];
    //: });
    });
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    searchedNameTeam(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: static const void * const USERDispatchIOSpecificKey = &USERDispatchIOSpecificKey;
static const void * const mKitMessage = &mKitMessage;
//: dispatch_queue_t USERDispatchIOQueue()
dispatch_queue_t statusRefresh()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, USERDispatchIOSpecificKey, (void *)USERDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, mKitMessage, (void *)mKitMessage, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void searchedNameTeam(dispatch_block block)
{
    //: if (dispatch_get_specific(USERDispatchIOSpecificKey))
    if (dispatch_get_specific(mKitMessage))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(USERDispatchIOQueue(), ^() {
        dispatch_sync(statusRefresh(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void colorItem(dispatch_block block){
    //: dispatch_async(USERDispatchIOQueue(), ^() {
    dispatch_async(statusRefresh(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end
//: __SAVE__ ignore_string [763.7]