//
//  CYXCell.h
//  AppExample
//
//  Created by 郑飞 on 6/22/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CYXMenu;

@interface CYXCell : UITableViewCell

/** 菜单模型 */
@property (strong, nonatomic) CYXMenu * menu;

@end
