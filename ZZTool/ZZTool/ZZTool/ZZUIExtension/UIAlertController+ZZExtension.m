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
    return [self zz_alertType:UIAlertControllerStyleAlert fromController:controller WithTitle:title message:message action1Title:action1Title action1Style:action1Style action1Handler:action1Handler action2Title:action2Title action2Style:action2Style action2Handler:action2Handler];
}

+ (instancetype)zz_styleSheetFromController:(UIViewController *)controller WithTitle:(NSString *)title message:(NSString *)message action1Title:(NSString *)action1Title action1Style:(UIAlertActionStyle)action1Style action1Handler:(void (^)(UIAlertAction *))action1Handler action2Title:(NSString *)action2Title action2Style:(UIAlertActionStyle)action2Style action2Handler:(void (^)(UIAlertAction *))action2Handler {
    return [self zz_alertType:UIAlertControllerStyleActionSheet fromController:controller WithTitle:title message:message action1Title:action1Title action1Style:action1Style action1Handler:action1Handler action2Title:action2Title action2Style:action2Style action2Handler:action2Handler];
}


+ (instancetype)zz_alertType:(UIAlertControllerStyle)type fromController:(UIViewController *)controller WithTitle:(NSString *)title message:(NSString *)message action1Title:(NSString *)action1Title action1Style:(UIAlertActionStyle)action1Style action1Handler:(void (^)(UIAlertAction *action))action1Handler action2Title:(NSString *)action2Title action2Style:(UIAlertActionStyle)action2Style action2Handler:(void (^)(UIAlertAction *action))action2Handler
{
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:type];
    
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
