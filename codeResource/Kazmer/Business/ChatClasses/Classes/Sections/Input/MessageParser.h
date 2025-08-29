// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageParser.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef enum : NSUInteger
typedef enum : NSUInteger
{
    //: NIMInputTokenTypeText,
    NIMInputTokenTypeText,
    //: NIMInputTokenTypeEmoticon,
    NIMInputTokenTypeEmoticon,
    //: NIMInputTokenTypeLink,
    NIMInputTokenTypeLink,

//: } NIMInputTokenType;
} NIMInputTokenType;

//: @interface NIMInputTextToken : NSObject
@interface TextPage : NSObject
//: @property (nonatomic,assign) NIMInputTokenType type;
@property (nonatomic,assign) NIMInputTokenType type;
//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;
//: @end
@end


//: @interface FFFInputEmoticonParser : NSObject
@interface MessageParser : NSObject
//: + (instancetype)currentParser;
+ (instancetype)item;
//: - (NSArray *)tokens:(NSString *)text;
- (NSArray *)show:(NSString *)text;
//: @end
@end