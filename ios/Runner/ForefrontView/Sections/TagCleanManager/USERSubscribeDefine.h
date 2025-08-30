// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSubscribeDefine.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: extern NSString *const USERSubscribeNetState;
//extern NSString *const k_unitText;
NSString *k_unitText(NSString *value);

//: extern NSString *const USERSubscribeOnlineState;
NSString *mainTranslationKey(NSString *value);

//: typedef NS_ENUM(NSInteger, USERCustomStateValue) {
typedef NS_ENUM(NSInteger, USERCustomStateValue) {
    //: USERCustomStateValueOnlineExt = 10001,
    USERCustomStateValueOnlineExt = 10001,
//: };
};


//: typedef NS_ENUM(NSInteger, USEROnlineState){
typedef NS_ENUM(NSInteger, USEROnlineState){
    //: USEROnlineStateNormal, 
    USEROnlineStateNormal, //在线
    //: USEROnlineStateBusy, 
    USEROnlineStateBusy, //忙碌
    //: USEROnlineStateLeave, 
    USEROnlineStateLeave, //离开
//: };
};
