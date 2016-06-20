//
//  SXTMineTableObject.h
//  01_Text_Project
//
//  Created by ma c on 16/6/20.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SXTMineTableObject : NSObject

/**  */
@property (nonatomic, copy) NSString *icon;
/**  */
@property (nonatomic, copy) NSString *title;

+ (NSArray *)loadDataArray;

@end
