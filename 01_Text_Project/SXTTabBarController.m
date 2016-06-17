//
//  SXTTabBarController.m
//  项目练习
//
//  Created by ma c on 16/6/15.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTTabBarController.h"
#import "SXTNavigationController.h"
#import "PrefixHeader.pch"

//#define RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]


@interface SXTTabBarController ()

@property (nonatomic, strong) NSArray *viewControllersArray;

@end

@implementation SXTTabBarController

- (NSArray *)viewControllersArray{
    if (!_viewControllersArray) {
        _viewControllersArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"SXTTabBarControllers" ofType:@"plist"]];
    }
    return _viewControllersArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self setupChildVc:[[SXTOneViewController alloc] init] title:@"限时特卖" image:@"菜单栏限时特卖按钮未选中状态" selectedImage:@"菜单栏限时特卖按钮选中状态"];
//    [self setupChildVc:[[SXTTwoViewController alloc] init] title:@"分类" image:@"菜单栏分类按钮未选中状态" selectedImage:@"菜单栏分类按钮选中状态"];
//    [self setupChildVc:[[SXTThreeViewController alloc] init] title:@"购物车" image:@"菜单栏购物车按钮未选中状态" selectedImage:@"菜单栏购物车按钮选中状态"];
//    [self setupChildVc:[[SXTForeViewController alloc] init] title:@"我的" image:@"菜单栏我的按钮未选中状态" selectedImage:@"菜单栏我的按钮选中状态"];
    
    NSMutableArray *controllersArray = [NSMutableArray arrayWithCapacity:self.viewControllersArray.count];
    
    [self.viewControllersArray enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        //
        
        Class viewControllersClass = NSClassFromString(dict[@"UIViewControllerName"]);
        UIViewController *viewController = [[viewControllersClass alloc]init];
        viewController.title = dict[@"title"];
        viewController.tabBarItem.image = [[UIImage imageNamed:dict[@"image"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:dict[@"selectedImage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        SXTNavigationController *nav = [[SXTNavigationController alloc]initWithRootViewController:viewController];
        [controllersArray addObject:nav];
    }];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                        NSFontAttributeName:[UIFont systemFontOfSize:12],
                                        NSForegroundColorAttributeName:[UIColor grayColor]
                                                        }forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                       NSFontAttributeName:[UIFont systemFontOfSize:12],
                                                       NSForegroundColorAttributeName:RGBA(69, 179, 241, 1)
                                                       }forState:UIControlStateSelected];
    
    self.viewControllers = controllersArray;
    

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
