// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelColorView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/27.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERContactTableHeader : UIView
@interface LabelColorView : UIView
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @end
@end

//: @interface USERContactTableHeaderGroup : UIView
@interface HeaderView : UIView
//: @property (nonatomic ,strong) UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;
//: @property (nonatomic ,strong) UIImageView *arrowImageView;
@property (nonatomic ,strong) UIImageView *arrowImageView;
//: @property (nonatomic ,assign) NSInteger section;
@property (nonatomic ,assign) NSInteger section;
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: @end
@end


//: @protocol USERContactTableHeaderGroupDelegate <NSObject>
@protocol ManDelegate <NSObject>

//: -(void)headerClickWith:(NSInteger)section;
-(void)itemBlue:(NSInteger)section;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END