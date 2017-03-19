//
//  UIView+RHConstraint.m
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "UIView+RHConstraint.h"
#import <objc/runtime.h>

@implementation UIView (RHConstraint)

- (void)makeConstraints:(void (^)(RHConstraintMaker *))block {
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    RHConstraintMaker *constraintMaker = [[RHConstraintMaker alloc] initWithView:self];
    block(constraintMaker);
}


- (RHViewAttribute *)top {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeTop];
}

- (RHViewAttribute *)left {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeLeft];
}

- (RHViewAttribute *)bottom {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeBottom];
}

- (RHViewAttribute *)right {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeRight];
}

- (RHViewAttribute *)centerX {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeCenterX];
}

- (RHViewAttribute *)centerY {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeCenterY];
}

- (RHViewAttribute *)width {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeWidth];
}

- (RHViewAttribute *)height {
    
    return [[RHViewAttribute alloc] initWithView:self attribute:NSLayoutAttributeHeight];
}







@end
