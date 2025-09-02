// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardManager.h
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplayLoginViewController.h"
#import "PageViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERRegistConfigManager : NSObject
@interface StandardManager : NSObject
//: @property (nonatomic ,strong) NSMutableDictionary *registDict;
@property (nonatomic ,strong) NSMutableDictionary *registDict;
//: @property (nonatomic ,strong) DisplayLoginViewController *loginVC;
@property (nonatomic ,strong) PageViewController *loginVC;
//: @property (nonatomic ,strong) UIImage *headerImage;
@property (nonatomic ,strong) UIImage *headerImage;

//: + (void)sendRegistRequest:(UINavigationController *)nav;
+ (void)origin:(UINavigationController *)nav;

//: + (USERRegistConfigManager *)shareConfigManager;
+ (StandardManager *)temporaryWorker;

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL ,NSString *))complete;
+ (void)day:(NSString *)name target:(NSString *)pd eldestForCompleteness:(void(^)(BOOL ,NSString *))complete;


//: + (void)refreshRegistConfig;
+ (void)magnitudeReplacement;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
