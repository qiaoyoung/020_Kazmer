// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickOldView.h
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

//: @interface NTESOpenRedPackageSheet : UIView
@interface QuickOldView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithAt:(CGRect)frame doing:(NSDictionary *)dictionary;

//: - (void)show;
- (void)alter;

//: - (void)dismissPicker;
- (void)untilSearched;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol RecordContentDelegate <NSObject>

//: -(void)myWalletDelegate;
-(void)threadFor;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)lasted:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END