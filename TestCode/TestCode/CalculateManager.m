//
//  CalculateManager.m
//  TestCode
//
//  Created by 刘隆昌 on 2017/6/10.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

#import "CalculateManager.h"

@implementation CalculateManager


-(CalculateManager *(^)(int))add{
    return ^CalculateManager *(int value){
        
        _result += value;
        return self;
    };
}

-(CalculateManager *(^)(int))sub{
    
    return ^CalculateManager *(int value){
        _result -= value;
        return self;
    };
}

-(CalculateManager *(^)(int))multiple{
    return ^CalculateManager *(int value){
        _result *= value;
        return self;
    };
}

-(CalculateManager *(^)(int))divide{
    return ^CalculateManager*(int value){
        _result /= value;
        return self;
    };
}








@end
