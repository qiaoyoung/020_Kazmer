
#import <Foundation/Foundation.h>

NSString *StringFromCoupleData(Byte *data);        


//: LaunchImage
Byte mDeerIdent[] = {14, 11, 4, 13, 221, 122, 67, 210, 178, 82, 160, 223, 181, 72, 93, 113, 106, 95, 100, 69, 105, 93, 99, 97, 38};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "WaitViewController.h"
#import "ZoneViewController.h"

//: @interface WaitViewController ()
@interface ZoneViewController ()

//: @end
@end

//: @implementation WaitViewController
@implementation ZoneViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bgImgV = [[UIImageView alloc] init];
    UIImageView *bgImgV = [[UIImageView alloc] init];
    //: bgImgV.image = [UIImage imageNamed:@"LaunchImage"];
    bgImgV.image = [UIImage imageNamed:StringFromCoupleData(mDeerIdent)];
    //: bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: [self.view addSubview:bgImgV];
    [self.view addSubview:bgImgV];
}

//: @end
@end

Byte * CoupleDataToCache(Byte *data) {
    int nitrogenBalance = data[0];
    int gloryClub = data[1];
    Byte commentView = data[2];
    int colorSham = data[3];
    if (!nitrogenBalance) return data + colorSham;
    for (int i = colorSham; i < colorSham + gloryClub; i++) {
        int value = data[i] + commentView;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[colorSham + gloryClub] = 0;
    return data + colorSham;
}

NSString *StringFromCoupleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CoupleDataToCache(data)];
}
