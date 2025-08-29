
#import <Foundation/Foundation.h>

typedef struct {
    Byte literalTo;
    Byte *save;
    unsigned int handsomeEyebrow;
	int combat;
	int recommend;
	int meanwhile;
} StructMysteryToolData;

@interface MysteryToolData : NSObject

@end

@implementation MysteryToolData

+ (NSData *)MysteryToolDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)MysteryToolDataToByte:(StructMysteryToolData *)data {
    for (int i = 0; i < data->handsomeEyebrow; i++) {
        data->save[i] ^= data->literalTo;
    }
    data->save[data->handsomeEyebrow] = 0;
	if (data->handsomeEyebrow >= 3) {
		data->combat = data->save[0];
		data->recommend = data->save[1];
		data->meanwhile = data->save[2];
	}
    return data->save;
}

+ (NSString *)StringFromMysteryToolData:(StructMysteryToolData *)data {
    return [NSString stringWithUTF8String:(char *)[self MysteryToolDataToByte:data]];
}

//: tyl_spellingCache
+ (NSString *)kTextFlowerValue {
    /* static */ NSString *kTextFlowerValue = nil;
    if (!kTextFlowerValue) {
		NSString *origin = @"494451624e4d58515154535a7e5c5e555888";
		NSData *data = [MysteryToolData MysteryToolDataToData:origin];
        StructMysteryToolData value = (StructMysteryToolData){61, (Byte *)data.bytes, 17, 111, 216, 248};
        kTextFlowerValue = [self StringFromMysteryToolData:&value];
    }
    return kTextFlowerValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddOnCenter.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSpellingCenter.h"
#import "SizeTable.h"
//: #import "FFFPinyinConverter.h"
#import "PathCommentIndex.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation TextLabel

//: @end
@end

//: @interface FFFSpellingCenter ()
@interface SizeTable ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (TextLabel *)valueTitle: (NSString *)source;
//: @end
@end


//: @implementation FFFSpellingCenter
@implementation SizeTable
//: + (FFFSpellingCenter *)sharedCenter
+ (SizeTable *)visible
{
    //: static FFFSpellingCenter *instance = nil;
    static SizeTable *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSpellingCenter alloc]init];
        instance = [[SizeTable alloc]init];
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
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:[MysteryToolData kTextFlowerValue]];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[TextLabel class] json:spellingCache]];
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
- (void)path
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
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:[MysteryToolData kTextFlowerValue]];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (TextLabel *)visualImageName:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    TextLabel *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        TextLabel *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self valueTitle:source];
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
- (NSString *)targetAerogramme:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    TextLabel *unit = [self visualImageName:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (TextLabel *)valueTitle:(NSString *)source
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
        NSString *pinyin = [[PathCommentIndex responseInstance] with:word];

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
    TextLabel *unit = [[TextLabel alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end