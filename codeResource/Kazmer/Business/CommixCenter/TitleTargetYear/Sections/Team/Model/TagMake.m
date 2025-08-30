
#import <Foundation/Foundation.h>
typedef struct {
    Byte sellMilk;
    Byte *refer;
    unsigned int called;
    Byte toll;
	int playerLore;
	int firemanSAxe;
	int atLast;
} BoneData;

NSString *StringFromBoneData(BoneData *data);


//: icon_remove_pressed
BoneData kName_relieveViewValue = (BoneData){152, (Byte []){241, 251, 247, 246, 199, 234, 253, 245, 247, 238, 253, 199, 232, 234, 253, 235, 235, 253, 252, 61}, 19, 233, 6, 106, 103};

//: icon_add_normal
BoneData kNameConfrontData = (BoneData){77, (Byte []){36, 46, 34, 35, 18, 44, 41, 41, 18, 35, 34, 63, 32, 44, 33, 163}, 15, 240, 96, 185, 49};

//: icon_remove_normal
BoneData kTitleDegreeRespectivelyString = (BoneData){137, (Byte []){224, 234, 230, 231, 214, 251, 236, 228, 230, 255, 236, 214, 231, 230, 251, 228, 232, 229, 130}, 18, 170, 141, 176, 205};

//: icon_add_pressed
BoneData kTitleDevoteSquareData = (BoneData){110, (Byte []){7, 13, 1, 0, 49, 15, 10, 10, 49, 30, 28, 11, 29, 29, 11, 10, 228}, 16, 253, 5, 2, 215};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayCardOperationItem.h"
#import "TagMake.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"

//: @interface DisplayCardOperationItem()
@interface TagMake()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation DisplayCardOperationItem
@implementation TagMake

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithCheckedQuick:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self green:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)green:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".disable;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:StringFromBoneData(&kNameConfrontData)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromBoneData(&kTitleDevoteSquareData)];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".disable;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:StringFromBoneData(&kTitleDegreeRespectivelyString)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromBoneData(&kName_relieveViewValue)];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)add {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)findRead {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)underSession {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUnderSession:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)key {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)texts {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)pressed {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)cellMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)inputId {
    //: return NO;
    return NO;
}

//: @end
@end

Byte *BoneDataToByte(BoneData *data) {
    if (data->toll < 133) return data->refer;
    for (int i = 0; i < data->called; i++) {
        data->refer[i] ^= data->sellMilk;
    }
    data->refer[data->called] = 0;
    data->toll = 3;
	if (data->called >= 3) {
		data->playerLore = data->refer[0];
		data->firemanSAxe = data->refer[1];
		data->atLast = data->refer[2];
	}
    return data->refer;
}

NSString *StringFromBoneData(BoneData *data) {
    return [NSString stringWithUTF8String:(char *)BoneDataToByte(data)];
}
