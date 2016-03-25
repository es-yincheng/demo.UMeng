//
// Created by cheng yin on 16/3/24.
// Copyright (c) 2016 cheng yin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MobClick.h"
#import "UMSocial.h"
/**
 新浪微博
 */
extern NSString *const UMShareToSina;

/**
 腾讯微博
 */
extern NSString *const UMShareToTencent;

/**
 人人网
 */
extern NSString *const UMShareToRenren;

/**
 豆瓣
 */
extern NSString *const UMShareToDouban;

/**
 QQ空间
 */
extern NSString *const UMShareToQzone;

/**
 邮箱
 */
extern NSString *const UMShareToEmail;

/**
 短信
 */
extern NSString *const UMShareToSms;

/**
 微信好友
 */
extern NSString *const UMShareToWechatSession;

/**
 微信朋友圈
 */
extern NSString *const UMShareToWechatTimeline;

/**
 微信收藏
 */
extern NSString *const UMShareToWechatFavorite;

/**
 支付宝好友
 */
extern NSString *const UMShareToAlipaySession;

/**
 手机QQ
 */
extern NSString *const UMShareToQQ;

/**
 Facebook
 */
extern NSString *const UMShareToFacebook;

/**
 Twitter
 */
extern NSString *const UMShareToTwitter;


/**
 易信好友
 */
extern NSString *const UMShareToYXSession;

/**
 易信朋友圈
 */
extern NSString *const UMShareToYXTimeline;

/**
 来往好友
 */
extern NSString *const UMShareToLWSession;

/**
 来往朋友圈
 */
extern NSString *const UMShareToLWTimeline;

/**
 分享到Instragram
 */
extern NSString *const UMShareToInstagram;

/**
 分享到Whatsapp
 */
extern NSString *const UMShareToWhatsapp;

/**
 分享到Line
 */
extern NSString *const UMShareToLine;

/**
 分享到Tumblr
 */
extern NSString *const UMShareToTumblr;

/**
 分享到Pinterest
 */
extern NSString *const UMShareToPinterest;

/**
 分享到KakaoTalk
 */
extern NSString *const UMShareToKakaoTalk;

/**
 分享到Flickr
 */
extern NSString *const UMShareToFlickr;


@interface YCUmengBase : NSObject
+(void)StartUpYCUmengAnalytics:(bool)analytics OnlineConfig:(bool)online IM:(bool)im Social:(bool)share;

+ (void)shareText:(NSString*)text Image:(NSString*)imageName delegate:(id)delegate ToSnsNames:(NSArray*)names;
@end