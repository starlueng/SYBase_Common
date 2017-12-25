//
//  UIConfig.m
//  IDOIAP2
//
//  Created by wady on 6/3/13.
//  Copyright (c) 2013 damai_mini. All rights reserved.
//

#import "UIConfig.h"

@implementation UIConfig

+ (CGSize) getScreenSize
{
    
    CGRect rect = [ UIScreen mainScreen ].bounds;
    CGSize size_app_screen = rect.size;
    return size_app_screen;
}

+(CGSize)labelShadow
{
    return CGSizeMake(0,1);
}

//table cell shadow color
+ (UIColor *)getCellShadowColor
{
    return [UIColor colorWithRed:0
                           green:0
                            blue:0
                           alpha:0.4f];
}

//table footer shadow color
+ (UIColor *)getFooterCellShadowColor
{
    return [UIColor colorWithRed:1.0f
                           green:1.0f
                            blue:1.0f
                           alpha:0.1f];
}

+ (UIColor *) getContentTextColor
{
    return [UIColor colorWithRed:178/255.0f
                           green:190/255.0f
                            blue:197/255.0f
                           alpha:1.0f];
}

//label shadow color
+ (UIColor *) getContentShadowTextColor
{
    return [UIColor colorWithRed:0
                           green:0
                            blue:0
                           alpha:0.3f];
}

+ (UIColor *) underLineColor
{
    return [UIColor colorWithRed:107/255.0f
                    green:175/255.0f
                     blue:216/255.0f
                    alpha:1.0f];
}

+ (UIColor *) getContentNumberTextColor
{
    return [self colorFromHexRGB:@"828f98"];
}

+ (UIColor *) getTitleTextColor
{
    return [self colorFromHexRGB:@"eff2f4"];
}

+ (UIColor *) getBtnClockTextColor
{
    //return [self colorFromHexRGB:@"d1ac7f"];
    //return [self colorFromHexRGB:@"a79879"];
    return [UIColor whiteColor];
}

+ (UIColor *) getBtnTextColor
{
    return [self colorFromHexRGB:@"adb7be"];
}

+ (UIFont *) getDialogWarnSize
{
//    return [UIFont systemFontOfSize:18];
    return [UIFont boldSystemFontOfSize:18];
}

+ (UIFont *) getTitleSize
{
     return [UIFont boldSystemFontOfSize:20];
}

+ (UIFont *) getSettingSize
{
    return [UIFont boldSystemFontOfSize:18];
}

+ (UIFont *) getSubTitleNumSize
{
    return [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
}

+ (UIFont *) getSubTitleSize
{
    return [UIFont systemFontOfSize:15];
}

+ (UIFont *) getContentSize
{
    return [UIFont systemFontOfSize:14];
}
+ (UIFont *) getBtnNumSize
{
    return [UIFont fontWithName:@"HelveticaNeueLTPro-Th" size:20];
}

+ (int) getDialogWarnHeight:(int)size
{
    return 18 * size + (size -1) * 5;
}

+ (int) getContentHeight:(int)size
{
    return 14 * size + (size -1) * 5;
}

+ (int) getSubTitleHeight:(int)size
{
    return 16 * size + (size -1) * 2;
}
// 获取行间距，段落尖间距
+ (int) getParagraphLineSeparator
{
    return 8;
}

+ (int) getTitleHeight
{
    return 20;
}

+ (int) getTitleY
{
//    if([self getScreenSize].height > 480)
//    {
//       return 88;
//    }
//    else
//    {
//       return 68;
//    }
    
    return 68;
}

+ (int) getBgPanelY
{
    /*
    if([self getScreenSize].height > 480)
    {
        return 50;
    }
    else
    {
        return 40;
    }
    */
    return 40;
}

+ (int) getMutiBtnButtomHeight
{
    if([self getScreenSize].height > 480)
    {
        return 40;
    }
    else
    {
        return 25;
    }
}

+ (int) getButtomHeight
{
    if([self getScreenSize].height > 480)
    {
        return 70;
    }
    else
    {
        return 25;
    }
}

+ (int) getPhoneInfoHeight
{
    return 20;
}

+ (int) getTitleSeparator
{
    if([self getScreenSize].height > 480)
    {
        return 25;
    }
    else
    {
        return 20;
    }
}
// 段落间间距
+ (int) getParagraphSeparator
{
    return 13;
}

+ (int) getParagraphAndImageSeparator
{
    if([self getScreenSize].height > 480)
    {
        return 35;
    }
    else
    {
        return 25;
    }
}

+ (int) getParagraphAndImageLargeSeparator
{
    return 40;
}

+ (int) getBtnAndBtnSeparator
{
    return 15;
}

+ (int) getAnimalCircleSeparator
{
    return 25;
}

+ (UIColor *)getColor:(NSString *)hexColor
{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green / 255.0f) blue:(float)(blue / 255.0f) alpha:1.0f];
}

//%15黑
+ (UIColor *)tableCellSelectedColor
{
    return [UIColor colorWithRed:0
                           green:0
                            blue:0
                           alpha:0.15f];
}

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString
{
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:1.0];    
    return result;
}

+ (UIColor *) colorFromHexRGB:(NSString *) inColorString alpha:(CGFloat)colorAlpha {
    UIColor *result = nil;
    unsigned int colorCode = 0;
    unsigned char redByte, greenByte, blueByte;
    
    if (nil != inColorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:inColorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:colorAlpha];
    return result;
}
//缩放图片以充满整个屏幕
+(UIImage*) OriginImage:(UIImage *)image scaleToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;
}


+(CGFloat)frontViewLeftShowDistance
{
    return 320-80;
}

+(CGFloat)frontViewRightShowDistance
{
    return 320-50;
}

+(CGFloat)frontViewMinFactory
{
//    if (SYSTEM_VERSION_LESS_THAN(@"7.0")) {
//        return 1;
//    }
//    return 484/568.0f;
    return 1;
}


+(UIColor*)menuCellTitleColor
{
    return [self colorFromHexRGB:@"ffffff"];
}

+(UIColor*)menuCellDetailTitleColor
{
    return [self colorFromHexRGB:@"999999"];
}

+(UIFont*)menuCellTitleFont
{
    return [UIFont systemFontOfSize:18];
}

+(UIFont*)menuCellDetailTitleFont
{
    return [UIFont systemFontOfSize:12];
}

//右边菜单Cell左边的边距
+(CGFloat)rightMenuCellLeftEdge
{
    return 18.0f;
}

//右边菜单Cell右边的边距
+(CGFloat)rightMenuCellRightEdge
{
    return 15.0f;
}

+ (UIColor *)appNormalTextColor
{
    return [UIConfig colorFromHexRGB:@"999999"];
}

+(UIColor*)textPlaceHolderColor
{
    return [UIConfig colorFromHexRGB:@"bcbcbc"];
}


+(UIColor*)LoginBgColor
{
    return [UIConfig colorFromHexRGB:@"f8fafa"];
}


+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
+ (UIImage *)imageWithColor:(UIColor *)color AndHeight:(CGFloat)height{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
    
}
/**
 @ 加水印图片
 */
+ (UIImage *)addImage:(UIImage *)useImage addImage1:(UIImage *)addImage1
{
    UIGraphicsBeginImageContext(useImage.size);
    [useImage drawInRect:CGRectMake(0, 0, useImage.size.width, useImage.size.height)];
    [addImage1 drawInRect:CGRectMake((useImage.size.width - addImage1.size.width/2) / 2, useImage.size.height-addImage1.size.height/2 -5, addImage1.size.width/2, addImage1.size.height/2)];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultingImage;
}

//根据颜色生成image
+ (UIImage*) ImageFromColors:(NSArray*)colors ByGradientType:(GradientType)gradientType ImageSize:(CGSize)imageSize
{
    if (colors.count >0) {
        UIGraphicsBeginImageContextWithOptions(imageSize, YES, 1);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSaveGState(context);
        CGColorSpaceRef colorSpace = CGColorGetColorSpace([[colors lastObject] CGColor]);
        CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (CFArrayRef)colors, NULL);
        
//        CGColorSpaceRelease(colorSpace);
        CGPoint start;
        CGPoint end;
        switch (gradientType) {
            case topToBottom:
                start = CGPointMake(0.0, 0.0);
                end = CGPointMake(0.0, imageSize.height);
                break;
            case leftToRight:
                start = CGPointMake(0.0, 0.0);
                end = CGPointMake(imageSize.width, 0.0);
                break;
            case upleftTolowRight:
                start = CGPointMake(0.0, 0.0);
                end = CGPointMake(imageSize.width, imageSize.height);
                break;
            case uprightTolowLeft:
                start = CGPointMake(imageSize.width, 0.0);
                end = CGPointMake(0.0, imageSize.height);
                break;
            default:
                break;
        }
        CGContextDrawLinearGradient(context, gradient, start, end, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        CGGradientRelease(gradient);
        CGContextRestoreGState(context);
        
        UIGraphicsEndImageContext();
        return image;
    }else{
    
        return nil;
    }
   
}



+(CGSize)sizeWithString:(NSString *)string Font:(UIFont*)font maxSize:(CGSize)maxsize{
    if (![string isKindOfClass:[NSString class]]) {
        return CGSizeZero;
    }
    
    CGRect rect = [string boundingRectWithSize:maxsize options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return CGSizeMake(CGRectGetWidth(rect), CGRectGetHeight(rect));
}
//根据字体号获取字体的高度
+(CGFloat)HeightWithFont:(CGFloat)fontsize{
//    static NSMutableArray *fontheight;
//    if (fontheight==nil||fontheight.count==0) {
//        fontheight = [[NSMutableArray alloc] init];
//        for (int i=1; i<21; i++) {
//            CGSize size = [UIConfig sizeWithString:@"测试" Font:[UIFont systemFontOfSize:i] maxSize:CGSizeMake(150, 150)];
//            [fontheight addObject:@(size.height)];
//        }
//    }
//    if (fontsize<6) {
//        fontsize=6;
//    }
//    if (fontheight&&fontheight.count==20&&fontheight.count>fontsize) {
//        return [[fontheight objectAtIndex:(NSInteger)(fontsize+0.5-4)] floatValue];
//    }
//    else{
//        CGSize size = [UIConfig sizeWithString:@"测试" Font:[UIFont systemFontOfSize:fontsize] maxSize:CGSizeMake(50, 50)];
//        return size.height;
//    }
    
    return [self sizeWithString:@"测试" Font:[UIFont systemFontOfSize:fontsize] maxSize:CGSizeMake(150, 150)].height;
}

//图片缓存
+(UIImage *)getImageWithUrl:(NSString *)UrlStr{
    UIImage *image ;
    NSString * documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    documentPath = [documentPath stringByAppendingPathComponent:[UrlStr stringByReplacingOccurrencesOfString:@"/" withString:@"_"]];
    NSData * avatar = [NSData dataWithContentsOfFile:documentPath];
    
    if (avatar==nil) {
        if (UrlStr&&![UrlStr isEqualToString:@""]) {
            avatar = [NSData dataWithContentsOfURL:[NSURL URLWithString:UrlStr]];
            image = [UIImage imageWithData:avatar];
            [avatar writeToFile:documentPath atomically:YES];
        }
        else{
            image = nil;
        }
    }
    else{
        image = [UIImage imageWithData:avatar];
    }
    return image;
}

//去除tableview空cell的line
+ (void)setExtraCellLineHidden: (UITableView *)mytableView
{
    UIView *view =[[UIView alloc]init];
    view.backgroundColor = [UIColor clearColor];
    [mytableView setTableFooterView:view];
}

+(CGFloat)Get6PSigndLineWidthOffset{
    CGFloat pixelAdjustOffset = 0;
    if(((int)(0.5 * [UIScreen mainScreen].scale) + 1) % 2 == 0) {
        pixelAdjustOffset = (1 / [UIScreen mainScreen].scale) / 2;
    }
    return pixelAdjustOffset;
}

+(UIImage*)getSubImage:(CGRect)rect image:(UIImage *)image
{
    if (image.size.width<CGRectGetMaxX(rect)||image.size.height<CGRectGetMaxY(rect)) {
        return image;
    }
    CGImageRef subImageRef = CGImageCreateWithImageInRect(image.CGImage, rect);
    CGRect smallBounds = CGRectMake(0, 0, CGImageGetWidth(subImageRef), CGImageGetHeight(subImageRef));
    UIGraphicsBeginImageContext(smallBounds.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, smallBounds, subImageRef);
    UIImage* smallImage = [UIImage imageWithCGImage:subImageRef];
    CGImageRelease(subImageRef);
    UIGraphicsEndImageContext();
    return smallImage;
 }
// ------这种方法对图片既进行压缩，又进行裁剪
+ (NSData *)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;
{
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return UIImageJPEGRepresentation(newImage, 0.8);
}

+ (UILabel *)setLabelWith:(NSString *)text AndFont:(UIFont *)font AndIsNumberOfLines:(BOOL)numberOfLine AndtextColor:(UIColor *)TextColor AndFrame:(CGRect)frame AndAlignment:(NSTextAlignment)alignment{
    UILabel *label =[[UILabel alloc]initWithFrame:frame];
    label.text =text;
    label.font =font;
    label.textColor =TextColor;
    if (numberOfLine) {
        label.numberOfLines =0;
    }
    label.textAlignment =alignment;
    return label;
}
+ (UIButton *)setButtonWith:(NSString *)title AndNomalColor:(UIColor *)nomalColor AndSelectColor:(UIColor *)selectColor AndFont:(UIFont *)font AndFrame:(CGRect)frame{
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:nomalColor forState:UIControlStateNormal];
    [button setTitleColor:selectColor forState:UIControlStateSelected];
    button.titleLabel.font =font;
    button.frame = frame;
    return button;
}

+ (UIButton *)setButtonWithNomalImage:(UIImage *)nomalImage AndSelectImage:(UIImage *)selectImage AndFrame:(CGRect)frame{
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:nomalImage forState:UIControlStateNormal];
    [button setImage:selectImage forState:UIControlStateSelected];
    button.frame = frame;
    return button;
    
}

+ (UIButton *)setButtonWith:(NSString *)title AndNomalColor:(UIColor *)nomalColor AndSelectColor:(UIColor *)selectColor AndFont:(UIFont *)font AndFrame:(CGRect)frame AndNomalImage:(UIImage *)nomalImage AndSelectImage:(UIImage *)selectImage AndImageEdgeInset:(UIEdgeInsets)imageInset AndTitleEdgeInset:(UIEdgeInsets)titleInset{
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:nomalColor forState:UIControlStateNormal];
    [button setTitleColor:selectColor forState:UIControlStateSelected];
    [button setImage:nomalImage forState:UIControlStateNormal];
    [button setImage:selectImage forState:UIControlStateSelected];
    button.imageEdgeInsets =imageInset;
    button.titleEdgeInsets = titleInset;
    button.titleLabel.font =font;
    button.frame = frame;
    return button;
}
@end
