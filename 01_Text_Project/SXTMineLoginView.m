//
//  SXTMineLoginView.m
//  项目练习
//
//  Created by ma c on 16/6/16.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTMineLoginView.h"
#import "SXTInputViewController.h"
#import "SXTinputView.h"
#import "Masonry.h"

@interface SXTMineLoginView ()

@property (nonatomic, strong) UILabel *backLab;
/**  */
@property (nonatomic, strong) UIButton *landingBtn;
/**  */
@property (nonatomic, strong) UIButton *loginBtn;



@end

@implementation SXTMineLoginView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.backLab];
        [self addSubview:self.landingBtn];
        [self addSubview:self.loginBtn];
    }
    return self;
}





#pragma mark -
#pragma mark init
- (UILabel *)backLab{
    if (!_backLab) {
        _backLab = [[UILabel alloc]init];
        _backLab.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"我的背景"]];
       
    }
    return _backLab;
}

- (UIButton *)landingBtn{
    if (!_landingBtn) {
        _landingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_landingBtn setTitle:@"登陆" forState:UIControlStateNormal];
        _landingBtn.titleLabel.font = [UIFont systemFontOfSize:24];
        [_landingBtn addTarget:self action:@selector(landingBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _landingBtn;
}

- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginBtn setTitle:@"注册" forState:UIControlStateNormal];
        _loginBtn.titleLabel.font = [UIFont systemFontOfSize:24];

        [_loginBtn addTarget:self action:@selector(loginBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _loginBtn;
}
- (void)setViewer:(UIViewController *)viewcontroller{
    
    
    _viewer = viewcontroller;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    __weak typeof (self) weakSelf = self;
    [self.backLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top);
        make.left.equalTo(weakSelf.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.height.mas_equalTo(120
                                );
    }];
    [self.landingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top).offset(50);
        make.left.equalTo(weakSelf.mas_left).offset(100);
        make.size.mas_equalTo(CGSizeMake(70, 40));
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //
        make.top.equalTo(weakSelf.mas_top).offset(50);
        make.right.equalTo(weakSelf.mas_right).offset(-100);
        make.size.mas_equalTo(CGSizeMake(70, 40));
    }];
    
}
#pragma mark -
#pragma mark Button点击事件
- (void)landingBtnClick{
    NSLog(@"点击登陆");
    
        SXTInputViewController  *inputViewVc = [[SXTInputViewController alloc]init];

    [self.viewer.navigationController pushViewController:inputViewVc animated:YES];
    
//    SXTinputView *inputView = [[SXTinputView alloc]init];

}

- (void)loginBtnClick{
    NSLog(@"点击注册");
}


@end
