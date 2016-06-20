//
//  SXTMineTableViewCell.m
//  01_Text_Project
//
//  Created by ma c on 16/6/20.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTMineTableViewCell.h"
#import "PrefixHeader.pch"

@interface SXTMineTableViewCell ()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UIImageView *rightView;
//@property (nonatomic, strong) UIImage

@end

@implementation SXTMineTableViewCell



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


#pragma mark -
#pragma mark init
- (UILabel *)titleLab{
    if (!_titleLab) {
        _titleLab = [[UILabel alloc]init];
        _titleLab.font = [UIFont systemFontOfSize:15];
        _titleLab.textColor = [UIColor blackColor];
    }
    return _titleLab;
}

- (UIImageView *)iconView{
    if (!_iconView) {
        _iconView = [[UIImageView alloc]init];
    }
    return _iconView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLab];
        [self.contentView addSubview:self.iconView];
        
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    __weak typeof (self) weakSelf = self;
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.centerY.equalTo(weakSelf);
        make.size.mas_equalTo(20);
    }];
 
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.iconView.mas_right).offset(15);
        make.top.equalTo(weakSelf.mas_top).offset(15);
        make.size.mas_equalTo(CGSizeMake(150, 15));
    }];
    
}

- (void)setObject:(SXTMineTableObject *)object{
    _object = object;
    self.titleLab.text = object.title;
    self.iconView.image = [UIImage imageNamed:object.icon];
}

@end
