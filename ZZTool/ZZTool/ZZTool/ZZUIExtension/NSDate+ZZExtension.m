//
//  NSDate+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/9.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "NSDate+ZZExtension.h"
#import "NSDateFormatter+ZZExtension.h"

@implementation NSDate (ZZExtension)

- (NSString *)zz_dateToStringWithFormat:(NSString *)format {
    zz_dateFormatter.dateFormat = format;
    return [zz_dateFormatter stringFromDate:self];
}


@end
