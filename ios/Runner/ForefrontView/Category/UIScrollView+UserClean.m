
#import <Foundation/Foundation.h>

typedef struct {
    Byte broadcast;
    Byte *graySing;
    unsigned int sandValue;
	int dealerPack;
	int advise;
} StructKnifeHydraData;

@interface KnifeHydraData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation KnifeHydraData

+ (instancetype)sharedInstance {
    static KnifeHydraData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)KnifeHydraDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)KnifeHydraDataToByte:(StructKnifeHydraData *)data {
    for (int i = 0; i < data->sandValue; i++) {
        data->graySing[i] ^= data->broadcast;
    }
    data->graySing[data->sandValue] = 0;
	if (data->sandValue >= 2) {
		data->dealerPack = data->graySing[0];
		data->advise = data->graySing[1];
	}
    return data->graySing;
}

- (NSString *)StringFromKnifeHydraData:(StructKnifeHydraData *)data {
    return [NSString stringWithUTF8String:(char *)[self KnifeHydraDataToByte:data]];
}

//: contentOffset
- (NSString *)kText_boarFlowerData {
    /* static */ NSString *kText_boarFlowerData = nil;
    if (!kText_boarFlowerData) {
		NSString *origin = @"dcd0d1cbdad1cbf0d9d9ccdacb40";
		NSData *data = [KnifeHydraData KnifeHydraDataToData:origin];
        StructKnifeHydraData value = (StructKnifeHydraData){191, (Byte *)data.bytes, 13, 90, 147};
        kText_boarFlowerData = [self StringFromKnifeHydraData:&value];
    }
    return kText_boarFlowerData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+UserClean.m
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIScrollView+USERDirection.h"
#import "UIScrollView+UserClean.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @interface UIScrollView ()
@interface UIScrollView ()
//: @property (assign, nonatomic) USERScrollViewDirection horizontalScrollingDirection;
@property (assign, nonatomic) USERScrollViewDirection horizontalScrollingDirection;
//: @property (assign, nonatomic) USERScrollViewDirection verticalScrollingDirection;
@property (assign, nonatomic) USERScrollViewDirection verticalScrollingDirection;
//: @end
@end


//: static const char horizontalScrollingDirectionKey;
static const char dreamTitleUrl;
//: static const char verticalScrollingDirectionKey;
static const char noti_viewMsg;


//: @implementation UIScrollView (USERDirection)
@implementation UIScrollView (UserClean)

//: - (void)startObservingDirection
- (void)contentDirection
{
    //: [self addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    [self addObserver:self forKeyPath:[[KnifeHydraData sharedInstance] kText_boarFlowerData] options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}

//: - (void)stopObservingDirection
- (void)vanguard
{
    //: [self removeObserver:self forKeyPath:@"contentOffset"];
    [self removeObserver:self forKeyPath:[[KnifeHydraData sharedInstance] kText_boarFlowerData]];
}

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    //: if (![keyPath isEqualToString:@"contentOffset"]) return;
    if (![keyPath isEqualToString:[[KnifeHydraData sharedInstance] kText_boarFlowerData]]) return;

    //: CGPoint newContentOffset = [[change valueForKey:NSKeyValueChangeNewKey] CGPointValue];
    CGPoint newContentOffset = [[change valueForKey:NSKeyValueChangeNewKey] CGPointValue];
    //: CGPoint oldContentOffset = [[change valueForKey:NSKeyValueChangeOldKey] CGPointValue];
    CGPoint oldContentOffset = [[change valueForKey:NSKeyValueChangeOldKey] CGPointValue];

    //: if (oldContentOffset.x < newContentOffset.x) {
    if (oldContentOffset.x < newContentOffset.x) {
        //: self.horizontalScrollingDirection = USERScrollViewDirectionRight;
        self.horizontalScrollingDirection = USERScrollViewDirectionRight;
    //: } else if (oldContentOffset.x > newContentOffset.x) {
    } else if (oldContentOffset.x > newContentOffset.x) {
        //: self.horizontalScrollingDirection = USERScrollViewDirectionLeft;
        self.horizontalScrollingDirection = USERScrollViewDirectionLeft;
    //: } else {
    } else {
        //: self.horizontalScrollingDirection = USERScrollViewDirectionNone;
        self.horizontalScrollingDirection = USERScrollViewDirectionNone;
    }

    //: if (oldContentOffset.y < newContentOffset.y) {
    if (oldContentOffset.y < newContentOffset.y) {
        //: self.verticalScrollingDirection = USERScrollViewDirectionDown;
        self.verticalScrollingDirection = USERScrollViewDirectionDown;
    //: } else if (oldContentOffset.y > newContentOffset.y) {
    } else if (oldContentOffset.y > newContentOffset.y) {
        //: self.verticalScrollingDirection = USERScrollViewDirectionUp;
        self.verticalScrollingDirection = USERScrollViewDirectionUp;
    //: } else {
    } else {
        //: self.verticalScrollingDirection = USERScrollViewDirectionNone;
        self.verticalScrollingDirection = USERScrollViewDirectionNone;
    }
}

//: #pragma mark - Properties
#pragma mark - Properties
//: - (USERScrollViewDirection)horizontalScrollingDirection
- (USERScrollViewDirection)horizontalScrollingDirection
{
    //: return [objc_getAssociatedObject(self, (void *)&horizontalScrollingDirectionKey) intValue];
    return [objc_getAssociatedObject(self, (void *)&dreamTitleUrl) intValue];
}

//: - (void)setHorizontalScrollingDirection:(USERScrollViewDirection)horizontalScrollingDirection
- (void)setHorizontalScrollingDirection:(USERScrollViewDirection)horizontalScrollingDirection
{
    //: objc_setAssociatedObject(self, (void *)&horizontalScrollingDirectionKey, [NSNumber numberWithInt:horizontalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, (void *)&dreamTitleUrl, [NSNumber numberWithInt:horizontalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: - (USERScrollViewDirection)verticalScrollingDirection
- (USERScrollViewDirection)verticalScrollingDirection
{
    //: return [objc_getAssociatedObject(self, (void *)&verticalScrollingDirectionKey) intValue];
    return [objc_getAssociatedObject(self, (void *)&noti_viewMsg) intValue];
}

//: - (void)setVerticalScrollingDirection:(USERScrollViewDirection)verticalScrollingDirection
- (void)setVerticalScrollingDirection:(USERScrollViewDirection)verticalScrollingDirection
{
    //: objc_setAssociatedObject(self, (void *)&verticalScrollingDirectionKey, [NSNumber numberWithInt:verticalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, (void *)&noti_viewMsg, [NSNumber numberWithInt:verticalScrollingDirection], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


//: @end
@end