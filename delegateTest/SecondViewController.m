//
//  SecondViewController.m
//  delegateTest
//
//  Created by qianfeng on 15/8/14.
//  Copyright (c) 2015年 WuDi. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createTextField];
}

-(void)createTextField{
    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(30, 70, self.view.frame.size.width - 60, 44)];
    text.text = 
    [self.view addSubview:text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
