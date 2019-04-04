//
//  CoreTextViewController.m
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/31.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import "CoreTextViewController.h"
#import "CTView.h"
#import "CTLineView.h"
@interface CoreTextViewController ()

@end

@implementation CoreTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CTView * view = [[CTView alloc]initWithFrame:CGRectMake(0, 100, 210, 210)];
    [self.view addSubview:view];
    
    CTLineView * line = [[CTLineView alloc] initWithFrame:CGRectMake(0, 300, 100, 100)];
    [self.view addSubview:line];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
