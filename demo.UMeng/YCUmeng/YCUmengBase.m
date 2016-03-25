//
// Created by cheng yin on 16/3/24.
// Copyright (c) 2016 cheng yin. All rights reserved.
//

#import "YCUmengBase.h"

@implementation YCUmengBase

+ (void)shareText:(NSString*)text Image:(NSString*)imageName delegate:(id)delegate ToSnsNames:(NSArray*)names{

    if (!names) {
        [UMSocialSnsService presentSnsIconSheetView:delegate
                                             appKey:UmengAppKey
                                          shareText:text
                                         shareImage:[UIImage imageNamed:imageName]
                                    shareToSnsNames:[NSArray arrayWithObjects:UMShareToWechatSession,UMShareToQQ,UMShareToSina,nil]
                                           delegate:delegate];

    } else {
        [UMSocialSnsService presentSnsIconSheetView:delegate
                                             appKey:UmengAppKey
                                          shareText:text
                                         shareImage:[UIImage imageNamed:imageName]
                                    shareToSnsNames:names
                                           delegate:delegate];
    }
}


+ (void)StartUpYCUmengAnalytics:(bool)analytics OnlineConfig:(bool)online IM:(bool)im Social:(bool)share {
    //统计功能
    if(analytics){
        //channelId为nil或@""时，默认会被当作@"App Store"渠道
        [MobClick startWithAppkey:UmengAppKey reportPolicy:BATCH channelId:nil];
    }
}
@end