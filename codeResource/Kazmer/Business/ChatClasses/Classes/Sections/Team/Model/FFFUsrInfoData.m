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
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFSpellingCenter.h"
#import "ViewSize.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation RiverlaUsrInfo
@implementation FrameOld

//: - (BOOL)isFriend {
- (BOOL)memberInFriend {
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
- (NSString *)need {
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ViewSize stormCenter] atLetter:self.info.showName].capitalizedString;
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
- (NSString *)show{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)representation{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)avatarUrlString {
- (NSString *)pathTitle {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (UIImage *)avatarImage {
- (UIImage *)objectBlock {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (id)sortKey {
- (id)off {
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ViewSize stormCenter] format:self.info.showName].shortSpelling;
}

//: @end
@end