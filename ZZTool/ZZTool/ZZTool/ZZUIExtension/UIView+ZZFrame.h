//
//  UIView+ZZFrame.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZZFrame)

@property (nonatomic, assign) CGFloat zz_x;
@property (nonatomic, assign) CGFloat zz_y;
@property (nonatomic, assign) CGFloat zz_width;
@property (nonatomic, assign) CGFloat zz_height;

@property (nonatomic, assign) CGFloat zz_maxX;
@property (nonatomic, assign) CGFloat zz_maxY;

@property (nonatomic, assign) CGFloat zz_centerX;
@property (nonatomic, assign) CGFloat zz_centerY;

@property (nonatomic, assign) CGSize zz_size;

@end
