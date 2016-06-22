//
//  CYXTabBarController.m
//  AppExample
//
//  Created by 郑飞 on 6/22/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "CYXTabBarController.h"
#import "CYXOneViewController.h"
#import "CYXTwoViewController.h"
#import "CYXThreeViewController.h"
#import "CYXFourViewController.h"

@interface CYXTabBarController ()

@end

@implementation CYXTabBarController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Tabbar controller init!");
    
    CYXOneViewController *oneVC = [[CYXOneViewController alloc] init];
    CYXTwoViewController *twoVC = [[CYXTwoViewController alloc] init];
    CYXThreeViewController *threeVC = [[CYXThreeViewController alloc] init];
    CYXFourViewController *fourVC = [[CYXFourViewController alloc] init];
    [self setNavItemViewController:oneVC Title:@"首页" Icon:@"tab_home_icon"];
    [self setNavItemViewController:twoVC Title:@"技术" Icon:@"js"];
    [self setNavItemViewController:threeVC Title:@"博文" Icon:@"qw"];
    [self setNavItemViewController:fourVC Title:@"我的江湖" Icon:@"user"];
    
}

-(void) setNavItemViewController:(UIViewController *)viewController Title:(NSString *)title Icon:(NSString *) icon{
    //1.set root controller
    UINavigationController *nav= [[UINavigationController alloc] initWithRootViewController:viewController];
    [nav setHidesBarsOnTap:YES];
    
    //2.set title:
    nav.title = title;

    //3.set icon:
    nav.tabBarItem.image = [UIImage imageNamed:icon];
    
    // 设置navigationBar的标题
    viewController.navigationItem.title = title;
    
    // 设置背景色（这些操作可以交给每个单独子控制器去做）
    viewController.view.backgroundColor = [UIColor whiteColor];
    
    //4.attach to main view:
    [self addChildViewController:nav];
}
@end
