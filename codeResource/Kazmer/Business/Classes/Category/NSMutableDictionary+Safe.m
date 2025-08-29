
#import <Foundation/Foundation.h>

typedef struct {
    Byte consciousness;
    Byte *partially;
    unsigned int atNess;
} StructHeadData;

@interface HeadData : NSObject

@end

@implementation HeadData

+ (Byte *)HeadDataToByte:(StructHeadData *)data {
    for (int i = 0; i < data->atNess; i++) {
        data->partially[i] ^= data->consciousness;
    }
    data->partially[data->atNess] = 0;
    return data->partially;
}

+ (NSString *)StringFromHeadData:(StructHeadData *)data {
    return [NSString stringWithUTF8String:(char *)[self HeadDataToByte:data]];
}

//: __NSPlaceholderDictionary
+ (NSString *)kTitleColorString {
    /* static */ NSString *kTitleColorString = nil;
    if (!kTitleColorString) {
        StructHeadData value = (StructHeadData){192, (Byte []){159, 159, 142, 147, 144, 172, 161, 163, 165, 168, 175, 172, 164, 165, 178, 132, 169, 163, 180, 169, 175, 174, 161, 178, 185, 70}, 25};
        kTitleColorString = [self StringFromHeadData:&value];
    }
    return kTitleColorString;
}

//: __NSDictionaryM
+ (NSString *)kContent_calledString {
    /* static */ NSString *kContent_calledString = nil;
    if (!kContent_calledString) {
        StructHeadData value = (StructHeadData){32, (Byte []){127, 127, 110, 115, 100, 73, 67, 84, 73, 79, 78, 65, 82, 89, 109, 190}, 15};
        kContent_calledString = [self StringFromHeadData:&value];
    }
    return kContent_calledString;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableDictionary+Safe.m
//  sohunews
//
//  Created by wang shun on 2018/12/21.
//  Copyright © 2018 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"

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

//: @implementation NSMutableDictionary (Safe)
@implementation NSMutableDictionary (Safe)

//: + (void)load
+ (void)load
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSDictionaryM = NSClassFromString(@"__NSDictionaryM");
        Class NSDictionaryM = NSClassFromString([HeadData kContent_calledString]);
        //: swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(snnews_setObject:forKey:));
        imageName(NSDictionaryM, @selector(setObject:forKey:), @selector(add:orientation:));
        //: swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(snnews_setObject:forKeyedSubscript:));
        imageName(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(dismiss:overTing:));
        //: swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(snnews_removeObjectForKey:));
        imageName(NSDictionaryM, @selector(removeObjectForKey:), @selector(unwishedDirection:));

        //: Class NSPlaceholderDictionary = NSClassFromString(@"__NSPlaceholderDictionary");
        Class NSPlaceholderDictionary = NSClassFromString([HeadData kTitleColorString]);
        //: swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithNullObjects:forKeys:count:));
        imageName(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithStart:title:policy:));
    //: });
    });
}

//: - (void)snnews_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
- (void)add:(id)anObject orientation:(id<NSCopying>)aKey {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && anObject && aKey) {
        if (self && anObject && aKey) {
            //: [self snnews_setObject:anObject forKey:aKey];
            [self add:anObject orientation:aKey];
        }
    }
}

//: - (void)snnews_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
- (void)dismiss:(id)obj overTing:(id<NSCopying>)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_setObject:obj forKeyedSubscript:key];
            [self dismiss:obj overTing:key];
        }
    }
}


//: - (void)snnews_removeObjectForKey:(id)key {
- (void)unwishedDirection:(id)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_removeObjectForKey:key];
            [self unwishedDirection:key];
        }
    }
}

//: - (instancetype)initWithNullObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)count
- (instancetype)initWithStart:(const id [])objects title:(const id <NSCopying> [])keys policy:(NSUInteger)count
{
    //: for (NSUInteger i = 0; i < count; i++) {
    for (NSUInteger i = 0; i < count; i++) {
        //: if (objects[i] == nil || keys[i] == nil) {
        if (objects[i] == nil || keys[i] == nil) {
            //: return nil;
            return nil;
        }
    }

    //: return [self initWithNullObjects:objects forKeys:keys count:count];
    return [self initWithStart:objects title:keys policy:count];
}

//: @end
@end

//: @implementation NSDictionary (Null)
@implementation NSDictionary (Null)

//: - (NSDictionary *)dictionaryByReplacingNullsWithBlanks;
- (NSDictionary *)lastBlanks;
{
    //: NSMutableDictionary *replaced = [self mutableCopy];
    NSMutableDictionary *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (NSString *key in self) {
    for (NSString *key in self) {
        //: id object = [self objectForKey:key];
        id object = [self objectForKey:key];
        //: if (object == null) {
        if (object == null) {
            //: [replaced setObject:blank forKey:key];
            [replaced setObject:blank forKey:key];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object lastBlanks] forKey:key];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object dismiss] forKey:key];
        }
    }

    //: return replaced;
    return replaced;
}
//: @end
@end