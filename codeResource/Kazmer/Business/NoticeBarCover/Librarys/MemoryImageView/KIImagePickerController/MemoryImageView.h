// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryImageView.h
//  Kitalker
//
//  Created by 刘 波 on 12-8-9.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class KICropImageMaskView;
@class DissembleView;
//: @interface KICropImageView : UIView <UIScrollViewDelegate> {
@interface MemoryImageView : UIView <UIScrollViewDelegate> {
    //: @private
    @private
    //: UIScrollView *_scrollView;
    UIScrollView *_scrollView;
    //: UIImageView *_imageView;
    UIImageView *_imageView;
    //: KICropImageMaskView *_maskView;
    DissembleView *_maskView;
    //: UIImage *_image;
    UIImage *_image;
    //: UIEdgeInsets _imageInset;
    UIEdgeInsets _imageInset;
    //: CGSize _cropSize;
    CGSize _cropSize;
}

//: - (void)setImage:(UIImage *)image;
- (void)setColumnImage:(UIImage *)image;
//: - (void)setCropSize:(CGSize)size;
- (void)setSet:(CGSize)size;

//: - (UIImage *)cropImage;
- (UIImage *)lengthTeam;

//: @end
@end