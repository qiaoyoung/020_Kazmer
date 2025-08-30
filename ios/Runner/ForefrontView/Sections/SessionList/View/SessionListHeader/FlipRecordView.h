// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSessionListHeader.h
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, USERListHeaderType) {
typedef NS_ENUM(NSInteger, USERListHeaderType) {
    //: ListHeaderTypeCommonText = 1,
    ListHeaderTypeCommonText = 1,
    //: ListHeaderTypeNetStauts,
    ListHeaderTypeNetStauts,
    //: ListHeaderTypeLoginClients,
    ListHeaderTypeLoginClients,
//: };
};

//: @protocol USERListHeaderView <NSObject>
@protocol CuttingEdgeRowView <NSObject>

//: @required
@required
//: - (void)setContentText:(NSString *)content;
- (void)setView:(NSString *)content;

//: @end
@end

//: @protocol USERListHeaderDelegate <NSObject>
@protocol ControlDelegate <NSObject>

//: @optional
@optional

//: - (void)didSelectRowType:(USERListHeaderType)type;
- (void)prixFixe:(USERListHeaderType)type;

//: @end
@end

//: @interface USERListHeader : UIView
@interface FlipRecordView : UIView

//: @property (nonatomic,weak) id<USERListHeaderDelegate> delegate;
@property (nonatomic,weak) id<ControlDelegate> delegate;

//: - (void)refreshWithType:(USERListHeaderType)type value:(id)value;
- (void)theKey:(USERListHeaderType)type dogTag:(id)value;


//: @end
@end