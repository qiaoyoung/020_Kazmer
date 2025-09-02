// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDateFormatter+KIDateFormatter.h
//  Kitalker
//
//  Created by chen on 12-8-23.
//
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDateFormatter (KIAdditions)
@interface NSDateFormatter (CommentSizeLabel)

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)tradeContentDate:(NSString *)format textUp:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)team:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)sure:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)window:(NSDate *)date;

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)mode:(NSString *)format solarDay:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)group:(NSDate *)date;

//: @end
@end