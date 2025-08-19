
#import <Foundation/Foundation.h>
typedef struct {
    Byte peaceRegnant;
    Byte *elbowFormat;
    unsigned int scatterImpulse;
    Byte segment;
	int nameRehab;
} ColorfulData;

NSString *StringFromColorfulData(ColorfulData *data);


//: #ECECEC
ColorfulData userPointIdent = (ColorfulData){2, (Byte []){33, 71, 65, 71, 65, 71, 65, 18}, 7, 193, 43};

//: icon_me_arrow
ColorfulData notiQuarterbackShipStudyData = (ColorfulData){211, (Byte []){186, 176, 188, 189, 140, 190, 182, 140, 178, 161, 161, 188, 164, 171}, 13, 204, 179};

//: #4B43DE
ColorfulData mHeavilyTitle = (ColorfulData){156, (Byte []){191, 168, 222, 168, 175, 216, 217, 82}, 7, 225, 61};

//: #2C3042
ColorfulData user_evaluateMsg = (ColorfulData){106, (Byte []){73, 88, 41, 89, 90, 94, 88, 31}, 7, 161, 83};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FormViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchGroupEditTableViewCell.h"
#import "FormViewCell.h"

//: @implementation WatchGroupEditTableViewCell
@implementation FormViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initDown];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initDown {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
//    [self.contentView addSubview:self.contentLabel];
//    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
//    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, SCREEN_WIDTH-80, 15);
//    self.lineView.frame = CGRectMake(60, 49.5, SCREEN_WIDTH-90, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor min:StringFromColorfulData(&userPointIdent)];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:StringFromColorfulData(&notiQuarterbackShipStudyData)];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor min:StringFromColorfulData(&user_evaluateMsg)];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _contentLabel.textColor = [UIColor min:StringFromColorfulData(&mHeavilyTitle)];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end

Byte *ColorfulDataToByte(ColorfulData *data) {
    if (data->segment < 118) return data->elbowFormat;
    for (int i = 0; i < data->scatterImpulse; i++) {
        data->elbowFormat[i] ^= data->peaceRegnant;
    }
    data->elbowFormat[data->scatterImpulse] = 0;
    data->segment = 36;
	if (data->scatterImpulse >= 1) {
		data->nameRehab = data->elbowFormat[0];
	}
    return data->elbowFormat;
}

NSString *StringFromColorfulData(ColorfulData *data) {
    return [NSString stringWithUTF8String:(char *)ColorfulDataToByte(data)];
}
