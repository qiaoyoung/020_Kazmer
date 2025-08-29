//
//  USERSubscribeDefine.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

#ifndef USERSubscribeDefine_h
#define USERSubscribeDefine_h

extern NSString *const USERSubscribeNetState;

extern NSString *const USERSubscribeOnlineState;

typedef NS_ENUM(NSInteger, USERCustomStateValue) {
    USERCustomStateValueOnlineExt = 10001,
};


typedef NS_ENUM(NSInteger, USEROnlineState){
    USEROnlineStateNormal, //在线
    USEROnlineStateBusy,   //忙碌
    USEROnlineStateLeave,  //离开
};


#endif /* USERSubscribeDefine_h */
