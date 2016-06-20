//
//  SXTMineTableObject.m
//  01_Text_Project
//
//  Created by ma c on 16/6/20.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import "SXTMineTableObject.h"

@implementation SXTMineTableObject

+ (NSArray *)loadDataArray{
    
    NSString *file = [[NSBundle mainBundle] pathForResource:@"Mine_table" ofType:@"plist"];
    NSArray *data = [NSArray arrayWithContentsOfFile:file];
    
    NSMutableArray *dataList = [NSMutableArray array];
    
    for (NSDictionary *dict in data) {
        SXTMineTableObject *tableObject = [[SXTMineTableObject alloc]init];
        [tableObject setValuesForKeysWithDictionary:dict];
        [dataList addObject:tableObject];
        
    }
    return dataList;
}

@end
