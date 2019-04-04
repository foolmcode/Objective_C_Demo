//
//  ViewController.m
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/25.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(copy,nonatomic)NSArray * titleArr;
@end

@implementation ViewController
__weak id objTrace;
- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView * table = [[UITableView alloc]initWithFrame:self.view.frame];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    _titleArr = @[@"RunLoopViewController",@"CopyViewController",@"CoreTextViewController",@"JavaScriptCoreViewController"];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * identify = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identify forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    cell.textLabel.text = _titleArr[indexPath.row];
    cell.textLabel.textColor = UIColor.redColor;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Class class = NSClassFromString(_titleArr[indexPath.row]);
    
    id  vc = [[class alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _titleArr.count;
}
@end
