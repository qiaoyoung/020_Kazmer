// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageInsideMax.h
//
//  Created by Troy Brant on 9/18/10.
//  Updated by Antoine Marcadet on 9/23/11.
//  Updated by Divan Visagie on 2012-08-26
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: enum {
enum {
    //: DisplayXMLReaderOptionsProcessNamespaces = 1 << 0, 
    DisplayXMLReaderOptionsProcessNamespaces = 1 << 0, // Specifies whether the receiver reports the namespace and the qualified name of an element.
    //: DisplayXMLReaderOptionsReportNamespacePrefixes = 1 << 1, 
    DisplayXMLReaderOptionsReportNamespacePrefixes = 1 << 1, // Specifies whether the receiver reports the scope of namespace declarations.
    //: DisplayXMLReaderOptionsResolveExternalEntities = 1 << 2, 
    DisplayXMLReaderOptionsResolveExternalEntities = 1 << 2, // Specifies whether the receiver reports declarations of external entities.
//: };
};
//: typedef NSUInteger DisplayXMLReaderOptions;
typedef NSUInteger DisplayXMLReaderOptions;

//: @interface DisplayXMLReader : NSObject <NSXMLParserDelegate>
@interface MessageInsideMax : NSObject <NSXMLParserDelegate>

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)errorPointer;
+ (NSDictionary *)session:(NSData *)data at:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)errorPointer;
+ (NSDictionary *)rowFor:(NSString *)string reply:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(DisplayXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)range:(NSData *)data info:(DisplayXMLReaderOptions)options itemMessage:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(DisplayXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)filler:(NSString *)string mutual:(DisplayXMLReaderOptions)options background_autoreleasing:(NSError **)errorPointer;

//: @end
@end
