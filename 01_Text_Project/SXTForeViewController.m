//
//  SXTForeViewController.m
//  项目练习
//
//  Created by ma c on 16/6/15.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTForeViewController.h"
#import "SXTMineLoginView.h"
#import "SXTMineTableObject.h"
#import "SXTMineTableViewCell.h"

static NSString *cellID = @"cellID";

@interface SXTForeViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)NSArray *dataList;

@end

@implementation SXTForeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark init
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = self.view.frame;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.sectionHeaderHeight = 140;
        _tableView.separatorInset = UIEdgeInsetsMake(0, 15, 0, 0);
        _tableView.separatorColor = [UIColor lightGrayColor];
        _tableView.rowHeight = 44;
        
         [_tableView registerClass:[SXTMineTableViewCell class] forCellReuseIdentifier:cellID];
        
        SXTMineLoginView *headerView = [[SXTMineLoginView alloc] init];
        headerView.frame = CGRectMake(0, 0, 0, 120);
        headerView.viewer = self;
        _tableView.tableHeaderView = headerView;
    }
    return _tableView;
}

- (NSArray *)dataList{
    if (!_dataList) {
        _dataList = [SXTMineTableObject loadDataArray];
        
    }
    return _dataList;
}

#pragma mark -
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.dataList.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    SXTMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    SXTMineTableObject *object = _dataList[indexPath.row];
    [cell setObject:object];
    
    
    return cell;
}

@end
