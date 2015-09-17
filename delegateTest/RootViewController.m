//
//  RootViewController.m
//  delegateTest
//
//  Created by qianfeng on 15/8/14.
//  Copyright (c) 2015年 WuDi. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

#define LeftDistance 30
#define controlDistance 64

@protocol SecondViewControllerDelegate <NSObject>

-(void)trendInfos:(NSString *)message;

@end

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"我是老大";
    [self createLabel];
    [self createButton];
}

-(void)createLabel{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(LeftDistance, 30+controlDistance, self.view.frame.size.width- 2* LeftDistance, 44)];
    label.text = @"hello";
    label.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
    [self.view addSubview:label];
}

-(void)createButton{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(LeftDistance, 80+controlDistance, self.view.frame.size.width - 2*LeftDistance, 44)];
//    button.titleLabel.text = @"buttoon";
    [button setTitle:@"button" forState:UIControlStateNormal];
    button.layer.cornerRadius = 5.f;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(toNextView) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor cyanColor];
    
    [self.view addSubview: button];
}

-(void)toNextView{
    SecondViewController *svc = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
    
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
