
#import <Foundation/Foundation.h>

@interface WheneverData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WheneverData

+ (instancetype)sharedInstance {
    static WheneverData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WheneverDataToCache:(Byte *)data {
    int versionSine = data[0];
    int tillNuclear = data[1];
    for (int i = 0; i < versionSine / 2; i++) {
        int begin = tillNuclear + i;
        int end = tillNuclear + versionSine - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[tillNuclear + versionSine] = 0;
    return data + tillNuclear;
}

- (NSString *)StringFromWheneverData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WheneverDataToCache:data]];
}  

//: #4B43DE
- (NSString *)userHunterUrl {
    /* static */ NSString *userHunterUrl = nil;
    if (!userHunterUrl) {
        Byte value[] = {7, 12, 111, 139, 128, 201, 142, 152, 5, 106, 113, 252, 69, 68, 51, 52, 66, 52, 35, 223};
        userHunterUrl = [self StringFromWheneverData:value];
    }
    return userHunterUrl;
}

//: camera_icon
- (NSString *)m_changePath {
    /* static */ NSString *m_changePath = nil;
    if (!m_changePath) {
        Byte value[] = {11, 11, 231, 161, 252, 84, 126, 93, 56, 3, 132, 110, 111, 99, 105, 95, 97, 114, 101, 109, 97, 99, 124};
        m_changePath = [self StringFromWheneverData:value];
    }
    return m_changePath;
}

//: 确认选择(%ld)
- (NSString *)showGarlicIdent {
    /* static */ NSString *showGarlicIdent = nil;
    if (!showGarlicIdent) {
        Byte value[] = {17, 4, 249, 9, 41, 100, 108, 37, 40, 169, 139, 230, 137, 128, 233, 164, 174, 232, 174, 161, 231, 130};
        showGarlicIdent = [self StringFromWheneverData:value];
    }
    return showGarlicIdent;
}

//: MediaCell
- (NSString *)main_genetText {
    /* static */ NSString *main_genetText = nil;
    if (!main_genetText) {
        Byte value[] = {9, 5, 22, 207, 147, 108, 108, 101, 67, 97, 105, 100, 101, 77, 36};
        main_genetText = [self StringFromWheneverData:value];
    }
    return main_genetText;
}

//: creationDate
- (NSString *)noti_shipId {
    /* static */ NSString *noti_shipId = nil;
    if (!noti_shipId) {
        Byte value[] = {12, 7, 137, 203, 112, 45, 117, 101, 116, 97, 68, 110, 111, 105, 116, 97, 101, 114, 99, 158};
        noti_shipId = [self StringFromWheneverData:value];
    }
    return noti_shipId;
}

//: CameraCell
- (NSString *)show_congressTowardsIdent {
    /* static */ NSString *show_congressTowardsIdent = nil;
    if (!show_congressTowardsIdent) {
        Byte value[] = {10, 5, 185, 81, 132, 108, 108, 101, 67, 97, 114, 101, 109, 97, 67, 98};
        show_congressTowardsIdent = [self StringFromWheneverData:value];
    }
    return show_congressTowardsIdent;
}

//: photo_selected
- (NSString *)userTeamPath {
    /* static */ NSString *userTeamPath = nil;
    if (!userTeamPath) {
        Byte value[] = {14, 5, 35, 138, 25, 100, 101, 116, 99, 101, 108, 101, 115, 95, 111, 116, 111, 104, 112, 133};
        userTeamPath = [self StringFromWheneverData:value];
    }
    return userTeamPath;
}

//: photo_select
- (NSString *)notiPieceIdent {
    /* static */ NSString *notiPieceIdent = nil;
    if (!notiPieceIdent) {
        Byte value[] = {12, 11, 227, 83, 255, 110, 71, 201, 71, 108, 97, 116, 99, 101, 108, 101, 115, 95, 111, 116, 111, 104, 112, 224};
        notiPieceIdent = [self StringFromWheneverData:value];
    }
    return notiPieceIdent;
}

//: user_profile_avtivity_send
- (NSString *)dreamCoachId {
    /* static */ NSString *dreamCoachId = nil;
    if (!dreamCoachId) {
        Byte value[] = {26, 2, 100, 110, 101, 115, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 131};
        dreamCoachId = [self StringFromWheneverData:value];
    }
    return dreamCoachId;
}

//: video_icon
- (NSString *)user_hoppingData {
    /* static */ NSString *user_hoppingData = nil;
    if (!user_hoppingData) {
        Byte value[] = {10, 2, 110, 111, 99, 105, 95, 111, 101, 100, 105, 118, 46};
        user_hoppingData = [self StringFromWheneverData:value];
    }
    return user_hoppingData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindEdgeView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CustomAlbumPickerView.h"
#import "FindEdgeView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: @interface CustomAlbumPickerView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@interface FindEdgeView () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PHPhotoLibraryChangeObserver, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

//: @property (nonatomic, strong) UIButton *confirmButton;
@property (nonatomic, strong) UIButton *confirmButton;
//: @property (nonatomic, weak) UIViewController *presentingViewController;
@property (nonatomic, weak) UIViewController *presentingViewController;

//: @end
@end

//: @implementation CustomAlbumPickerView
@implementation FindEdgeView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setup];
        [self comeOut];
    }
    //: return self;
    return self;
}

//: - (void)setup {
- (void)comeOut {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    //: _assets = [NSMutableArray array];
    _assets = [NSMutableArray array];
    //: _selectedAssets = [NSMutableArray array];
    _selectedAssets = [NSMutableArray array];
    //: _imageManager = [[PHCachingImageManager alloc] init];
    _imageManager = [[PHCachingImageManager alloc] init];
    //: _allowCamera = YES;
    _allowCamera = YES;
    //: _allowVideoRecording = YES;
    _allowVideoRecording = YES;
    //: _mediaType = MediaPickerMediaTypeAll;
    _mediaType = MediaPickerMediaTypeAll;

    //: [self setupCollectionView];
    [self hypothesis];
//    [self setupConfirmButton];
    //: [self fetchMediaAssets];
    [self counterimAssets];
    //: [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
    [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
}

// 在子视图类中重写hitTest方法
//: - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    //: UIView *hitView = [super hitTest:point withEvent:event];
    UIView *hitView = [super hitTest:point withEvent:event];
    //: if (hitView == self) {
    if (hitView == self) {
        //: return self; 
        return self; // 确保子视图能接收到事件
    }
    //: return hitView;
    return hitView;
}

//: - (void)setPresentingViewController:(UIViewController *)viewController {
- (void)setPresentingViewController:(UIViewController *)viewController {
    //: _presentingViewController = viewController;
    _presentingViewController = viewController;
}

//: - (void)setupCollectionView {
- (void)hypothesis {
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.minimumInteritemSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    //: layout.minimumLineSpacing = 5;
    layout.minimumLineSpacing = 5;
    //: CGFloat itemSize = (self.frame.size.width - 10) / 3;
    CGFloat itemSize = (self.frame.size.width - 10) / 3;
    //: layout.itemSize = CGSizeMake(itemSize, itemSize);
    layout.itemSize = CGSizeMake(itemSize, itemSize);

    //: _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) collectionViewLayout:layout];
    //: _collectionView.delegate = self;
    _collectionView.delegate = self;
    //: _collectionView.dataSource = self;
    _collectionView.dataSource = self;
    //: _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.backgroundColor = [UIColor whiteColor];
    //: [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"MediaCell"];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:[[WheneverData sharedInstance] main_genetText]];
    //: [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"CameraCell"];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:[[WheneverData sharedInstance] show_congressTowardsIdent]];
    //: [self addSubview:_collectionView];
    [self addSubview:_collectionView];
}

//: - (void)setupConfirmButton {
- (void)maxWith {
    //: _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
    //: _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    _confirmButton.frame = CGRectMake(0, self.frame.size.height - 50, self.frame.size.width, 48);
    //: _confirmButton.layer.cornerRadius = 24;
    _confirmButton.layer.cornerRadius = 24;
    //: [_confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [_confirmButton setTitle:[PaintedNaturalLanguageTo exhibit:[[WheneverData sharedInstance] dreamCoachId]] forState:UIControlStateNormal];
    //: [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [_confirmButton addTarget:self action:@selector(modifyShow) forControlEvents:UIControlEventTouchUpInside];
    //: _confirmButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    _confirmButton.backgroundColor = [UIColor min:[[WheneverData sharedInstance] userHunterUrl]];
    //: [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self addSubview:_confirmButton];
    [self addSubview:_confirmButton];
}

//: - (void)fetchMediaAssets {
- (void)counterimAssets {
    //: [_assets removeAllObjects];
    [_assets removeAllObjects];

    //: PHFetchOptions *options = [[PHFetchOptions alloc] init];
    PHFetchOptions *options = [[PHFetchOptions alloc] init];
    //: options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:[[WheneverData sharedInstance] noti_shipId] ascending:NO]];

    //: PHFetchResult *result;
    PHFetchResult *result;
    //: switch (self.mediaType) {
    switch (self.mediaType) {
        //: case MediaPickerMediaTypeImageOnly:
        case MediaPickerMediaTypeImageOnly:
            //: result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:options];
            result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:options];
            //: break;
            break;
        //: case MediaPickerMediaTypeVideoOnly:
        case MediaPickerMediaTypeVideoOnly:
            //: result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeVideo options:options];
            result = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeVideo options:options];
            //: break;
            break;
        //: case MediaPickerMediaTypeAll:
        case MediaPickerMediaTypeAll:
        //: default:
        default:
            //: result = [PHAsset fetchAssetsWithOptions:options];
            result = [PHAsset fetchAssetsWithOptions:options];
            //: break;
            break;
    }

    //: [result enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL *stop) {
    [result enumerateObjectsUsingBlock:^(PHAsset *asset, NSUInteger idx, BOOL *stop) {
        //: [_assets addObject:asset];
        [_assets addObject:asset];
    //: }];
    }];

    //: [_collectionView reloadData];
    [_collectionView reloadData];
}

//: - (void)confirmButtonTapped {
- (void)modifyShow {
    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(inputColor:)]) {
        //: [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
        [self.delegate inputColor:[_selectedAssets copy]];
    }
}

//: - (void)reloadMediaData {
- (void)notShowValue {
    //: [self fetchMediaAssets];
    [self counterimAssets];
}

//- (NSArray<PHAsset *> *)selectedAssets {
//    return [_selectedAssets copy];
//}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return _assets.count + (self.allowCamera ? 1 : 0);
    return _assets.count + (self.allowCamera ? 1 : 0);
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.allowCamera && indexPath.item == 0) {
    if (self.allowCamera && indexPath.item == 0) {
        //: return [self cameraCellForCollectionView:collectionView atIndexPath:indexPath];
        return [self tip:collectionView compartment:indexPath];
    }

    //: return [self mediaCellForCollectionView:collectionView atIndexPath:indexPath];
    return [self chemicalElement:collectionView show:indexPath];
}

//: - (UICollectionViewCell *)cameraCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)tip:(UICollectionView *)collectionView compartment:(NSIndexPath *)indexPath {
    //: UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CameraCell" forIndexPath:indexPath];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[[WheneverData sharedInstance] show_congressTowardsIdent] forIndexPath:indexPath];
    //: cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    cell.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.6];
    //: cell.layer.cornerRadius = 4;
    cell.layer.cornerRadius = 4;

    //: [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    UIImageView *cameraIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    //: cameraIcon.image = [UIImage imageNamed:@"camera_icon"];
    cameraIcon.image = [UIImage imageNamed:[[WheneverData sharedInstance] m_changePath]];
    //: cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    cameraIcon.center = CGPointMake(cell.bounds.size.width/2, cell.bounds.size.height/2);
    //: [cell.contentView addSubview:cameraIcon];
    [cell.contentView addSubview:cameraIcon];

    //: return cell;
    return cell;
}

//: - (UICollectionViewCell *)mediaCellForCollectionView:(UICollectionView *)collectionView atIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)chemicalElement:(UICollectionView *)collectionView show:(NSIndexPath *)indexPath {
    //: UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MediaCell" forIndexPath:indexPath];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[[WheneverData sharedInstance] main_genetText] forIndexPath:indexPath];
    //: [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    //: PHAsset *asset = _assets[assetIndex];
    PHAsset *asset = _assets[assetIndex];

    // 添加媒体缩略图
    //: UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
    //: imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    //: imageView.clipsToBounds = YES;
    imageView.clipsToBounds = YES;
    //: imageView.layer.cornerRadius = 4;
    imageView.layer.cornerRadius = 4;
    //: [cell.contentView addSubview:imageView];
    [cell.contentView addSubview:imageView];

    // 请求缩略图
    //: [_imageManager requestImageForAsset:asset
    [_imageManager requestImageForAsset:asset
                            //: targetSize:CGSizeMake(200, 200)
                            targetSize:CGSizeMake(200, 200)
                           //: contentMode:PHImageContentModeAspectFill
                           contentMode:PHImageContentModeAspectFill
                               //: options:nil
                               options:nil
                         //: resultHandler:^(UIImage *result, NSDictionary *info) {
                         resultHandler:^(UIImage *result, NSDictionary *info) {
        //: imageView.image = result;
        imageView.image = result;
    //: }];
    }];

    // 如果是视频，添加视频标记和时长
    //: if (asset.mediaType == PHAssetMediaTypeVideo) {
    if (asset.mediaType == PHAssetMediaTypeVideo) {
        // 视频遮罩层
        //: UIView *videoOverlay = [[UIView alloc] initWithFrame:CGRectMake(4, cell.bounds.size.height - 20, 48, 16)];
        UIView *videoOverlay = [[UIView alloc] initWithFrame:CGRectMake(4, cell.bounds.size.height - 20, 48, 16)];
        //: videoOverlay.layer.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.4000].CGColor;
        videoOverlay.layer.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.4000].CGColor;
        //: videoOverlay.layer.cornerRadius = 4;
        videoOverlay.layer.cornerRadius = 4;
        //: [cell.contentView addSubview:videoOverlay];
        [cell.contentView addSubview:videoOverlay];

        // 视频图标
        //: UIImageView *videoIcon = [[UIImageView alloc] initWithFrame:CGRectMake(2, 4, 8, 8)];
        UIImageView *videoIcon = [[UIImageView alloc] initWithFrame:CGRectMake(2, 4, 8, 8)];
        //: videoIcon.image = [UIImage imageNamed:@"video_icon"];
        videoIcon.image = [UIImage imageNamed:[[WheneverData sharedInstance] user_hoppingData]];
        //: [videoOverlay addSubview:videoIcon];
        [videoOverlay addSubview:videoIcon];

        // 视频时长
        //: UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        UILabel *durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 36, 16)];
        //: durationLabel.text = [self formattedDuration:asset.duration];
        durationLabel.text = [self head:asset.duration];
        //: durationLabel.textColor = [UIColor whiteColor];
        durationLabel.textColor = [UIColor whiteColor];
        //: durationLabel.font = [UIFont systemFontOfSize:11];
        durationLabel.font = [UIFont systemFontOfSize:11];
        //: durationLabel.textAlignment = NSTextAlignmentLeft;
        durationLabel.textAlignment = NSTextAlignmentLeft;
        //: [videoOverlay addSubview:durationLabel];
        [videoOverlay addSubview:durationLabel];
    }

    // 添加选中标记
    //: if ([_selectedAssets containsObject:asset]) {
    if ([_selectedAssets containsObject:asset]) {
//        UIView *selectionOverlay = [[UIView alloc] initWithFrame:cell.bounds];
//        selectionOverlay.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
//        [cell.contentView addSubview:selectionOverlay];

        //: UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        //: checkmark.image = [UIImage imageNamed:@"photo_selected"];
        checkmark.image = [UIImage imageNamed:[[WheneverData sharedInstance] userTeamPath]];
        //: [cell.contentView addSubview:checkmark];
        [cell.contentView addSubview:checkmark];
    //: }else{
    }else{
        //: UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        UIImageView *checkmark = [[UIImageView alloc] initWithFrame:CGRectMake(cell.bounds.size.width - 25, 5, 20, 20)];
        //: checkmark.image = [UIImage imageNamed:@"photo_select"];
        checkmark.image = [UIImage imageNamed:[[WheneverData sharedInstance] notiPieceIdent]];
        //: [cell.contentView addSubview:checkmark];
        [cell.contentView addSubview:checkmark];
    }

    //: return cell;
    return cell;
}

//: - (NSString *)formattedDuration:(NSTimeInterval)duration {
- (NSString *)head:(NSTimeInterval)duration {
    //: NSInteger minutes = (NSInteger)duration / 60;
    NSInteger minutes = (NSInteger)duration / 60;
    //: NSInteger seconds = (NSInteger)duration % 60;
    NSInteger seconds = (NSInteger)duration % 60;
    //: return [NSString stringWithFormat:@"%02ld:%02ld", (long)minutes, (long)seconds];
    return [NSString stringWithFormat:@"%02ld:%02ld", (long)minutes, (long)seconds];
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: if (self.allowCamera && indexPath.item == 0) {
    if (self.allowCamera && indexPath.item == 0) {
        //: [self showMediaPicker];
        [self messagePicker];
        //: return;
        return;
    }

    //: NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    NSInteger assetIndex = indexPath.item - (self.allowCamera ? 1 : 0);
    //: PHAsset *asset = _assets[assetIndex];
    PHAsset *asset = _assets[assetIndex];

    //: if ([_selectedAssets containsObject:asset]) {
    if ([_selectedAssets containsObject:asset]) {
        //: [_selectedAssets removeObject:asset];
        [_selectedAssets removeObject:asset];
    //: } else {
    } else {
//        if (self.maxSelectionCount > 0 && _selectedAssets.count >= self.maxSelectionCount) {
//            [self showMaxSelectionAlert];
//            return;
//        }
        //: [_selectedAssets addObject:asset];
        [_selectedAssets addObject:asset];
    }

//    [self updateConfirmButtonCount];
    //: [collectionView reloadItemsAtIndexPaths:@[indexPath]];
    [collectionView reloadItemsAtIndexPaths:@[indexPath]];

    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(inputColor:)]) {
        //: [self.delegate mediaPickerDidSelectAssets:[_selectedAssets copy]];
        [self.delegate inputColor:[_selectedAssets copy]];
    }
}

//: - (void)showMaxSelectionAlert {
- (void)date {

}

//: #pragma mark - 拍照/拍视频功能
#pragma mark - 拍照/拍视频功能

//: - (void)showMediaPicker {
- (void)messagePicker {

    //: if ([self.delegate respondsToSelector:@selector(mediaPickerDidTapCamera)]) {
    if ([self.delegate respondsToSelector:@selector(cameraHigh)]) {
        //: [self.delegate mediaPickerDidTapCamera];
        [self.delegate cameraHigh];
    }


//    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
//    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
//    picker.delegate = self;
////    picker.mediaTypes = @[mediaType];
//    [self.presentingViewController presentViewController:picker animated:YES completion:nil];
}


//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate

//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
////    NSString *mediaType = info[UIImagePickerControllerMediaType];
//    
//    // 处理照片
//    UIImage *image = info[UIImagePickerControllerOriginalImage];
//    [self saveImageToPhotoLibrary:image];
//   
//    
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}
//
//- (void)saveImageToPhotoLibrary:(UIImage *)image {
//    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
//        [PHAssetChangeRequest creationRequestForAssetFromImage:image];
//    } completionHandler:^(BOOL success, NSError * _Nullable error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (success) {
//                [self fetchMediaAssets];
//            } else {
//                NSLog(@"保存图片失败: %@", error.localizedDescription);
//            }
//        });
//    }];
//}
//
//- (void)saveVideoToPhotoLibrary:(NSURL *)videoURL {
//    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
//        [PHAssetChangeRequest creationRequestForAssetFromVideoAtFileURL:videoURL];
//    } completionHandler:^(BOOL success, NSError * _Nullable error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (success) {
//                [self fetchMediaAssets];
//            } else {
//                NSLog(@"保存视频失败: %@", error.localizedDescription);
//            }
//        });
//    }];
//}
//
//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}

//: #pragma mark - Helper Methods
#pragma mark - Helper Methods

//: - (void)updateConfirmButtonCount {
- (void)crop {
    //: [_confirmButton setTitle:[NSString stringWithFormat:@"确认选择(%ld)", (long)_selectedAssets.count] forState:UIControlStateNormal];
    [_confirmButton setTitle:[NSString stringWithFormat:[[WheneverData sharedInstance] showGarlicIdent], (long)_selectedAssets.count] forState:UIControlStateNormal];
}

//: #pragma mark - PHPhotoLibraryChangeObserver
#pragma mark - PHPhotoLibraryChangeObserver

//: - (void)photoLibraryDidChange:(PHChange *)changeInstance {
- (void)photoLibraryDidChange:(PHChange *)changeInstance {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: PHFetchResultChangeDetails *changes = [changeInstance changeDetailsForFetchResult:[PHAsset fetchAssetsWithOptions:nil]];
        PHFetchResultChangeDetails *changes = [changeInstance changeDetailsForFetchResult:[PHAsset fetchAssetsWithOptions:nil]];
        //: if (changes) {
        if (changes) {
            //: [self fetchMediaAssets];
            [self counterimAssets];
        }
    //: });
    });
}

//: - (void)dealloc {
- (void)dealloc {
    //: [[PHPhotoLibrary sharedPhotoLibrary] unregisterChangeObserver:self];
    [[PHPhotoLibrary sharedPhotoLibrary] unregisterChangeObserver:self];
}


//: @end
@end