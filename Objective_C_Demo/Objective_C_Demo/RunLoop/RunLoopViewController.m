//
//  RunLoopViewController.m
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/27.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import "RunLoopViewController.h"

@interface RunLoopViewController ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation RunLoopViewController
__weak id reference;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSThread * thread = [[NSThread alloc]initWithBlock:^{
         _timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(print) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop]addTimer:_timer forMode:NSRunLoopCommonModes];
        [[NSRunLoop currentRunLoop] run];
        NSLog(@"RunLoop run 之后输出");
    }];
    
    [thread start];
    reference = thread;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%@",reference);
    [self performSelector:@selector(print) withObject:nil afterDelay:5];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)print{
    
    NSLog(@"AA");
//    [_timer invalidate];
     NSLog(@"%@",reference);
}

@end
