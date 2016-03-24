//
//  TestViewController.m
//  demo.UMeng
//
//  Created by cheng yin on 16/3/24.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "TestViewController.h"
#import "Test2ViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
//    self.title = @"test";
    [super viewDidLoad];
    
    UIButton *bt = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 80, 30)];
    bt.backgroundColor = [UIColor redColor];
    [bt addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)jump
{
    [YCUmengBase shareText:@"" Image:@"" delegate:self ToSnsNames:UMShareToSina, nil];
    [self.navigationController pushViewController:[[Test2ViewController alloc] initWithTitle:@"2"] animated:YES];
}
@end
