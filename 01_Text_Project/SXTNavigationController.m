//
//  SXTNavigationController.m
//  项目练习
//
//  Created by ma c on 16/6/16.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTNavigationController.h"

@interface SXTNavigationController ()

@end

@implementation SXTNavigationController

+(void)initialize{
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"nav_backImage"] forBarMetrics:UIBarMetricsDefault];
    [navBar setTitleTextAttributes:@{
                                     
                                     }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
