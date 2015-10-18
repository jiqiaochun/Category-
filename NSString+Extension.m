//
//  NSString+Extension.m
//  Weibo16
//
//  Created by 0426iOS on 15/8/2.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (CGSize)sizeWithFont:(UIFont *)font{
    NSDictionary *att = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    return [self sizeWithAttributes:att];
}


- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size{
    NSDictionary *att = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:att context:nil].size;
}

@end
