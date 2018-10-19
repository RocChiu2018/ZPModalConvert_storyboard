//
//  ZPOneViewController.m
//  Modal方式显示控制器（storyboard）
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPOneViewController.h"
#import "ZPTwoViewController.h"

@interface ZPOneViewController ()

@end

@implementation ZPOneViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark ————— segue方法 —————
/**
 在storyboard文件中连接segue的时候要选"Modal"样式；
 不管是自动型的还是手动型的segue，在页面跳转之前系统都会自动调用这个方法。
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UINavigationController *nav = segue.destinationViewController;
    
    ZPTwoViewController *twoViewController = (ZPTwoViewController *)nav.topViewController;
    twoViewController.name = @"ndfnvlkvnlkdf";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
