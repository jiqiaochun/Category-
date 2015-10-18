//
//  NSDate+Extension.m
//  Weibo16
//
//  Created by 0426iOS on 15/8/3.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)
/**
 *  是否是与当前时间是同一年
 *
 *  @param date 传入对比的时间
 *
 *  @return <#return value description#>
 */
+ (BOOL)isThisYearWithDate:(NSDate *)date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy";
    
    //当前微博创建的时间
    NSDate *createDate = date;
    //取出当前时间
    NSDate *currentDate = [NSDate date];
    
    //拿着创建时间与当前时间进行对比-->只格式化年份
    formatter.dateFormat = @"yyyy";
    
    //取出年份-->判断是否同一年,只要拿着年份进行对比一下,看一下是否一样
    NSString *createDateYearStr = [formatter stringFromDate:createDate];
    NSString *currentDateYearStr = [formatter stringFromDate:currentDate];
    
    //对比年份的时间字符串,如果不是同一年的话返回NO
    return [createDateYearStr isEqualToString:currentDateYearStr];
}


/**
 *  判断与今天否是同一天,是否是今天
 *
 *  @param date
 *
 *  @return
 */
+ (BOOL)isTodayWithDate:(NSDate *)date{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //拿着创建时间与当前时间进行对比-->只格式化年份-月份-天
    formatter.dateFormat = @"yyyy-MM-dd";
    //当前微博创建的时间
    NSDate *createDate = date;
    //取出当前时间
    NSDate *currentDate = [NSDate date];
    
    //取出年份-->判断是否是今天,
    NSString *createDateYearStr = [formatter stringFromDate:createDate];
    NSString *currentDateYearStr = [formatter stringFromDate:currentDate];
    
    //对比年份的时间字符串,如果不是同一年的话返回NO
    return [createDateYearStr isEqualToString:currentDateYearStr];
}


/**
 *  与当前时间对比,判断是否是昨天
 *
 *  @param date <#date description#>
 *
 *  @return <#return value description#>
 */
+ (BOOL)isYesterdayWithDate:(NSDate *)date{
    
    //2014-09-30 10:00:00 创建时间
    //2014-10-01 09:00:00 当前
    
    NSDate *currentDate = [NSDate date];
    
    //取出当前日历对象
    NSCalendar *canlendar = [NSCalendar currentCalendar];
    //NSCalendarUnit 对比单位-->要对比些什么东西
    
    //设置对比对象
    NSCalendarUnit unit = NSCalendarUnitYear|NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond;
    
    //时间比较的结果
    NSDateComponents *components = [canlendar components:unit fromDate:date toDate:currentDate options:NSCalendarWrapComponents];
    //对比两个时间的day差值是否为
    return components.day == 1;
}
@end
