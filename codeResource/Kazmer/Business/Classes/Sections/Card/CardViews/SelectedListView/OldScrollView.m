
#import <Foundation/Foundation.h>

@interface LetterData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LetterData

+ (instancetype)sharedInstance {
    static LetterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LetterDataToCache:(Byte *)data {
    int publication = data[0];
    Byte maxPressed = data[1];
    int colorStyle = data[2];
    for (int i = colorStyle; i < colorStyle + publication; i++) {
        int value = data[i] + maxPressed;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[colorStyle + publication] = 0;
    return data + colorStyle;
}

- (NSString *)StringFromLetterData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LetterDataToCache:data]];
}

//: cell
- (NSString *)app_tapId {
    /* static */ NSString *app_tapId = nil;
    if (!app_tapId) {
        Byte value[] = {4, 71, 11, 72, 118, 119, 186, 169, 174, 229, 9, 28, 30, 37, 37, 199};
        app_tapId = [self StringFromLetterData:value];
    }
    return app_tapId;
}

//: #F4E9FF
- (NSString *)mainBubbleIdent {
    /* static */ NSString *mainBubbleIdent = nil;
    if (!mainBubbleIdent) {
        Byte value[] = {7, 76, 6, 172, 62, 129, 215, 250, 232, 249, 237, 250, 250, 100};
        mainBubbleIdent = [self StringFromLetterData:value];
    }
    return mainBubbleIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OldScrollView.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListView.h"
#import "OldScrollView.h"

//: @interface SelectedListView ()<UITableViewDelegate , UITableViewDataSource>
@interface OldScrollView ()<UITableViewDelegate , UITableViewDataSource>

//: @property (nonatomic , strong ) NSMutableArray *dataArray;
@property (nonatomic , strong ) NSMutableArray *dataArray;

//: @end
@end

//: @implementation SelectedListView
@implementation OldScrollView

//: - (void)dealloc{
- (void)dealloc{

    //: _dataArray = nil;
    _dataArray = nil;
}

//: - (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{

    //: self = [super initWithFrame:frame style:style];
    self = [super initWithFrame:frame style:style];

    //: if (self) {
    if (self) {

        //初始化数据

        //: [self initData];
        [self initCellShould];
    }

    //: return self;
    return self;
}

//: #pragma mark - 初始化数据
#pragma mark - 初始化数据

//: - (void)initData{
- (void)initCellShould{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: self.delegate = self;
    self.delegate = self;

    //: self.dataSource = self;
    self.dataSource = self;

    //: self.bounces = NO;
    self.bounces = NO;

    //: self.allowsMultipleSelectionDuringEditing = YES; 
    self.allowsMultipleSelectionDuringEditing = YES; //支持同时选中多行

    //: self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15);
    self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15);

    //: self.separatorColor = [[UIColor grayColor] colorWithAlphaComponent:0.2f];
    self.separatorColor = [[UIColor grayColor] colorWithAlphaComponent:0.2f];

    //: self.dataArray = [NSMutableArray array];
    self.dataArray = [NSMutableArray array];

    //: [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:[[LetterData sharedInstance] app_tapId]];
}

//: - (void)setArray:(NSArray<SelectedListModel *> *)array{
- (void)setArray:(NSArray<NameShowModel *> *)array{

    //: _array = array;
    _array = array;

    //: [self reloadData];
    [self reloadData];

    //: [self setEditing:!self.isSingle animated:NO];
    [self setEditing:!self.isSingle animated:NO];

    //: CGRect selfFrame = self.frame;
    CGRect selfFrame = self.frame;

    //: selfFrame.size.height = array.count * 50.0f;
    selfFrame.size.height = array.count * 50.0f;

    //: self.frame = selfFrame;
    self.frame = selfFrame;
}

//: - (void)setIsSingle:(BOOL)isSingle{
- (void)setIsSingle:(BOOL)isSingle{

    //: _isSingle = isSingle;
    _isSingle = isSingle;

    //: [self setEditing:!isSingle animated:NO];
    [self setEditing:!isSingle animated:NO];
}

//: - (void)finish{
- (void)collectionFinish{

    //: if (self.selectedBlock) self.selectedBlock(self.dataArray);
    if (self.selectedBlock) self.selectedBlock(self.dataArray);
}

//: #pragma mark - UITableViewDelegate , UITableViewDataSource
#pragma mark - UITableViewDelegate , UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    //: return self.array.count;
    return self.array.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    //: return 50.0f;
    return 50.0f;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[[LetterData sharedInstance] app_tapId]];

    //: SelectedListModel *model = self.array[indexPath.row];
    NameShowModel *model = self.array[indexPath.row];

    //: cell.textLabel.text = model.title;
    cell.textLabel.text = model.title;

    //: cell.backgroundColor = [UIColor clearColor];
    cell.backgroundColor = [UIColor clearColor];

    //: cell.selectedBackgroundView = [UIView new];
    cell.selectedBackgroundView = [UIView new];

    //: cell.selectedBackgroundView.backgroundColor = [UIColor colorWithHexString:@"#F4E9FF"];
    cell.selectedBackgroundView.backgroundColor = [UIColor min:[[LetterData sharedInstance] mainBubbleIdent]];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: id model = self.array[indexPath.row];
    id model = self.array[indexPath.row];

    //: [self.dataArray addObject:model];
    [self.dataArray addObject:model];

    //: if (self.isSingle) {
    if (self.isSingle) {

        //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];

        //: [self finish];
        [self collectionFinish];

    //: } else {
    } else {

        //: if (self.changedBlock) self.changedBlock(self.dataArray);
        if (self.changedBlock) self.changedBlock(self.dataArray);
    }

}

//: - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {

    //: id model = self.array[indexPath.row];
    id model = self.array[indexPath.row];

    //: if (!self.isSingle) {
    if (!self.isSingle) {

        //: [self.dataArray removeObject:model];
        [self.dataArray removeObject:model];

        //: if (self.changedBlock) self.changedBlock(self.dataArray);
        if (self.changedBlock) self.changedBlock(self.dataArray);
    }
}

//: @end
@end