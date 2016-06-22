//
//  SXTInputBottomView.m
//  01_Text_Project
//
//  Created by ma c on 16/6/21.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "SXTInputBottomView.h"
#import "PrefixHeader.pch"

@interface SXTInputBottomView ()

@property (nonatomic, strong) UILabel *lineLab;
/**  */
@property (nonatomic, strong) UILabel *textLab;
/**  */
@property (nonatomic, strong) UIButton *QQBtn;
/**  */
@property (nonatomic, strong) UIButton *weixinBtn;
/**  */
@property (nonatomic, strong) UIButton *weiboBtn;

@end

@implementation SXTInputBottomView

#pragma mark -
#pragma mark lifecycle
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.lineLab];
        [self addSubview:self.textLab];
        [self addSubview:self.QQBtn];
        [self addSubview:self.weixinBtn];
        [self addSubview:self.weiboBtn];
        
    }
    return self;
}

#pragma mark -
#pragma mark init method
- (UILabel *)lineLab{
    if (!_lineLab) {
        _lineLab = [[UILabel alloc] init];
        _lineLab.backgroundColor = RGBA(80, 80, 80, 0);
    }
    return _lineLab;
}

- (UILabel *)textLab{
    if (!_textLab) {
        _textLab = [[UILabel alloc] init];
        [_textLab setText:@"一键登录"];
        [_textLab setTextColor:RGBA(80, 80, 80, 0)];
    }
    return _textLab;
}

- (UIButton *)QQBtn{
    if (!_QQBtn) {
        _QQBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_QQBtn setBackgroundImage:[UIImage imageNamed:@"注册界面QQ登录"] forState:UIControlStateNormal];
    }
    return _QQBtn;
}

- (UIButton *)weiboBtn{
    if (!_weiboBtn) {
        _weiboBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_weiboBtn setBackgroundImage:[UIImage imageNamed:@"注册界面微博登录"] forState:UIControlStateNormal];
    }
    return _weiboBtn;
}

- (UIButton *)weixinBtn{
    if (!_weixinBtn) {
    _weixinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_weixinBtn setBackgroundImage:[UIImage imageNamed:@"注册界面微信登录"] forState:UIControlStateNormal];
    }
    return _weixinBtn;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self) weakSelf = self;
    [_lineLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top);
        make.left.equalTo(weakSelf.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.height.mas_equalTo(1);
    }];
    [_textLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(weakSelf.lineLab.center);
        make.size.mas_equalTo(CGSizeMake(80, 16));
    }];
    
    [_weixinBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.textLab.mas_top).offset(20);
        make.centerX.mas_equalTo(weakSelf.mas_centerX);
        make.size.mas_equalTo(45);
    }];
    [_QQBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.textLab.mas_top).offset(20);
        make.right.equalTo(weakSelf.weixinBtn.mas_left).offset(-60);
        make.size.mas_equalTo(45);
    }];
    [_weiboBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.textLab.mas_top).offset(20);
        make.left.equalTo(weakSelf.weixinBtn.mas_right).offset(60);
        make.size.mas_equalTo(45);
    }];
}
@end
