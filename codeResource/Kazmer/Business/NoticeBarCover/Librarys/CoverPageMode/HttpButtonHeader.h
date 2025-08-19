// __DEBUG__
// __CLOSE_PRINT__
//
//  HttpButtonHeader.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface ZCHttpRequestHeader : NSObject
@interface HttpButtonHeader : NSObject
//: +(NSDictionary *)getHeader;
+(NSDictionary *)header;
//: + (NSString *)getAppID;
+ (NSString *)midApp;

//: +(NSString *)getIOSVersion;
+(NSString *)pinVersion;
//: +(NSString*)deviceVersion;
+(NSString*)arrayTab;
//: @end
@end