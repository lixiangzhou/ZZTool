//
//  UIView+ZZExtension.m
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#import "UIView+ZZExtension.h"

@implementation UIView (ZZExtension)

- (UIViewController *)zz_controller {
    UIResponder *responder = [self nextResponder];
    while (responder != nil) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}

- (void)zz_removeAllSubviews {
    for (UIView *subview in self.subviews) {
        [subview removeFromSuperview];
    }
}

- (void)zz_setCircle {
    self.layer.cornerRadius = MIN(self.bounds.size.width, self.bounds.size.height) * 0.5;
    self.layer.masksToBounds = YES;
}

- (void)zz_setCornerRadius:(CGFloat)cornerRadius masksToBounds:(BOOL)masksToBounds {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = masksToBounds;
}

- (void)zz_setBorder:(UIColor *)color width:(CGFloat)width {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (id)zz_addSubviewWithClazz:(Class)clazz frame:(CGRect)frame {
    UIView *view = [clazz new];
    view.frame = frame;
    [self addSubview:view];
    return view;
}

- (id)zz_addSubviewWithClazz:(Class)clazz {
    return [self zz_addSubviewWithClazz:clazz frame:CGRectZero];
}

+ (id)zz_loadFromNib {
    NSString *nibname = NSStringFromClass([self class]);
    return [self zz_loadFromNibname:nibname];
}

+ (id)zz_loadFromNibname:(NSString *)nibname {
#ifdef DEBUG
    
    UIView *view = nil;
    @try {
        view = [[UINib nibWithNibName:nibname bundle:nil] instantiateWithOwner:nil options:nil].firstObject;
    } @catch (NSException *exception) {
        view = nil;
        NSLog(@"%@", exception);
    }
    return view;
    
#else
    
    return [[UINib nibWithNibName:nibname bundle:nil] instantiateWithOwner:nil options:nil].firstObject;
    
#endif
}

- (void)zz_cropImageWithRect:(CGRect)rect completion:(void(^)(UIImage *cropImage))completion
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        CGFloat scale = [UIScreen mainScreen].scale;
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.bounds.size.width * scale, self.bounds.size.height *scale), YES, 0.0);
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *coverImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        CGFloat x = rect.origin.x * scale;
        CGFloat y = rect.origin.y * scale;
        CGFloat w = rect.size.width * scale;
        CGFloat h = rect.size.height * scale;
        CGRect dianRect = CGRectMake(x, y, w, h);
        
        //截取部分图片并生成新图片
        CGImageRef sourceImageRef = [coverImage CGImage];
        CGImageRef newImageRef = CGImageCreateWithImageInRect(sourceImageRef, dianRect);
        UIImage *newImage = [UIImage imageWithCGImage:newImageRef scale:[UIScreen mainScreen].scale orientation:UIImageOrientationUp];
        CGImageRelease(newImageRef);
        coverImage = nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            if (completion) {
                completion(newImage);
            }
        });
    });
}

- (UIImage *)zz_snapshotImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *snap = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snap;
}

- (UIImage *)zz_snapshotImageAfterScreenUpdates:(BOOL)afterUpdates {
    if (![self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]) {
        return [self zz_snapshotImage];
    }
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:afterUpdates];
    UIImage *snap = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snap;
}

@end
