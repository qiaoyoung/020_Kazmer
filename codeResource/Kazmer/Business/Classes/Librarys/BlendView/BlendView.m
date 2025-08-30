
#import <Foundation/Foundation.h>

@interface ComparativelyData : NSObject

+ (instancetype)sharedInstance;

//: text/javascript
@property (nonatomic, copy) NSString *kTitleGearString;

//: video
@property (nonatomic, copy) NSString *kName_hoppingAvailabilityData;

//: png
@property (nonatomic, copy) NSString *kTitle_despiteString;

//: systemSetting
@property (nonatomic, copy) NSString *kTitleLiteralData;

//: lang
@property (nonatomic, copy) NSString *kTitleSatisfyString;

//: jpg
@property (nonatomic, copy) NSString *kText_satisfyPlyString;

//: token
@property (nonatomic, copy) NSString *kText_squadString;

//: AppKey
@property (nonatomic, copy) NSString *kTitleWordString;

//: text/plain
@property (nonatomic, copy) NSString *kName_fierceData;

//: text/json
@property (nonatomic, copy) NSString *kTitle_painfulDealerValue;

//: Download
@property (nonatomic, copy) NSString *kTextHeavilyData;

//: gif
@property (nonatomic, copy) NSString *kName_cationDiscriminationContent;

//: loginip
@property (nonatomic, copy) NSString *kNameSwitchtoData;

//: video/mp4
@property (nonatomic, copy) NSString *kTitleArtiMeltContent;

//: CurTime
@property (nonatomic, copy) NSString *kNameProvedSateData;

//: Nonce
@property (nonatomic, copy) NSString *kTitle_cutePosterFolioString;

//: appSetting
@property (nonatomic, copy) NSString *kTextForeignerString;

//: xiaokaapi.com
@property (nonatomic, copy) NSString *kContent_daughterData;

//: CheckSum
@property (nonatomic, copy) NSString *kTitleClearlyContent;

//: yyyyMMddHHmmss
@property (nonatomic, copy) NSString *kTitleSendData;

//: picture
@property (nonatomic, copy) NSString *kTextMigrationString;

//: ismustmobile
@property (nonatomic, copy) NSString *kNameAlongsideString;

//: application/json
@property (nonatomic, copy) NSString *kName_retireData;

//: cer
@property (nonatomic, copy) NSString *kContentSeeminglyValue;

//: http
@property (nonatomic, copy) NSString *kTitle_plyGenerateName;

//: %@.mp4
@property (nonatomic, copy) NSString *kContentCookingData;

//: %@.jpg
@property (nonatomic, copy) NSString *kName_suggestValue;

//: text/html
@property (nonatomic, copy) NSString *kText_sandData;

@end

@implementation ComparativelyData

+ (instancetype)sharedInstance {
    static ComparativelyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ComparativelyDataToData:(NSString *)value {
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

- (Byte *)ComparativelyDataToCache:(Byte *)data {
    int finChop = data[0];
    Byte milk = data[1];
    int easyRated = data[2];
    for (int i = easyRated; i < easyRated + finChop; i++) {
        int value = data[i] + milk;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[easyRated + finChop] = 0;
    return data + easyRated;
}

- (NSString *)StringFromComparativelyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComparativelyDataToCache:data]];
}

//: xiaokaapi.com
- (NSString *)kContent_daughterData {
    if (!_kContent_daughterData) {
		NSString *origin = @"0D59083D5133C3911F1008161208081710D50A161480";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_daughterData = [self StringFromComparativelyData:value];
    }
    return _kContent_daughterData;
}

//: appSetting
- (NSString *)kTextForeignerString {
    if (!_kTextForeignerString) {
		NSString *origin = @"0A4D04A9142323061827271C211A40";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextForeignerString = [self StringFromComparativelyData:value];
    }
    return _kTextForeignerString;
}

//: text/plain
- (NSString *)kName_fierceData {
    if (!_kName_fierceData) {
		NSString *origin = @"0A1B0AFA5ABB1C1368FD594A5D59145551464E53C8";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_fierceData = [self StringFromComparativelyData:value];
    }
    return _kName_fierceData;
}

//: jpg
- (NSString *)kText_satisfyPlyString {
    if (!_kText_satisfyPlyString) {
		NSString *origin = @"03100CA2752E3A46863ADE695A60573C";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_satisfyPlyString = [self StringFromComparativelyData:value];
    }
    return _kText_satisfyPlyString;
}

//: %@.mp4
- (NSString *)kContentCookingData {
    if (!_kContentCookingData) {
		NSString *origin = @"065A03CBE6D41316DA83";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentCookingData = [self StringFromComparativelyData:value];
    }
    return _kContentCookingData;
}

//: ismustmobile
- (NSString *)kNameAlongsideString {
    if (!_kNameAlongsideString) {
		NSString *origin = @"0C2A09490849CDFA623F49434B494A4345383F423B61";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameAlongsideString = [self StringFromComparativelyData:value];
    }
    return _kNameAlongsideString;
}

//: %@.jpg
- (NSString *)kName_suggestValue {
    if (!_kName_suggestValue) {
		NSString *origin = @"06110B3D0566A176B6AF12142F1D595F56E1";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_suggestValue = [self StringFromComparativelyData:value];
    }
    return _kName_suggestValue;
}

//: cer
- (NSString *)kContentSeeminglyValue {
    if (!_kContentSeeminglyValue) {
		NSString *origin = @"033A07C51E5C2F292B38F3";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentSeeminglyValue = [self StringFromComparativelyData:value];
    }
    return _kContentSeeminglyValue;
}

//: application/json
- (NSString *)kName_retireData {
    if (!_kName_retireData) {
		NSString *origin = @"10210BF8B448E842FE797B404F4F4B48424053484E4D0E49524E4D7A";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_retireData = [self StringFromComparativelyData:value];
    }
    return _kName_retireData;
}

//: AppKey
- (NSString *)kTitleWordString {
    if (!_kTitleWordString) {
		NSString *origin = @"060A0574D5376666415B6F78";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleWordString = [self StringFromComparativelyData:value];
    }
    return _kTitleWordString;
}

//: systemSetting
- (NSString *)kTitleLiteralData {
    if (!_kTitleLiteralData) {
		NSString *origin = @"0D4D0477262C26271820061827271C211A99";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleLiteralData = [self StringFromComparativelyData:value];
    }
    return _kTitleLiteralData;
}

//: yyyyMMddHHmmss
- (NSString *)kTitleSendData {
    if (!_kTitleSendData) {
		NSString *origin = @"0E46069697B83333333307071E1E020227272D2D88";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSendData = [self StringFromComparativelyData:value];
    }
    return _kTitleSendData;
}

//: CurTime
- (NSString *)kNameProvedSateData {
    if (!_kNameProvedSateData) {
		NSString *origin = @"072D03164845273C4038F5";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameProvedSateData = [self StringFromComparativelyData:value];
    }
    return _kNameProvedSateData;
}

//: picture
- (NSString *)kTextMigrationString {
    if (!_kTextMigrationString) {
		NSString *origin = @"07080904C61D24CF9F68615B6C6D6A5D1B";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextMigrationString = [self StringFromComparativelyData:value];
    }
    return _kTextMigrationString;
}

//: text/html
- (NSString *)kText_sandData {
    if (!_kText_sandData) {
		NSString *origin = @"094A0621D89A2A1B2E2AE51E2A23225E";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_sandData = [self StringFromComparativelyData:value];
    }
    return _kText_sandData;
}

//: video/mp4
- (NSString *)kTitleArtiMeltContent {
    if (!_kTitleArtiMeltContent) {
		NSString *origin = @"090A08A66767AC136C5F5A5B652563662A8E";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleArtiMeltContent = [self StringFromComparativelyData:value];
    }
    return _kTitleArtiMeltContent;
}

//: gif
- (NSString *)kName_cationDiscriminationContent {
    if (!_kName_cationDiscriminationContent) {
		NSString *origin = @"03400927B8F2B2C8DB27292680";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_cationDiscriminationContent = [self StringFromComparativelyData:value];
    }
    return _kName_cationDiscriminationContent;
}

//: http
- (NSString *)kTitle_plyGenerateName {
    if (!_kTitle_plyGenerateName) {
		NSString *origin = @"04160CBCE866EA398BE140C8525E5E5A77";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_plyGenerateName = [self StringFromComparativelyData:value];
    }
    return _kTitle_plyGenerateName;
}

//: token
- (NSString *)kText_squadString {
    if (!_kText_squadString) {
		NSString *origin = @"05340ABBE23121D98B81403B37313A2B";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_squadString = [self StringFromComparativelyData:value];
    }
    return _kText_squadString;
}

//: loginip
- (NSString *)kNameSwitchtoData {
    if (!_kNameSwitchtoData) {
		NSString *origin = @"074D031F221A1C211C23E5";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameSwitchtoData = [self StringFromComparativelyData:value];
    }
    return _kNameSwitchtoData;
}

//: lang
- (NSString *)kTitleSatisfyString {
    if (!_kTitleSatisfyString) {
		NSString *origin = @"043D0D824DD1EE5D33F68DDB1F2F24312AED";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleSatisfyString = [self StringFromComparativelyData:value];
    }
    return _kTitleSatisfyString;
}

//: Nonce
- (NSString *)kTitle_cutePosterFolioString {
    if (!_kTitle_cutePosterFolioString) {
		NSString *origin = @"055608FFBBD717A5F819180D0F84";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_cutePosterFolioString = [self StringFromComparativelyData:value];
    }
    return _kTitle_cutePosterFolioString;
}

//: png
- (NSString *)kTitle_despiteString {
    if (!_kTitle_despiteString) {
		NSString *origin = @"030506B3C9AB6B69626E";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_despiteString = [self StringFromComparativelyData:value];
    }
    return _kTitle_despiteString;
}

//: video
- (NSString *)kName_hoppingAvailabilityData {
    if (!_kName_hoppingAvailabilityData) {
		NSString *origin = @"052D03493C373842D3";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_hoppingAvailabilityData = [self StringFromComparativelyData:value];
    }
    return _kName_hoppingAvailabilityData;
}

//: Download
- (NSString *)kTextHeavilyData {
    if (!_kTextHeavilyData) {
		NSString *origin = @"08260D7B6314B7F146F4C847D71E49514846493B3E9C";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextHeavilyData = [self StringFromComparativelyData:value];
    }
    return _kTextHeavilyData;
}

//: text/json
- (NSString *)kTitle_painfulDealerValue {
    if (!_kTitle_painfulDealerValue) {
		NSString *origin = @"09170DA93037AC9F35961395F75D4E615D18535C58575D";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_painfulDealerValue = [self StringFromComparativelyData:value];
    }
    return _kTitle_painfulDealerValue;
}

//: text/javascript
- (NSString *)kTitleGearString {
    if (!_kTitleGearString) {
		NSString *origin = @"0F2B0947B27FD6C22A493A4D49043F364B364838473E454903";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleGearString = [self StringFromComparativelyData:value];
    }
    return _kTitleGearString;
}

//: CheckSum
- (NSString *)kTitleClearlyContent {
    if (!_kTitleClearlyContent) {
		NSString *origin = @"0813067103EC305552505840625AEB";
		NSData *data = [ComparativelyData ComparativelyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitleClearlyContent = [self StringFromComparativelyData:value];
    }
    return _kTitleClearlyContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendView.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "BlendView.h"
//: #import<CommonCrypto/CommonDigest.h>
#import<CommonCrypto/CommonDigest.h>

//: @interface ZCHttpManager ()
@interface BlendView ()

//: @property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) AFHTTPSessionManager *manager;

//: @end
@end

//: @implementation ZCHttpManager
@implementation BlendView

//: + (instancetype)sharedManager{
+ (instancetype)with{
    //: static ZCHttpManager *sharedManager = nil;
    static BlendView *sharedManager = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedManager = [ZCHttpManager new];
        sharedManager = [BlendView new];
    //: });
    });
    //: return sharedManager;
    return sharedManager;
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)anyOutput: (NSString *)urlStr
             //: params: (NSDictionary *)params
             nettEnd: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             view: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          window: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        searched: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            key: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             toMilitaryQuarters: (ResponseFailed)failed{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [TableContext name].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = colorFill([TableContext name].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[ComparativelyData sharedInstance].kTitleSatisfyString];

    //: NSLog(@"lang--:%@",lang);
    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([TableContext name].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[ComparativelyData sharedInstance].kText_squadString];
    }

    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",urlStr,params,responseObject);
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[BlendView with] with:task];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)deviceWith:(NSString *)URL
                 //: parameters:(id)parameters
                 imageFailed:(id)parameters
                       //: name:(NSString *)name
                       visualImage:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     gestureFailed:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  language:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 key:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  maxMinFailed:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   to:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    content:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     pin:(ResponseFailed)failed{

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);// 图片经过等比压缩后得到的二进制文件
            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];// 默认图片的文件名, 若fileNames为nil就使用
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [ComparativelyData sharedInstance].kTitleSendData;
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[ComparativelyData sharedInstance].kText_satisfyPlyString];

            //: NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName;
            NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[ComparativelyData sharedInstance].kText_satisfyPlyString] : imageFileName;
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"];
            NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: [ComparativelyData sharedInstance].kText_satisfyPlyString];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[BlendView with] with:t];
}

//: - (void)removeTask:(NSURLSessionDataTask *)task{
- (void)anColor:(NSURLSessionDataTask *)task{
    //: if ([self ifRequesting]) {
    if ([self completeInterval]) {
        //: NSMutableDictionary *taskQueue = [self taskQueue];
        NSMutableDictionary *taskQueue = [self session];

        //: [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
        [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
    }
}

//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)content:(NSString *)URL
                 //: parameters:(id)parameters
                 dateValue:(id)parameters
                     //: images:(NSData *)videoData
                     cigaretteHolder:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 record:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   with:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    atResponseSuccess:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     victory:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: URL = RestApi(URL);
        URL = originAction(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        //: NSString *fileName = [NSString stringWithFormat:@"%@.mp4",timeSp];
        NSString *fileName = [NSString stringWithFormat:[ComparativelyData sharedInstance].kContentCookingData,timeSp];
        //: NSString *mimeType = @"video/mp4";
        NSString *mimeType = [ComparativelyData sharedInstance].kTitleArtiMeltContent;
        //: [formData appendPartWithFileData:videoData name:@"video" fileName:fileName mimeType:mimeType];
        [formData appendPartWithFileData:videoData name:[ComparativelyData sharedInstance].kName_hoppingAvailabilityData fileName:fileName mimeType:mimeType];
        //: [formData appendPartWithFileData:coverData name:@"picture" fileName:[NSString stringWithFormat:@"%@.jpg",timeSp] mimeType:@"image/jpg"];
        [formData appendPartWithFileData:coverData name:[ComparativelyData sharedInstance].kTextMigrationString fileName:[NSString stringWithFormat:[ComparativelyData sharedInstance].kName_suggestValue,timeSp] mimeType:@"image/jpg"];
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[BlendView with] with:t];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)descriptionDemonstrate: (NSString *)urlStr
             //: params: (NSDictionary *)params
             outsideAccount: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             sprechgesangEnable: (BOOL)isShow
            //: success: (ResponseSuccess)success
            media: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             show: (ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: urlStr = RestApi(urlStr);
        urlStr = originAction(urlStr);
    }

    //: [self postWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self anyOutput:urlStr nettEnd:params view:isShow window:0 searched:YES key:success toMilitaryQuarters:failed];
}

/**
 *https验证
 */
//: + (AFSecurityPolicy *)customSecurityPolicy {
+ (AFSecurityPolicy *)contentPolicy {
    // /先导入证书
    //: NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaokaapi.com" ofType:@"cer"]; 
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:[ComparativelyData sharedInstance].kContent_daughterData ofType:[ComparativelyData sharedInstance].kContentSeeminglyValue]; //证书的路径
    //: NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    // AFSSLPinningModeCertificate 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];

    // allowInvalidCertificates 是否允许无效证书（也就是自建的证书），默认为NO
    // 如果是需要验证自建证书，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = NO;
    securityPolicy.allowInvalidCertificates = NO;

    //validatesDomainName 是否需要验证域名，默认为YES；
    //假如证书的域名与你请求的域名不一致，需把该项设置为NO；如设成NO的话，即服务器使用其他可信任机构颁发的证书，也可以建立连接，这个非常危险，建议打开。
    //置为NO，主要用于这种情况：客户端请求的是子域名，而证书上的是另外一个域名。因为SSL证书上的域名是独立的，假如证书上注册的域名是www.google.com，那么mail.google.com是无法验证通过的；当然，有钱可以注册通配符的域名*.google.com，但这个还是比较贵的。
    //如置为NO，建议自己添加对应域名的校验逻辑。
    //: securityPolicy.validatesDomainName = YES;
    securityPolicy.validatesDomainName = YES;
    //: securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    //: return securityPolicy;
    return securityPolicy;
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)length:(NSString *)URL
                 //: parameters:(id)parameters
                 toolWith:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     show:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 last:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   tingFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    randomColor:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     icon:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: URL = RestApi(URL);
        URL = originAction(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [ComparativelyData sharedInstance].kText_satisfyPlyString;
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [ComparativelyData sharedInstance].kText_satisfyPlyString;
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [ComparativelyData sharedInstance].kTitle_despiteString;
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [ComparativelyData sharedInstance].kName_cationDiscriminationContent;
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";

            //: NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[BlendView with] with:t];
}

//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)can:(NSString *)URL
               //: parameters:(id)parameters
               lengthDoing:(id)parameters
                     //: name:(NSString *)name
                     power:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 comment:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 linkFailed:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  of:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed{
                   file:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: URL = RestApi(URL);
        URL = originAction(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:filePath name:name error:&error];
        [formData appendPartWithFileURL:filePath name:name error:&error];
        //: (failed && error) ? failed(nil ,error) : nil;
        (failed && error) ? failed(nil ,error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{//上传进度
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:t];
    [[BlendView with] with:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)noTing:(NSString *)URL
                 //: parameters:(id)parameters
                 userId:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     show:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   images:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    name:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     roundColor:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: URL = RestApi(URL);
        URL = originAction(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = colorFill([TableContext name].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[ComparativelyData sharedInstance].kTitleSatisfyString];

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [ComparativelyData sharedInstance].kText_satisfyPlyString;
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [ComparativelyData sharedInstance].kText_satisfyPlyString;
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [ComparativelyData sharedInstance].kTitle_despiteString;
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [ComparativelyData sharedInstance].kName_cationDiscriminationContent;
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";
            //: [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[BlendView with] with:t];
}

//取消网络请求
//: + (void)cancelRequestWithURLString:(NSString *)URLString{
+ (void)buttonTeamText:(NSString *)URLString{

//    if ([[HMDataRequest shareDataRequest] ifRequesting]) {
//        NSMutableDictionary *taskDic = [[HMDataRequest shareDataRequest] taskQueue];
//        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);
//
//        [taskDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//
//            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted
//                && [[((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString] rangeOfString:URLString].location != NSNotFound) {
//
//                HMLog(@"----end----%@", [((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString]);
//
//                [((NSURLSessionDataTask *)obj) cancel];
//
//            }
//        }];
//    }


}


//: - (id)init{
- (id)init{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: AFSecurityPolicy *securityPolicy = [ZCHttpManager defaultSecurityPolicy];
        AFSecurityPolicy *securityPolicy = [BlendView security];
        //: _manager = [AFHTTPSessionManager manager];
        _manager = [AFHTTPSessionManager manager];
        //: _manager.securityPolicy = securityPolicy;
        _manager.securityPolicy = securityPolicy;
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[ComparativelyData sharedInstance].kName_retireData, [ComparativelyData sharedInstance].kTitle_painfulDealerValue, [ComparativelyData sharedInstance].kTitleGearString,[ComparativelyData sharedInstance].kName_fierceData,[ComparativelyData sharedInstance].kText_sandData, nil];
        //_dbQueue = [[HMDBManager shareManager] dbQueue];

    }
    //: return self;
    return self;
}

//: - (void)cancelRequest{
- (void)scratch{

    //: if ([self ifRequesting]) {
    if ([self completeInterval]) {
        //: NSMutableDictionary *taskDic = [[ZCHttpManager sharedManager] taskQueue];
        NSMutableDictionary *taskDic = [[BlendView with] session];
        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);

        //: [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
        [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
            //: if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
                //: [((NSURLSessionDataTask *)obj) cancel];
                [((NSURLSessionDataTask *)obj) cancel];
            }
        //: }];
        }];
    }
}

//: + (NSString *)getNowTimeTimestamp{
+ (NSString *)retrieve{

    //: NSDate *datenow = [NSDate date];
    NSDate *datenow = [NSDate date];
    //: NSTimeZone *zone = [NSTimeZone localTimeZone];
    NSTimeZone *zone = [NSTimeZone localTimeZone];
  // 获取指定时间所在时区与UTC时区的间隔秒数
  //: NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  //: return timeSp;
  return timeSp;
}

//: - (BOOL)ifRequesting{
- (BOOL)completeInterval{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (taskDic && taskDic.allKeys.count>0) {
//        return YES;
//    }
    //: return NO;
    return NO;
}


//: - (NSMutableDictionary *)taskQueue{
- (NSMutableDictionary *)session{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (!taskDic) {
//        taskDic = @{}.mutableCopy;
//        objc_setAssociatedObject(self, @selector(addTask:), taskDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return taskDic;
    //: return nil;
    return nil;
}




//: + (void)postWithUrl: (NSString *)urlStr
+ (void)cur: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           militaryInstallationInFailed: (NSString *)checksum
              //: nonce: (NSString *)nonce
              withStart: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            curTo: (NSString *)CurTime
             //: params: (NSDictionary *)params
             value: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            bloodRedFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed
             color: (ResponseFailed)failed
{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;

    //添加请求头
    //: NSString *appKey = [[DisplayConfig sharedConfig] appKey];
    NSString *appKey = [[ContextTeam mutual] appKey];
    //: [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"AppKey"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:[ComparativelyData sharedInstance].kTitleWordString];
//    NSString *nonce = [NSString stringWithFormat:@"%d",arc4random() % 100 ];
    //: [manager.requestSerializer setValue:nonce forHTTPHeaderField:@"Nonce"];
    [manager.requestSerializer setValue:nonce forHTTPHeaderField:[ComparativelyData sharedInstance].kTitle_cutePosterFolioString];
//    NSString *time = [self getNowTimeTimestamp];
    //: [manager.requestSerializer setValue:CurTime forHTTPHeaderField:@"CurTime"];
    [manager.requestSerializer setValue:CurTime forHTTPHeaderField:[ComparativelyData sharedInstance].kNameProvedSateData];
//    NSString *CheckSums = [self sha1:[NSString stringWithFormat:@"%@%@%@",appKey,nonce,time]];
    //: [manager.requestSerializer setValue:checksum forHTTPHeaderField:@"CheckSum"];
    [manager.requestSerializer setValue:checksum forHTTPHeaderField:[ComparativelyData sharedInstance].kTitleClearlyContent];

    //: NSLog(@"%@\n------%@",urlStr,params);
    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[BlendView with] with:task];
}




//: #pragma mark - 管理请求队列
#pragma mark - 管理请求队列


//: - (void)addTask:(NSURLSessionDataTask *)task{
- (void)with:(NSURLSessionDataTask *)task{
    //: NSMutableDictionary *taskQueue = [self taskQueue];
    NSMutableDictionary *taskQueue = [self session];

    //: [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
    [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
}

//sha1加密方式
//: + (NSString *)sha1:(NSString *)input
+ (NSString *)aggregation1:(NSString *)input
{
    //const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    //NSData *data = [NSData dataWithBytes:cstr length:input.length];

     //: NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
     NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
    //: uint8_t digest[20];
    uint8_t digest[20];

    //: CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    //: NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    //: for(int i=0; i<20; i++) {
    for(int i=0; i<20; i++) {
        //: [output appendFormat:@"%02x", digest[i]];
        [output appendFormat:@"%02x", digest[i]];
    }

    //: return output;
    return output;
}

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)read:(NSString *)urlStr
            //: params:(NSDictionary *)params
            query:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            showThan:(BOOL)isShow
           //: success:(ResponseSuccess)success
           green:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed{
            blue:(ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: urlStr = RestApi(urlStr);
        urlStr = originAction(urlStr);
    }

    //: [self getWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self date:urlStr bar:params titleWith:isShow tip:0 crop:YES sessionFailed:success content:failed];
}

//: + (void)downloadWithURL:(NSString *)URL
+ (void)showRecord:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                alongGreen:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               with:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                title:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed{
                 achromatic:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[ComparativelyData sharedInstance].kTitle_plyGenerateName]){
        //: URL = RestApi(URL);
        URL = originAction(URL);
    }

    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
    //: NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(downloadProgress);
            progress(downloadProgress);
        }
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [ComparativelyData sharedInstance].kTextHeavilyData];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];
    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //: if(failed && error) {failed(nil ,error) ; return ;};
        if(failed && error) {failed(nil ,error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;
    //: }];
    }];
    //: [downloadTask resume];
    [downloadTask resume];
}

/**
 *不验证https 不验证时
 */
//: + (AFSecurityPolicy *)defaultSecurityPolicy{
+ (AFSecurityPolicy *)security{
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: securityPolicy.validatesDomainName = NO;
    securityPolicy.validatesDomainName = NO;
    //: return securityPolicy;
    return securityPolicy;
}

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)date: (NSString *)urlStr
            //: params: (NSDictionary *)params
            bar: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            titleWith: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         tip: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       crop: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           sessionFailed: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed{
            content: (ResponseFailed)failed{

    //: if (isShow) {
    if (isShow) {
            //: [SVProgressHUD show];
            [SVProgressHUD show];
        }
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [BlendView with].manager;
    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [TableContext name].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = colorFill([TableContext name].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[ComparativelyData sharedInstance].kTitleSatisfyString];

    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([TableContext name].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[ComparativelyData sharedInstance].kText_squadString];
    }
    //: NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (![urlStr containsString:@"systemSetting"] && ![urlStr containsString:@"loginip"] && ![urlStr containsString:@"appSetting"] && ![urlStr containsString:@"ismustmobile"]) {
        if (![urlStr containsString:[ComparativelyData sharedInstance].kTitleLiteralData] && ![urlStr containsString:[ComparativelyData sharedInstance].kNameSwitchtoData] && ![urlStr containsString:[ComparativelyData sharedInstance].kTextForeignerString] && ![urlStr containsString:[ComparativelyData sharedInstance].kNameAlongsideString]) {
            //: NSLog(@"%@\n------%@\n%@",urlStr,params,responseObject);
        }
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[BlendView with] with:task];
}

//: @end
@end
//: __SAVE__ ignore_string [515.5]
