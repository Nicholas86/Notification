//
//  NocafitionVC.m
//  LessonNotificationCenter
//
//  Created by lanouhn on 15/9/19.
//  Copyright (c) 2015年 LiYang. All rights reserved.
//

#import "NocafitionVC.h"

@interface NocafitionVC ()

@end

@implementation NocafitionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)pushNottification:(id)sender {
    //发送消息给电台
    //创建消息
    NSDictionary *dic = @{@"name" : @"韩二娃子"};
    NSNotification *notification = [NSNotification notificationWithName:@"FM-881" object:@"讲故事" userInfo:dic];
    //发送消息
    [[NSNotificationCenter defaultCenter] postNotification:notification];
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
