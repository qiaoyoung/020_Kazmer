// __DEBUG__
// __CLOSE_PRINT__
//
//  SisterFindForefrontView.h
// ButtonKit
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @protocol FFFMemberGroupViewDelegate <NSObject>
@protocol PinDelegate <NSObject>
//: @optional
@optional

//: - (void)didSelectMemberId:(NSString *)uid;
- (void)anointTing:(NSString *)uid;

//: - (void)didSelectRemoveButtonWithMemberId:(NSString *)uid;
- (void)conservatives:(NSString *)uid;

//: - (void)didSelectOperator:(NIMKitCardHeaderOpeator )opera;
- (void)spirograms:(NIMKitCardHeaderOpeator )opera;

//: @end
@end

//: @interface NIMMemebrGroupData : NSObject
@interface ToMax : NSObject

//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: @property (nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property (nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @property (nonatomic,readonly) BOOL isMyUserId;
@property (nonatomic,readonly) BOOL isMyUserId;

//: @end
@end

//: @interface FFFMemberGroupView : UIView
@interface SisterFindForefrontView : UIView

//: @property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) UICollectionView *collectionView;

//: @property (nonatomic,readonly) BOOL showAddOperator;
@property (nonatomic,readonly) BOOL showAddOperator;

//: @property (nonatomic,readonly) BOOL showRemoveOperator;
@property (nonatomic,readonly) BOOL showRemoveOperator;

//: @property (nonatomic,assign) BOOL enableRemove;
@property (nonatomic,assign) BOOL enableRemove;

//: @property (nonatomic,weak) id<FFFMemberGroupViewDelegate> delegate;
@property (nonatomic,weak) id<PinDelegate> delegate;

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas operators:(NIMKitCardHeaderOpeator)operators;
- (void)add:(NSArray <ToMax *> *)datas replacement:(NIMKitCardHeaderOpeator)operators;

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera;
- (void)title:(NSString *)title displayUnder:(NIMKitCardHeaderOpeator)opera;

//: @end
@end