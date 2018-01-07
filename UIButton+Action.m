//
//  UIButton+Action.m
//  关联对象
//
//  Created by gaozhihong on 2017/9/12.
//  Copyright © 2017年 gaozhihong. All rights reserved.
//

#import "UIButton+Action.h"
#import <objc/runtime.h>

static char * KCallBackKey ;
@implementation UIButton (Action)
-(void)handleClickCallBack:(void (^)())callBack{
    objc_setAssociatedObject(self, KCallBackKey, callBack, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)buttonClick:(UIButton*)sender{
    void (^callBack)() = objc_getAssociatedObject(self, KCallBackKey);
    if (callBack) {
        callBack();
    }
    
    
}

@end
