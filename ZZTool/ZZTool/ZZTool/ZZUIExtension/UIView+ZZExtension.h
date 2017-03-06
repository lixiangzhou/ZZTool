//
//  UIView+ZZExtension.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZZExtension)

- (UIViewController *)zz_controller;

- (void)zz_removeAllSubviews;

- (void)zz_setCircle;
- (void)zz_setCornerRadius:(CGFloat)cornerRadius masksToBounds:(BOOL)masksToBounds;
- (void)zz_setBorder:(UIColor *)color width:(CGFloat)width;

- (id)zz_addSubviewWithClazz:(Class)clazz;
- (id)zz_addSubviewWithClazz:(Class)clazz frame:(CGRect)frame;

+ (id)zz_loadFromNib;
+ (id)zz_loadFromNibname:(NSString *)nibname;

- (void)zz_cropImageWithRect:(CGRect)rect completion:(void(^)(UIImage *cropImage))completion;

- (UIImage *)zz_snapshotImage;
- (UIImage *)zz_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;

@end
