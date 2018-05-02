//
//  Test2ViewController.m
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "Test2ViewController.h"
#import <objc/runtime.h>

#pragma mark - way3
#import "UIAlertView+Handle.h"

static void *CMAlertViewKey = "CMAlertViewKey";

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Test2ViewController";
    
    [self popAlertViews3];
}

#pragma mark - way1
//- (void)popAlertViews1{
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Question" message:@"What do you want to do?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
//    [alert show];
//}
//
//// UIAlertViewDelegate protocol method
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    if (buttonIndex == 0) {
//        [self doCancel];
//    } else {
//        [self doContinue];
//    }
//}

#pragma mark - way2
//- (void)popAlertViews2 {
//
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Question" message:@"What do you want to do?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
//    void (^block)(NSInteger) = ^(NSInteger buttonIndex){
//        if (buttonIndex == 0) {
//            [self doCancel];
//        } else {
//            [self doContinue];
//        }
//    };
//    objc_setAssociatedObject(alert,CMAlertViewKey, block,OBJC_ASSOCIATION_COPY);
//    [alert show];
//}
//
//// UIAlertViewDelegate protocol method
//- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
//
//    void (^block)(NSInteger) = objc_getAssociatedObject(alertView, CMAlertViewKey);
//    block(buttonIndex);
//}

#pragma mark - way3
- (void)popAlertViews3 {

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Question" message:@"What do you want to do?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
    [alert setCallBlock:^(NSInteger buttonIndex) {
        if (buttonIndex == 0) {
            [self doCancel];
        } else {
            [self doContinue];
        }
    }];

    [alert show];
}

// UIAlertViewDelegate protocol method
- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    void (^block)(NSInteger) = alertView.callBlock;
    block(buttonIndex);
}

#pragma mark - handle action
- (void)doCancel{
    NSLog(@"doCancel");
}

- (void)doContinue{
    NSLog(@"doContinue");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
