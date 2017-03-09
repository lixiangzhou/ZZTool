//
//  NSDateFormatter+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/9.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "NSDateFormatter+ZZExtension.h"

@implementation NSDateFormatter (ZZExtension)
+ (instancetype)zz_sharedFormatter {
    static NSDateFormatter *formatter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
    });
    
    return formatter;
}
@end
