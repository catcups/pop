//
//  ViewController.m
//  popNavigation
//
//  Created by qh on 16/5/20.
//  Copyright © 2016年 qh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 150, 100, 20);
    label.text = @"哈哈哈哈";
    [self.view addSubview:label];
    [self.view addSubview:[self createButton]];
}

- (void)push {
    UIViewController *v = [UIViewController new];
    [v.view addSubview:[self createButton]];
    v.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStyleDone target:self action:@selector(pop)];
    [self.navigationController pushViewController:v animated:YES];
}
- (void)pop {
    NSArray *viewArr = self.navigationController.childViewControllers;
    if (viewArr.count > 2) {
        [self.navigationController popToViewController:self.navigationController.childViewControllers.firstObject animated:YES];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (UIButton *)createButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    return button;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
