// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+KIImage.h
//  Kitalker
//
//  Created by 杨 烽 on 12-8-3.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (KIAdditions)
@interface UIImage (CommentSizeLabel)

/*垂直翻转*/
/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)red:(CGFloat)heigh;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)show:(UIImage *)originImage;

//: - (UIImage *)flipVertical;
- (UIImage *)load;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)recentView;

//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) itemValueShared:(NSData *)data;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)totalry:(CGFloat)width myHeight:(CGFloat)height;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)little:(UIColor *)color pressedMode:(CGSize)size;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)messageIn:(CGFloat)degrees;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)searchedIn:(NSUInteger)maxLength;

//: - (UIImage *)decoded;
- (UIImage *)my;

//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)titleImage:(UIImage *)originImage;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)model:(CGFloat)x filename:(CGFloat)y representation:(CGFloat)width netFloat:(CGFloat)height;





/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)title;

//: - (UIImage *)addCreateTime;
- (UIImage *)item;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)barEnable:(double)scale;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)dimension:(CGFloat)width;


//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)roundSave:(UIImage *)img along:(CGFloat)referWidth;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)to:(CGSize)size;

//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)data:(UIImage *)img my:(CGFloat)referSize;
//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)object:(UIImage *)originImage;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)be:(CGSize)targetSize;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)show:(NSString *)mark offSession:(UIColor *)textColor style:(UIFont *)font sawLog:(CGPoint)point;

//: @end
@end