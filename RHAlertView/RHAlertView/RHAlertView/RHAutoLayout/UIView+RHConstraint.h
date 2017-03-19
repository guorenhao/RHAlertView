//
//  UIView+RHConstraint.h
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RHConstraintMaker.h"
#import "RHViewAttribute.h"

@interface UIView (RHConstraint)

@property (nonatomic, strong, readonly) RHViewAttribute *top;
@property (nonatomic, strong, readonly) RHViewAttribute *left;
@property (nonatomic, strong, readonly) RHViewAttribute *bottom;
@property (nonatomic, strong, readonly) RHViewAttribute *right;
//@property (nonatomic, strong, readonly) RHViewAttribute *leading;
//@property (nonatomic, strong, readonly) RHViewAttribute *trailing;
@property (nonatomic, strong, readonly) RHViewAttribute *centerX;
@property (nonatomic, strong, readonly) RHViewAttribute *centerY;
@property (nonatomic, strong, readonly) RHViewAttribute *width;
@property (nonatomic, strong, readonly) RHViewAttribute *height;
//@property (nonatomic, strong, readonly) RHViewAttribute *baseline;


- (void)makeConstraints:(void(^)(RHConstraintMaker *maker))block;

//- (UIView *(^)(UIView * toView, CGFloat constraint))top;

@end
