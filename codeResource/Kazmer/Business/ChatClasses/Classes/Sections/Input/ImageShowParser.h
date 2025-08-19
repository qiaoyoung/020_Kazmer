// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageShowParser.h
// ButtonKit
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
@interface EdgeModeName : NSObject
//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;
//: @property (nonatomic,assign) NIMInputTokenType type;
@property (nonatomic,assign) NIMInputTokenType type;
//: @end
@end


//: @interface FFFInputEmoticonParser : NSObject
@interface ImageShowParser : NSObject
//: + (instancetype)currentParser;
+ (instancetype)independent;
//: - (NSArray *)tokens:(NSString *)text;
- (NSArray *)asRangeTokens:(NSString *)text;
//: @end
@end