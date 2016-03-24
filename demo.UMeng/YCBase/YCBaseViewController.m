//
//  YCBaseViewController.m
//  demo.UMeng
//
//  Created by cheng yin on 16/3/24.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "YCBaseViewController.h"

@interface YCBaseViewController ()

@end

@implementation YCBaseViewController
- (instancetype)initWithTitle:(NSString*)title {
//    if (!self) {
        self = [super init];
        self.title = title;
//        NSLog(@"satrt:%@",title);
//    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [MobClick beginLogPageView:self.title];
    NSLog(@"初始化界面:%@",self.title);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"进入界面:%@",self.title);
}

//- (void)viewDidDisappear:(BOOL)animated
//{
//    [super viewDidDisappear:YES];
//    NSLog(@"退出界面:%@",self.title);
//}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:self.title];
    NSLog(@"退出界面:%@",self.title);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%@  : didReceiveMemoryWarning",self.title);
}


@end
