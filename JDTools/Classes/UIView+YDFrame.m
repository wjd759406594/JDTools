//
//  UIView+YDFrame.m
//  Frame
//
//  Created by 王强 on 15/7/18.
//  Copyright © 2015年 王强. All rights reserved.
//

#import "UIView+YDFrame.h"

@implementation UIView (YDFrame)

#pragma mark - 宽
- (void)setWidth:(CGFloat)width
{
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}
- (CGFloat)width
{
    return self.frame.size.width;
}
#pragma mark - 高
- (void)setHeight:(CGFloat)height
{
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}
- (CGFloat)height
{
    return self.frame.size.height;
}
#pragma mark - 上
- (CGFloat)top
{
    return self.frame.origin.y;
}
#pragma mark - 下
- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}
#pragma mark - 左
- (CGFloat)left
{
    return self.frame.origin.x;
}
#pragma mark - 右
- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}
#pragma mark - 方法
// 修改x
- (void)changeX:(CGFloat)newX
{
    self.frame = CGRectMake(newX, self.top, self.width, self.height);
}
// 修改y
- (void)changeY:(CGFloat)newY
{
    self.frame = CGRectMake(self.left, newY, self.width, self.height);
}

- (void)backgroundColorWithString:(NSString *)colorStr
{
    // 判断长度先
    if (colorStr.length < 6) return;
    // 去掉空格等其他字符
    NSString *cString = [[colorStr stringByTrimmingCharactersInSet:
                          [NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"0x"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    
    if ([cString length] < 6 || [cString length] > 8) return;
    
    static int COLOR_LENGTH = 4;
    // Alpha Red Green Blue
    unsigned int colorARGB[COLOR_LENGTH];
    for (int i = 0; i < 4; i++) {
        // 先初始化为所有都是255
        colorARGB[COLOR_LENGTH-i-1] = 255;
        
        // 根据子字符串进行数字转换
        NSString *subString = [cString substringFromIndex: cString.length < 2 ? 0 : cString.length - 2];
        cString = [cString substringToIndex:cString.length < 2 ? cString.length : cString.length - 2];
        if (subString.length) {
            [[NSScanner scannerWithString:subString] scanHexInt:&colorARGB[COLOR_LENGTH-i-1]];
        }
    }
    
    self.backgroundColor = [UIColor colorWithRed:((float) colorARGB[1] / 255.0f)
                           green:((float) colorARGB[2] / 255.0f)
                            blue:((float) colorARGB[3] / 255.0f)
                           alpha:((float) colorARGB[0] / 255.0f)];
}

@end
