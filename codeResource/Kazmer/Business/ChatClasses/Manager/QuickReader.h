// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickReader.h
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
    //: WatchXMLReaderOptionsProcessNamespaces = 1 << 0, 
    WatchXMLReaderOptionsProcessNamespaces = 1 << 0, // Specifies whether the receiver reports the namespace and the qualified name of an element.
    //: WatchXMLReaderOptionsReportNamespacePrefixes = 1 << 1, 
    WatchXMLReaderOptionsReportNamespacePrefixes = 1 << 1, // Specifies whether the receiver reports the scope of namespace declarations.
    //: WatchXMLReaderOptionsResolveExternalEntities = 1 << 2, 
    WatchXMLReaderOptionsResolveExternalEntities = 1 << 2, // Specifies whether the receiver reports declarations of external entities.
//: };
};
//: typedef NSUInteger WatchXMLReaderOptions;
typedef NSUInteger WatchXMLReaderOptions;

//: @interface WatchXMLReader : NSObject <NSXMLParserDelegate>
@interface QuickReader : NSObject <NSXMLParserDelegate>

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)errorPointer;
+ (NSDictionary *)secretUser:(NSData *)data back:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)errorPointer;
+ (NSDictionary *)record:(NSString *)string contentBlue:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(WatchXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)max:(NSData *)data reach:(WatchXMLReaderOptions)options message:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(WatchXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)level:(NSString *)string manager:(WatchXMLReaderOptions)options should:(NSError **)errorPointer;

//: @end
@end
