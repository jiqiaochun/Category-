//
//  UIWindow+Extension.m
//  Weibo16
//
//  Created by 0426iOS on 15/7/30.
//  Copyright (c) 2015年 0426iOS. All rights reserved.
//

#import "IWAccount.h"
#import "IWTabBarController.h"
#import "IWOAuthViewCtrl.h"
#import "UIWindow+Extension.h"
#import "IWAccountTool.h"

@implementation UIWindow (Extension)

- (void)switchRootViewCtrl{
    
    
    //读取帐号的逻辑应该归IWAccountTool管，所以抽取出去
//    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
//    //拼接文件名路径
//    filePath = [filePath stringByAppendingPathComponent:@"account.archiver"];
//    
//    //解档用户登录成功保存的信息
//    IWAccount *account = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
//    //判断是否过期
//    //计算出过期的时间
//    NSDate *expiresDate = [account.create_at dateByAddingTimeInterval:account.expires_in];
//    
//    //获取当前时间
//    NSDate *currentDate = [NSDate date];
//    
////  account.create_at + account.过期时间     与   当前时间进行对比
//    
//    NSComparisonResult result = [currentDate compare:expiresDate];
//    if (result == NSOrderedAscending) {
//        //不过期
//        IWTabBarController *tabbar = [[IWTabBarController alloc] init];
//        self.rootViewController = tabbar;
//    }else{
//        //跳到登录页面去
//        self.rootViewController = [IWOAuthViewCtrl new];
//    }
    
    //这个分类的这个方法，其实就是通过是否有帐号去设置不用的根控制器
    IWAccount *account = [IWAccountTool account];
    if (!account) {
        //跳到登录页面去
        self.rootViewController = [IWOAuthViewCtrl new];
    }else{
        IWTabBarController *tabbar = [[IWTabBarController alloc] init];
        self.rootViewController = tabbar;
    }
}

@end
