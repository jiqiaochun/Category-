//
//  UIBarButtonItem+Extension.h
//  Weibo16
//
//  Created by 0426iOS on 15/7/27.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)


/**
 *  返回barButtonItem(根据图片名字-自定义的一个Button作为customView)
 *
 *  @param imageName
 *  @param target
 *  @param action
 *
 *  @return
 */
+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action;

/**
 *  返回barButtonItem(根据图片名字-自定义的一个Button作为customView,title)
 *
 *  @param imageName
 *  @param target
 *  @param action
 *  @param title
 *
 *  @return 
 */
+ (instancetype)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action title:(NSString *)title;

/**
 *  返回的是一个纯文字的ButtonItem,可用状态颜色为橘色,不可用状态为灰色
 *
 *  @param title
 *  @param target
 *  @param action
 *
 *  @return
 */
+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

@end
