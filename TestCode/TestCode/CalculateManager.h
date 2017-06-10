//
//  CalculateManager.h
//  TestCode
//
//  Created by 刘隆昌 on 2017/6/10.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculateManager : NSObject


@property(nonatomic,assign)int result;

-(CalculateManager *(^)(int))add;
-(CalculateManager *(^)(int))sub;
-(CalculateManager *(^)(int))multiple;
-(CalculateManager *(^)(int))divide;

@end
