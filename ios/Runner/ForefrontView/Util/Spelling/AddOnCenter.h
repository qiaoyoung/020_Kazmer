// __DEBUG__
// __CLOSE_PRINT__
//
//  AddOnCenter.h
//  NIM
//  用于拼音全称和简称生成查询读取的类
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface SpellingUnit : NSObject<NSCoding>
@interface IndexCrop : NSObject<NSCoding>
//: @property (nonatomic,strong) NSString *shortSpelling;
@property (nonatomic,strong) NSString *shortSpelling;
//: @property (nonatomic,strong) NSString *fullSpelling;
@property (nonatomic,strong) NSString *fullSpelling;
//: @end
@end

//: @interface USERSpellingCenter : NSObject
@interface AddOnCenter : NSObject
{
    //: NSString *_filepath;
    NSString *_filepath;
    //: NSMutableDictionary *_spellingCache; 
    NSMutableDictionary *_spellingCache; //全拼，简称cache
}
//: + (USERSpellingCenter *)sharedCenter;
+ (AddOnCenter *)representation;
//: - (SpellingUnit *)spellingForString: (NSString *)source; 
- (IndexCrop *)formatTitle: (NSString *)source; //全拼，简拼 (全是小写)

//: - (NSString *)firstLetter: (NSString *)input; 
- (NSString *)filterLetter: (NSString *)input; //首字母
//: - (void)saveSpellingCache; 
- (void)outsideValue; //写入缓存
//: @end
@end