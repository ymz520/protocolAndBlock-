//
//  ViewController.m
//  protocolAndBlock传值
//
//  Created by 张 荣桂 on 16/9/29.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
//1.遵守协议
@interface ViewController ()<SecondViewControllerlegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    }
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    SecondViewController *secondvctl=[[SecondViewController alloc]init];
    secondvctl.view.backgroundColor=[UIColor grayColor];
    //    2.设置代理的值
    secondvctl.delegate=self;
    [self presentViewController:secondvctl animated:YES completion:nil];
    secondvctl.sendblock=^(NSString *str){
        self.receiverStr=str;
    };
//    NSLog(@"++%@++",self.receiverStr);



}
-(void)setReceiverStr:(NSString *)receiverStr{
    NSLog(@"%@",receiverStr);
}
//3.
#pragma mark -实现代理的方法（接收值）
-(void)SecondViewController:(UIViewController *)secondvctl AndsendValue:(NSString *)sendValues andBackgroundcolor:(UIColor *)color{
    self.view.backgroundColor=color;
    NSLog(@"%@",sendValues);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
