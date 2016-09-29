//
//  SecondViewController.h
//  protocolAndBlock传值
//
//  Created by 张 荣桂 on 16/9/29.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//代理传值，逆向传值

#import <UIKit/UIKit.h>
//1.创建协议
@protocol SecondViewControllerlegate <NSObject>

@optional
// 遵守协议要干的事情,协议里的方法一般以本类开头
-(void)SecondViewController:(UIViewController *)secondvctl AndsendValue:(NSString *)sendValues andBackgroundcolor:(UIColor *)color;

@end
typedef void(^myblock)(NSString *sendstr);
@interface SecondViewController : UIViewController
//2.声明代理
@property(nonatomic,weak)id <SecondViewControllerlegate> delegate;
//二.用代理传值
//    2.1声明block变量
//声明block的方法一
//@property(nonatomic,strong)void(^sendBlock)(NSString *sendstr);
//声明block的方法二
@property(nonatomic,strong)myblock sendblock;

@end
