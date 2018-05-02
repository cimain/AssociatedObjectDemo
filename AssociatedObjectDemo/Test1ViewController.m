//
//  Test1ViewController.m
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "Test1ViewController.h"
#import "NSObject+AssociatedObject.h"

@interface Test1ViewController ()

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Test1ViewController";
    
    NSObject *objc = [[NSObject alloc] init];
    objc.associatedObject = @"Extend Category";
    NSLog(@"associatedObject is = %@", objc.associatedObject);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
