// __DEBUG__
// __CLOSE_PRINT__
//
//  UsrInfoData.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayUsrInfoData.h"
#import "DisplayUsrInfoData.h"
//: #import "DisplaySpellingCenter.h"
#import "SizeTable.h"
//: #import "MyUserKit.h"
#import "Mortification.h"

//: @implementation RiverlaUsrInfo
@implementation AddCornerInfo

//: - (BOOL)isFriend {
- (BOOL)keyTool {
    //: NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    //: for (NIMUser *user in friends) {
    for (NIMUser *user in friends) {
        //: if ([user.userId isEqualToString:self.info.infoId]) {
        if ([user.userId isEqualToString:self.info.infoId]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (NSString *)groupTitle {
- (NSString *)roundPathTitle {
    //: NSString *title = [[DisplaySpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[SizeTable visible] targetAerogramme:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)memberId{
- (NSString *)littleLeagueTeam{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)tabTitle{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)avatarUrlString {
- (NSString *)image {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (UIImage *)avatarImage {
- (UIImage *)visualImage {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (id)sortKey {
- (id)overFindDown {
    //: return [[DisplaySpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[SizeTable visible] visualImageName:self.info.showName].shortSpelling;
}

//: @end
@end
