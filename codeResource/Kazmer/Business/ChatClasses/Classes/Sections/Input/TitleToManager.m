
#import <Foundation/Foundation.h>

typedef struct {
    Byte shootMay;
    Byte *capitulum;
    unsigned int successMemory;
	int segmentAdmit;
} StructConvinceGloryData;

@interface ConvinceGloryData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ConvinceGloryData

+ (instancetype)sharedInstance {
    static ConvinceGloryData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ConvinceGloryDataToByte:(StructConvinceGloryData *)data {
    for (int i = 0; i < data->successMemory; i++) {
        data->capitulum[i] ^= data->shootMay;
    }
    data->capitulum[data->successMemory] = 0;
	if (data->successMemory >= 1) {
		data->segmentAdmit = data->capitulum[0];
	}
    return data->capitulum;
}

- (NSString *)StringFromConvinceGloryData:(StructConvinceGloryData *)data {
    return [NSString stringWithUTF8String:(char *)[self ConvinceGloryDataToByte:data]];
}

//: gif
- (NSString *)dreamPhotographName {
    /* static */ NSString *dreamPhotographName = nil;
    if (!dreamPhotographName) {
        StructConvinceGloryData value = (StructConvinceGloryData){176, (Byte []){215, 217, 214, 22}, 3, 177};
        dreamPhotographName = [self StringFromConvinceGloryData:&value];
    }
    return dreamPhotographName;
}

//: normal
- (NSString *)notiShirtDareText {
    /* static */ NSString *notiShirtDareText = nil;
    if (!notiShirtDareText) {
        StructConvinceGloryData value = (StructConvinceGloryData){113, (Byte []){31, 30, 3, 28, 16, 29, 113}, 6, 162};
        notiShirtDareText = [self StringFromConvinceGloryData:&value];
    }
    return notiShirtDareText;
}

//: pressed
- (NSString *)show_ligationContent {
    /* static */ NSString *show_ligationContent = nil;
    if (!show_ligationContent) {
        StructConvinceGloryData value = (StructConvinceGloryData){20, (Byte []){100, 102, 113, 103, 103, 113, 112, 211}, 7, 234};
        show_ligationContent = [self StringFromConvinceGloryData:&value];
    }
    return show_ligationContent;
}

//: file
- (NSString *)main_brokenPath {
    /* static */ NSString *main_brokenPath = nil;
    if (!main_brokenPath) {
        StructConvinceGloryData value = (StructConvinceGloryData){46, (Byte []){72, 71, 66, 75, 248}, 4, 4};
        main_brokenPath = [self StringFromConvinceGloryData:&value];
    }
    return main_brokenPath;
}

//: data
- (NSString *)showDestinationId {
    /* static */ NSString *showDestinationId = nil;
    if (!showDestinationId) {
        StructConvinceGloryData value = (StructConvinceGloryData){209, (Byte []){181, 176, 165, 176, 163}, 4, 6};
        showDestinationId = [self StringFromConvinceGloryData:&value];
    }
    return showDestinationId;
}

//: title
- (NSString *)dream_parishPath {
    /* static */ NSString *dream_parishPath = nil;
    if (!dream_parishPath) {
        StructConvinceGloryData value = (StructConvinceGloryData){35, (Byte []){87, 74, 87, 79, 70, 161}, 5, 39};
        dream_parishPath = [self StringFromConvinceGloryData:&value];
    }
    return dream_parishPath;
}

//: tag
- (NSString *)user_elbowName {
    /* static */ NSString *user_elbowName = nil;
    if (!user_elbowName) {
        StructConvinceGloryData value = (StructConvinceGloryData){243, (Byte []){135, 146, 148, 93}, 3, 166};
        user_elbowName = [self StringFromConvinceGloryData:&value];
    }
    return user_elbowName;
}

//: unicode
- (NSString *)app_libCenterMessage {
    /* static */ NSString *app_libCenterMessage = nil;
    if (!app_libCenterMessage) {
        StructConvinceGloryData value = (StructConvinceGloryData){223, (Byte []){170, 177, 182, 188, 176, 187, 186, 50}, 7, 62};
        app_libCenterMessage = [self StringFromConvinceGloryData:&value];
    }
    return app_libCenterMessage;
}

//: info
- (NSString *)dream_primaryIdent {
    /* static */ NSString *dream_primaryIdent = nil;
    if (!dream_primaryIdent) {
        StructConvinceGloryData value = (StructConvinceGloryData){191, (Byte []){214, 209, 217, 208, 133}, 4, 107};
        dream_primaryIdent = [self StringFromConvinceGloryData:&value];
    }
    return dream_primaryIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonManager.h"
#import "TitleToManager.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+ButtonKit.h"

//: @implementation NIMInputEmoticon
@implementation ButtonTableEmoticon

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
@implementation BottomCatalog
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation UserValue

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initEmojiDisable:(CGFloat)width
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
- (id)initPhysicalObject:(CGFloat)width{
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
@interface TitleToManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation FFFInputEmoticonManager
@implementation TitleToManager

//: + (instancetype)sharedManager
+ (instancetype)draw
{
    //: static FFFInputEmoticonManager *instance = nil;
    static TitleToManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonManager alloc]init];
        instance = [[TitleToManager alloc]init];
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
        //: [self parsePlist];
        [self queryed];
        //: [self preloadEmoticonResource];
        [self bar];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)messageStart {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (BottomCatalog *)assemble:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (BottomCatalog *catalog in _catalogs)
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


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (ButtonTableEmoticon *)data:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    ButtonTableEmoticon *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (BottomCatalog *catalog in _catalogs)
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


//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (ButtonTableEmoticon *)limit:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    ButtonTableEmoticon *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (BottomCatalog *catalog in _catalogs)
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

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (ButtonTableEmoticon *)enableTeam:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           ratioSend:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    ButtonTableEmoticon *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (BottomCatalog *catalog in _catalogs)
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

//: - (void)parsePlist
- (void)queryed
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle hidden];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[[ConvinceGloryData sharedInstance] dream_primaryIdent]];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[[ConvinceGloryData sharedInstance] showDestinationId]];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            BottomCatalog *catalog = [self removeOf:info
                                                     //: emoticons:emoticons];
                                                     asChange:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle colorLanguageFile];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[[ConvinceGloryData sharedInstance] dream_primaryIdent]];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[[ConvinceGloryData sharedInstance] showDestinationId]];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            BottomCatalog *catalog = [self removeOf:info
                                                     //: emoticons:emoticons];
                                                     asChange:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (BottomCatalog *)removeOf:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             asChange:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    BottomCatalog *catalog = [[BottomCatalog alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[[[ConvinceGloryData sharedInstance] dream_parishPath]];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[[[ConvinceGloryData sharedInstance] notiShirtDareText]];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[[[ConvinceGloryData sharedInstance] show_ligationContent]];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        ButtonTableEmoticon *emoticon = [[ButtonTableEmoticon alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[[[ConvinceGloryData sharedInstance] user_elbowName]];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[[[ConvinceGloryData sharedInstance] app_libCenterMessage]];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[[[ConvinceGloryData sharedInstance] main_brokenPath]];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[[[ConvinceGloryData sharedInstance] dreamPhotographName]];

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

//: - (void)preloadEmoticonResource {
- (void)bar {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (BottomCatalog *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(ButtonTableEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage cut:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end