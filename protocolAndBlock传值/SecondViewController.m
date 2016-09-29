//
//  SecondViewController.m
//  protocolAndBlock传值
//
//  Created by 张 荣桂 on 16/9/29.
//  Copyright © 2016年 张 荣桂. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    3.判断代理类是否实现了协议的方法
    if([_delegate respondsToSelector:@selector(SecondViewController:AndsendValue:andBackgroundcolor:)])
    {
//      4.  如果实现咯就传值过去
        
        [_delegate SecondViewController: self AndsendValue:@"123"andBackgroundcolor:[UIColor redColor]];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    if (_sendblock) {
        _sendblock(@"block传值");
    }
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
