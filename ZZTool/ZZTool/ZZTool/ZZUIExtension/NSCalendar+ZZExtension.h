//
//  NSCalendar+ZZExtension.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/9.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

#define zz_calendar [NSCalendar zz_sharedCalendar]

@interface NSCalendar (ZZExtension)
+ (instancetype)zz_sharedCalendar;
@end
