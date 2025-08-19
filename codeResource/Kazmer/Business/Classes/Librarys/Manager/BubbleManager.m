
#import <Foundation/Foundation.h>

@interface AttractiveData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AttractiveData

+ (instancetype)sharedInstance {
    static AttractiveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AttractiveDataToCache:(Byte *)data {
    int markSeize = data[0];
    Byte specialize = data[1];
    int gloryMedium = data[2];
    for (int i = gloryMedium; i < gloryMedium + markSeize; i++) {
        int value = data[i] - specialize;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[gloryMedium + markSeize] = 0;
    return data + gloryMedium;
}

- (NSString *)StringFromAttractiveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AttractiveDataToCache:data]];
}

//: string
- (NSString *)kWheneverContent {
    /* static */ NSString *kWheneverContent = nil;
    if (!kWheneverContent) {
        Byte value[] = {6, 18, 4, 130, 133, 134, 132, 123, 128, 121, 122};
        kWheneverContent = [self StringFromAttractiveData:value];
    }
    return kWheneverContent;
}

//: name
- (NSString *)mControlKey {
    /* static */ NSString *mControlKey = nil;
    if (!mControlKey) {
        Byte value[] = {4, 53, 7, 189, 180, 143, 176, 163, 150, 162, 154, 205};
        mControlKey = [self StringFromAttractiveData:value];
    }
    return mControlKey;
}

//: en_US
- (NSString *)userCenterUrl {
    /* static */ NSString *userCenterUrl = nil;
    if (!userCenterUrl) {
        Byte value[] = {5, 78, 13, 170, 3, 164, 51, 102, 97, 113, 227, 196, 29, 179, 188, 173, 163, 161, 154};
        userCenterUrl = [self StringFromAttractiveData:value];
    }
    return userCenterUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleManager.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "BubbleManager.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface BubbleManager ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation BubbleManager

//: static NTESLanguageManager *shareInstance = nil;
static BubbleManager *showCornerBackText = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (BubbleManager *)instance{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            showCornerBackText = [[BubbleManager alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return showCornerBackText;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)titleKey:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [BubbleManager shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setAccount:(NSString *)langType{
    //: NSString *resourceType = @"strings";
    NSString *resourceType = @"strings";
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"strings_en";
        resourceType = @"strings_en";
    }
    //: NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    //: xmlParser.delegate = self;
    xmlParser.delegate = self;
    //: [xmlParser parse];
    [xmlParser parse];
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)activity:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)extra:(NSXMLParser *)parser backgroundAttributes:(NSString *)elementName image:(NSString *)namespaceURI comeEnable:(NSString *)qName infoWith:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[[AttractiveData sharedInstance] kWheneverContent]]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[[AttractiveData sharedInstance] mControlKey]];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)roundFound:(NSXMLParser *)parser onParser:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)textspaceName:(NSXMLParser *)parser ting:(NSString *)elementName image:(NSString *)namespaceURI parser:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)click:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)off{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return [[AttractiveData sharedInstance] userCenterUrl];
    }
    //: return locale;
    return locale;
}


//: @end
@end