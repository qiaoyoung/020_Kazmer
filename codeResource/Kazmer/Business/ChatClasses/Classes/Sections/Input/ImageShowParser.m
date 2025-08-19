
#import <Foundation/Foundation.h>

NSString *StringFromHeavyData(Byte *data);


//: \\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]
Byte main_cartCabinData[] = {59, 29, 71, 13, 70, 203, 148, 186, 210, 168, 216, 132, 224, 163, 162, 162, 168, 116, 193, 136, 116, 161, 119, 116, 128, 163, 188, 123, 172, 119, 119, 116, 163, 188, 128, 173, 168, 124, 164, 114, 163, 164, 95};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMEmoticonParser.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonParser.h"
#import "ImageShowParser.h"
//: #import "FFFInputEmoticonManager.h"
#import "TitleToManager.h"

//: @implementation NIMInputTextToken
@implementation EdgeModeName
//: @end
@end

//: @interface FFFInputEmoticonParser ()
@interface ImageShowParser ()
//: @property (nonatomic,strong) NSCache *tokens;
@property (nonatomic,strong) NSCache *tokens;
//: @end
@end


//: @implementation FFFInputEmoticonParser
@implementation ImageShowParser
//: + (instancetype)currentParser
+ (instancetype)independent
{
    //: static FFFInputEmoticonParser *instance = nil;
    static ImageShowParser *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonParser alloc] init];
        instance = [[ImageShowParser alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _tokens = [[NSCache alloc] init];
        _tokens = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSArray *)tokens:(NSString *)text
- (NSArray *)asRangeTokens:(NSString *)text
{
    //: NSArray *tokens = nil;
    NSArray *tokens = nil;
    //: if ([text length])
    if ([text length])
    {
        //: tokens = [_tokens objectForKey:text];
        tokens = [_tokens objectForKey:text];
        //: if (tokens == nil)
        if (tokens == nil)
        {
            //: tokens = [self parseToken:text];
            tokens = [self fullBy:text];
            //: [_tokens setObject:tokens
            [_tokens setObject:tokens
                        //: forKey:text];
                        forKey:text];
        }
    }
    //: return tokens;
    return tokens;
}

//: - (NSArray *)parseToken:(NSString *)text
- (NSArray *)fullBy:(NSString *)text
{
    //: NSMutableArray *tokens = [NSMutableArray array];
    NSMutableArray *tokens = [NSMutableArray array];
    //: static NSRegularExpression *exp;
    static NSRegularExpression *exp;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: exp = [NSRegularExpression regularExpressionWithPattern:@"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]"
        exp = [NSRegularExpression regularExpressionWithPattern:StringFromHeavyData(main_cartCabinData)
                                                        //: options:NSRegularExpressionCaseInsensitive
                                                        options:NSRegularExpressionCaseInsensitive
                                                          //: error:nil];
                                                          error:nil];
    //: });
    });
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: [exp enumerateMatchesInString:text
    [exp enumerateMatchesInString:text
                          //: options:0
                          options:0
                            //: range:NSMakeRange(0, [text length])
                            range:NSMakeRange(0, [text length])
                       //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                       usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                           //: NSString *rangeText = [text substringWithRange:result.range];
                           NSString *rangeText = [text substringWithRange:result.range];
                           //: if ([[FFFInputEmoticonManager sharedManager] emoticonByTag:rangeText])
                           if ([[TitleToManager draw] data:rangeText])
                           {
                               //: if (result.range.location > index)
                               if (result.range.location > index)
                               {
                                   //: NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                                   EdgeModeName *token = [[EdgeModeName alloc] init];
                                   //: token.type = NIMInputTokenTypeText;
                                   token.type = NIMInputTokenTypeText;
                                   //: token.text = rawText;
                                   token.text = rawText;
                                   //: [tokens addObject:token];
                                   [tokens addObject:token];
                               }
                               //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                               EdgeModeName *token = [[EdgeModeName alloc] init];
                               //: token.type = NIMInputTokenTypeEmoticon;
                               token.type = NIMInputTokenTypeEmoticon;
                               //: token.text = rangeText;
                               token.text = rangeText;
                               //: [tokens addObject:token];
                               [tokens addObject:token];

                               //: index = result.range.location + result.range.length;
                               index = result.range.location + result.range.length;
                           }
                       //: }];
                       }];

    //: if (index < [text length])
    if (index < [text length])
    {
        //: NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
        EdgeModeName *token = [[EdgeModeName alloc] init];
        //: token.type = NIMInputTokenTypeText;
        token.type = NIMInputTokenTypeText;
        //: token.text = rawText;
        token.text = rawText;
        //: [tokens addObject:token];
        [tokens addObject:token];
    }
    //: return tokens;
    return tokens;
}
//: @end
@end

Byte * HeavyDataToCache(Byte *data) {
    int effective = data[0];
    int trainingRug = data[1];
    Byte queen = data[2];
    int musculusArticularisCubiti = data[3];
    if (!effective) return data + musculusArticularisCubiti;
    for (int i = musculusArticularisCubiti; i < musculusArticularisCubiti + trainingRug; i++) {
        int value = data[i] - queen;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[musculusArticularisCubiti + trainingRug] = 0;
    return data + musculusArticularisCubiti;
}

NSString *StringFromHeavyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HeavyDataToCache(data)];
}
