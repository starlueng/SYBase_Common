//
//  UIConfig.h
//  IDOIAP2
//
//  Created by wady on 6/3/13.
//  Copyright (c) 2013 damai_mini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum  {
    topToBottom = 0,//从上到小
    leftToRight = 1,//从左到右
    upleftTolowRight = 2,//左上到右下
    uprightTolowLeft = 3,//右上到左下
}GradientType;


@interface UIConfig : NSObject


+ (CGSize) getScreenSize;

+ (UIColor *) getContentTextColor;

+ (UIColor *) getContentShadowTextColor;

+ (UIColor *) underLineColor;

+ (UIColor *)getCellShadowColor;

+ (UIColor *)getFooterCellShadowColor;

+ (UIColor *) getTitleTextColor;

+ (UIColor *) getBtnTextColor;

+ (UIColor *) getBtnClockTextColor;

+ (UIFont *) getContentSize;

+ (UIFont *) getSubTitleSize;

+ (UIFont *) getTitleSize;

+ (UIFont *) getSubTitleNumSize;

+ (UIFont *) getBtnNumSize;

+ (UIFont *) getDialogWarnSize;

+ (UIFont *) getSettingSize;

+ (int) getDialogWarnHeight:(int)size;

+ (int) getTitleHeight;

+ (int) getSubTitleHeight:(int)size;

+ (int) getContentHeight:(int)size;

+ (UIColor *) getContentNumberTextColor;

+ (UIColor *) getColor:(NSString *)hexColor;

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString;

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat)colorAlpha;

+ (int) getButtomHeight;

+ (int) getMutiBtnButtomHeight;

+ (int) getTitleY;

+ (int) getBgPanelY;

+(UIImage*) OriginImage:(UIImage *)image scaleToSize:(CGSize)size;
// 获取行间距，段落尖间距 
+ (int) getParagraphLineSeparator;
// title 和下面正文的距离
+ (int) getTitleSeparator;
// 段落间的距离
+ (int) getParagraphSeparator;
// 段落和图片间距
+ (int) getParagraphAndImageSeparator;
// 圆点动画间距
+ (int) getAnimalCircleSeparator;
// 按钮间的距离
+ (int) getBtnAndBtnSeparator;
// 段落和图片大的间距
+ (int) getParagraphAndImageLargeSeparator;

//字体阴影偏移量
+(CGSize)labelShadow;
//图表颜色选中颜色
+ (UIColor *)tableCellSelectedColor;

//滑动中间页到左边菜单，中间页面，显示的长度
+(CGFloat)frontViewLeftShowDistance;

//滑动中间页到右边边菜单，中间页面，显示的长度
+(CGFloat)frontViewRightShowDistance;

//中间页，滑动之后，缩小的最小比例
+(CGFloat)frontViewMinFactory;

//两边菜单的主标题的颜色
+(UIColor*)menuCellTitleColor;

//两边菜单的副标题的颜色
+(UIColor*)menuCellDetailTitleColor;

//两边菜单的主标题的字体
+(UIFont*)menuCellTitleFont;

//两边菜单的副标题的字体
+(UIFont*)menuCellDetailTitleFont;

//右边菜单Cell左边的边距
+(CGFloat)rightMenuCellLeftEdge;

//右边菜单Cell右边的边距
+(CGFloat)rightMenuCellRightEdge;

+ (UIColor *)appNormalTextColor;

+(UIColor*)LoginBgColor;
/**
 *  textPlaceHolderColor 返回输入框默认的placeHolder颜色
 *
 *  @return placeHolder颜色
 */
+(UIColor*)textPlaceHolderColor;


+ (UIImage *)imageWithColor:(UIColor *)color;

+ (UIImage *)imageWithColor:(UIColor *)color AndHeight:(CGFloat)height;
/**
 *  添加水印图片
 */
+ (UIImage *)addImage:(UIImage *)useImage addImage1:(UIImage *)addImage1;
//根据颜色生成image
+ (UIImage*) ImageFromColors:(NSArray*)colors ByGradientType:(GradientType)gradientType ImageSize:(CGSize)imageSize;
//根据字符串和字体及最大长度生成字符串的size,适配IOS7及IOS8
+(CGSize)sizeWithString:(NSString *)string Font:(UIFont*)font maxSize:(CGSize)maxsize;
//根据字体号计算字体的高度
+(CGFloat)HeightWithFont:(CGFloat)fontsize;
//图片缓存
+(UIImage *)getImageWithUrl:(NSString *)UrlStr;
+ (void)setExtraCellLineHidden: (UITableView *)mytableView;
+(CGFloat)Get6PSigndLineWidthOffset;

+(UIImage*)getSubImage:(CGRect)rect image:(UIImage *)image;
// ------这种方法对图片既进行压缩，又进行裁剪
+ (NSData *)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;
//简易构建label方法
+ (UILabel *)setLabelWith:(NSString *)text AndFont:(UIFont *)font AndIsNumberOfLines:(BOOL)numberOfLine AndtextColor:(UIColor *)TextColor AndFrame:(CGRect)frame AndAlignment:(NSTextAlignment)alignment;

//单一button只有title
+ (UIButton *)setButtonWith:(NSString *)title AndNomalColor:(UIColor *)nomalColor AndSelectColor:(UIColor *)selectColor AndFont:(UIFont *)font AndFrame:(CGRect)frame;
//单一button只有image
+ (UIButton *)setButtonWithNomalImage:(UIImage *)nomalImage AndSelectImage:(UIImage *)selectImage AndFrame:(CGRect)frame;
//button有title和image
+ (UIButton *)setButtonWith:(NSString *)title AndNomalColor:(UIColor *)nomalColor AndSelectColor:(UIColor *)selectColor AndFont:(UIFont *)font AndFrame:(CGRect)frame AndNomalImage:(UIImage *)nomalImage AndSelectImage:(UIImage *)selectImage AndImageEdgeInset:(UIEdgeInsets)imageInset AndTitleEdgeInset:(UIEdgeInsets)titleInset;
@end
