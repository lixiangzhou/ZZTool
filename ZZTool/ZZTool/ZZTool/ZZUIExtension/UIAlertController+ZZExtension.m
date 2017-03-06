//
//  UIAlertController+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "UIAlertController+ZZExtension.h"

@implementation UIAlertController (ZZExtension)

+ (instancetype)zz_alertFromController:(UIViewController *)controller WithTitle:(NSString *)title message:(NSString *)message action1Title:(NSString *)action1Title action1Style:(UIAlertActionStyle)action1Style action1Handler:(void (^)(UIAlertAction *action))action1Handler action2Title:(NSString *)action2Title action2Style:(UIAlertActionStyle)action2Style action2Handler:(void (^)(UIAlertAction *action))action2Handler
{
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if (action1Title != nil) {
        UIAlertAction *action1 = [UIAlertAction actionWithTitle:action1Title style:action1Style handler:action1Handler];
        [alertVc addAction:action1];
    }
    
    if (action2Title != nil) {
        UIAlertAction *action2 = [UIAlertAction actionWithTitle:action2Title style:action2Style handler:action2Handler];
        [alertVc addAction:action2];
    }
    
    [controller presentViewController:alertVc animated:YES completion:nil];
    return alertVc;
}


@end
