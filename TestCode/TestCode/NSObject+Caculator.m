//
//  NSObject+Caculator.m
//  TestCode
//
//  Created by 刘隆昌 on 2017/6/10.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

#import "NSObject+Caculator.h"

@implementation NSObject (Caculator)


+(CGFloat)makeCalculates:(void(^)(CalculateManager*))block{
    //创建计算管理者
    CalculateManager * mgr = [[CalculateManager alloc] init];
    block(mgr);
    return mgr.result;
}




@end
