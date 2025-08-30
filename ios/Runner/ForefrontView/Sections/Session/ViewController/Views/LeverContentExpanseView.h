// __DEBUG__
// __CLOSE_PRINT__
//
//  LeverContentExpanseView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USEROpenRedPackageSheet : UIView
@interface LeverContentExpanseView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithKey:(CGRect)frame cocktailLounge:(NSDictionary *)dictionary;

//: - (void)show;
- (void)soapBubble;

//: - (void)dismissPicker;
- (void)indexTing;

//: @end
@end

//: @protocol USEROpenRedPackageSheetDelegate <NSObject>
@protocol DiscourseDelegate <NSObject>

//: -(void)myWalletDelegate;
-(void)fullColor;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)detailOfGreen:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END