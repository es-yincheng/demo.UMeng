//
// Created by cheng yin on 16/3/24.
// Copyright (c) 2016 cheng yin. All rights reserved.
//

#import "YCUmengBase.h"

@implementation YCUmengBase

+ (void)shareText:(NSString *)text Image:(NSString *)imageName delegate:(id)delegate ToSnsNames:(YCSnsName)shareto, ... {
NSMutableArray *snsNames = [[NSMutableArray alloc] init];

    va_list args;
    va_start(args, shareto); // scan for arguments after firstObject.

    // get rest of the objects until nil is found
    NSMutableString *allStr = [[NSMutableString alloc] init];
    for (YCSnsName str = shareto; str != nil; str = va_arg(args,YCSnsName)) {
        [allStr appendFormat:@"* %u ",str];
    }

    va_end(args);
    NSLog(@"%@ d",allStr);
//    switch (shareto) {
//        case YCShareDefault:
//            <#statements#>
//            break;
//
//        default:
//            break;
//    }


    [UMSocialSnsService presentSnsIconSheetView:delegate
                                         appKey:UmengAppKey
                                      shareText:text
                                     shareImage:[UIImage imageNamed:imageName]
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToWechatSession,UMShareToQQ,nil]
                                       delegate:delegate];
}


+ (void)StartUpYCUmengAnalytics:(bool)analytics OnlineConfig:(bool)online IM:(bool)im Social:(bool)share {
    //统计功能
    if(analytics){
        //channelId为nil或@""时，默认会被当作@"App Store"渠道
        [MobClick startWithAppkey:UmengAppKey reportPolicy:BATCH channelId:nil];
    }
}
@end