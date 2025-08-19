
#import <Foundation/Foundation.h>

NSString *StringFromCloudData(Byte *data);        


//: time
Byte app_myCooperateFormat[] = {46, 4, 55, 4, 61, 50, 54, 46, 78};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "PinFactory.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFTimestampModel.h"
#import "EnableName.h"
//: #import "FFFSessionAudioContentView.h"
#import "ColorControl.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFKitAudioCenter.h"
#import "UserMax.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFMessageCellFactory()
@interface PinFactory()

//: @end
@end

//: @implementation FFFMessageCellFactory
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

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (ModelViewCell *)restoreMode:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model
                 table:(CentralProcessingUnitModel *)model
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig availableName:model];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ModelViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFAdvancedMessageCell";
        NSString *clz = @"KeyMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (FFFMessageCell *)cell;
    return (ModelViewCell *)cell;
}

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ObjectViewCell *)error:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model
                            search:(EnableName *)model
{
    //: NSString *identity = @"time";
    NSString *identity = StringFromCloudData(app_myCooperateFormat);
    //: FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ObjectViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFSessionTimestampCell";
        NSString *clz = @"ObjectViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell contextData:model];
    //: return (FFFSessionTimestampCell *)cell;
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
