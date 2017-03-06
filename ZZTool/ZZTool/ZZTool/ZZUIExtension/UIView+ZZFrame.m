//
//  UIView+ZZFrame.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "UIView+ZZFrame.h"

@implementation UIView (ZZFrame)

- (void)setZz_x:(CGFloat)zz_x {
    CGRect rect = self.frame;
    rect.origin.x = zz_x;
    self.frame = rect;
}

- (CGFloat)zz_x {
    return self.frame.origin.x;
}

- (void)setZz_y:(CGFloat)zz_y {
    CGRect rect = self.frame;
    rect.origin.y = zz_y;
    self.frame = rect;
}

- (CGFloat)zz_y {
    return self.frame.origin.y;
}

- (void)setZz_width:(CGFloat)zz_width {
    CGRect rect = self.frame;
    rect.size.width = zz_width;
    self.frame = rect;
}

- (CGFloat)zz_width {
    return self.frame.size.width;
}

- (void)setZz_height:(CGFloat)zz_height {
    CGRect rect = self.frame;
    rect.size.width = zz_height;
    self.frame = rect;
}

- (CGFloat)zz_height {
    return self.frame.size.height;
}

- (void)setZz_maxX:(CGFloat)zz_maxX {
    CGRect rect = self.frame;
    rect.origin.x = zz_maxX - self.zz_width;
    self.frame = rect;
}

- (CGFloat)zz_maxX {
    return CGRectGetMaxX(self.frame);
}

- (void)setZz_maxY:(CGFloat)zz_maxY {
    CGRect rect = self.frame;
    rect.origin.y = zz_maxY - self.zz_height;
    self.frame = rect;
}

- (void)setZz_centerX:(CGFloat)zz_centerX {
    CGPoint center = self.center;
    center.x = zz_centerX;
    self.center = center;
}

- (CGFloat)zz_centerX {
    return self.center.x;
}

- (void)setZz_centerY:(CGFloat)zz_centerY {
    CGPoint center = self.center;
    center.x = zz_centerY;
    self.center = center;
}

- (CGFloat)zz_centerY {
    return self.center.y;
}

- (void)setZz_size:(CGSize)zz_size {
    CGRect rect = self.frame;
    rect.size = zz_size;
    self.frame = rect;
}

- (CGSize)zz_size {
    return self.frame.size;
}

@end
