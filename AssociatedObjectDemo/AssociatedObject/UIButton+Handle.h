//
//  UIButton+Handle.h
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>    // 导入头文件

// 声明一个button点击事件的回调block
typedef void(^ButtonClickCallBack)(UIButton *button);

@interface UIButton (Handle)

// 为UIButton增加的回调方法
- (void)handleClickCallBack:(ButtonClickCallBack)callBack;

@end
