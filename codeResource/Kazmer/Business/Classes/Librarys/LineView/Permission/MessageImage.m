// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGPermission.h"
#import "MessageImage.h"
//: #import "SGPermissionCamera.h"
#import "TitleComment.h"
//: #import "SGPermissionPhoto.h"
#import "RowMax.h"

//: @interface SGPermission ()
@interface MessageImage ()
//: @property (nonatomic, assign) SGPermissionType type;
@property (nonatomic, assign) SGPermissionType type;
//: @end
@end

//: @implementation SGPermission
@implementation MessageImage

//: - (void)request:(void (^)(BOOL))handler {
- (void)net:(void (^)(BOOL))handler {
    //: if (self.type == SGPermissionTypeCamera) {
    if (self.type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera request:handler];
        [TitleComment show:handler];
    //: } else if (self.type == SGPermissionTypePhoto) {
    } else if (self.type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto request:handler];
        [RowMax name:handler];
    }
}

//: + (void)permissionWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
+ (void)showCompletion:(SGPermissionType)type rapscallion:(SGPermissionBlock)block {
    //: SGPermission *permission = [[SGPermission alloc] init];
    MessageImage *permission = [[MessageImage alloc] init];
    //: permission.type = type;
    permission.type = type;

    //: if (type == SGPermissionTypeCamera) {
    if (type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera camera:^(SGPermissionCamera * _Nonnull camera, SGPermissionStatus status) {
        [TitleComment text:^(TitleComment * _Nonnull camera, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    //: } else if (type == SGPermissionTypePhoto) {
    } else if (type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto photo:^(SGPermissionPhoto * _Nonnull photos, SGPermissionStatus status) {
        [RowMax enrich:^(RowMax * _Nonnull photos, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    }
}

//: - (void)initWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
- (void)initWithName:(SGPermissionType)type size:(SGPermissionBlock)block {
    //: [SGPermission permissionWithType:type completion:block];
    [MessageImage showCompletion:type rapscallion:block];
}

//: @end
@end