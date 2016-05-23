//
//  NavigationController.m
//  popNavigation
//
//  Created by qh on 16/5/20.
//  Copyright © 2016年 qh. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()<UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 全屏滑
//    // 设置代理
//    id target = self.interactivePopGestureRecognizer.delegate;
//    // 创建手势
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
//    // 设置pan手势的代理
//    pan.delegate = self;
//    
//    // 添加手势
//    [self.view addGestureRecognizer:pan];
//    
//    // 将系统自带的手势覆盖掉
//    self.interactivePopGestureRecognizer.enabled = NO;
    
    
    // 系统自带滑UIScreenEdgePanGestureRecognizer
    // 设置代理
    self.interactivePopGestureRecognizer.delegate = self;
//    [self.interactivePopGestureRecognizer addTarget:self action:@selector(handleNavigationTransition:)];
}
// 表示的意思是:当挡墙控制器是根控制器了,那么就不接收触摸事件,只有当不是根控制器时才需要接收事件.
#pragma mark - UIGestureRecognizerDelegate
// 是否触发手势
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.childViewControllers.count > 1; // 处理后，就不会出现黑边效果的bug了。
}

//- (void)handleNavigationTransition:(UIScreenEdgePanGestureRecognizer *)sender {
//    if (self.childViewControllers.count >= 2) {
//        // 获取用户手指 距离手势开始点的距离
//        CGPoint Center = [sender translationInView:self.childViewControllers.lastObject.view];
//        if (Center.x > [[UIScreen mainScreen] bounds].size.width * 0.5) {
//            [self popToViewController:self.childViewControllers.firstObject animated:YES];
//        }
//        NSLog(@"%@", NSStringFromCGPoint(Center));
//        NSLog(@"Center%f", Center.x);
//        NSLog(@"ScrWith%f", [[UIScreen mainScreen] bounds].size.width * 0.5);
////            NSLog(@"===%@", NSStringFromCGRect(self.childViewControllers.lastObject.view.frame));
////            NSLog(@"---%@", NSStringFromCGRect(self.childViewControllers.lastObject.view.bounds));
//    }
////    } else {
////        [self popViewControllerAnimated:YES];
////    }
//}


//- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
//    NSLog(@"2333");
//    [self transitionFromViewController:self.childViewControllers.lastObject toViewController:self.childViewControllers.firstObject duration:0.25 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
//        
//    } completion:^(BOOL finished) {
//        
//    }];
//    if (self.childViewControllers.count >= 2) {
//        return self.childViewControllers.firstObject;
//    } else {
//        return nil;
//    }
//}
//- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    viewController = self.childViewControllers.firstObject;
//}
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
