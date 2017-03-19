//
//  ViewController.m
//  RHAlertView
//
//  Created by 郭人豪 on 2017/3/19.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "ViewController.h"
#import "RHAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"ShowAlert" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)clickButton:(UIButton *)sender {
    
    [RHAlertView showAlertWithTitle:@"AlertView_Title" message:@"AlertView_Message:今天是个好天气！适合出去游玩，但是没有人陪伴，所以只能独自在家撸代码！" cancel:^{
        
        NSLog(@"点击了取消！");
    } confirm:^{
        
        NSLog(@"点击了确定！");
    }];
    
//    [RHAlertView showAlertWithTitle:@"AlertView_Title" message:@"AlertView_Message:今天是个好天气！适合出去游玩，但是没有人陪伴，所以只能独自在家撸代码！" cancel:^{
//        
//        NSLog(@"点击了取消！");
//    }];
//    
//    [RHAlertView showAlertWithTitle:@"AlertView_Title" message:@"AlertView_Message:今天是个好天气！适合出去游玩，但是没有人陪伴，所以只能独自在家撸代码！" confirm:^{
//        
//        NSLog(@"点击了确定！");
//    }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
