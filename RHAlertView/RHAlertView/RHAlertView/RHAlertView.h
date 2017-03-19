//
//  RHAlertView.h
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RHAlertView : UIView

/**
 类方法弹出提示框

 @param title   提示标题
 @param message 提示信息内容
 @param cancel  点击取消回调block
 @param confirm 点击确定回调block
 */
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancel:(void(^)(void))cancel confirm:(void(^)(void))confirm;

/**
 类方法弹出提示框

 @param title   提示标题
 @param message 提示信息内容
 @param cancel  点击取消回调block
 */
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancel:(void(^)(void))cancel;

/**
 类方法弹出提示框

 @param title   提示标题
 @param message 提示信息内容
 @param confirm 点击确定回调block
 */
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirm:(void(^)(void))confirm;
@end
