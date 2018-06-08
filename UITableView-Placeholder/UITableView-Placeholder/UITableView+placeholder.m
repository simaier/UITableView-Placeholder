//
//  UITableView+placeholder.m
//  UITableView-Placeholder
//
//  Created by 范智超 on 2018/6/8.
//  Copyright © 2018年 范智超. All rights reserved.
//

#import "UITableView+placeholder.h"

@implementation UITableView (placeholder)

-(void)tableviewDisplayWithMessage:(NSString* )message ifNecessaryForRowCount:(NSUInteger)rowCount ifNecessaryForImage:(UIImage *)image offsetY:(CGFloat)offset messageColor:(UIColor *)messageColor font:(UIFont *)font
{
//    判断rowCount是否为0条数据
    if (rowCount == 0) {
        
//        计算位置，垂直居中，图片默认中心偏上
        CGFloat sw = self.bounds.size.width; /* <获得当前view的宽度> */
        CGFloat cX = sw / 2;
        CGFloat cY = self.bounds.size.height * (1 - 0.618) + offset; /* <offset偏移量> */
        CGFloat iW = image.size.width;
        CGFloat iH = image.size.height;
        
//        image
        UIImageView *imgView = [[UIImageView alloc] init];
        imgView.frame = CGRectMake(cX - iW / 2, cY - iH, iW, iH);
        imgView.image = image;
        
//        label
        UILabel *messageLabel = [[UILabel alloc] init];
        messageLabel.textAlignment = NSTextAlignmentCenter;
        messageLabel.frame = CGRectMake(0, CGRectGetMaxY(imgView.frame) - 40, sw, messageLabel.font.lineHeight);
        messageLabel.text = message;
        
//        label_font
        messageLabel.font = font;
        
//        label_color
        messageLabel.textColor = messageColor;
        
//        view
        UIView *view = [[UIView alloc] init];
        [view addSubview:imgView];
        [view addSubview:messageLabel];
        
//        backgroundView
        self.backgroundView = view;
        
//        cell_line
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        
    }else
    {
        self.backgroundView = nil;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
}

@end
