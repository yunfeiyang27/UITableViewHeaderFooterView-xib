//
//  ViewController.m
//  UITableViewHeaderFooterView
//
//  Created by leihuan on 16/7/18.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "ViewController.h"
#import "ReusableHeader.h"


static NSString *ID = @"cell";

static NSString *headerID = @"headerid";


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ReusableHeader" bundle:nil] forHeaderFooterViewReuseIdentifier:headerID];



}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        
        return 3;
        
    }
    if (section == 1) {
        
        
        return 9;
    }
    
    
    return 15;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    
    
    cell.textLabel.text = @"data";
    
    return cell;
}



- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    // 先去缓存池找可重用的header
    ReusableHeader *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:headerID];
    
    if (header == nil) {
        
        header = [[[NSBundle mainBundle] loadNibNamed:@"ReusableHeader" owner:nil options:nil] lastObject];
        
    }

    NSLog(@"%p",header);

    // 设置每个section的header里的label显示的文字
    UILabel *label = [header viewWithTag:101];
    label.text = [NSString stringWithFormat:@"第%zd组",section];

    // 返回header
    return header;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    

    return 40;
    
}





@end
