//
//  UIBarButtonItem+Extension.m
//  Weibo16
//
//  Created by 0426iOS on 15/7/27.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)


+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action{
    //初始化一个自定义view(UIButton)
    UIButton *button = [[UIButton alloc] init];
    //设置不同状态显示的图片
    [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted",imageName]] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    button.size = button.currentImage.size;
    //添加点击事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}


+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action title:(NSString *)title{
    //初始化一个自定义view(UIButton)
    UIButton *button = [[UIButton alloc] init];
    //设置不同状态显示的图片
    [button setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted",imageName]] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    //设置button文字颜色
    
//    RGB(68,68,68);
//    RGBA(68,68,68,0.0-0.1);
    
    UIColor *color = RGB(68,68,68);
    [button setTitleColor:color forState:UIControlStateNormal];
    //设置button的文字
    [button setTitle:title forState:UIControlStateNormal];
    
    [button sizeToFit];
//    button.size = button.currentImage.size;
    //添加点击事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}


+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action{
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    //设置不同状态下的文字颜色
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [button sizeToFit];
    
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}



@end
