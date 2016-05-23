//
//  hhViewController.m
//  popNavigation
//
//  Created by qh on 16/5/20.
//  Copyright © 2016年 qh. All rights reserved.
//

#import "hhViewController.h"
#import "ccViewController.h"
@interface hhViewController ()
@end

@implementation hhViewController
- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setViewControllers:@[self.navigationController.childViewControllers.firstObject, self]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"第二";
    self.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:[self createButton]];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(pop)];
}
- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)push {
    ccViewController *v = [ccViewController new];
    v.view.backgroundColor = [UIColor grayColor];
    [self.navigationController pushViewController:v animated:YES];
}
- (UIButton *)createButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor greenColor];
    button.frame = CGRectMake(140, 200, 100, 30);
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    return button;
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
