
#import <Foundation/Foundation.h>
typedef struct {
    Byte unfortunatePerson;
    Byte *waste;
    unsigned int magnitudeact;
    Byte separation;
	int approbative;
	int offto;
	int journalistTide;
} AssistanceData;

NSString *StringFromAssistanceData(AssistanceData *data);


//: en_US
AssistanceData kName_climateString = (AssistanceData){147, (Byte []){246, 253, 204, 198, 192, 55}, 5, 170, 187, 132, 32};

//: string
AssistanceData kContentFlowerValue = (AssistanceData){91, (Byte []){40, 47, 41, 50, 53, 60, 21}, 6, 239, 207, 48, 119};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionManager.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "ActionManager.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface ActionManager ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation ActionManager

//: static NTESLanguageManager *shareInstance = nil;
static ActionManager *m_sessionUrl = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (ActionManager *)green{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            m_sessionUrl = [[ActionManager alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return m_sessionUrl;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)recent:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [ActionManager shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setLink:(NSString *)langType{
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
- (void)totalerruptInwards:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)should:(NSXMLParser *)parser doingAttributes:(NSString *)elementName phoneMessage:(NSString *)namespaceURI change:(NSString *)qName nomadic:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:StringFromAssistanceData(&kContentFlowerValue)]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[@"name"];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)drop:(NSXMLParser *)parser size:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)container:(NSXMLParser *)parser lightMode:(NSString *)elementName produce:(NSString *)namespaceURI tap:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)path:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)quick{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return StringFromAssistanceData(&kName_climateString);
    }
    //: return locale;
    return locale;
}


//: @end
@end
//: __SAVE__ ignore_string [541.5,417.4]

Byte *AssistanceDataToByte(AssistanceData *data) {
    if (data->separation < 108) return data->waste;
    for (int i = 0; i < data->magnitudeact; i++) {
        data->waste[i] ^= data->unfortunatePerson;
    }
    data->waste[data->magnitudeact] = 0;
    data->separation = 31;
	if (data->magnitudeact >= 3) {
		data->approbative = data->waste[0];
		data->offto = data->waste[1];
		data->journalistTide = data->waste[2];
	}
    return data->waste;
}

NSString *StringFromAssistanceData(AssistanceData *data) {
    return [NSString stringWithUTF8String:(char *)AssistanceDataToByte(data)];
}
