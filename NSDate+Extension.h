//
//  NSDate+Extension.h
//  Weibo16
//
//  Created by 0426iOS on 15/8/3.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

/**
 *  是否是与当前时间是同一年
 *
 *  @param date 传入对比的时间
 *
 *  @return <#return value description#>
 */
+ (BOOL)isThisYearWithDate:(NSDate *)date;

/**
 *  判断与今天否是同一天,是否是今天
 *
 *  @param date
 *
 *  @return
 */
+ (BOOL)isTodayWithDate:(NSDate *)date;


/**
 *  与当前时间对比,判断是否是昨天
 *
 *  @param date
 *
 *  @return
 */
+ (BOOL)isYesterdayWithDate:(NSDate *)date;

@end
