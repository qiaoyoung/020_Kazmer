
#import <Foundation/Foundation.h>

NSString *StringFromUpperData(Byte *data);        


//: LaunchImage
Byte kText_gentData[] = {7, 11, 98, 5, 252, 234, 255, 19, 12, 1, 6, 231, 11, 255, 5, 3, 29};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "WaitViewController.h"
#import "ActionNameViewController.h"

//: @interface WaitViewController ()
@interface ActionNameViewController ()

//: @end
@end

//: @implementation WaitViewController
@implementation ActionNameViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bgImgV = [[UIImageView alloc] init];
    UIImageView *bgImgV = [[UIImageView alloc] init];
    //: bgImgV.image = [UIImage imageNamed:@"LaunchImage"];
    bgImgV.image = [UIImage imageNamed:StringFromUpperData(kText_gentData)];
    //: bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: [self.view addSubview:bgImgV];
    [self.view addSubview:bgImgV];
}

//: @end
@end

Byte * UpperDataToCache(Byte *data) {
    int eyebrowMigration = data[0];
    int teamNumb = data[1];
    Byte sendCemetery = data[2];
    int stead = data[3];
    if (!eyebrowMigration) return data + stead;
    for (int i = stead; i < stead + teamNumb; i++) {
        int value = data[i] + sendCemetery;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[stead + teamNumb] = 0;
    return data + stead;
}

NSString *StringFromUpperData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UpperDataToCache(data)];
}
