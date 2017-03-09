//
//  ViewController.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "ViewController.h"
#import "ZZTool.h"

#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    TestView *tv = [TestView zz_loadFromNib];
    tv.frame = self.view.bounds;
    [self.view addSubview:tv];
    
    ZZLog(@"fffff %@", tv.zz_controller);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UIAlertController zz_styleSheetFromController:self WithTitle:@"Test" message:@"test" action1Title:@"T1" action1Style:UIAlertActionStyleDefault action1Handler:nil action2Title:@"T2" action2Style:UIAlertActionStyleCancel action2Handler:nil];
    
    
    UIImageView *imv = [self.view zz_addSubviewWithClazz:[UIImageView class] frame:self.view.bounds];
    imv.image = [self.view zz_snapshotImageAfterScreenUpdates:NO];
}


@end
