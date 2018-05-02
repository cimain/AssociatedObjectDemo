//
//  UIAlertView+Handle.h
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import <UIKit/UIKit.h>

// 声明一个button点击事件的回调block
typedef void (^ClickBlock)(NSInteger buttonIndex) ;

@interface UIAlertView (Handle)

@property (copy, nonatomic) ClickBlock callBlock;

@end
