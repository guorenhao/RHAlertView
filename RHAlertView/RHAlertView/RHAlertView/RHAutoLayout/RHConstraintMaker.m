//
//  RHConstraintMaker.m
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHConstraintMaker.h"

@interface RHConstraintMaker ()

@property (nonatomic, weak) UIView *view;
@property (nonatomic, strong) NSMutableArray *constraints;
@end
@implementation RHConstraintMaker

- (instancetype)initWithView:(UIView *)view {
    
    self = [super init];
    if (self) {
        
        self.view = view;
        self.constraints = [NSMutableArray new];
    }
    return self;
}


- (void (^)(CGFloat))top {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * topConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:topConstraint];
    };
}

- (void (^)(CGFloat))left {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * leftConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:leftConstraint];
    };
}

- (void (^)(CGFloat))bottom {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * bottonConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeBottom multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:bottonConstraint];
    };
}

- (void (^)(CGFloat))right {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * rightConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeRight multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:rightConstraint];
    };
}

- (void (^)(CGFloat))leading {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * leadingConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeLeading multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:leadingConstraint];
    };
}

- (void (^)(CGFloat))trailing {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * trailingConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:trailingConstraint];
    };
}

- (void (^)(CGFloat))centerX {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * centerXConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:centerXConstraint];
    };
}

- (void (^)(CGFloat))centerY {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * centerYConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:centerYConstraint];
    };
}

- (void (^)(CGFloat))width {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * widthConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:constraint];
        [weakSelf.view addConstraint:widthConstraint];
    };
}

- (void (^)(CGFloat))height {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * heightConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:constraint];
        [weakSelf.view addConstraint:heightConstraint];
    };
}

- (void (^)(CGFloat))baseline {
    
    __weak typeof(self)weakSelf = self;
    return ^(CGFloat constraint) {
        
        NSLayoutConstraint * baselineConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeBaseline relatedBy:NSLayoutRelationEqual toItem:weakSelf.view.superview attribute:NSLayoutAttributeBaseline multiplier:1.0 constant:constraint];
        [weakSelf.view.superview addConstraint:baselineConstraint];
    };
}

- (RHConstraint * (^)(RHViewAttribute *))topToView {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        RHConstraint * constraint = [[RHConstraint alloc] initWithView:weakSelf.view layoutAttribute:NSLayoutAttributeTop viewAttribute:attribute];
        return constraint;
    };
}

- (RHConstraint * (^)(RHViewAttribute *))leftToView {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        RHConstraint * constraint = [[RHConstraint alloc] initWithView:weakSelf.view layoutAttribute:NSLayoutAttributeLeft viewAttribute:attribute];
        return constraint;
    };
}

- (RHConstraint * (^)(RHViewAttribute *))bottomToView {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        RHConstraint * constraint = [[RHConstraint alloc] initWithView:weakSelf.view layoutAttribute:NSLayoutAttributeBottom viewAttribute:attribute];
        return constraint;
    };
}

- (RHConstraint * (^)(RHViewAttribute *))rightToView {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        RHConstraint * constraint = [[RHConstraint alloc] initWithView:weakSelf.view layoutAttribute:NSLayoutAttributeRight viewAttribute:attribute];
        return constraint;
    };
}

- (RHConstraint * (^)(RHViewAttribute *))centerXToView {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        RHConstraint * constraint = [[RHConstraint alloc] initWithView:weakSelf.view layoutAttribute:NSLayoutAttributeCenterX viewAttribute:attribute];
        return constraint;
    };
}

- (RHConstraint * (^)(RHViewAttribute *))centerYToView {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        RHConstraint * constraint = [[RHConstraint alloc] initWithView:weakSelf.view layoutAttribute:NSLayoutAttributeCenterY viewAttribute:attribute];
        return constraint;
    };
}

- (void (^)(RHViewAttribute *))widthEquelTo {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        NSLayoutConstraint * widthConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:attribute.view attribute:attribute.layoutAttribute multiplier:1.0 constant:0];
        [weakSelf.view.superview addConstraint:widthConstraint];
    };
}

- (void (^)(RHViewAttribute *))heightEquelTo {
    
    __weak typeof(self)weakSelf = self;
    return ^(RHViewAttribute * attribute) {
        
        NSLayoutConstraint * heightConstraint = [NSLayoutConstraint constraintWithItem:weakSelf.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:attribute.view attribute:attribute.layoutAttribute multiplier:1.0 constant:0];
        [weakSelf.view.superview addConstraint:heightConstraint];
    };
}


@end
