//
//  UIView+Inspectable.m
//  Weibo16
//
//  Created by 0426iOS on 15/7/28.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import "UIView+Inspectable.h"

@implementation UIView (Inspectable)


- (void)setCornerRadius:(CGFloat)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius>0;
}

- (CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}


- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}


- (UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}


- (void)setBorderWidth:(CGFloat)borderWidth{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth{
    return self.layer.borderWidth;
}



@end
