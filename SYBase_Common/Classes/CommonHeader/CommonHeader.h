//
//  CommonHeader.h
//  Pods
//
//  Created by Starlueng on 2017/12/25.
//

#ifndef CommonHeader_h
#define CommonHeader_h
#ifdef __OBJC__
#import <UIKit/UIKit.h>
// In this header, you should import all the public headers of your framework using statements like #import <CommonRoot/PublicHeader.h>
#define iSiPhoneX  ([[UIScreen mainScreen] bounds].size.height >= 800)&&([[UIScreen mainScreen] bounds].size.width<=375)

#define isiPhone6 (([[UIScreen mainScreen] bounds].size.width>320)&&([[UIScreen mainScreen] bounds].size.width<=375))
#define  iPhone6Weight 375.0
#define  iPhone6Height 667.0
//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
//获取设备的中心X
#define ScreenWidth_2 ScreenWidth/2
//获取设备的中心Y
#define ScreenHeight_2 ScreenHeight/2

//设备宽度的三等分
#define ScreenWidth_3 ScreenWidth/3

//状态栏高度
#define STATUSBARHEIGHT (iSiPhoneX ? 44 : 20)
//导航栏高度
#define NAVIBARHEIGHT 44

#define TABBARHEIGHT (iSiPhoneX ? 83 : 49)

#define KFONT(o) [UIFont systemFontOfSize:o]

#define KCOLOR(o) [UIConfig colorFromHexRGB:o]

#define  NewBasicHeight (1/iPhone6Height*(isiPhone6?iPhone6Height:ScreenHeight))

#define  NewBasicWidth (1/iPhone6Weight*ScreenWidth)

#define SINGLE_LINE_WIDTH (1 / [UIScreen mainScreen].scale)

#define SINGLE_LINE_ADJUST_OFFSET   ((1 / [UIScreen mainScreen].scale) / 2)

#define WEAKSELF typeof(self) __weak weakSelf = self;

#define STRONGSELF typeof(weakSelf) __strong strongSelf = weakSelf;

#define WHITECOLOR [UIConfig colorFromHexRGB:@"ffffff"]
#import "UIConfig.h"
#import "CSRootViewController.h"
#import "UINavigationController+FullscreenPopGesture.h"
#endif /* CommonHeader_h */
#endif
