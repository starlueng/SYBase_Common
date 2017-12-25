//
//  BaseViewController.m
//  SYBase_Common
//
//  Created by starlueng on 12/25/2017.
//  Copyright (c) 2017 starlueng. All rights reserved.
//

#import "BaseViewController.h"
#import "CommonHeader.h"
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton * button = [UIConfig setButtonWith:@"test" AndNomalColor:[UIConfig colorFromHexRGB:@"4c91fc"] AndSelectColor:[UIConfig colorFromHexRGB:@"4c91fc"] AndFont:KFONT(17) AndFrame:CGRectMake(100, 100, 100, 50)];
    button.center = self.view.center;
    [button addTarget:self action:@selector(someAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)someAction{
    NSString *result = @"over";
    puts([result UTF8String]);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
