
#import <Foundation/Foundation.h>

@interface SymbolData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SymbolData

+ (instancetype)sharedInstance {
    static SymbolData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SymbolDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SymbolDataToCache:(Byte *)data {
    int ethicDevice = data[0];
    Byte underlie = data[1];
    int bucket = data[2];
    for (int i = bucket; i < bucket + ethicDevice; i++) {
        int value = data[i] + underlie;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bucket + ethicDevice] = 0;
    return data + bucket;
}

- (NSString *)StringFromSymbolData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SymbolDataToCache:data]];
}

//: [自定义消息]
- (NSString *)kNameClimateValue {
    /* static */ NSString *kNameClimateValue = nil;
    if (!kNameClimateValue) {
		NSArray<NSNumber *> *origin = @[@17, @81, @10, @3, @76, @240, @32, @30, @36, @45, @10, @151, @54, @89, @148, @93, @73, @147, @104, @56, @149, @101, @55, @149, @48, @94, @12, @182];
		NSData *data = [SymbolData SymbolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameClimateValue = [self StringFromSymbolData:value];
    }
    return kNameClimateValue;
}

//: head_default
- (NSString *)kContent_headName {
    /* static */ NSString *kContent_headName = nil;
    if (!kContent_headName) {
		NSArray<NSNumber *> *origin = @[@12, @68, @13, @216, @105, @179, @78, @71, @164, @139, @68, @119, @188, @36, @33, @29, @32, @27, @32, @33, @34, @29, @49, @40, @48, @155];
		NSData *data = [SymbolData SymbolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_headName = [self StringFromSymbolData:value];
    }
    return kContent_headName;
}

//: invalid type
- (NSString *)kNameCriticismData {
    /* static */ NSString *kNameCriticismData = nil;
    if (!kNameCriticismData) {
		NSArray<NSNumber *> *origin = @[@12, @34, @4, @241, @71, @76, @84, @63, @74, @71, @66, @254, @82, @87, @78, @67, @226];
		NSData *data = [SymbolData SymbolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCriticismData = [self StringFromSymbolData:value];
    }
    return kNameCriticismData;
}

//: invalid mode
- (NSString *)kTextFieString {
    /* static */ NSString *kTextFieString = nil;
    if (!kTextFieString) {
		NSArray<NSNumber *> *origin = @[@12, @21, @7, @42, @93, @81, @59, @84, @89, @97, @76, @87, @84, @79, @11, @88, @90, @79, @80, @150];
		NSData *data = [SymbolData SymbolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextFieString = [self StringFromSymbolData:value];
    }
    return kTextFieString;
}

//: 未知消息
- (NSString *)kText_discoName {
    /* static */ NSString *kText_discoName = nil;
    if (!kText_discoName) {
		NSArray<NSNumber *> *origin = @[@12, @22, @10, @169, @169, @7, @206, @192, @197, @93, @208, @134, @148, @209, @137, @143, @208, @160, @114, @208, @107, @153, @252];
		NSData *data = [SymbolData SymbolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_discoName = [self StringFromSymbolData:value];
    }
    return kText_discoName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentTopIndex.m
// Mortification
//
//  Created by chris on 2016/10/31.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #pragma mark - kit data request
#pragma mark - kit data request

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "FFFKitDataProviderImpl.h"
#import "CommentTopIndex.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"

//: @interface NIMKitDataRequest : NSObject
@interface ResultContent : NSObject

//: @property (nonatomic,strong) NSMutableSet *failedUserIds;
@property (nonatomic,strong) NSMutableSet *failedUserIds;

//: @property (nonatomic,assign) NSInteger maxMergeCount; 
@property (nonatomic,assign) NSInteger maxMergeCount;//最大合并数

//: - (void)requestUserIds:(NSArray *)userIds;
- (void)godspeedEnable:(NSArray *)userIds;

//: @end
@end


//: @implementation NIMKitDataRequest{
@implementation ResultContent{
    //: NSMutableArray *_requstUserIdArray; 
    NSMutableArray *_requstUserIdArray; //待请求池
    //: BOOL _isRequesting;
    BOOL _isRequesting;
}

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _failedUserIds = [[NSMutableSet alloc] init];
        _failedUserIds = [[NSMutableSet alloc] init];
        //: _requstUserIdArray = [[NSMutableArray alloc] init];
        _requstUserIdArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}


//: - (void)requestUserIds:(NSArray *)userIds
- (void)godspeedEnable:(NSArray *)userIds
{
    //: for (NSString *userId in userIds)
    for (NSString *userId in userIds)
    {
        //: if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        {
            //: [_requstUserIdArray addObject:userId];
            [_requstUserIdArray addObject:userId];
        }
    }
    //: [self request];
    [self style];
}


//: - (void)request
- (void)style
{
    //: static NSUInteger MaxBatchReuqestCount = 10;
    static NSUInteger MaxBatchReuqestCount = 10;
    //: if (_isRequesting || [_requstUserIdArray count] == 0) {
    if (_isRequesting || [_requstUserIdArray count] == 0) {
        //: return;
        return;
    }
    //: _isRequesting = YES;
    _isRequesting = YES;
    //: NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    //: [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];
    [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
    [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
                                        //: completion:^(NSArray *users, NSError *error) {
                                        completion:^(NSArray *users, NSError *error) {
                                            //: [weakSelf afterReuquest:userIds];
                                            [weakSelf subsequently:userIds];
                                            //: if (!error && users.count)
                                            if (!error && users.count)
                                            {
                                                //: [[MyUserKit sharedKit] notfiyUserInfoChanged:userIds];
                                                [[Mortification text] big:userIds];
                                            }
                                            //: else if ([weakSelf shouldAddToFailedUsers:error])
                                            else if ([weakSelf can:error])
                                            {
                                                //: [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                                [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                            }
                                        //: }];
                                        }];
}

//: - (void)afterReuquest:(NSArray *)userIds
- (void)subsequently:(NSArray *)userIds
{
    //: _isRequesting = NO;
    _isRequesting = NO;
    //: [_requstUserIdArray removeObjectsInArray:userIds];
    [_requstUserIdArray removeObjectsInArray:userIds];
    //: [self request];
    [self style];

}

//: - (BOOL)shouldAddToFailedUsers:(NSError *)error
- (BOOL)can:(NSError *)error
{
    //没有错误这种异常情况走到这个路径里也不对，不再请求
    //: return error.code != NIMRemoteErrorCodeTimeoutError || !error;
    return error.code != NIMRemoteErrorCodeTimeoutError || !error;
}

//: @end
@end

//: #pragma mark - data provider impl
#pragma mark - data provider impl

//: @interface FFFKitDataProviderImpl()<NIMUserManagerDelegate,
@interface CommentTopIndex()<NIMUserManagerDelegate,
                                    //: NIMTeamManagerDelegate,
                                    NIMTeamManagerDelegate,
                                    //: NIMLoginManagerDelegate,
                                    NIMLoginManagerDelegate,
                                    //: NIMTeamManagerDelegate>
                                    NIMTeamManagerDelegate>

//: @property (nonatomic,strong) UIImage *defaultUserAvatar;
@property (nonatomic,strong) UIImage *defaultUserAvatar;

//: @property (nonatomic,strong) UIImage *defaultTeamAvatar;
@property (nonatomic,strong) UIImage *defaultTeamAvatar;

//: @property (nonatomic,strong) NIMKitDataRequest *request;
@property (nonatomic,strong) ResultContent *request;

//: @end
@end


//: @implementation FFFKitDataProviderImpl
@implementation CommentTopIndex

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _request = [[NIMKitDataRequest alloc] init];
        _request = [[ResultContent alloc] init];
        //: _request.maxMergeCount = 20;
        _request.maxMergeCount = 20;
        //: [[NIMSDK sharedSDK].userManager addDelegate:self];
        [[NIMSDK sharedSDK].userManager addDelegate:self];
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
        //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
        [[NIMSDK sharedSDK].loginManager addDelegate:self];
        //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
}


//: #pragma mark - public api
#pragma mark - public api
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (CancelTeamCorner *)tingVoice:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option
                    keepingOption:(CellClean *)option
{
    //: NIMSession *session = option.message.session?:option.session;
    NIMSession *session = option.message.session?:option.session;
    //: FFFKitInfo *info = [self infoByUser:userId session:session option:option];
    CancelTeamCorner *info = [self headingDate:userId topFind:session progress:option];
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (CancelTeamCorner *)ability:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option
                    naturalEvent_strong:(CellClean *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    CancelTeamCorner *info = [[CancelTeamCorner alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (CancelTeamCorner *)cellList:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option
                         view:(CellClean *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    CancelTeamCorner *info = [[CancelTeamCorner alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)replyedMessage
- (NSString *)cells:(NIMMessage *)replyedMessage
{
    //: NIMMessageType messageType = replyedMessage.messageType;
    NIMMessageType messageType = replyedMessage.messageType;
    //: NSString *content = @"未知消息".nim_localized;
    NSString *content = [[SymbolData sharedInstance] kText_discoName].disable;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.message = replyedMessage;
    option.message = replyedMessage;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:replyedMessage.from option:option];
    CancelTeamCorner *info = [[Mortification text] tingVoice:replyedMessage.from keepingOption:option];
    //: NSString *from = info.showName;
    NSString *from = info.showName;
    //: switch (messageType) {
    switch (messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: content = replyedMessage.text;
            content = replyedMessage.text;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: content = @"[图片]".nim_localized;
            content = @"[图片]".disable;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: content = @"[视频]".nim_localized;
            content = @"[视频]".disable;
            //: break;
            break;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: content = @"[文件]".nim_localized;
            content = @"[文件]".disable;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: content = @"[位置]".nim_localized;
            content = @"[位置]".disable;
            //: break;
            break;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
            //: content = @"[通知]".nim_localized;
            content = @"[通知]".disable;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: content = @"[提示]".nim_localized;
            content = @"[提示]".disable;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: content = @"[语音]".nim_localized;
            content = @"[语音]".disable;
            //: break;
            break;
        //: case NIMMessageTypeCustom:
        case NIMMessageTypeCustom:
            //: content = @"[自定义消息]".nim_localized;
            content = [[SymbolData sharedInstance] kNameClimateValue].disable;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (content.length > 0)
//    {
//        content = [NSString stringWithFormat:@"“%@”".nim_localized, content];
//    }
    //: return content;
    return content;
}

//: #pragma mark - 用户信息拼装
#pragma mark - 用户信息拼装
//会话中用户信息
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (CancelTeamCorner *)headingDate:(NSString *)userId
                   //: session:(NIMSession *)session
                   topFind:(NIMSession *)session
                    //: option:(FFFKitInfoFetchOption *)option
                    progress:(CellClean *)option
{
    //: NIMSessionType sessionType = session.sessionType;
    NIMSessionType sessionType = session.sessionType;
    //: FFFKitInfo *info;
    CancelTeamCorner *info;

    //: switch (sessionType) {
    switch (sessionType) {
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        {
            //: info = [self userInfoInP2P:userId option:option];
            info = [self reread:userId markBy:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        {
            //: info = [self userInfo:userId inTeam:session.sessionId option:option];
            info = [self optionName:userId should:session.sessionId pin:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
        {
            //: info = [self userInfo:userId inChatroom:session.sessionId option:option];
            info = [self inComment:userId frameOption:session.sessionId verticalOf:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        {
            //: info = [self userInfo:userId inSuperTeam:session.sessionId option:option];
            info = [self net:userId shadow:session.sessionId start:option];
            //: break;
            break;
        }
        //: default:
        default:
            //: NSAssert(0, @"invalid type");
            NSAssert(0, [[SymbolData sharedInstance] kNameCriticismData]);
            //: break;
            break;
    }

    //: if (!info)
    if (!info)
    {
        //: if (!userId.length)
        if (!userId.length)
        {
            //: NSLog(@"warning: fetch user failed because userid is empty");
        }
        //: else
        else
        {
            //: [self.request requestUserIds:@[userId]];
            [self.request godspeedEnable:@[userId]];
        }

        //: info = [[FFFKitInfo alloc] init];
        info = [[CancelTeamCorner alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: info.showName = userId; 
        info.showName = userId; //默认值
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}



//: #pragma mark - P2P 用户信息
#pragma mark - P2P 用户信息
//: - (FFFKitInfo *)userInfoInP2P:(NSString *)userId
- (CancelTeamCorner *)reread:(NSString *)userId
                       //: option:(FFFKitInfoFetchOption *)option
                       markBy:(CellClean *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: FFFKitInfo *info;
    CancelTeamCorner *info;
    //: if (userInfo)
    if (userInfo)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[CancelTeamCorner alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self toIconCircle:user
                                           //: nick:nil
                                           current:nil
                                         //: option:option];
                                         quantitativeRelation_strong:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 群组用户信息
#pragma mark - 群组用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (CancelTeamCorner *)optionName:(NSString *)userId
                  //: inTeam:(NSString *)teamId
                  should:(NSString *)teamId
                  //: option:(FFFKitInfoFetchOption *)option
                  pin:(CellClean *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                                 //: inTeam:teamId];
                                                                 inTeam:teamId];

    //: FFFKitInfo *info;
    CancelTeamCorner *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[CancelTeamCorner alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self toIconCircle:user
                                           //: nick:member.nickname
                                           current:member.nickname
                                         //: option:option];
                                         quantitativeRelation_strong:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}

//: #pragma mark - 超大群用户信息
#pragma mark - 超大群用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (CancelTeamCorner *)net:(NSString *)userId
             //: inSuperTeam:(NSString *)teamId
             shadow:(NSString *)teamId
                  //: option:(FFFKitInfoFetchOption *)option
                  start:(CellClean *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                      //: inTeam:teamId];
                                                                      inTeam:teamId];

    //: FFFKitInfo *info;
    CancelTeamCorner *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[CancelTeamCorner alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self toIconCircle:user
                                           //: nick:member.nickname
                                           current:member.nickname
                                         //: option:option];
                                         quantitativeRelation_strong:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 聊天室用户信息
#pragma mark - 聊天室用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (CancelTeamCorner *)inComment:(NSString *)userId
              //: inChatroom:(NSString *)roomId
              frameOption:(NSString *)roomId
                  //: option:(FFFKitInfoFetchOption *)option
                  verticalOf:(CellClean *)option
{
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    CancelTeamCorner *info = [[CancelTeamCorner alloc] init];
    //: info.infoId = userId;
    info.infoId = userId;
    //: NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    //: (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    //: if (ext)
    if (ext)
    {
        //: info.showName = ext.roomNickname;
        info.showName = ext.roomNickname;
        //: info.avatarUrlString = ext.roomAvatar;
        info.avatarUrlString = ext.roomAvatar;
    }
    //: else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];
        NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];

        //: switch (mode) {
        switch (mode) {
            //: case NIMSDKAuthModeChatroom:
            case NIMSDKAuthModeChatroom:
            {
//                NSAssert([Mortification sharedKit].independentModeExtraInfo, @"in mode NIMSDKAuthModeChatroom , must has independentModeExtraInfo");
                //: info.showName = [MyUserKit sharedKit].independentModeExtraInfo.myChatroomNickname;
                info.showName = [Mortification text].independentModeExtraInfo.myChatroomNickname;
                //: info.avatarUrlString = [MyUserKit sharedKit].independentModeExtraInfo.myChatroomAvatar;
                info.avatarUrlString = [Mortification text].independentModeExtraInfo.myChatroomAvatar;
            }
                //: break;
                break;
            //: case NIMSDKAuthModeIM:
            case NIMSDKAuthModeIM:
            {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: info.showName = user.userInfo.nickName;
                info.showName = user.userInfo.nickName;
                //: info.avatarUrlString = user.userInfo.thumbAvatarUrl;
                info.avatarUrlString = user.userInfo.thumbAvatarUrl;
            }
                //: break;
                break;
            //: default:
            default:
            {
                //: NSAssert(0, @"invalid mode");
                NSAssert(0, [[SymbolData sharedInstance] kTextFieString]);
            }
                //: break;
                break;
        }
    }

    //: info.avatarImage = self.defaultUserAvatar;
    info.avatarImage = self.defaultUserAvatar;
    //: return info;
    return info;
}

//昵称优先级
//: - (NSString *)nicknameWithUser:(NIMUser *)user
- (NSString *)toIconCircle:(NIMUser *)user
                          //: nick:(NSString *)nick
                          current:(NSString *)nick
                        //: option:(FFFKitInfoFetchOption *)option
                        quantitativeRelation_strong:(CellClean *)option
{
    //: NSString *name = nil;
    NSString *name = nil;
    //: do{
    do{
        //: if (!option.forbidaAlias && [user.alias length])
        if (!option.forbidaAlias && [user.alias length])
        {
            //: name = user.alias;
            name = user.alias;
            //: break;
            break;
        }
        //: if (nick && [nick length])
        if (nick && [nick length])
        {
            //: name = nick;
            name = nick;
            //: break;
            break;
        }

        //: if ([user.userInfo.nickName length])
        if ([user.userInfo.nickName length])
        {
            //: name = user.userInfo.nickName;
            name = user.userInfo.nickName;
            //: break;
            break;
        }
    //: }while (0);
    }while (0);
    //: return name;
    return name;
}

//: #pragma mark - avatar
#pragma mark - avatar
//: - (UIImage *)defaultTeamAvatar
- (UIImage *)defaultTeamAvatar
{
    //: if (!_defaultTeamAvatar)
    if (!_defaultTeamAvatar)
    {
        //: _defaultTeamAvatar = [UIImage imageNamed:@"head_default"];
        _defaultTeamAvatar = [UIImage imageNamed:[[SymbolData sharedInstance] kContent_headName]];
    }
    //: return _defaultTeamAvatar;
    return _defaultTeamAvatar;
}

//: - (UIImage *)defaultUserAvatar
- (UIImage *)defaultUserAvatar
{
    //: if (!_defaultUserAvatar)
    if (!_defaultUserAvatar)
    {
        //: _defaultUserAvatar = [UIImage imageNamed:@"head_default"];
        _defaultUserAvatar = [UIImage imageNamed:[[SymbolData sharedInstance] kContent_headName]];
    }
    //: return _defaultUserAvatar;
    return _defaultUserAvatar;
}




//将个人信息和群组信息变化通知给 Mortification 。
//如果您的应用不托管个人信息给云信，则需要您自行在上层监听个人信息变动，并将变动通知给 NIMKit。

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onFriendChanged:(NIMUser *)user
- (void)onFriendChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self green:user];
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self green:user];
}

//: - (void)notifyUser:(NIMUser *)user
- (void)green:(NIMUser *)user
{
    //: if (!user)
    if (!user)
    {
        //: NSLog(@"warning: notify user failed because user is empty");
    }
    //: else
    else
    {
        //: [[MyUserKit sharedKit] notfiyUserInfoChanged:@[user.userId]];
        [[Mortification text] big:@[user.userId]];
    }

}

//: #pragma mark - NIMTeamManagerDelegate
#pragma mark - NIMTeamManagerDelegate
//: - (void)onTeamAdded:(NIMTeam *)team
- (void)onTeamAdded:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self with:team];
}

//: - (void)onTeamUpdated:(NIMTeam *)team
- (void)onTeamUpdated:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self with:team];
}

//: - (void)onTeamRemoved:(NIMTeam *)team
- (void)onTeamRemoved:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self with:team];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team
- (void)onTeamMemberChanged:(NIMTeam *)team
{
    //: [self notifyTeamMember:team];
    [self fellowBatteryNotify:team];
}

//: - (void)notifyTeamInfo:(NIMTeam *)team
- (void)with:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify teamid failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[Mortification text] withContent:team.teamId nail:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[Mortification text] withContent:team.teamId nail:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: - (void)notifyTeamMember:(NIMTeam *)team
- (void)fellowBatteryNotify:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify team member failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[Mortification text] withContent:team.teamId nail:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[Mortification text] withContent:team.teamId nail:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [[MyUserKit sharedKit] notifyTeamInfoChanged:nil type:NIMKitTeamTypeNomal];
        [[Mortification text] withContent:nil nail:NIMKitTeamTypeNomal];
        //: [[MyUserKit sharedKit] notifyTeamMemebersChanged:nil type:NIMKitTeamTypeNomal];
        [[Mortification text] notifyObjectType:nil sessionBeforeTeamType:NIMKitTeamTypeNomal];
    }
}



//: @end
@end