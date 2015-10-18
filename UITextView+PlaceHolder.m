//
//  UITextView+PlaceHolder.m
//  Weibo16
//
//  Created by 0426iOS on 15/8/5.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import "UITextView+PlaceHolder.h"
#import <objc/runtime.h>

@implementation UITextView (PlaceHolder)


- (NSString *)placeholder{
    //取谁(第一个参数)身上的哪一个属性(通过key去取)
    return objc_getAssociatedObject(self, @"placeholder");
}

- (void)setPlaceholder:(NSString *)placeholder{
    /**
     *  关联到谁身上去,关联对象对应的key,关联对象本身,修饰
     */
    objc_setAssociatedObject(self, @"placeholder", placeholder, OBJC_ASSOCIATION_COPY);
    UILabel *label = [[UILabel alloc] init];
    label.x = 5;
    label.y = 8;
    label.font = [UIFont systemFontOfSize:14];
    self.font = [UIFont systemFontOfSize:14];
    label.text = placeholder;
    label.size = [label.text sizeWithFont:label.font];
    [self addSubview:label];
    
    
    
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
}


@end
