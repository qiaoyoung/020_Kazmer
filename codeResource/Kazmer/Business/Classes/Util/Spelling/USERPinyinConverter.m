//
//  USERPinyinConverter.m
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

#import "USERPinyinConverter.h"


@implementation USERPinyinConverter
+ (USERPinyinConverter *)sharedInstance
{
    static USERPinyinConverter *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[USERPinyinConverter alloc] init];
    });
    return instance;
}


- (NSString *)toPinyin: (NSString *)source
{
    if ([source length] == 0)
    {
        return nil;
    }
    NSMutableString *piyin = [NSMutableString stringWithString:source];
    CFStringTransform((__bridge CFMutableStringRef)piyin, NULL, kCFStringTransformToLatin, false);
    
    NSString *py = [piyin stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    return [py stringByReplacingOccurrencesOfString:@"'" withString:@""];
}



@end
