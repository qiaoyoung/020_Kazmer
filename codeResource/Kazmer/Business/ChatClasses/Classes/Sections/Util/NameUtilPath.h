// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// ButtonKit
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
@class QuickNameView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat notiUnitCommentIdent;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat k_makeSourceFlagMessage;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const userValueKey;


//: @interface FFFKitQuickCommentUtil : NSObject
@interface NameUtilPath : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)should;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)with:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)arrayBy:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)tag:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)record:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)power:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)necessary:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      saloon:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  title:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (QuickNameView *)table;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)status:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END