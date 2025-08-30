// __DEBUG__
// __CLOSE_PRINT__
//
//  NSData+Turn.h
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSData (USER)
@interface NSData (Turn)
//: - (NSData *)aes256DecryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)subOn:(NSString *)key blue:(NSString *)vector;

//: - (NSData *)rc4DecryptWithKey:(NSString *)key;
- (NSData *)ofWith:(NSString *)key;
//: - (NSString *)MD5String;
- (NSString *)ticket;

//: - (NSData *)rc4EncryptWithKey:(NSString *)key;
- (NSData *)can:(NSString *)key;
//: - (NSData *)aes256EncryptWithKey:(NSString *)key vector:(NSString *)vector;
- (NSData *)my:(NSString *)key table:(NSString *)vector;

//: @end
@end