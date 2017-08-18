//
//  ViewController.m
//  LessonNotificationCenter
//
//  Created by lanouhn on 15/9/19.
//  Copyright (c) 2015年 LiYang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)dealloc {
    //移除通知中心
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"FM-881" object:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //获得一个通知中心
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    //添加一个监听者
    //Observer:监听者,谁成为监听者,那么监听到的消息的方法就写在谁的.m文件中
    //selector:监听到消息触发的方法
    //name:可以理解成是我们电台的频道,该值是我们定的,我们以什么频道发送消息,什么时候会触发监听,如果置nil则表示所有的频道
    //object:nil表示该频道中所有的节目
    [notificationCenter addObserver:self selector:@selector(getNotification:) name:@"FM-881" object:nil];
    
}
- (void)getNotification:(NSNotification *)center {
   NSLog(@"centercenter：%@", center.userInfo[@"name"]);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
