
#import <Foundation/Foundation.h>

typedef struct {
    Byte heavyQuantityPoint;
    Byte *viaBoom;
    unsigned int ureaRepair;
	int scorn;
	int ghb;
	int tussock;
} StructArcData;

@interface ArcData : NSObject

+ (instancetype)sharedInstance;

//: _ntes
@property (nonatomic, copy) NSString *userNineMsg;

//: time_ntes
@property (nonatomic, copy) NSString *appBarTitle;

@end

@implementation ArcData

+ (instancetype)sharedInstance {
    static ArcData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ArcDataToByte:(StructArcData *)data {
    for (int i = 0; i < data->ureaRepair; i++) {
        data->viaBoom[i] ^= data->heavyQuantityPoint;
    }
    data->viaBoom[data->ureaRepair] = 0;
	if (data->ureaRepair >= 3) {
		data->scorn = data->viaBoom[0];
		data->ghb = data->viaBoom[1];
		data->tussock = data->viaBoom[2];
	}
    return data->viaBoom;
}

- (NSString *)StringFromArcData:(StructArcData *)data {
    return [NSString stringWithUTF8String:(char *)[self ArcDataToByte:data]];
}

//: time_ntes
- (NSString *)appBarTitle {
    if (!_appBarTitle) {
        StructArcData value = (StructArcData){15, (Byte []){123, 102, 98, 106, 80, 97, 123, 106, 124, 255}, 9, 74, 230, 50};
        _appBarTitle = [self StringFromArcData:&value];
    }
    return _appBarTitle;
}

//: _ntes
- (NSString *)userNineMsg {
    if (!_userNineMsg) {
        StructArcData value = (StructArcData){180, (Byte []){235, 218, 192, 209, 199, 174}, 5, 229, 79, 114};
        _userNineMsg = [self StringFromArcData:&value];
    }
    return _userNineMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "KeyCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation KeyCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (MessageCell *)max:(UITableView*)tableView
                         //: forMessageMode:(FFFMessageModel *)model {
                         with:(CentralProcessingUnitModel *)model {
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<PinFrame> layoutConfig = [[ButtonKit sheerOption] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig availableName:model] stringByAppendingString:[ArcData sharedInstance].userNineMsg];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ModelViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"MessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (MessageCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (SessionCompartmentTimestampCell *)compartment:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model {
                            valueIn:(EnableName *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = [ArcData sharedInstance].appBarTitle;
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    SessionCompartmentTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"SessionCompartmentTimestampCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell contextData:model];
    //: return (NTESTimestampCell *)cell;
    return (SessionCompartmentTimestampCell *)cell;
}

//: @end
@end