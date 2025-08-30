// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendManager.h
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"

//: @interface USERLoginData : NSObject <YYModel>
@interface FlipData : NSObject <YYModel>

//: @property (nonatomic,copy) NSString *account;
@property (nonatomic,copy) NSString *account;
//: @property (nonatomic) int authType;
@property (nonatomic) int authType;
//: @property (nonatomic,copy) NSString *loginExtension;
@property (nonatomic,copy) NSString *loginExtension;
//: @property (nonatomic,copy) NSString *token;
@property (nonatomic,copy) NSString *token;

//: - (BOOL)isValid;
- (BOOL)exceptBubble;

//: @end
@end

//: @interface CCCLoginManager : NSObject
@interface BlendManager : NSObject
//: + (instancetype)sharedManager;
+ (instancetype)iconAcrossManager;

//: @property (nonatomic,strong) USERLoginData *currentLoginData;
@property (nonatomic,strong) FlipData *currentLoginData;
//: @end
@end