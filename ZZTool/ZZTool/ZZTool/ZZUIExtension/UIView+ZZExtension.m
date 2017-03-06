//
//  UIView+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "UIView+ZZExtension.h"

@implementation UIView (ZZExtension)

- (id)zz_addSubview:(Class)clazz frame:(CGRect)frame {
    UIView *view = [clazz new];
    view.frame = frame;
    [self addSubview:view];
    return view;
}

- (id)zz_addSubview:(Class)clazz {
    return [self zz_addSubview:clazz frame:CGRectZero];
}

- (void)zz_setCornerRadius:(CGFloat)cornerRadius masksToBounds:(BOOL)masksToBounds {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = masksToBounds;
}

@end
