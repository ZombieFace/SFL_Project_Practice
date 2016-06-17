//
//  SXTinputView.m
//  项目练习
//
//  Created by ma c on 16/6/16.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTinputView.h"
#import "PrefixHeader.pch"
//#import "Masonry.h"

@interface SXTinputView ()<UITextFieldDelegate>

@property (nonatomic, strong) UILabel *backLab;
/**  */
@property (nonatomic, strong) UITextField *nameField;
/**  */
@property (nonatomic, strong) UITextField *passField;
/**  */
@property (nonatomic, strong) UILabel *lineLab;
/**  */
@property (nonatomic, strong) UIButton *landingBtn;
/**  */
@property (nonatomic, strong) UIButton *loginBtn;


@end

@implementation SXTinputView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
       
        [self addSubview:self.backLab];
        [self addSubview:self.lineLab];
        [self addSubview:self.nameField];
        [self addSubview:self.passField];
        [self addSubview:self.landingBtn];
        [self addSubview:self.loginBtn];
    }
    return self;
}
#pragma mark -
#pragma mark 约束
- (void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self)weakSelf = self;
    [self.backLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(15);
        make.left.equalTo(weakSelf.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.height.mas_equalTo(88);
    }];
    
    [self.lineLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.height.mas_equalTo(1);
        make.centerY.equalTo(weakSelf.backLab.mas_centerY);
    }];
    
    [self.nameField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLab.mas_top);
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
       make.bottom.equalTo(weakSelf.lineLab.mas_top);
    }];
    
    [self.passField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.lineLab.mas_bottom);
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.bottom.equalTo(weakSelf.backLab.mas_bottom);
//        make.height.mas_equalTo(44);
    }];

    
        [self.landingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.backLab.mas_bottom).offset(15);
        make.left.equalTo(weakSelf.mas_left).offset(16);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        make.height.mas_equalTo(35);
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(weakSelf.landingBtn.mas_bottom).offset(20);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(20);
    }];
    
    }


#pragma mark -
#pragma mark init 懒加载
- (UILabel *)backLab{
    if (!_backLab) {
        _backLab = [[UILabel alloc]init];
        _backLab.backgroundColor = [UIColor whiteColor];
        _backLab.layer.borderColor = RGBA(200, 198, 104, 1).CGColor;
        _backLab.layer.borderWidth = 1;
    }
    return _backLab;
}

- (UITextField *)nameField{
    if (!_nameField) {
        _nameField = [[UITextField alloc]init];
        _nameField.delegate = self;
        //占位文字
        _nameField.placeholder = @"请输入手机号码";
        //数字键盘
        _nameField.keyboardType = UIKeyboardTypeNumberPad;
    }
    return _nameField;
}

- (UITextField *)passField{
    if (!_passField) {
        _passField = [[UITextField alloc] init];
        _passField.delegate = self;
        _passField.placeholder = @"请输入密码";
        //密文输入
        _passField.secureTextEntry = YES;
    }
    return _passField;
}

- (UILabel *)lineLab{
    if (!_lineLab) {
        _lineLab = [[UILabel alloc]init];
//        _backLab.backgroundColor = [UIColor blackColor];
        _lineLab.backgroundColor = RGBA(200, 198, 104, 1);
    }
    return _lineLab;
}

- (UIButton *)landingBtn{
    if (!_landingBtn) {
        _landingBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_landingBtn setTitle:@"登录" forState:UIControlStateNormal];
        [_landingBtn addTarget:self action:@selector(landingBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _landingBtn;
}

- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginBtn setTitle:@"免费注册" forState:UIControlStateNormal];
        [_loginBtn addTarget:self action:@selector(loginBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginBtn;
}


#pragma mark -
#pragma mark Button点击事件
- (void)landingBtnClick{
    NSLog(@"点击了登录");
}

- (void)loginBtnClick{
    NSLog(@"点击了注册");
}

@end
