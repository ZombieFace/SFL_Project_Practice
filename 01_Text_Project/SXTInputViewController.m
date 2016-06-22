//
//  SXTInputViewController.m
//  项目练习
//
//  Created by ma c on 16/6/16.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTInputViewController.h"
#import "SXTinputView.h"
#import "SXTInputBottomView.h"
#import "PrefixHeader.pch"

#define kViewWidth [UIScreen mainScreen].bounds.size.width

@interface SXTInputViewController ()

//@property (nonatomic, strong) SXTinputView *inputView;
//@property (nonatomic, strong) SXTInputBottomView *bottomView;

@end

@implementation SXTInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    SXTinputView *inputView = [[SXTinputView alloc] initWithFrame:CGRectMake(0, 0, kViewWidth, 180)];
    [self.view addSubview:inputView];
    
    SXTInputBottomView *bottomView = [[SXTInputBottomView alloc] initWithFrame:CGRectMake(0, 180, kViewWidth, 150)];
    [self.view addSubview:bottomView];
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
