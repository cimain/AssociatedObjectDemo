//
//  Test3ViewController.m
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "Test3ViewController.h"
#import "UIButton+Handle.h"

@interface Test3ViewController ()

@property (nonatomic, strong) UIButton *testButton;

@end

@implementation Test3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Test3ViewController";
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(50, 150, 250, 100);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"UIButton+Handle" forState:UIControlStateNormal];
    
    self.testButton = button1;
    [self.view addSubview:self.testButton];
    [self.testButton handleClickCallBack:^(UIButton *button) {
        NSLog(@"block --- click UIButton+Handle");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
