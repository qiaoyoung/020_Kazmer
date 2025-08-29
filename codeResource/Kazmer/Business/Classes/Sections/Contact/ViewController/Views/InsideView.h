// __DEBUG__
// __CLOSE_PRINT__
//
//  InsideView.h
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol RecommendfriendCellDelegate <NSObject>
@protocol TagDelegate <NSObject>

//: - (void)didTouchAdddButton:(NSString *)memberId;
- (void)osculating:(NSString *)memberId;

//: @end
@end

//: @interface RecommendfriendTableViewCell : UITableViewCell
@interface InsideView : UITableViewCell

//: @property(nonatomic, strong) NSString *userId;
@property(nonatomic, strong) NSString *userId;
//: @property (nonatomic,weak) id<RecommendfriendCellDelegate> delegate;
@property (nonatomic,weak) id<TagDelegate> delegate;
//: @property(nonatomic, strong) UIImageView *avaterImg;
@property(nonatomic, strong) UIImageView *avaterImg;

//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;

//: @property(nonatomic, strong) UIButton *btnAdd;
@property(nonatomic, strong) UIButton *btnAdd;
//: - (void)refreshWithModel:(NSDictionary *)userItem;
- (void)displayTing:(NSDictionary *)userItem;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END