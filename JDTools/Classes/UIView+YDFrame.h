//
//  UIView+YDFrame.h
//  Frame
//
//  Created by 王强 on 15/7/18.
//  Copyright © 2015年 王强. All rights reserved.
//

#import <UIKit/UIKit.h>

/*↓↓↓↓↓↓↓↓↓↓↓↓<屏幕frame>↓↓↓↓↓↓↓↓↓↓↓↓*/
// 屏幕宽
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
// 屏幕高
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
// 有导航栏时高度
#define kScreenHeight_Nav ([UIScreen mainScreen].bounds.size.height - 64.f)
// 有tabbar和导航栏时的高度
#define kScreenHeight_NavTab ([UIScreen mainScreen].bounds.size.height - 64.f - 49.f)
// AppDelegate
#define kAppDelegate [[UIApplication sharedApplication] delegate]
// 应用根window
#define kAppWindow [[UIApplication sharedApplication].windows objectAtIndex:0]
//iPhone6的屏幕宽度的比例
#define FitWidth [UIScreen mainScreen].bounds.size.width / 375
//iPhone6的屏幕高度的比例
#define FitHeight [UIScreen mainScreen].bounds.size.height / 667
/*↑↑↑↑↑↑↑↑↑↑↑↑<屏幕frame>↑↑↑↑↑↑↑↑↑↑↑↑*/

/*↓↓↓↓↓↓↓↓↓↓↓↓<颜色>↓↓↓↓↓↓↓↓↓↓↓↓*/
// 随机颜色
#define kRandomColor [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1]
// 数值RGB颜色 RGB(234,223,145)
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
// 数值RGB颜色,带透明度 RGBA(234,223,145,0.6f)
#define RGBAlpha(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
// 十六进制RGB颜色
#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
// 十六进制RGB颜色,带透明度
#define HexRGBAlpha(rgbValue, a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

/*↑↑↑↑↑↑↑↑↑↑↑↑<颜色>↑↑↑↑↑↑↑↑↑↑↑↑*/

@interface UIView (YDFrame)

// 宽
@property (nonatomic, assign) CGFloat width;
// 高
@property (nonatomic, assign) CGFloat height;

// 左(x)
@property (readonly, nonatomic, assign) CGFloat left;
// 右(x + width)
@property (readonly, nonatomic, assign) CGFloat right;

// 上(y)
@property (readonly, nonatomic, assign) CGFloat top;
// 下(y + height)
@property (readonly, nonatomic, assign) CGFloat bottom;

#pragma mark - 方法
// 修改x
- (void)changeX:(CGFloat)newX;
// 修改y
- (void)changeY:(CGFloat)newY;
// 设置字符串背景色
- (void)backgroundColorWithString:(NSString *)colorStr;





@end
