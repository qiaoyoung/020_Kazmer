// __DEBUG__
// __CLOSE_PRINT__
//
//  UIColor+Util.h
//  译同行
//
//  Created by 曹宇 on 2017/7/21.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef uint32_t color_t;
typedef uint32_t color_t;
//: typedef uint8_t ecolor_t;
typedef uint8_t ecolor_t;
//: typedef CGFloat fcolor_t;
typedef CGFloat fcolor_t;
//: typedef ecolor_t* dcolor_t;
typedef ecolor_t* dcolor_t;

//: typedef UIColor* UIColorRef;
typedef UIColor* UIColorRef;
//: typedef NSNumber* NSNumberRef;
typedef NSNumber* NSNumberRef;
//: typedef NSArray* NSArrayRef;
typedef NSArray* NSArrayRef;
//: typedef NSDictionary* NSDictionaryRef;
typedef NSDictionary* NSDictionaryRef;

//: void SKCGContextSetFillColor(CGContextRef c, color_t color);
void sureFillPhone(CGContextRef c, color_t color);
//: void SKCGContextSetStrokeColor(CGContextRef c, color_t color);
void setContextOfUseUncoloredStrokeFrame(CGContextRef c, color_t color);







//: @interface UIColor (Util)
@interface UIColor (Util)

//: @property (nonatomic, assign, readonly) fcolor_t red;
@property (nonatomic, assign, readonly) fcolor_t red;
//: @property (nonatomic, assign, readonly) ecolor_t intRed;
@property (nonatomic, assign, readonly) ecolor_t intRed;
//: @property (nonatomic, assign, readonly) fcolor_t blue;
@property (nonatomic, assign, readonly) fcolor_t blue;
//: @property (nonatomic, assign, readonly) fcolor_t green;
@property (nonatomic, assign, readonly) fcolor_t green;

//: @property (nonatomic, assign, readonly) fcolor_t alpha;
@property (nonatomic, assign, readonly) fcolor_t alpha;
//: @property (nonatomic, assign, readonly) ecolor_t intGreen;
@property (nonatomic, assign, readonly) ecolor_t intGreen;
//: @property (nonatomic, assign, readonly) ecolor_t intBlue;
@property (nonatomic, assign, readonly) ecolor_t intBlue;
//: @property (nonatomic, assign, readonly) ecolor_t intAlpha;
@property (nonatomic, assign, readonly) ecolor_t intAlpha;

//: +(NSString*) intToString:(color_t)intValue;
+(NSString*) white:(color_t)intValue;

//: +(instancetype) colorWithFloatAlpha:(CGFloat)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) down:(CGFloat)alpha colorEcolor_t:(ecolor_t)red imageFullEcolor_t:(ecolor_t)green bubbleEcolor_t:(ecolor_t)blue;
//: +(instancetype) colorWithAlpha:(fcolor_t)alpha red:(fcolor_t)red green:(fcolor_t)green blue:(fcolor_t)blue;
+(instancetype) ruby:(fcolor_t)alpha name:(fcolor_t)red should:(fcolor_t)green colorAlphaSmartDarkGreenBlueReddishFcolor_t:(fcolor_t)blue;

//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue alpha:(ecolor_t)alpha;
+(instancetype) source:(ecolor_t)red net:(ecolor_t)green send:(ecolor_t)blue tinctureEdgeTemp:(ecolor_t)alpha;
//: +(instancetype) colorWithInt:(color_t)color;
+(instancetype) changeQuick:(color_t)color;

//: +(instancetype) colorWithIntAlpha:(ecolor_t)alpha red:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue;
+(instancetype) darkGreenMake:(ecolor_t)alpha bubble:(ecolor_t)red color:(ecolor_t)green image:(ecolor_t)blue;
//RGB:#F5F5F5
//: + (UIColor *) colorWithHexString: (NSString *) hexString ;
+ (UIColor *) cell: (NSString *) hexString ;

//: +(instancetype) colorWithString:(NSString*)color;
+(instancetype) team:(NSString*)color;
//: +(instancetype) colorWithString:(NSString*)color floatAlpha:(CGFloat)alpha;
+(instancetype) error:(NSString*)color elect:(CGFloat)alpha;

//: +(instancetype) randomColor;
+(instancetype) value;
//: +(instancetype) colorWithIntRed:(ecolor_t)red green:(ecolor_t)green blue:(ecolor_t)blue floatAlpha:(CGFloat)alpha;
+(instancetype) view:(ecolor_t)red demonstrate:(ecolor_t)green green:(ecolor_t)blue characteristicRootOfASquareMatrix:(CGFloat)alpha;

//: +(instancetype) colorWithInt:(color_t)color floatAlpha:(CGFloat)alpha;
+(instancetype) table:(color_t)color question:(CGFloat)alpha;
//: +(instancetype) randomColorWithAlpha;
+(instancetype) colorBy;

//: -(color_t) intValue;
-(color_t) complete;
//: +(color_t) stringToInt:(NSString*)stringValue;
+(color_t) curTeam:(NSString*)stringValue;


//: -(NSString*) stringValue;
-(NSString*) session;
//: @end
@end