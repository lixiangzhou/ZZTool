//
//  NSDateFormatter+ZZExtension.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/9.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef ZZDateFormatter_h
#define ZZDateFormatter_h

#define zz_dateFormatter [NSDateFormatter zz_sharedFormatter]


#endif


@interface NSDateFormatter (ZZExtension)
+ (instancetype)zz_sharedFormatter;
@end
