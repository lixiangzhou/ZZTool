//
//  UIView+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "UIView+ZZExtension.h"

@implementation UIView (ZZExtension)

- (id)addView:(Class)clazz frame:(CGRect)frame {
    UIView *view = [clazz new];
    view.frame = frame;
    return view;
}

- (id)addView:(Class)clazz {
    return [self addView:clazz frame:CGRectZero];
}

@end
