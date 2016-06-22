//
//  CYXCell.m
//  AppExample
//
//  Created by 郑飞 on 6/22/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "CYXCell.h"
#import "CYXMenu.h"
#import <UIImageView+WebCache.h>

@interface CYXCell ()
@property (weak, nonatomic) IBOutlet UIImageView *albumsImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UILabel *ingredientsLabel;
@end

@implementation CYXCell

- (void)setMenu:(CYXMenu *)menu{
    
    _menu = menu;
    // 利用SDWebImage框架加载图片资源
    [self.albumsImageView sd_setImageWithURL:[NSURL URLWithString:menu.albums]];
    // 设置标题
    self.titleLable.text = menu.title;
    // 设置材料数据
    self.ingredientsLabel.text = menu.ingredients;
    
}
@end
