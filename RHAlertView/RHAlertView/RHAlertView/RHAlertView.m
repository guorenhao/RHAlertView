//
//  RHAlertView.m
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHAlertView.h"
#import "RHAutoLayout.h"

#define kScreen_Width       [UIScreen mainScreen].bounds.size.width
#define kScreen_Height      [UIScreen mainScreen].bounds.size.height
#define Color_RGB(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0  alpha:1.0]
#define BG_Width           2 * kScreen_Width / 3
#define Label_Width        2 * kScreen_Width / 3 - 40
#define Button_Width       (2 * kScreen_Width / 3 - 1) / 2
#define Button_Height      kScreen_Width / 8

@interface RHAlertView ()

@property (nonatomic, strong) UIView * view_bg;
@property (nonatomic, strong) UILabel * lab_title;
@property (nonatomic, strong) UILabel * lab_message;
@property (nonatomic, strong) UILabel * lab_lineV;
@property (nonatomic, strong) UILabel * lab_lineH;
@property (nonatomic, strong) UIButton * btn_cancel;
@property (nonatomic, strong) UIButton * btn_confirm;

@property (nonatomic, copy) void(^cancelBlock)(void);
@property (nonatomic, copy) void(^confirmBlock)(void);
@end
@implementation RHAlertView

/**
 类方法弹出提示框
 
 @param title   提示标题
 @param message 提示信息内容
 @param cancel  点击取消回调block
 @param confirm 点击确定回调block
 */
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancel:(void(^)(void))cancel confirm:(void(^)(void))confirm {
    
    RHAlertView * alert = [[RHAlertView alloc] init];
    
    CGFloat titleHeight = 0;
    CGFloat messageHeight = 0;
    if (title.length == 0 && message.length == 0) {
        
        alert.lab_message.text = @"输入title和message为空";
        messageHeight = [alert getHeightByText:alert.lab_message.text font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    } else if (title.length == 0) {
        
        alert.lab_message.text = message;
        messageHeight = [alert getHeightByText:message font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    } else if (message.length == 0) {
        
        alert.lab_title.text = title;
        titleHeight = [alert getHeightByText:alert.lab_title.text font:[UIFont boldSystemFontOfSize:17] width:Label_Width] + 2;
    } else {
        
        alert.lab_title.text = title;
        alert.lab_message.text = message;
        
        titleHeight = [alert getHeightByText:alert.lab_title.text font:[UIFont boldSystemFontOfSize:17] width:Label_Width] + 2;
        messageHeight = [alert getHeightByText:message font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    }
    
    [alert makeConstraintsWithAlert:alert titleHeight:titleHeight message:messageHeight isShowCancel:YES isShowConfirm:YES];

    if (cancel) {
        
        alert.cancelBlock = cancel;
    }
    if (confirm) {
        
        alert.confirmBlock = confirm;
    }
    [alert show:alert];
}

/**
 类方法弹出提示框
 
 @param title   提示标题
 @param message 提示信息内容
 @param cancel  点击取消回调block
 */
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancel:(void(^)(void))cancel {
    
    RHAlertView * alert = [[RHAlertView alloc] init];
    
    CGFloat titleHeight = 0;
    CGFloat messageHeight = 0;
    if (title.length == 0 && message.length == 0) {
        
        alert.lab_message.text = @"输入title和message为空";
        messageHeight = [alert getHeightByText:alert.lab_message.text font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    } else if (title.length == 0) {
        
        alert.lab_message.text = message;
        messageHeight = [alert getHeightByText:message font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    } else if (message.length == 0) {
        
        alert.lab_title.text = title;
        titleHeight = [alert getHeightByText:alert.lab_title.text font:[UIFont boldSystemFontOfSize:17] width:Label_Width] + 2;
    } else {
        
        alert.lab_title.text = title;
        alert.lab_message.text = message;
        
        titleHeight = [alert getHeightByText:alert.lab_title.text font:[UIFont boldSystemFontOfSize:17] width:Label_Width] + 2;
        messageHeight = [alert getHeightByText:message font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    }
    
    [alert makeConstraintsWithAlert:alert titleHeight:titleHeight message:messageHeight isShowCancel:YES isShowConfirm:NO];
    
    if (cancel) {
        
        alert.cancelBlock = cancel;
    }
    [alert show:alert];
}

/**
 类方法弹出提示框
 
 @param title   提示标题
 @param message 提示信息内容
 @param confirm 点击确定回调block
 */
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirm:(void(^)(void))confirm {
    
    RHAlertView * alert = [[RHAlertView alloc] init];
    
    CGFloat titleHeight = 0;
    CGFloat messageHeight = 0;
    if (title.length == 0 && message.length == 0) {
        
        alert.lab_message.text = @"输入title和message为空";
        messageHeight = [alert getHeightByText:alert.lab_message.text font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    } else if (title.length == 0) {
        
        alert.lab_message.text = message;
        messageHeight = [alert getHeightByText:message font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    } else if (message.length == 0) {
        
        alert.lab_title.text = title;
        titleHeight = [alert getHeightByText:alert.lab_title.text font:[UIFont boldSystemFontOfSize:17] width:Label_Width] + 2;
    } else {
        
        alert.lab_title.text = title;
        alert.lab_message.text = message;
        
        titleHeight = [alert getHeightByText:alert.lab_title.text font:[UIFont boldSystemFontOfSize:17] width:Label_Width] + 2;
        messageHeight = [alert getHeightByText:message font:[UIFont systemFontOfSize:13] width:Label_Width] + 2;
    }
    
    [alert makeConstraintsWithAlert:alert titleHeight:titleHeight message:messageHeight isShowCancel:NO isShowConfirm:YES];
    
    if (confirm) {
        
        alert.confirmBlock = confirm;
    }
    
    [alert show:alert];
}

#pragma mark - init

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self addSubviews];
    }
    return self;
}

- (void)addSubviews {
    
    [self addSubview:self.view_bg];
    [_view_bg addSubview:self.lab_title];
    [_view_bg addSubview:self.lab_message];
    [_view_bg addSubview:self.lab_lineH];
    [_view_bg addSubview:self.btn_cancel];
    [_view_bg addSubview:self.lab_lineV];
    [_view_bg addSubview:self.btn_confirm];
}

- (void)layoutSubviews {
    
    self.frame = [UIApplication sharedApplication].keyWindow.bounds;
}

#pragma mark - button event

- (void)clickCancel:(UIButton *)sender {
    
    if (self.cancelBlock) {
        
        self.cancelBlock();
    }
    [self remove];
}

- (void)clickConfirm:(UIButton *)sender {
    
    if (self.confirmBlock) {
        
        self.confirmBlock();
    }
    [self remove];
}

#pragma mark - private

- (CGFloat)getHeightByText:(NSString *)text font:(UIFont *)font width:(CGFloat)width {
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = text;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}

- (void)show:(RHAlertView *)alert {
    
    UIWindow * window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:alert];
    
    [UIView animateWithDuration:0.25 animations:^{
        
        alert.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
        alert.view_bg.alpha = 1.0;
    }];
}

- (void)remove {
    
    __weak typeof(self)weakSelf = self;
    
    [UIView animateWithDuration:0.25 animations:^{
        
        weakSelf.alpha = 0;
    } completion:^(BOOL finished) {
        
        [weakSelf removeFromSuperview];
    }];
}

- (void)makeConstraintsWithAlert:(RHAlertView *)alert titleHeight:(CGFloat)titleHeight message:(CGFloat)messageHeight isShowCancel:(BOOL)isShowCancel isShowConfirm:(BOOL)isShowConfirm {
    
    CGFloat viewHeight = Button_Height + 1;
    
    if (titleHeight > 0 && messageHeight > 0) {
        
        viewHeight = viewHeight + 20 + messageHeight + 15 + titleHeight + 20;
    } else if (titleHeight > 0) {
        
        viewHeight = viewHeight + 20 + titleHeight + 20;
    } else if (messageHeight > 0) {
        
        viewHeight = viewHeight + 20 + messageHeight + 20;
    }
    
    // viewBG
    [alert.view_bg makeConstraints:^(RHConstraintMaker *maker) {
        
        maker.centerX(0);
        maker.centerY(0);
        maker.width(BG_Width);
        maker.height(viewHeight);
    }];
    // labTitle
    [alert.lab_title makeConstraints:^(RHConstraintMaker *maker) {
        
        maker.centerX(0);
        maker.top(20);
        maker.width(Label_Width);
        maker.height(titleHeight);
    }];
    // labMessage
    [alert.lab_message makeConstraints:^(RHConstraintMaker *maker) {
        
        maker.centerX(0);
        maker.bottom(-Button_Height - 1 - 20);
        maker.width(Label_Width);
        maker.height(messageHeight);
    }];
    // lineH
    [alert.lab_lineH makeConstraints:^(RHConstraintMaker *maker) {
        
        maker.left(0);
        maker.bottom(-Button_Height);
        maker.right(0);
        maker.height(1);
    }];
    
    if (isShowCancel && isShowConfirm) {
        
        // btnCancel
        [alert.btn_cancel makeConstraints:^(RHConstraintMaker *maker) {
            
            maker.left(0);
            maker.bottom(0);
            maker.width(Button_Width);
            maker.height(Button_Height);
        }];
        // btnConfirm
        [alert.btn_confirm makeConstraints:^(RHConstraintMaker *maker) {
            
            maker.right(0);
            maker.bottom(0);
            maker.width(Button_Width);
            maker.height(Button_Height);
        }];
        // lineV
        [alert.lab_lineV makeConstraints:^(RHConstraintMaker *maker) {
            
            maker.centerX(0);
            maker.bottom(0);
            maker.width(1);
            maker.height(Button_Height);
        }];
    } else if (isShowCancel) {
        
        [alert.btn_confirm removeFromSuperview];
        [alert.lab_lineV removeFromSuperview];
        // btnCancel
        [alert.btn_cancel makeConstraints:^(RHConstraintMaker *maker) {
            
            maker.left(0);
            maker.bottom(0);
            maker.right(0);
            maker.height(Button_Height);
        }];
    } else if (isShowConfirm) {
        
        [alert.btn_cancel removeFromSuperview];
        [alert.lab_lineV removeFromSuperview];
        // btnConfirm
        [alert.btn_confirm makeConstraints:^(RHConstraintMaker *maker) {
            
            maker.right(0);
            maker.bottom(0);
            maker.left(0);
            maker.height(Button_Height);
        }];
    }
}

#pragma mark - setter and getter

- (UIView *)view_bg {
    
    if (!_view_bg) {
        
        _view_bg = [[UIView alloc] init];
        _view_bg.backgroundColor = [UIColor whiteColor];
        _view_bg.layer.cornerRadius = 5.0;
        _view_bg.layer.masksToBounds = YES;
        _view_bg.alpha = 0;
    }
    return _view_bg;
}

- (UILabel *)lab_title {
    
    if (!_lab_title) {
        
        _lab_title = [[UILabel alloc] init];
        _lab_title.font = [UIFont boldSystemFontOfSize:17];
        _lab_title.textAlignment = NSTextAlignmentCenter;
        _lab_title.numberOfLines = 0;
    }
    return _lab_title;
}

- (UILabel *)lab_message {
    
    if (!_lab_message) {
        
        _lab_message = [[UILabel alloc] init];
        _lab_message.font = [UIFont systemFontOfSize:13];
        _lab_message.textAlignment = NSTextAlignmentCenter;
        _lab_message.numberOfLines = 0;
    }
    return _lab_message;
}

- (UILabel *)lab_lineH {
    
    if (!_lab_lineH) {
        
        _lab_lineH = [[UILabel alloc] init];
        _lab_lineH.backgroundColor = Color_RGB(230, 230, 230);
    }
    return _lab_lineH;
}

- (UILabel *)lab_lineV {
    
    if (!_lab_lineV) {
        
        _lab_lineV = [[UILabel alloc] init];
        _lab_lineV.backgroundColor = Color_RGB(230, 230, 230);
    }
    return _lab_lineV;
}

- (UIButton *)btn_cancel {
    
    if (!_btn_cancel) {
        
        _btn_cancel = [[UIButton alloc] init];
        _btn_cancel.titleLabel.font = [UIFont systemFontOfSize:16];
        [_btn_cancel setTitle:@"取消" forState:UIControlStateNormal];
        [_btn_cancel setTitleColor:Color_RGB(69, 111, 239) forState:UIControlStateNormal];
        [_btn_cancel addTarget:self action:@selector(clickCancel:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn_cancel;
}

- (UIButton *)btn_confirm {
    
    if (!_btn_confirm) {
        
        _btn_confirm = [[UIButton alloc] init];
        _btn_confirm.titleLabel.font = [UIFont systemFontOfSize:16];
        [_btn_confirm setTitle:@"确定" forState:UIControlStateNormal];
        [_btn_confirm setTitleColor:Color_RGB(55, 55, 55) forState:UIControlStateNormal];
        [_btn_confirm addTarget:self action:@selector(clickConfirm:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn_confirm;
}

@end
