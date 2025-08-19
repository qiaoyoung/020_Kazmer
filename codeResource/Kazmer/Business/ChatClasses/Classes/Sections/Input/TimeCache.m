// __DEBUG__
// __CLOSE_PRINT__
//
//  TimeCache.m
// ButtonKit
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchInputAtCache.h"
#import "TimeCache.h"

//: @interface WatchInputAtCache()
@interface TimeCache()

//: @property (nonatomic,strong) NSMutableArray *items;
@property (nonatomic,strong) NSMutableArray *items;

//: @end
@end

//: @implementation WatchInputAtCache
@implementation TimeCache

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _items = [[NSMutableArray alloc] init];
        _items = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)colorUid:(NSString *)sendText;
{
    //: NSArray *names = [self matchString:sendText];
    NSArray *names = [self title:sendText];
    //: NSMutableArray *uids = [[NSMutableArray alloc] init];
    NSMutableArray *uids = [[NSMutableArray alloc] init];
    //: for (NSString *name in names) {
    for (NSString *name in names) {
        //: NIMInputAtItem *item = [self item:name];
        StaleItem *item = [self show:name];
        //: if (item)
        if (item)
        {
            //: [uids addObject:item.uid];
            [uids addObject:item.uid];
        }
    }
    //: return [NSArray arrayWithArray:uids];
    return [NSArray arrayWithArray:uids];
}


//: - (void)clean
- (void)size
{
    //: [self.items removeAllObjects];
    [self.items removeAllObjects];
}

//: - (void)addAtItem:(NIMInputAtItem *)item
- (void)workInFrame:(StaleItem *)item
{
    //: [_items addObject:item];
    [_items addObject:item];
}

//: - (NIMInputAtItem *)item:(NSString *)name
- (StaleItem *)show:(NSString *)name
{
    //: __block NIMInputAtItem *item;
    __block StaleItem *item;
    //: [_items enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_items enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: NIMInputAtItem *object = obj;
        StaleItem *object = obj;
        //: if ([object.name isEqualToString:name])
        if ([object.name isEqualToString:name])
        {
            //: item = object;
            item = object;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: return item;
    return item;
}

//: - (NIMInputAtItem *)removeName:(NSString *)name
- (StaleItem *)message:(NSString *)name
{
    //: __block NIMInputAtItem *item;
    __block StaleItem *item;
    //: [_items enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_items enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: NIMInputAtItem *object = obj;
        StaleItem *object = obj;
        //: if ([object.name isEqualToString:name]) {
        if ([object.name isEqualToString:name]) {
            //: item = object;
            item = object;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: if (item) {
    if (item) {
        //: [_items removeObject:item];
        [_items removeObject:item];
    }
    //: return item;
    return item;
}

//: - (NSArray *)matchString:(NSString *)sendText
- (NSArray *)title:(NSString *)sendText
{
    //: NSString *pattern = [NSString stringWithFormat:@"%@([^%@]+)%@",@"@",@"\u2004",@"\u2004"];
    NSString *pattern = [NSString stringWithFormat:@"%@([^%@]+)%@",@"@",@"\u2004",@"\u2004"];
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&error];
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&error];
    //: NSArray *results = [regex matchesInString:sendText options:0 range:NSMakeRange(0, sendText.length)];
    NSArray *results = [regex matchesInString:sendText options:0 range:NSMakeRange(0, sendText.length)];
    //: NSMutableArray *matchs = [[NSMutableArray alloc] init];
    NSMutableArray *matchs = [[NSMutableArray alloc] init];
    //: for (NSTextCheckingResult *result in results) {
    for (NSTextCheckingResult *result in results) {
        //: NSString *name = [sendText substringWithRange:result.range];
        NSString *name = [sendText substringWithRange:result.range];
        //: name = [name substringFromIndex:1];
        name = [name substringFromIndex:1];
        //: name = [name substringToIndex:name.length -1];
        name = [name substringToIndex:name.length -1];
        //: [matchs addObject:name];
        [matchs addObject:name];
    }
    //: return matchs;
    return matchs;
}


//: @end
@end


//: @implementation NIMInputAtItem
@implementation StaleItem

//: @end
@end
