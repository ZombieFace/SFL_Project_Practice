//
//  SXTInputViewController.m
//  项目练习
//
//  Created by ma c on 16/6/16.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTInputViewController.h"
#import "SXTinputView.h"

@interface SXTInputViewController ()

@end

@implementation SXTInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    SXTinputView *inputView = [[SXTinputView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:inputView];
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
