//
//  UIAlertView+Handle.m
//  RuntimeDemoForAssociatedObject
//
//  Created by ChenMan on 2018/5/2.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "UIAlertView+Handle.h"
#import <objc/runtime.h>

@implementation UIAlertView (Handle)

- (void)setCallBlock:(ClickBlock)callBlock
{
    objc_setAssociatedObject(self, @selector(callBlock), callBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (ClickBlock )callBlock
{
    return objc_getAssociatedObject(self, _cmd);
    //    return objc_getAssociatedObject(self, @selector(callBlock));
}

@end
