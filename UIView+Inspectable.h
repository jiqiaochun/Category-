//
//  UIView+Inspectable.h
//  Weibo16
//
//  Created by 0426iOS on 15/7/28.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface UIView (Inspectable)

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic,strong) IBInspectable UIColor *borderColor;

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;





@end
