
#import <Foundation/Foundation.h>
typedef struct {
    Byte bra;
    Byte *shrimpCocktail;
    unsigned int seatPhenomenon;
    Byte currentStag;
	int accessible;
	int bothError;
	int sureInspection;
} PlaceGenderData;

NSString *StringFromPlaceGenderData(PlaceGenderData *data);


//: #2B2F36
PlaceGenderData kTitle_permanentComfortString = (PlaceGenderData){118, (Byte []){85, 68, 52, 68, 48, 69, 64, 129}, 7, 227, 104, 218, 203};

//: B391FF
PlaceGenderData kText_popularityString = (PlaceGenderData){165, (Byte []){231, 150, 156, 148, 227, 227, 66}, 6, 172, 213, 17, 52};

//: F6F7FA
PlaceGenderData kText_labDoingHouseValue = (PlaceGenderData){91, (Byte []){29, 109, 29, 108, 29, 26, 247}, 6, 176, 236, 1, 112};

//: icon_reply_close
PlaceGenderData kTitleCompareName = (PlaceGenderData){118, (Byte []){31, 21, 25, 24, 41, 4, 19, 6, 26, 15, 41, 21, 26, 25, 5, 19, 219}, 16, 179, 224, 148, 19};

//: #fffDisplay
PlaceGenderData kName_properString = (PlaceGenderData){63, (Byte []){28, 89, 89, 89, 89, 89, 89, 20}, 7, 221, 139, 160, 68};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BookView.m
// Mortification
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayReplyContentView.h"
#import "BookView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Mortification.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @interface DisplayReplyContentView ()
@interface BookView ()

//: @end
@end

//: @implementation DisplayReplyContentView
@implementation BookView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
        self.backgroundColor = [UIColor cell:StringFromPlaceGenderData(&kName_properString)];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor cell:StringFromPlaceGenderData(&kText_labDoingHouseValue)];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor cell:StringFromPlaceGenderData(&kText_popularityString)];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor cell:StringFromPlaceGenderData(&kTitle_permanentComfortString)];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:StringFromPlaceGenderData(&kTitleCompareName)]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(asText:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.device_size = CGSizeMake(self.device_height, self.device_height);
//    
//    self.divider.device_left = self.closeButton.device_right + 2;
//    
//    self.label.device_height = self.label.intrinsicContentSize.height + 5;
//    self.label.device_width = self.device_width - self.closeButton.device_right;
//    self.label.device_left = self.divider.device_right + 2;
//    self.label.device_centerY = self.device_height * 0.5;
//    
//    self.divider.device_height = self.label.device_height;
//    self.divider.device_centerY = self.device_height * .5f;
}

//: - (void)dismiss
- (void)titleBy
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)asText:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(vanguards:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate vanguards:sender];
    }
}

//: @end
@end

Byte *PlaceGenderDataToByte(PlaceGenderData *data) {
    if (data->currentStag < 110) return data->shrimpCocktail;
    for (int i = 0; i < data->seatPhenomenon; i++) {
        data->shrimpCocktail[i] ^= data->bra;
    }
    data->shrimpCocktail[data->seatPhenomenon] = 0;
    data->currentStag = 18;
	if (data->seatPhenomenon >= 3) {
		data->accessible = data->shrimpCocktail[0];
		data->bothError = data->shrimpCocktail[1];
		data->sureInspection = data->shrimpCocktail[2];
	}
    return data->shrimpCocktail;
}

NSString *StringFromPlaceGenderData(PlaceGenderData *data) {
    return [NSString stringWithUTF8String:(char *)PlaceGenderDataToByte(data)];
}
