//
//  RHConstraintMaker.h
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHConstraint.h"
#import "RHViewAttribute.h"

@interface RHConstraintMaker : NSObject

- (instancetype)initWithView:(UIView *)view;

- (void(^)(CGFloat constraint))top;
- (void(^)(CGFloat constraint))left;
- (void(^)(CGFloat constraint))bottom;
- (void(^)(CGFloat constraint))right;
- (void(^)(CGFloat constraint))leading;
- (void(^)(CGFloat constraint))trailing;
- (void(^)(CGFloat constraint))centerX;
- (void(^)(CGFloat constraint))centerY;
- (void(^)(CGFloat constraint))width;
- (void(^)(CGFloat constraint))height;
- (void(^)(CGFloat constraint))baseline;

- (RHConstraint *(^)(RHViewAttribute * attribute))topToView;
- (RHConstraint *(^)(RHViewAttribute * attribute))leftToView;
- (RHConstraint *(^)(RHViewAttribute * attribute))bottomToView;
- (RHConstraint *(^)(RHViewAttribute * attribute))rightToView;
//- (RHConstraint *(^)(RHViewAttribute * attribute))leadingToView;
- (RHConstraint *(^)(RHViewAttribute * attribute))centerXToView;
- (RHConstraint *(^)(RHViewAttribute * attribute))centerYToView;

- (void(^)(RHViewAttribute * attribute))widthEquelTo;
- (void(^)(RHViewAttribute * attribute))heightEquelTo;

@end
