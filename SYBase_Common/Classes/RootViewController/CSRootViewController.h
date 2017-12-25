//
//  RootViewController.h
//  CSuperAppliances
//
//  Created by starlueng on 16/4/19.
//  Copyright © 2016年 starlueng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSRootViewController : UIViewController
//不传递image，不显示返回按钮
+ (void)setResetBackImage:(UIImage *)bgimage;
//定义拓展viewdidload设置
+ (void)viewDidLoadReset:(void(^)(UIViewController *))reset;

@end
