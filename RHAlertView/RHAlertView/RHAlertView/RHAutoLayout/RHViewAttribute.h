//
//  RHViewAttribute.h
//  UIPickerDemo
//
//  Created by 郭人豪 on 2017/3/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHUtilities.h"

@interface RHViewAttribute : NSObject

@property (nonatomic, weak, readonly) UIView *view;

/**
 *  The item which the reciever relates to.
 */
@property (nonatomic, weak, readonly) id item;

/**
 *  The attribute which the reciever relates to
 */
@property (nonatomic, assign, readonly) NSLayoutAttribute layoutAttribute;


- (instancetype)initWithView:(UIView *)view attribute:(NSLayoutAttribute)attribute;
@end
