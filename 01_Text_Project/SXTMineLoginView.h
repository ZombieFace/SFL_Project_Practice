//
//  SXTMineLoginView.h
//  项目练习
//
//  Created by ma c on 16/6/16.
//  Copyright (c) 2016年 bjsxt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^loginBlock) ();
typedef void(^landingBlock) ();

@interface SXTMineLoginView : UIView

@property(copy,nonatomic)landingBlock landingBlock;
@property(copy,nonatomic)loginBlock loginBlock;



@end
