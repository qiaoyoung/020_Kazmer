
#import <Foundation/Foundation.h>

@interface HeavilyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HeavilyData

+ (instancetype)sharedInstance {
    static HeavilyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HeavilyDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)HeavilyDataToCache:(Byte *)data {
    int veranda = data[0];
    Byte regulator = data[1];
    int towage = data[2];
    for (int i = towage; i < towage + veranda; i++) {
        int value = data[i] + regulator;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[towage + veranda] = 0;
    return data + towage;
}

- (NSString *)StringFromHeavilyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HeavilyDataToCache:data]];
}

//: You must override %@ in %@
- (NSString *)kText_dozeNumbName {
    /* static */ NSString *kText_dozeNumbName = nil;
    if (!kText_dozeNumbName) {
		NSArray<NSString *> *origin = @[@"26", @"75", @"6", @"228", @"236", @"216", @"14", @"36", @"42", @"213", @"34", @"42", @"40", @"41", @"213", @"36", @"43", @"26", @"39", @"39", @"30", @"25", @"26", @"213", @"218", @"245", @"213", @"30", @"35", @"213", @"218", @"245", @"182"];
		NSData *data = [HeavilyData HeavilyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_dozeNumbName = [self StringFromHeavilyData:value];
    }
    return kText_dozeNumbName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PositionView.m
//  TargetView
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "PositionView.h"

//: @implementation TAAbstractDotView
@implementation PositionView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[HeavilyData sharedInstance] kText_dozeNumbName], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)statusState:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[HeavilyData sharedInstance] kText_dozeNumbName], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end