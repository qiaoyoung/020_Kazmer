//
//  USERNavigationHandler.h
//  NIM
//
//  Created by chris on 16/1/28.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface USERNavigationHandler : NSObject<UINavigationControllerDelegate>

@property (nonatomic,strong,readonly) UIPanGestureRecognizer *recognizer;

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;

@end
