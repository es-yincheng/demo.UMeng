//
// Created by cheng yin on 16/3/24.
// Copyright (c) 2016 cheng yin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MobClick.h"
#import "UMSocial.h"
typedef enum {
/**
 * 默认分享到微信,QQ,新浪
 */
    YCShareDefault,
/**
 新浪微博
 */
    YCShareToSina,

/**
 腾讯微博
 */
    YCShareToTencent,

/**
 人人网
 */
    YCShareToRenren,

/**
 豆瓣
 */
    YCShareToDouban,

/**
 QQ空间
 */
    YCShareToQzone,

/**
 邮箱
 */
    YCShareToEmail,

/**
 短信
 */
    YCShareToSms,

/**
 微信好友
 */
    YCShareToWechatSession,

/**
 微信朋友圈
 */
    YCShareToWechatTimeline,

/**
 微信收藏
 */
    YCShareToWechatFavorite,

/**
 支付宝好友
 */
    YCShareToAlipaySession,

/**
 手机QQ
 */
    YCShareToQQ,

/**
 Facebook
 */
    YCShareToFacebook,

/**
 Twitter
 */
    YCShareToTwitter,


/**
 易信好友
 */
    YCShareToYXSession,

/**
 易信朋友圈
 */
    YCShareToYXTimeline,

/**
 来往好友
 */
    YCShareToLWSession,

/**
 来往朋友圈
 */
    YCShareToLWTimeline,

/**
 分享到Instragram
 */
    YCShareToInstagram,

/**
 分享到Whatsapp
 */
    YCShareToWhatsapp,

/**
 分享到Line
 */
    YCShareToLine,

/**
 分享到Tumblr
 */
    YCShareToTumblr,

/**
 分享到Pinterest
 */
    YCShareToPinterest,

/**
 分享到KakaoTalk
 */
    YCShareToKakaoTalk,

/**
 分享到Flickr
 */
    YCShareToFlickr,

} YCSnsName;

@interface YCUmengBase : NSObject
+(void)StartUpYCUmengAnalytics:(bool)analytics OnlineConfig:(bool)online IM:(bool)im Social:(bool)share;

+ (void)shareText:(NSString*)text Image:(NSString*)imageName delegate:(id)delegate ToSnsNames:(YCSnsName)shareto, ... NS_REQUIRES_NIL_TERMINATION;
@end