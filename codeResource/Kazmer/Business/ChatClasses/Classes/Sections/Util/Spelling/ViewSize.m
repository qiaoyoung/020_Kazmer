
#import <Foundation/Foundation.h>

@interface JournalismData : NSObject

+ (instancetype)sharedInstance;

//: tyl_spellingCache
@property (nonatomic, copy) NSString *notiTableNuclearData;

@end

@implementation JournalismData

+ (instancetype)sharedInstance {
    static JournalismData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)JournalismDataToCache:(Byte *)data {
    int acrylonitrileButadieneStyrene = data[0];
    Byte hoppingWood = data[1];
    int reloadImage = data[2];
    for (int i = reloadImage; i < reloadImage + acrylonitrileButadieneStyrene; i++) {
        int value = data[i] - hoppingWood;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[reloadImage + acrylonitrileButadieneStyrene] = 0;
    return data + reloadImage;
}

- (NSString *)StringFromJournalismData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self JournalismDataToCache:data]];
}

//: tyl_spellingCache
- (NSString *)notiTableNuclearData {
    if (!_notiTableNuclearData) {
        Byte value[] = {17, 11, 4, 3, 127, 132, 119, 106, 126, 123, 112, 119, 119, 116, 121, 114, 78, 108, 110, 115, 112, 38};
        _notiTableNuclearData = [self StringFromJournalismData:value];
    }
    return _notiTableNuclearData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyCenter.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSpellingCenter.h"
#import "ViewSize.h"
//: #import "FFFPinyinConverter.h"
#import "FastEmpty.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation AccountUnit

//: @end
@end

//: @interface FFFSpellingCenter ()
@interface ViewSize ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (AccountUnit *)manager: (NSString *)source;
//: @end
@end


//: @implementation FFFSpellingCenter
@implementation ViewSize
//: + (FFFSpellingCenter *)sharedCenter
+ (ViewSize *)stormCenter
{
    //: static FFFSpellingCenter *instance = nil;
    static ViewSize *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSpellingCenter alloc]init];
        instance = [[ViewSize alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_spellingCache"];
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:[JournalismData sharedInstance].notiTableNuclearData];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[AccountUnit class] json:spellingCache]];
        }

        //: if (!_spellingCache)
        if (!_spellingCache)
        {
            //: _spellingCache = [[NSMutableDictionary alloc]init];
            _spellingCache = [[NSMutableDictionary alloc]init];
        }
    }
    //: return self;
    return self;
}



//: - (void)saveSpellingCache
- (void)spelling
{
    //: static const NSInteger kMaxEntriesCount = 5000;
    static const NSInteger kMaxEntriesCount = 5000;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NSInteger count = [_spellingCache count];
        NSInteger count = [_spellingCache count];
        //: if (count >= kMaxEntriesCount)
        if (count >= kMaxEntriesCount)
        {
            //: [_spellingCache removeAllObjects];
            [_spellingCache removeAllObjects];
        }
        //: if (_spellingCache)
        if (_spellingCache)
        {
            //: [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:@"tyl_spellingCache"];
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:[JournalismData sharedInstance].notiTableNuclearData];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (AccountUnit *)format:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    AccountUnit *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        AccountUnit *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self manager:source];
            //: if ([unit.fullSpelling length] && [unit.shortSpelling length])
            if ([unit.fullSpelling length] && [unit.shortSpelling length])
            {
                //: [_spellingCache setObject:unit forKey:source];
                [_spellingCache setObject:unit forKey:source];
            }
        }
        //: spellingUnit = unit;
        spellingUnit = unit;
    }
    //: return spellingUnit;
    return spellingUnit;
}

//: - (NSString *)firstLetter:(NSString *)input
- (NSString *)atLetter:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    AccountUnit *unit = [self format:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (AccountUnit *)manager:(NSString *)source
{
    //: NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    //: NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    //: for (NSInteger i = 0; i < [source length]; i++)
    for (NSInteger i = 0; i < [source length]; i++)
    {
        //: NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        //: NSString *pinyin = [[FFFPinyinConverter sharedInstance] toPinyin:word];
        NSString *pinyin = [[FastEmpty shared] should:word];

        //: if ([pinyin length])
        if ([pinyin length])
        {
            //: [fullSpelling appendString:pinyin];
            [fullSpelling appendString:pinyin];
            //: [shortSpelling appendString:[pinyin substringToIndex:1]];
            [shortSpelling appendString:[pinyin substringToIndex:1]];
        }
    }

    //: NIMSpellingUnit *unit = [[NIMSpellingUnit alloc]init];
    AccountUnit *unit = [[AccountUnit alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end