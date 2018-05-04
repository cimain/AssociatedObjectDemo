//
//  UITapGestureRecognizer+NSString.m
//  AssociatedObjectDemo
//
//  Created by ChenMan on 2018/5/4.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "UITapGestureRecognizer+NSString.h"
#import <objc/runtime.h>

//定义常量 必须是C语言字符串
static char *PersonNameKey = "PersonNameKey";

@implementation UITapGestureRecognizer (NSString)

- (void)setDataStr:(NSString *)dataStr{
    objc_setAssociatedObject(self, PersonNameKey, dataStr, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSString *)dataStr{
    return objc_getAssociatedObject(self, PersonNameKey);
}

@end

