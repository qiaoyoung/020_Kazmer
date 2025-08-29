// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// Mortification
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface FlipRed : NSObject

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @end
@end

//: @interface FFFInputAtCache : NSObject
@interface LabelSizeImage : NSObject

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (FlipRed *)containerContent:(NSString *)name;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)quick:(FlipRed *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (FlipRed *)anyPoint:(NSString *)name;

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)impression:(NSString *)sendText;

//: - (void)clean;
- (void)superviseClean;

//: @end
@end