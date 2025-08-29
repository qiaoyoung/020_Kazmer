
#import <Foundation/Foundation.h>

@interface ColorOutdoorData : NSObject

+ (instancetype)sharedInstance;

//: head_default
@property (nonatomic, copy) NSString *kTitleToString;

//: #000000
@property (nonatomic, copy) NSString *kName_recentString;

@end

@implementation ColorOutdoorData

//: head_default
- (NSString *)kTitleToString {
    if (!_kTitleToString) {
		NSString *origin = @"0c4c031c1915181318191a1529202841";
		NSData *data = [ColorOutdoorData ColorOutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleToString = [self StringFromColorOutdoorData:value];
    }
    return _kTitleToString;
}

+ (NSData *)ColorOutdoorDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: #000000
- (NSString *)kName_recentString {
    if (!_kName_recentString) {
		NSString *origin = @"072c0650f8e0f704040404040401";
		NSData *data = [ColorOutdoorData ColorOutdoorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_recentString = [self StringFromColorOutdoorData:value];
    }
    return _kName_recentString;
}

- (Byte *)ColorOutdoorDataToCache:(Byte *)data {
    int nut = data[0];
    Byte vitaminHeavily = data[1];
    int messageText = data[2];
    for (int i = messageText; i < messageText + nut; i++) {
        int value = data[i] + vitaminHeavily;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[messageText + nut] = 0;
    return data + messageText;
}

+ (instancetype)sharedInstance {
    static ColorOutdoorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (NSString *)StringFromColorOutdoorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ColorOutdoorDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResultViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "ResultViewCell.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation ResultViewCell

//: - (void)setUp
- (void)impression
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
    self.titleLabel.textColor = [UIColor cell:[ColorOutdoorData sharedInstance].kName_recentString];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self impression];

    }
    //: return self;
    return self;
}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)by:(NIMTeamMember *)member
{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:member.userId keepingOption:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[ColorOutdoorData sharedInstance].kTitleToString]];
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