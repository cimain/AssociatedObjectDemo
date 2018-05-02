//
//  NSObject+AssociatedObject.m
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "NSObject+AssociatedObject.h"
#import <objc/runtime.h>

@implementation NSObject (AssociatedObject)

- (void)setAssociatedObject:(id)associatedObject
{
    objc_setAssociatedObject(self, @selector(associatedObject), associatedObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)associatedObject
{
    return objc_getAssociatedObject(self, _cmd);
//    return objc_getAssociatedObject(self, @selector(associatedObject));
}

@end
