//
//  ViewController.m
//  demo.UMeng
//
//  Created by cheng yin on 16/3/24.
//  Copyright © 2016年 cheng yin. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jump:(UIButton *)sender {
    NSLog(@"hhhh");
    [self.navigationController pushViewController:[[TestViewController alloc] initWithTitle:@"test"] animated:YES];
}

@end
