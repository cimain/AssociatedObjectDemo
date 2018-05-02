//
//  UIButton+Handle.m
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "UIButton+Handle.h"

// 声明一个静态的索引key，用于获取被关联对象的值
static char *buttonClickKey;

@implementation UIButton (Handle)

- (void)handleClickCallBack:(ButtonClickCallBack)callBack {
    // 将button的实例与回调的block通过索引key进行关联：
    objc_setAssociatedObject(self, &buttonClickKey, callBack, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    // 设置button执行的方法
    [self addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClicked {
    // 通过静态的索引key，获取被关联对象（这里就是回调的block）
    ButtonClickCallBack callBack = objc_getAssociatedObject(self, &buttonClickKey);
    
    if (callBack) {
        callBack(self);
    }
}

@end
