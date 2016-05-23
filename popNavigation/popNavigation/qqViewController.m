//
//  qqViewController.m
//  popNavigation
//
//  Created by qh on 16/5/20.
//  Copyright © 2016年 qh. All rights reserved.
//

#import "qqViewController.h"
#import "hhViewController.h"

@interface qqViewController ()

@end

@implementation qqViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:[self createButton]];
}

- (UIButton *)createButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(140, 100, 100, 30);
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    return button;
}
- (void)push {
    hhViewController *v = [hhViewController new];
    [self.navigationController pushViewController:v animated:YES];
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
