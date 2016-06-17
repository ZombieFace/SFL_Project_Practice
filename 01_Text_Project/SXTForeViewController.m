//
//  SXTForeViewController.m
//  项目练习
//
//  Created by ma c on 16/6/15.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTForeViewController.h"
#import "SXTMineLoginView.h"

@interface SXTForeViewController ()

@end

@implementation SXTForeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    SXTMineLoginView *view1 = [[SXTMineLoginView alloc]init];
    view1.frame = self.view.frame;
    view1.viewer = self;
    [self.view addSubview:view1];
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
