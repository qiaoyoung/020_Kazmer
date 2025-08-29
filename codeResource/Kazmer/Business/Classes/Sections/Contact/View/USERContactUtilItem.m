//
//  ContactUtilItem.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "USERContactUtilItem.h"

@implementation USERContactUtilItem

- (NSString*)reuseId{
    return @"USERContactUtilItem";
}

- (NSString*)cellName{
    return @"USERContactUtilCell";
}

- (NSString*)title{
    return nil;
}

@end

@implementation USERContactUtilMember

- (NSString *)avatarUrl{
    return nil;
}

- (CGFloat)uiHeight{
    return USERContactUtilRowHeight;
}

- (NSString*)reuseId{
    return @"USERContactUtilItem";
}

- (NSString*)cellName{
    return @"USERContactUtilCell";
}

- (NSString *)groupTitle {
    return nil;
}

- (NSString *)memberId{
    return self.userId;
}

- (BOOL)showAccessoryView{
    return YES;
}

- (id)sortKey {
    return nil;
}

@end
