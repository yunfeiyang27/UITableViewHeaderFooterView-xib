//
//  ReusableHeader.m
//  UITableViewHeaderFooterView-xib
//
//  Created by leihuan on 16/7/18.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "ReusableHeader.h"

@interface ReusableHeader ()



@end

@implementation ReusableHeader


- (void)awakeFromNib {
    
    // 设置一个自定义view添加到xib管理类（self）里
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40)];
    
    // 设置自定义view的背景颜色作为整个xib的背景颜色
    view.backgroundColor = [UIColor grayColor];
    
    [self addSubview:view];
    
    self.contentView.backgroundColor = [UIColor blueColor];
    
    // 设置一个label添加到自定义的view里
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width * 0.5, 40)];
    
    // 设置label的tag，方便以后给label设置数据
    label.tag = 101;
    
    [view addSubview:label];

}

@end
