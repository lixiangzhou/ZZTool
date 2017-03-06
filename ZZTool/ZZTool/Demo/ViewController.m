//
//  ViewController.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "ViewController.h"
#import "ZZTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *testView = [self.view zz_addSubview:[UIView class] frame:CGRectMake(20, 20, 40, 40)];
    testView.zz_x = 100;
    testView.zz_y = 100;
    testView.zz_maxY = 100;
    testView.zz_maxX = 100;
    testView.zz_height = 100;
    testView.zz_width = 100;
    testView.zz_centerX = 50;
    testView.zz_centerY = 50;
    
    [testView zz_setCornerRadius:30 masksToBounds:NO];
    
    testView.backgroundColor = [UIColor redColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
