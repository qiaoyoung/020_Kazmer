//
//  USERPinyinConverter.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface USERPinyinConverter : NSObject
+ (USERPinyinConverter *)sharedInstance;

- (NSString *)toPinyin: (NSString *)source;
@end
