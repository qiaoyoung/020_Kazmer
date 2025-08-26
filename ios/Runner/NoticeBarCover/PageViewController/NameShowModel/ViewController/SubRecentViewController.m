// __DEBUG__
// __CLOSE_PRINT__
//
//  SubRecentViewController.m
//  NIM
//
//  Created by chrisRay on 2017/7/1.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESRobotCardViewController.h"
#import "SubRecentViewController.h"
//: #import "NTESColorButtonCell.h"
#import "CompartmentHoldfastColorViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESSessionViewController.h"
#import "BroadcastViewController.h"

// __M_A_C_R_O__

//: @interface NTESRobotCardViewController ()
@interface SubRecentViewController ()

//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: @property (nonatomic,strong) NTESColorButton *chatButton;
@property (nonatomic,strong) ModeButton *chatButton;

//: @end
@end

//: @implementation NTESRobotCardViewController
@implementation SubRecentViewController

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithBarMessageEmpty:(NSString *)userId
{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self)
    if (self)
    {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: [self refresh];
    [self success];
    //: self.chatButton = [[NTESColorButton alloc] initWithFrame:CGRectZero];
    self.chatButton = [[ModeButton alloc] initWithFrame:CGRectZero];
    //: self.chatButton.style = ColorButtonCellStyleBlue;
    self.chatButton.style = ColorButtonCellStyleBlue;
    //: [self.chatButton addTarget:self action:@selector(chat:) forControlEvents:UIControlEventTouchUpInside];
    [self.chatButton addTarget:self action:@selector(chat:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.chatButton setTitle:@"开始对话" forState:UIControlStateNormal];
    [self.chatButton setTitle:@"开始对话" forState:UIControlStateNormal];
    //: [self.chatButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.chatButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.view addSubview:self.chatButton];
    [self.view addSubview:self.chatButton];
}

//: - (void)chat:(id)sender
- (void)data:(id)sender
{
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    BroadcastViewController *vc = [[BroadcastViewController alloc] initWithSession:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)refresh
- (void)success
{
    //: NIMKitInfo *info = [[NIMKit sharedKit].provider infoByUser:self.userId option:nil];
    NIMKitInfo *info = [[NIMKit sharedKit].provider infoByUser:self.userId option:nil];
    //: NSURL *url = [NSURL URLWithString:info.avatarUrlString];
    NSURL *url = [NSURL URLWithString:info.avatarUrlString];
    //: [self.avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage];
    [self.avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage];
    //: self.nickLabel.text = info.showName;
    self.nickLabel.text = info.showName;
    //: self.navigationItem.title = info.showName;
    self.navigationItem.title = info.showName;
    //: self.userIdLabel.text = [NSString stringWithFormat:@"@%@",info.infoId];
    self.userIdLabel.text = [NSString stringWithFormat:@"@%@",info.infoId];

    //: NIMRobot *robot = [[NIMSDK sharedSDK].robotManager robotInfo:self.userId];
    NIMRobot *robot = [[NIMSDK sharedSDK].robotManager robotInfo:self.userId];
    //: self.introLabel.text = robot.intro;
    self.introLabel.text = robot.intro;
    //: CGSize size = [self.introLabel sizeThatFits:CGSizeMake(self.introLabel.width, CGFLOAT_MAX)];
    CGSize size = [self.introLabel sizeThatFits:CGSizeMake(self.introLabel.width, CGFLOAT_MAX)];
    //: self.introLabel.size = size;
    self.introLabel.size = size;
}


//: - (void)viewDidLayoutSubviews
- (void)viewDidLayoutSubviews
{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGSize size = [self.chatButton sizeThatFits:CGSizeMake(self.view.width, CGFLOAT_MAX)];
    CGSize size = [self.chatButton sizeThatFits:CGSizeMake(self.view.width, CGFLOAT_MAX)];
    //: self.chatButton.size = size;
    self.chatButton.size = size;
    //: self.chatButton.centerX = self.view.width * .5f;
    self.chatButton.centerX = self.view.width * .5f;
    //: self.chatButton.bottom = self.view.height - 30.f;
    self.chatButton.bottom = self.view.height - 30.f;

    //: self.introLabel.centerX = self.view.width * .5f;
    self.introLabel.centerX = self.view.width * .5f;
}

//: @end
@end