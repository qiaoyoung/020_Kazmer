
#import <Foundation/Foundation.h>

@interface FragPorchData : NSObject

+ (instancetype)sharedInstance;

//: __NSArrayM
@property (nonatomic, copy) NSString *kTitleMeaningData;

//: __NSArrayI
@property (nonatomic, copy) NSString *kTextStandardLiteralDateValue;

//: __NSPlaceholderArray
@property (nonatomic, copy) NSString *kContentChickPackString;

//: __NSArray0
@property (nonatomic, copy) NSString *kContent_phenomenonCookingAlongsideValue;

@end

@implementation FragPorchData

+ (instancetype)sharedInstance {
    static FragPorchData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FragPorchDataToCache:(Byte *)data {
    int feelingPrivilege = data[0];
    Byte fieMilk = data[1];
    int leading = data[2];
    for (int i = leading; i < leading + feelingPrivilege; i++) {
        int value = data[i] - fieMilk;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[leading + feelingPrivilege] = 0;
    return data + leading;
}

- (NSString *)StringFromFragPorchData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FragPorchDataToCache:data]];
}

//: __NSArrayI
- (NSString *)kTextStandardLiteralDateValue {
    if (!_kTextStandardLiteralDateValue) {
        Byte value[] = {10, 36, 4, 56, 131, 131, 114, 119, 101, 150, 150, 133, 157, 109, 3};
        _kTextStandardLiteralDateValue = [self StringFromFragPorchData:value];
    }
    return _kTextStandardLiteralDateValue;
}

//: __NSArrayM
- (NSString *)kTitleMeaningData {
    if (!_kTitleMeaningData) {
        Byte value[] = {10, 24, 5, 158, 81, 119, 119, 102, 107, 89, 138, 138, 121, 145, 101, 84};
        _kTitleMeaningData = [self StringFromFragPorchData:value];
    }
    return _kTitleMeaningData;
}

//: __NSArray0
- (NSString *)kContent_phenomenonCookingAlongsideValue {
    if (!_kContent_phenomenonCookingAlongsideValue) {
        Byte value[] = {10, 10, 6, 124, 181, 32, 105, 105, 88, 93, 75, 124, 124, 107, 131, 58, 125};
        _kContent_phenomenonCookingAlongsideValue = [self StringFromFragPorchData:value];
    }
    return _kContent_phenomenonCookingAlongsideValue;
}

//: __NSPlaceholderArray
- (NSString *)kContentChickPackString {
    if (!_kContentChickPackString) {
        Byte value[] = {20, 17, 6, 70, 192, 16, 112, 112, 95, 100, 97, 125, 114, 116, 118, 121, 128, 125, 117, 118, 131, 82, 131, 131, 114, 138, 103};
        _kContentChickPackString = [self StringFromFragPorchData:value];
    }
    return _kContentChickPackString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSArray+Safe.m
//  BustVideo
//
//  Created by jiangenhao on 2017/10/27.
//  Copyright © 2017年 360Video. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"

//: static void swizzle(Class class, SEL originalSEL, SEL newSEL)
static void imageName(Class class, SEL originalSEL, SEL newSEL)
{
    //: Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    //: Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    //: method_exchangeImplementations(originalMethod, swizzledMethod);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

//: @implementation NSArray (Safe)
@implementation NSArray (Safe)

//: + (void)initialize
+ (void)initialize
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSArrayM = NSClassFromString(@"__NSArrayM");
        Class NSArrayM = NSClassFromString([FragPorchData sharedInstance].kTitleMeaningData);
        //: swizzle(NSArrayM, @selector(objectAtIndex:), @selector(objectAtSafeIndex_M:));
        imageName(NSArrayM, @selector(objectAtIndex:), @selector(asAllow:));
        //: swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_M:));
        imageName(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(progresses:));
        //: swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(insertObject:atIndex_M:));
        imageName(NSArrayM, @selector(insertObject:atIndex:), @selector(place:sandwichObjectMarginOfErrorAt:));

        //: Class NSArrayI = NSClassFromString(@"__NSArrayI");
        Class NSArrayI = NSClassFromString([FragPorchData sharedInstance].kTextStandardLiteralDateValue);
        //: swizzle(NSArrayI, @selector(objectAtIndex:), @selector(objectAtSafeIndex_I:));
        imageName(NSArrayI, @selector(objectAtIndex:), @selector(temping:));
        //: swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_I:));
        imageName(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(bes:));

        //: Class NSArray0 = NSClassFromString(@"__NSArray0");
        Class NSArray0 = NSClassFromString([FragPorchData sharedInstance].kContent_phenomenonCookingAlongsideValue);
        //: swizzle(NSArray0, @selector(objectAtIndex:), @selector(objectAtSafeIndex_0:));
        imageName(NSArray0, @selector(objectAtIndex:), @selector(withs:));
        //: swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_0:));
        imageName(NSArray0, @selector(objectAtIndexedSubscript:), @selector(commentRange:));

        //: Class NSPlaceholderArray = NSClassFromString(@"__NSPlaceholderArray");
        Class NSPlaceholderArray = NSClassFromString([FragPorchData sharedInstance].kContentChickPackString);
        //: swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithPlaceholderObjectsSafely:count:));
        imageName(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithQuantity:module:));
    //: });
    });
}

//: - (id)objectAtSafeIndex_M:(NSUInteger)index
- (id)asAllow:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_M:index];
    return [self asAllow:index];
}

//: - (id)objectAtSafeIndex_I:(NSUInteger)index
- (id)temping:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_I:index];
    return [self temping:index];
}


//: - (id)objectAtIndexedSubscript_M:(NSUInteger)index
- (id)progresses:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_M:index];
    return [self progresses:index];
}

//: - (id)objectAtIndexedSubscript_I:(NSUInteger)index
- (id)bes:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_I:index];
    return [self bes:index];
}

//: - (id)objectAtSafeIndex_0:(NSUInteger)index
- (id)withs:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_0:index];
    return [self withs:index];
}

//: - (id)objectAtIndexedSubscript_0:(NSUInteger)index
- (id)commentRange:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_0:index];
    return [self commentRange:index];
}

//: - (instancetype)initWithPlaceholderObjectsSafely:(id _Nonnull const [])objects count:(NSUInteger)count
- (instancetype)initWithQuantity:(id _Nonnull const [])objects module:(NSUInteger)count
{
    //: id objs[count];
    id objs[count];
    //: if (nil != objects) {
    if (nil != objects) {
        //: NSUInteger realCount = count;
        NSUInteger realCount = count;
        //: for (NSUInteger i = 0, current = 0; i < count; ++i) {
        for (NSUInteger i = 0, current = 0; i < count; ++i) {
            //: if (nil != objects[i]) {
            if (nil != objects[i]) {
                //: objs[current++] = objects[i];
                objs[current++] = objects[i];
            //: } else {
            } else {
                //: --realCount;
                --realCount;
            }
        }

        //: if (realCount < count) {
        if (realCount < count) {
            //: count = realCount;
            count = realCount;
            //: objects = objs;
            objects = objs;
        }
    //: } else {
    } else {
        //: count = 0;
        count = 0;
    }

    //: return [self initWithPlaceholderObjectsSafely:objects count:count];
    return [self initWithQuantity:objects module:count];
}

//: - (NSArray *)arrayByReplacingNullsWithBlanks;
- (NSArray *)dismiss;
{
    //: NSMutableArray *replaced = [self mutableCopy];
    NSMutableArray *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (int idx = 0; idx < [replaced count]; idx++) {
    for (int idx = 0; idx < [replaced count]; idx++) {
        //: id object = [replaced objectAtIndex:idx];
        id object = [replaced objectAtIndex:idx];
        //: if (object == null) {
        if (object == null) {
            //: [replaced replaceObjectAtIndex:idx withObject:blank];
            [replaced replaceObjectAtIndex:idx withObject:blank];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object lastBlanks]];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object dismiss]];
        }
    }
    //: return replaced;
    return replaced;
}


//: - (void)insertObject:(id)anObject atIndex_M:(NSUInteger)index {
- (void)place:(id)anObject sandwichObjectMarginOfErrorAt:(NSUInteger)index {

    //: if(!anObject || index > self.count) return;
    if(!anObject || index > self.count) return;
    //: [self insertObject:anObject atIndex_M:index];
    [self place:anObject sandwichObjectMarginOfErrorAt:index];
}

//: - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    //: NSMutableString *mStr = [NSMutableString string];
    NSMutableString *mStr = [NSMutableString string];
    //: NSMutableString *tab = [NSMutableString stringWithString:@""];
    NSMutableString *tab = [NSMutableString stringWithString:@""];
    //: for (int i = 0; i < level; i++) {
    for (int i = 0; i < level; i++) {
        //: [tab appendString:@"\t"];
        [tab appendString:@"\t"];
    }
    //: [mStr appendString:@"(\n"];
    [mStr appendString:@"(\n"];
    //: for (int i = 0; i < self.count; i++) {
    for (int i = 0; i < self.count; i++) {
         //: NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
         NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
        //: id value = self[i];
        id value = self[i];
        //: if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
        if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
        //: } else {
        } else {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
        }
    }
    //: [mStr appendFormat:@"%@)",tab];
    [mStr appendFormat:@"%@)",tab];
    //: return mStr;
    return mStr;
}

//: @end
@end