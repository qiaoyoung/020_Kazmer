
#import <Foundation/Foundation.h>

typedef struct {
    Byte tankSand;
    Byte *sell;
    unsigned int loopYours;
	int fixing;
	int strictRice;
} StructHungrinessData;

@interface HungrinessData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HungrinessData

+ (instancetype)sharedInstance {
    static HungrinessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HungrinessDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)HungrinessDataToByte:(StructHungrinessData *)data {
    for (int i = 0; i < data->loopYours; i++) {
        data->sell[i] ^= data->tankSand;
    }
    data->sell[data->loopYours] = 0;
	if (data->loopYours >= 2) {
		data->fixing = data->sell[0];
		data->strictRice = data->sell[1];
	}
    return data->sell;
}

- (NSString *)StringFromHungrinessData:(StructHungrinessData *)data {
    return [NSString stringWithUTF8String:(char *)[self HungrinessDataToByte:data]];
}

//: file
- (NSString *)kTitle_addedTwistValue {
    /* static */ NSString *kTitle_addedTwistValue = nil;
    if (!kTitle_addedTwistValue) {
		NSArray<NSString *> *origin = @[@"241", @"254", @"251", @"242", @"80"];
		NSData *data = [HungrinessData HungrinessDataToData:origin];
        StructHungrinessData value = (StructHungrinessData){151, (Byte *)data.bytes, 4, 229, 159};
        kTitle_addedTwistValue = [self StringFromHungrinessData:&value];
    }
    return kTitle_addedTwistValue;
}

//: tag
- (NSString *)kContentDiamondData {
    /* static */ NSString *kContentDiamondData = nil;
    if (!kContentDiamondData) {
		NSArray<NSString *> *origin = @[@"142", @"155", @"157", @"104"];
		NSData *data = [HungrinessData HungrinessDataToData:origin];
        StructHungrinessData value = (StructHungrinessData){250, (Byte *)data.bytes, 3, 157, 22};
        kContentDiamondData = [self StringFromHungrinessData:&value];
    }
    return kContentDiamondData;
}

//: gif
- (NSString *)kTextConfrontString {
    /* static */ NSString *kTextConfrontString = nil;
    if (!kTextConfrontString) {
		NSArray<NSString *> *origin = @[@"80", @"94", @"81", @"74"];
		NSData *data = [HungrinessData HungrinessDataToData:origin];
        StructHungrinessData value = (StructHungrinessData){55, (Byte *)data.bytes, 3, 181, 103};
        kTextConfrontString = [self StringFromHungrinessData:&value];
    }
    return kTextConfrontString;
}

//: pressed
- (NSString *)kNameDiaryData {
    /* static */ NSString *kNameDiaryData = nil;
    if (!kNameDiaryData) {
		NSArray<NSString *> *origin = @[@"109", @"111", @"120", @"110", @"110", @"120", @"121", @"72"];
		NSData *data = [HungrinessData HungrinessDataToData:origin];
        StructHungrinessData value = (StructHungrinessData){29, (Byte *)data.bytes, 7, 56, 87};
        kNameDiaryData = [self StringFromHungrinessData:&value];
    }
    return kNameDiaryData;
}

//: unicode
- (NSString *)kTitleMeltSteadName {
    /* static */ NSString *kTitleMeltSteadName = nil;
    if (!kTitleMeltSteadName) {
		NSArray<NSString *> *origin = @[@"125", @"102", @"97", @"107", @"103", @"108", @"109", @"101"];
		NSData *data = [HungrinessData HungrinessDataToData:origin];
        StructHungrinessData value = (StructHungrinessData){8, (Byte *)data.bytes, 7, 54, 193};
        kTitleMeltSteadName = [self StringFromHungrinessData:&value];
    }
    return kTitleMeltSteadName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USEREmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonManager.h"
#import "IndexManager.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Mortification.h"

//: @implementation NIMInputEmoticon
@implementation BubbleNameReload

//: - (NIMEmoticonType)type {
- (NIMEmoticonType)type {
    //: if (_unicode.length) {
    if (_unicode.length) {
        //: return NIMEmoticonTypeUnicode;
        return NIMEmoticonTypeUnicode;
    }
    //: else if (_gif.length) {
    else if (_gif.length) {
        //: return NIMEmoticonTypeGif;
        return NIMEmoticonTypeGif;
    }
    //: else {
    else {
        //: return NIMEmoticonTypeFile;
        return NIMEmoticonTypeFile;
    }
}

//: @end
@end

//: @implementation NIMInputEmoticonCatalog
@implementation TitleDisplayCatalog
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation MakeGrowingLayout

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initWith:(CGFloat)width
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 3;
        _rows = 3;
        //: _columes = ((width - 15 - 15) / 46.0);
        _columes = ((width - 15 - 15) / 46.0);
        //: _itemCountInPage = _rows * _columes -1;
        _itemCountInPage = _rows * _columes -1;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 46.0;
        _cellHeight = 46.0;
        //: _imageWidth = 46.0;
        _imageWidth = 46.0;
        //: _imageHeight = 46.0;
        _imageHeight = 46.0;
        //: _emoji = YES;
        _emoji = YES;
    }
    //: return self;
    return self;
}

//: - (id)initCharletLayout:(CGFloat)width{
- (id)initAdd:(CGFloat)width{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 2;
        _rows = 2;
        //: _columes = ((width - 15 - 15) / 70.f);
        _columes = ((width - 15 - 15) / 70.f);
        //: _itemCountInPage = _rows * _columes;
        _itemCountInPage = _rows * _columes;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 76.0;
        _cellHeight = 76.0;
        //: _imageWidth = 70.f;
        _imageWidth = 70.f;
        //: _imageHeight = 70.f;
        _imageHeight = 70.f;
        //: _emoji = NO;
        _emoji = NO;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface FFFInputEmoticonManager ()
@interface IndexManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation FFFInputEmoticonManager
@implementation IndexManager

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (TitleDisplayCatalog *)enableClean:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             image:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    TitleDisplayCatalog *catalog = [[TitleDisplayCatalog alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[@"title"];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[@"normal"];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[[[HungrinessData sharedInstance] kNameDiaryData]];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        BubbleNameReload *emoticon = [[BubbleNameReload alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[[[HungrinessData sharedInstance] kContentDiamondData]];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[[[HungrinessData sharedInstance] kTitleMeltSteadName]];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[[[HungrinessData sharedInstance] kTitle_addedTwistValue]];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[[[HungrinessData sharedInstance] kTextConfrontString]];

        //: if (emoticon.emoticonID) {
        if (emoticon.emoticonID) {
            //: [emoticons addObject:emoticon];
            [emoticons addObject:emoticon];
            //: id2Emoticons[emoticon.emoticonID] = emoticon;
            id2Emoticons[emoticon.emoticonID] = emoticon;
        }
        //: if (emoticon.tag) {
        if (emoticon.tag) {
            //: tag2Emoticons[emoticon.tag] = emoticon;
            tag2Emoticons[emoticon.tag] = emoticon;
        }
    }

    //: catalog.emoticons = emoticons;
    catalog.emoticons = emoticons;
    //: catalog.id2Emoticons = id2Emoticons;
    catalog.id2Emoticons = id2Emoticons;
    //: catalog.tag2Emoticons = tag2Emoticons;
    catalog.tag2Emoticons = tag2Emoticons;
    //: return catalog;
    return catalog;
}

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (TitleDisplayCatalog *)block:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (TitleDisplayCatalog *catalog in _catalogs)
    {
        //: if ([catalog.catalogID isEqualToString:catalogID])
        if ([catalog.catalogID isEqualToString:catalogID])
        {
            //: return catalog;
            return catalog;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)preloadEmoticonResource {
- (void)backingDoing {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (TitleDisplayCatalog *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(BubbleNameReload *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage kitDirectionInward:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
};

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self parsePlist];
        [self disableStart];
        //: [self preloadEmoticonResource];
        [self backingDoing];
    }
    //: return self;
    return self;
}


//: - (void)start {};
- (void)path {}


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (BubbleNameReload *)disable:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    BubbleNameReload *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (TitleDisplayCatalog *catalog in _catalogs)
        {
            //: emoticon = [catalog.tag2Emoticons objectForKey:tag];
            emoticon = [catalog.tag2Emoticons objectForKey:tag];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (BubbleNameReload *)secretAdd:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           past:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    BubbleNameReload *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (TitleDisplayCatalog *catalog in _catalogs)
        {
            //: if ([catalog.catalogID isEqualToString:catalogID])
            if ([catalog.catalogID isEqualToString:catalogID])
            {
                //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: + (instancetype)sharedManager
+ (instancetype)item
{
    //: static FFFInputEmoticonManager *instance = nil;
    static IndexManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonManager alloc]init];
        instance = [[IndexManager alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (BubbleNameReload *)tyke:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    BubbleNameReload *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (TitleDisplayCatalog *catalog in _catalogs)
        {
            //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (void)parsePlist
- (void)disableStart
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle overDisable];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[@"info"];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[@"data"];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            TitleDisplayCatalog *catalog = [self enableClean:info
                                                     //: emoticons:emoticons];
                                                     image:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle on];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[@"info"];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[@"data"];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            TitleDisplayCatalog *catalog = [self enableClean:info
                                                     //: emoticons:emoticons];
                                                     image:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: @end
@end
//: __SAVE__ ignore_string [428.4,649.6,546.5,410.4]