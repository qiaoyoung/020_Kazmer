// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverPageMode.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface CoverPageMode : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)app;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)bubbleFailed:(NSString *)urlStr
            //: params:(NSDictionary *)params
            reload_strong:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            with:(BOOL)isShow
           //: success:(ResponseSuccess)success
           forward:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            title:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)translate: (NSString *)urlStr
            //: params: (NSDictionary *)params
            with: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            distance: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         messageFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       lead: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           tell: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            barrelhouse: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)circle: (NSString *)urlStr
             //: params: (NSDictionary *)params
             godspeed: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             preserve: (BOOL)isShow
            //: success: (ResponseSuccess)success
            bottom: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             tagStandard: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)lastSize: (NSString *)urlStr
             //: params: (NSDictionary *)params
             withRecord: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             shadow: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          input: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        marginOff: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            sizeFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             style: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)time: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           min: (NSString *)checksum
              //: nonce: (NSString *)nonce
              contentFailed: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            tap: (NSString *)CurTime
             //: params: (NSDictionary *)params
             eventInsert: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            valueSizeSession: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             tagFailed: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)associate:(NSString *)URL
               //: parameters:(id)parameters
               keyManager:(id)parameters
                     //: name:(NSString *)name
                     page:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 stepFailed:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 shared:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  blueOn:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   by:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)contentSearched:(NSString *)URL
                 //: parameters:(id)parameters
                 title:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     pictureFailed:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   message:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    complete:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     container:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)size:(NSString *)URL
                 //: parameters:(id)parameters
                 workFlow:(id)parameters
                       //: name:(NSString *)name
                       messageShould:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     key_strong:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  originTitle_strong:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 numerousness:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  parametersVersion:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   behindTransformHttpProgress:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    style:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     label:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)afterClear:(NSString *)URL
                 //: parameters:(id)parameters
                 hide:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     addFailed:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 numericalQuantity:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   sound:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    view:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     size:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)uploadTableKey:(NSString *)URL
                 //: parameters:(id)parameters
                 upload:(id)parameters
                     //: images:(NSData *)videoData
                     move:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 collection:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   add:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    streetwise:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    session:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)rangeFlip:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                length:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               event:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                progressTip:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 failed:(ResponseFailed)failed;

//: @end
@end