//
//  CYXTabBarController.m
//  AppExample
//
//  Created by 郑飞 on 6/22/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "CYXTabBarController.h"

@interface CYXTabBarController ()

@end

@implementation CYXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Tabbar controller init!");
    
    [self setNavItemTitle:@"首页" barImg:@"tab_home_icon"];
    [self setNavItemTitle:@"技术" barImg:@"js"];
    [self setNavItemTitle:@"博文" barImg:@"qw"];
    [self setNavItemTitle:@"我的江湖" barImg:@"user"];

}

-(void) setNavItemTitle:(NSString *)title barImg:(NSString *) image{
    UINavigationController *nav= [[UINavigationController alloc] init];
    // 设置tabBar的标题
    nav.title = title;
    // 设置tabBar的图标
    nav.tabBarItem.image = [UIImage imageNamed:image];
    // 1.3 把UINavigationController交给UITabBarController管理
    [self addChildViewController:nav];
}

@end
