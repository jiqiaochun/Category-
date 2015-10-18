//
//  NSString+Extension.h
//  Weibo16
//
//  Created by 0426iOS on 15/8/2.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)


- (CGSize)sizeWithFont:(UIFont *)font;


- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;

@end
