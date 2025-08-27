// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoUser.h
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

//: @interface NTESLoginData : NSObject <YYModel>
@interface PageSub : NSObject <YYModel>

//: @property (nonatomic,copy) NSString *account;
@property (nonatomic,copy) NSString *account;
//: @property (nonatomic,copy) NSString *token;
@property (nonatomic,copy) NSString *token;
//: @property (nonatomic) int authType;
@property (nonatomic) int authType;
//: @property (nonatomic,copy) NSString *loginExtension;
@property (nonatomic,copy) NSString *loginExtension;

//: - (BOOL)isValid;
- (BOOL)bubble;

//: @end
@end

//: @interface CCCLoginManager : NSObject
@interface InfoUser : NSObject
//: + (instancetype)sharedManager;
+ (instancetype)value;

//: @property (nonatomic,strong) NTESLoginData *currentLoginData;
@property (nonatomic,strong) PageSub *currentLoginData;
//: @end
@end