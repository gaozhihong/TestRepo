//
//  UIButton+Action.h
//  关联对象
//
//  Created by gaozhihong on 2017/9/12.
//  Copyright © 2017年 gaozhihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Action)
-(void)handleClickCallBack:(void(^)())callBack;

@end
