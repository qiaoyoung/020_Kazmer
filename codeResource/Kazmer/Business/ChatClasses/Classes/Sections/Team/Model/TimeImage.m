
#import <Foundation/Foundation.h>

NSString *StringFromFeverData(Byte *data);        


//: icon_remove_normal
Byte showViaUrl[] = {12, 18, 96, 7, 63, 100, 157, 9, 3, 15, 14, 255, 18, 5, 13, 15, 22, 5, 255, 14, 15, 18, 13, 1, 12, 142};

//: icon_add_pressed
Byte show_scramHormonePath[] = {17, 16, 88, 8, 234, 26, 34, 154, 17, 11, 23, 22, 7, 9, 12, 12, 7, 24, 26, 13, 27, 27, 13, 12, 236};

//: icon_add_normal
Byte userEaterName[] = {89, 15, 20, 13, 255, 54, 18, 97, 111, 212, 50, 232, 140, 85, 79, 91, 90, 75, 77, 80, 80, 75, 90, 91, 94, 89, 77, 88, 48};

//: icon_remove_pressed
Byte mPoolPath[] = {67, 19, 40, 13, 170, 202, 119, 199, 139, 90, 210, 187, 86, 65, 59, 71, 70, 55, 74, 61, 69, 71, 78, 61, 55, 72, 74, 61, 75, 75, 61, 60, 242};

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
//: #import "FFFCardOperationItem.h"
#import "TimeImage.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFCardOperationItem()
@interface TimeImage()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation FFFCardOperationItem
@implementation TimeImage

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithChorus:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self beginOperation:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)beginOperation:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".messageWith;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:StringFromFeverData(userEaterName)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromFeverData(show_scramHormonePath)];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".messageWith;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:StringFromFeverData(showViaUrl)];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:StringFromFeverData(mPoolPath)];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)teamId {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)userId {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)imageUrl {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return NO;
    return NO;
}

//: @end
@end

Byte * FeverDataToCache(Byte *data) {
    int whole = data[0];
    int congress = data[1];
    Byte palmVid = data[2];
    int hostaChange = data[3];
    if (!whole) return data + hostaChange;
    for (int i = hostaChange; i < hostaChange + congress; i++) {
        int value = data[i] + palmVid;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[hostaChange + congress] = 0;
    return data + hostaChange;
}

NSString *StringFromFeverData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FeverDataToCache(data)];
}
