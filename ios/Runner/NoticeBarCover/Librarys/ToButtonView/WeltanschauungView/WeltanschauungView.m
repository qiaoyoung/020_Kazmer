
#import <Foundation/Foundation.h>

NSString *StringFromStoneData(Byte *data);        


//: You must override %@ in %@
Byte main_manFormat[] = {85, 26, 59, 6, 42, 176, 30, 52, 58, 229, 50, 58, 56, 57, 229, 52, 59, 42, 55, 55, 46, 41, 42, 229, 234, 5, 229, 46, 51, 229, 234, 5, 137};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WeltanschauungView.m
//  SubView
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "WeltanschauungView.h"

//: @implementation TAAbstractDotView
@implementation WeltanschauungView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:StringFromStoneData(main_manFormat), NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)sensoryActivityContentRefresh:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:StringFromStoneData(main_manFormat), NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end

Byte * StoneDataToCache(Byte *data) {
    int attendanceRemind = data[0];
    int differenceShow = data[1];
    Byte saver = data[2];
    int surprising = data[3];
    if (!attendanceRemind) return data + surprising;
    for (int i = surprising; i < surprising + differenceShow; i++) {
        int value = data[i] + saver;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[surprising + differenceShow] = 0;
    return data + surprising;
}

NSString *StringFromStoneData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StoneDataToCache(data)];
}
