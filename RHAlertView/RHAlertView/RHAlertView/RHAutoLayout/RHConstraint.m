//
//  RHConstraint.m
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHConstraint.h"

@interface RHConstraint ()

@property (nonatomic, weak) UIView *view;
@property (nonatomic, weak) RHViewAttribute *viewAttribute;
@property (nonatomic, assign) NSLayoutAttribute layoutAttribute;
@end
@implementation RHConstraint

- (instancetype)initWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attribute viewAttribute:(RHViewAttribute *)viewAttribute {
    
    self = [super init];
    if (self) {
        
        _view = view;
        _layoutAttribute = attribute;
        _viewAttribute = viewAttribute;
    }
    return self;
}


- (void (^)(CGFloat))offset {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * offsetConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:weakSelf.layoutAttribute relatedBy:NSLayoutRelationEqual toItem:weakSelf.viewAttribute.view attribute:weakSelf.viewAttribute.layoutAttribute multiplier:1.0 constant:constraint];
        
        [weakSelf.view.superview addConstraint:offsetConstraint];
    };
}

@end
