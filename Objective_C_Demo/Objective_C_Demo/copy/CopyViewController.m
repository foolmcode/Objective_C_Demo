//
//  CopyViewController.m
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/28.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import "CopyViewController.h"

@interface CopyViewController ()

@end

@implementation CopyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray * marr1 = @[@1,@2].mutableCopy;
    NSMutableArray * marr2 = marr1.copy;
    NSMutableArray * marr3 = marr1.mutableCopy;
    [marr3 addObject:@3];
    NSLog(@"%@",marr1);
    NSLog(@"%@",marr2);
    NSLog(@"%@",marr3);
//    marr1[0] = @4;
    NSLog(@"%p,%p",marr1[0] , marr2[0]);
    NSNumber * num = marr1[0];
    num = @4;
     NSLog(@"%@",marr1);
    NSLog(@"%@",marr2);
    NSLog(@"%@",marr3);
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
