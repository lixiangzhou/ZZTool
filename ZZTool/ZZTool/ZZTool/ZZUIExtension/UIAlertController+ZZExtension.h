//
//  UIAlertController+ZZExtension.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (ZZExtension)

+ (instancetype)zz_alertFromController:(UIViewController *)controller WithTitle:(NSString *)title message:(NSString *)message action1Title:(NSString *)action1Title action1Style:(UIAlertActionStyle)action1Style action1Handler:(void (^)(UIAlertAction *action))action1Handler action2Title:(NSString *)action2Title action2Style:(UIAlertActionStyle)action2Style action2Handler:(void (^)(UIAlertAction *action))action2Handler;

@end
