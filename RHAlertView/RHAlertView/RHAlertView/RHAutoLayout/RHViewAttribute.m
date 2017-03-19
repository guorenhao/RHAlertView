//
//  RHViewAttribute.m
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "RHViewAttribute.h"

@implementation RHViewAttribute

- (instancetype)initWithView:(UIView *)view attribute:(NSLayoutAttribute)attribute {
    
    self = [super init];
    if (self) {
        
        _view = view;
        _layoutAttribute = attribute;
    }
    return self;
}
@end
