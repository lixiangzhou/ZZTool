//
//  NSCalendar+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/9.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "NSCalendar+ZZExtension.h"

@implementation NSCalendar (ZZExtension)
+ (instancetype)zz_sharedCalendar {
    static NSCalendar *calendar = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        calendar = [NSCalendar currentCalendar];
    });
    
    return calendar;
}
@end
