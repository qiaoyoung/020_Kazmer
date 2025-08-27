
#import <Foundation/Foundation.h>

NSString *StringFromCloudData(Byte *data);        


//: time
Byte app_myCooperateFormat[] = {46, 4, 55, 4, 61, 50, 54, 46, 78};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchMessageCellMaker.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchMessageCellFactory.h"
#import "PinFactory.h"
//: #import "WatchMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "WatchTimestampModel.h"
#import "EnableName.h"
//: #import "WatchSessionAudioContentView.h"
#import "ColorControl.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "WatchKitAudioCenter.h"
#import "UserMax.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface WatchMessageCellFactory()
@interface PinFactory()

//: @end
@end

//: @implementation WatchMessageCellFactory
@implementation PinFactory

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{

}

//: - (WatchMessageCell *)cellInTable:(UITableView*)tableView
- (ModelViewCell *)restoreMode:(UITableView*)tableView
                 //: forMessageMode:(WatchMessageModel *)model
                 table:(CentralProcessingUnitModel *)model
{
    //: id<WatchCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig availableName:model];
    //: WatchMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ModelViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"WatchAdvancedMessageCell";
        NSString *clz = @"KeyMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (WatchMessageCell *)cell;
    return (ModelViewCell *)cell;
}

//: - (WatchSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ObjectViewCell *)error:(UITableView *)tableView
                            //: forTimeModel:(WatchTimestampModel *)model
                            search:(EnableName *)model
{
    //: NSString *identity = @"time";
    NSString *identity = StringFromCloudData(app_myCooperateFormat);
    //: WatchSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ObjectViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"WatchSessionTimestampCell";
        NSString *clz = @"ObjectViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell contextData:model];
    //: return (WatchSessionTimestampCell *)cell;
    return (ObjectViewCell *)cell;
}

//: @end
@end

Byte * CloudDataToCache(Byte *data) {
    int cueStyle = data[0];
    int sodium = data[1];
    Byte aside = data[2];
    int temp = data[3];
    if (!cueStyle) return data + temp;
    for (int i = temp; i < temp + sodium; i++) {
        int value = data[i] + aside;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[temp + sodium] = 0;
    return data + temp;
}

NSString *StringFromCloudData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CloudDataToCache(data)];
}
