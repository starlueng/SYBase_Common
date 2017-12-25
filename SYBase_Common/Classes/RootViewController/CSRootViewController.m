//
//  RootViewController.m
//  CSuperAppliances
//
//  Created by starlueng on 16/4/19.
//  Copyright © 2016年 starlueng. All rights reserved.
//

#import "CSRootViewController.h"
#import <objc/runtime.h>
typedef void (^resetViewDid)(UIViewController *);
@interface CSRootViewController ()
@property (strong,nonatomic)UIButton *leftBtn;
@end
@implementation CSRootViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    
    if ([CSRootViewController resetBackImage]) {
        
        self.leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.leftBtn setImage:[CSRootViewController resetBackImage] forState:UIControlStateNormal];
        self.leftBtn.frame = CGRectMake(0, 0, 60, 44);
        
        self.leftBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -8, 0, 24);
        self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:self.leftBtn];
        [self.leftBtn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    self.view.backgroundColor = [UIColor colorWithRed:235/255.0 green:238/255.0 blue:245/255.0 alpha:1.0];
    
    self.navigationController.navigationBar.titleTextAttributes =@{NSFontAttributeName:[UIFont systemFontOfSize:18],NSForegroundColorAttributeName:[UIColor whiteColor]};
    __weak typeof(self)Wself= self;
    if ( [CSRootViewController get_viewDidLoadReset]) {
        [CSRootViewController get_viewDidLoadReset](Wself);
    }
}
+ (void)setResetBackImage:(UIImage *)bgimage{
    
    objc_setAssociatedObject(self, @selector(setResetBackImage:), bgimage, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (UIImage *)resetBackImage{
    
    return objc_getAssociatedObject(self, @selector(setResetBackImage:));
}
+ (void)viewDidLoadReset :(void(^)(UIViewController *))reset{
    objc_setAssociatedObject(self, @selector(viewDidLoadReset:), reset, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}
+ (resetViewDid)get_viewDidLoadReset{
    
    return objc_getAssociatedObject(self, @selector(viewDidLoadReset:));
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
- (void)buttonClick:(UIButton *)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
