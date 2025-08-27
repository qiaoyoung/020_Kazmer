// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+Zone.h
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSData (NTES)
@interface NSData (Zone)
//: - (NSString *)MD5String;
- (NSString *)flip;

//: - (NSData *)aes256EncryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)value:(NSString *)key position:(NSString *)vector;
//: - (NSData *)aes256DecryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)image:(NSString *)key stateChild:(NSString *)vector;

//: - (NSData *)rc4EncryptWithKey:(NSString *)key;
- (NSData *)status:(NSString *)key;
//: - (NSData *)rc4DecryptWithKey:(NSString *)key;
- (NSData *)show:(NSString *)key;

//: @end
@end