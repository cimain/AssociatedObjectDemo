//
//  Test4ViewController.m
//  AssociatedObjectDemo
//
//  Created by ChenMan on 2018/5/4.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "Test4ViewController.h"
#import "UITapGestureRecognizer+NSString.h"

@interface Test4ViewController ()

@end

@implementation Test4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Test4ViewController";
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectZero];
    view1.frame = CGRectMake(50, 150, 250, 100);
    view1.backgroundColor = [UIColor blueColor];
    view1.tag = 1;
    [self.view addSubview:view1];
    
    UITapGestureRecognizer *signViewSingle0 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    //partnercode
    signViewSingle0.dataStr = [NSString stringWithFormat:@"%ld",view1.tag];
    [view1 addGestureRecognizer:signViewSingle0];
}


- (void)tapAction:(UITapGestureRecognizer *)sender
{
    UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
//    [self requestCallConSetWithPartnerCode:tap.dataStr];
    NSLog(@"which view is clicked? ok,i know, it's tag is %@",tap.dataStr);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
