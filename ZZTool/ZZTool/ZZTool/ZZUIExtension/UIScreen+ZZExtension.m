//
//  UIScreen+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "UIScreen+ZZExtension.h"

@implementation UIScreen (ZZExtension)
+ (CGFloat)zz_width {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)zz_height {
    return [UIScreen mainScreen].bounds.size.height;
}
@end
