
#import <Foundation/Foundation.h>

NSString *StringFromRiotChangeData(Byte *data);


//: head_default
Byte notiShowerSimplyEnvelopeMessage[] = {18, 12, 59, 9, 221, 189, 60, 237, 179, 163, 160, 156, 159, 154, 159, 160, 161, 156, 176, 167, 175, 204};

//: #000000
Byte appAtFormat[] = {13, 7, 50, 11, 45, 58, 60, 40, 82, 70, 150, 85, 98, 98, 98, 98, 98, 98, 42};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProgressReusableView.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "ProgressReusableView.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation ProgressReusableView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self to];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)to
{
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    //: self.ImageView.layer.cornerRadius = 24;
    self.ImageView.layer.cornerRadius = 24;
    //: self.ImageView.layer.masksToBounds = YES;
    self.ImageView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:self.ImageView];
    [self.contentView addSubview:self.ImageView];

    //: self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    //: self.titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    self.titleLabel.textColor = [UIColor min:StringFromRiotChangeData(appAtFormat)];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)domain:(NIMTeamMember *)member
{
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:member.userId skinColour_strong:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:StringFromRiotChangeData(notiShowerSimplyEnvelopeMessage)]];
}


//: -(void)prepareForReuse
-(void)prepareForReuse
{
    //: [super prepareForReuse];
    [super prepareForReuse];
//    [self.logoImageView sd_cancelCurrentAnimationImagesLoad];
    //: self.ImageView.image = nil;
    self.ImageView.image = nil;
}


//: @end
@end

Byte * RiotChangeDataToCache(Byte *data) {
    int magnitudeellectual = data[0];
    int sendText = data[1];
    Byte beauty = data[2];
    int opt = data[3];
    if (!magnitudeellectual) return data + opt;
    for (int i = opt; i < opt + sendText; i++) {
        int value = data[i] - beauty;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[opt + sendText] = 0;
    return data + opt;
}

NSString *StringFromRiotChangeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RiotChangeDataToCache(data)];
}
