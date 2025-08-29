// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// Mortification
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class M80AttributedLabel;
@class LabelNameScrollView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat mOwnerIdent;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat main_hiddenTitle;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const dream_framePathMessage;


//: @interface FFFKitQuickCommentUtil : NSObject
@interface ControlInside : NSObject

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)underName:(NIMQuickComment *)comment;

//: + (M80AttributedLabel *)newCommentLabel;
+ (LabelNameScrollView *)label;

//: + (UIFont *)commentFont;
+ (UIFont *)mode;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)thread:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)pinComments:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      by:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  vanguard:(NSMapTable *)map;
//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)overItem:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)size:(NSMapTable *)comments;


//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)date:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)stop:(NIMQuickComment *)comment;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END