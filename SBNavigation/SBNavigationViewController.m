//
//  SBNavigationViewController.m
//  SBNavigation
//
//  Created by sycf_ios on 2017/6/22.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "SBNavigationViewController.h"

@interface SBNavigationViewController ()<UINavigationControllerDelegate>

@end

@implementation SBNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    self.navigationBar.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100);
//    self.navigationBar.backgroundColor = [UIColor redColor];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.navigationBar.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 104);
    self.navigationBar.backgroundColor = [UIColor redColor];
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(64, 64, [UIScreen mainScreen].bounds.size.width-128, 40)];
    blueView.backgroundColor = [UIColor blueColor];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.navigationBar addSubview:blueView];
    
    [blueView.leftAnchor constraintEqualToAnchor:self.navigationBar.leftAnchor constant:64].active = YES;
    [blueView.rightAnchor constraintEqualToAnchor:self.navigationBar.rightAnchor constant:-64].active = YES;
    [blueView.bottomAnchor constraintEqualToAnchor:self.navigationBar.bottomAnchor constant:0].active = YES;
    [blueView.heightAnchor constraintEqualToConstant:40].active = YES;
    
}
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{

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
