//
//  AppDelegate.m
//  AppExample
//
//  Created by 郑飞 on 6/21/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "AppDelegate.h"
#import "CYXTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self createMainWindow];
    NSLog(@"Hello APP!");
    return YES;
}


- (void) createMainWindow{
    // 1.创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    // 2.设置窗口的根控制器
    CYXTabBarController *tabBarVC = [[CYXTabBarController alloc]init];
    self.window.rootViewController = tabBarVC;
    // 3.显示窗口
    [self.window makeKeyAndVisible];
}

@end
