
#import <Foundation/Foundation.h>

typedef struct {
    Byte head;
    Byte *marchKey;
    unsigned int tapViaView;
	int practiceSession;
} StructMildData;

@interface MildData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MildData

+ (instancetype)sharedInstance {
    static MildData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MildDataToByte:(StructMildData *)data {
    for (int i = 0; i < data->tapViaView; i++) {
        data->marchKey[i] ^= data->head;
    }
    data->marchKey[data->tapViaView] = 0;
	if (data->tapViaView >= 1) {
		data->practiceSession = data->marchKey[0];
	}
    return data->marchKey;
}

- (NSString *)StringFromMildData:(StructMildData *)data {
    return [NSString stringWithUTF8String:(char *)[self MildDataToByte:data]];
}

//: [系统通知][%@]
- (NSString *)main_valueMayContent {
    /* static */ NSString *main_valueMayContent = nil;
    if (!main_valueMayContent) {
        StructMildData value = (StructMildData){44, (Byte []){119, 203, 159, 151, 203, 151, 179, 197, 172, 182, 203, 179, 137, 113, 119, 9, 108, 113, 37}, 18, 163};
        main_valueMayContent = [self StringFromMildData:&value];
    }
    return main_valueMayContent;
}

//: 点对点消息单向撤回
- (NSString *)kPipeToPath {
    /* static */ NSString *kPipeToPath = nil;
    if (!kPipeToPath) {
        StructMildData value = (StructMildData){84, (Byte []){179, 214, 237, 177, 251, 237, 179, 214, 237, 178, 226, 220, 178, 213, 251, 177, 217, 193, 177, 196, 197, 178, 198, 240, 177, 207, 202, 104}, 27, 189};
        kPipeToPath = [self StringFromMildData:&value];
    }
    return kPipeToPath;
}

//: 点对点消息撤回
- (NSString *)app_strengthenName {
    /* static */ NSString *app_strengthenName = nil;
    if (!app_strengthenName) {
        StructMildData value = (StructMildData){241, (Byte []){22, 115, 72, 20, 94, 72, 22, 115, 72, 23, 71, 121, 23, 112, 94, 23, 99, 85, 20, 106, 111, 22}, 21, 231};
        app_strengthenName = [self StringFromMildData:&value];
    }
    return app_strengthenName;
}

//: 群消息单向撤回
- (NSString *)notiHistoryMessage {
    /* static */ NSString *notiHistoryMessage = nil;
    if (!notiHistoryMessage) {
        StructMildData value = (StructMildData){100, (Byte []){131, 218, 192, 130, 210, 236, 130, 229, 203, 129, 233, 241, 129, 244, 245, 130, 246, 192, 129, 255, 250, 82}, 21, 20};
        notiHistoryMessage = [self StringFromMildData:&value];
    }
    return notiHistoryMessage;
}

//: 超大群消息撤回
- (NSString *)notiDiskFormat {
    /* static */ NSString *notiDiskFormat = nil;
    if (!notiDiskFormat) {
        StructMildData value = (StructMildData){99, (Byte []){139, 213, 230, 134, 199, 196, 132, 221, 199, 133, 213, 235, 133, 226, 204, 133, 241, 199, 134, 248, 253, 242}, 21, 183};
        notiDiskFormat = [self StringFromMildData:&value];
    }
    return notiDiskFormat;
}

//: 群消息撤回
- (NSString *)userRemindPatrolPath {
    /* static */ NSString *userRemindPatrolPath = nil;
    if (!userRemindPatrolPath) {
        StructMildData value = (StructMildData){14, (Byte []){233, 176, 170, 232, 184, 134, 232, 143, 161, 232, 156, 170, 235, 149, 144, 255}, 15, 117};
        userRemindPatrolPath = [self StringFromMildData:&value];
    }
    return userRemindPatrolPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToUtil.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "ToUtil.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation ToUtil

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)push:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:[[MildData sharedInstance] main_valueMayContent].messageWith,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self afloat:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)afloat:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = [[MildData sharedInstance] app_strengthenName].messageWith;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = [[MildData sharedInstance] app_strengthenName].messageWith;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = [[MildData sharedInstance] userRemindPatrolPath].messageWith;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = [[MildData sharedInstance] notiDiskFormat].messageWith;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = [[MildData sharedInstance] kPipeToPath].messageWith;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = [[MildData sharedInstance] notiHistoryMessage].messageWith;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end