//
//  UIView+ZZExtension.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZZExtension)

- (void)zz_setCornerRadius:(CGFloat)cornerRadius masksToBounds:(BOOL)masksToBounds;

- (id)zz_addSubview:(Class)clazz;
- (id)zz_addSubview:(Class)clazz frame:(CGRect)frame;


@end
