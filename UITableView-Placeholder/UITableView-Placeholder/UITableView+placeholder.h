//
//  UITableView+placeholder.h
//  UITableView-Placeholder
//
//  Created by 范智超 on 2018/6/8.
//  Copyright © 2018年 范智超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (placeholder)


/**
 placeholder

 @param message 占位文字
 @param rowCount cell
 @param image 占位图片
 @param offset 偏移量
 @param messageColor 占位文字颜色
 @param font 占位文字frame
 */
- (void)tableviewDisplayWithMessage:(NSString *)message ifNecessaryForRowCount:(NSUInteger)rowCount ifNecessaryForImage:(UIImage *)image offsetY:(CGFloat)offset messageColor:(UIColor *)messageColor font:(UIFont *)font;

@end
