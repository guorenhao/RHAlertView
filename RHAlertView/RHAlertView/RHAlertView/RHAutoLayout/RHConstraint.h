//
//  RHConstraint.h
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/17.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHViewAttribute.h"

@interface RHConstraint : NSObject

- (instancetype)initWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attribute viewAttribute:(RHViewAttribute *)viewAttribute;

- (void(^)(CGFloat constraint))offset;

@end
