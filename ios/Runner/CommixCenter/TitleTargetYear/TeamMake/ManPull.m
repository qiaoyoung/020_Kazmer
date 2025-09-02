
#import <Foundation/Foundation.h>
typedef struct {
    Byte chartGreen;
    Byte *jewelForeigner;
    unsigned int deserve;
    Byte dignityUmm;
	int withRecommend;
} AnimaData;

NSString *StringFromAnimaData(AnimaData *data);


//: icon_sender_text_node_pressed
AnimaData kName_subsidyValue = (AnimaData){244, (Byte []){157, 151, 155, 154, 171, 135, 145, 154, 144, 145, 134, 171, 128, 145, 140, 128, 171, 154, 155, 144, 145, 171, 132, 134, 145, 135, 135, 145, 144, 178}, 29, 246, 168};

//: icon_receiver_node_normal
AnimaData kTitleTollSeedContent = (AnimaData){65, (Byte []){40, 34, 46, 47, 30, 51, 36, 34, 36, 40, 55, 36, 51, 30, 47, 46, 37, 36, 30, 47, 46, 51, 44, 32, 45, 195}, 25, 230, 141};

//: {18,25,17,25}
AnimaData kNameThreadString = (AnimaData){82, (Byte []){41, 99, 106, 126, 96, 103, 126, 99, 101, 126, 96, 103, 47, 43}, 13, 235, 28};

//: icon_sender_text_node_normal
AnimaData kTitle_subsidyServingValue = (AnimaData){42, (Byte []){67, 73, 69, 68, 117, 89, 79, 68, 78, 79, 88, 117, 94, 79, 82, 94, 117, 68, 69, 78, 79, 117, 68, 69, 88, 71, 75, 70, 59}, 28, 243, 252};

//: icon_receiver_node_pressed
AnimaData kTitleFolioName = (AnimaData){235, (Byte []){130, 136, 132, 133, 180, 153, 142, 136, 142, 130, 157, 142, 153, 180, 133, 132, 143, 142, 180, 155, 153, 142, 152, 152, 142, 143, 4}, 26, 207, 68};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManPull.m
// Mortification
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayKitSetting.h"
#import "ManPull.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @implementation DisplayKitSetting
@implementation ManPull

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initReceive:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage form:StringFromAnimaData(&kTitle_subsidyServingValue)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromAnimaData(&kNameThreadString)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage form:StringFromAnimaData(&kName_subsidyValue)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromAnimaData(&kNameThreadString)) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:StringFromAnimaData(&kTitleTollSeedContent)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromAnimaData(&kNameThreadString)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:StringFromAnimaData(&kTitleFolioName)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromAnimaData(&kNameThreadString)) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end

Byte *AnimaDataToByte(AnimaData *data) {
    if (data->dignityUmm < 113) return data->jewelForeigner;
    for (int i = 0; i < data->deserve; i++) {
        data->jewelForeigner[i] ^= data->chartGreen;
    }
    data->jewelForeigner[data->deserve] = 0;
    data->dignityUmm = 16;
	if (data->deserve >= 1) {
		data->withRecommend = data->jewelForeigner[0];
	}
    return data->jewelForeigner;
}

NSString *StringFromAnimaData(AnimaData *data) {
    return [NSString stringWithUTF8String:(char *)AnimaDataToByte(data)];
}
