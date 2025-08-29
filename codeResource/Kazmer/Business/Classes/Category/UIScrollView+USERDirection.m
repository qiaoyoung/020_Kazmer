//
//  UIScrollView+USERDirection.m
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "UIScrollView+USERDirection.h"
#import <objc/runtime.h>


@interface UIScrollView ()
@property (assign, nonatomic) USERScrollViewDirection horizontalScrollingDirection;
@property (assign, nonatomic) USERScrollViewDirection verticalScrollingDirection;
@end


static const char horizontalScrollingDirectionKey;
static const char verticalScrollingDirectionKey;


@implementation UIScrollView (USERDirection)

- (void)startObservingDirection
{
    [self addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}

- (void)stopObservingDirection
{
    [self removeObserver:self forKeyPath:@"contentOffset"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (![keyPath isEqualToString:@"contentOffset"]) return;
    
    CGPoint newContentOffset = [[change valueForKey:NSKeyValueChangeNewKey] CGPointValue];
    CGPoint oldContentOffset = [[change valueForKey:NSKeyValueChangeOldKey] CGPointValue];
    
    if (oldContentOffset.x < newContentOffset.x) {
        self.horizontalScrollingDirection = USERScrollViewDirectionRight;
    } else if (oldContentOffset.x > newContentOffset.x) {
        self.horizontalScrollingDirection = USERScrollViewDirectionLeft;
    } else {
        self.horizontalScrollingDirection = USERScrollViewDirectionNone;
    }
    
    if (oldContentOffset.y < newContentOffset.y) {
        self.verticalScrollingDirection = USERScrollViewDirectionDown;
    } else if (oldContentOffset.y > newContentOffset.y) {
        self.verticalScrollingDirection = USERScrollViewDirectionUp;
    } else {
        self.verticalScrollingDirection = USERScrollViewDirectionNone;
    }
}

#pragma mark - Properties
- (USERScrollViewDirection)horizontalScrollingDirection
{
    return [objc_getAssociatedObject(self, (void *)&horizontalScrollingDirectionKey) intValue];
}

- (void)setHorizontalScrollingDirection:(USERScrollViewDirection)horizontalScrollingDirection
{
    objc_setAssociatedObject(self, (void *)&horizontalScrollingDirectionKey, [NSNumber numberWithInt:horizontalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (USERScrollViewDirection)verticalScrollingDirection
{
    return [objc_getAssociatedObject(self, (void *)&verticalScrollingDirectionKey) intValue];
}

- (void)setVerticalScrollingDirection:(USERScrollViewDirection)verticalScrollingDirection
{
    objc_setAssociatedObject(self, (void *)&verticalScrollingDirectionKey, [NSNumber numberWithInt:verticalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
