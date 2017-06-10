//
//  CaculatorMaker.h
//  TestCode
//
//  Created by 刘隆昌 on 2017/6/10.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorMaker : NSObject

@property(nonatomic,assign)int result;
//加法
-(CaculatorMaker* (^)(int))add;
-(CaculatorMaker* (^)(int))sub;
-(CaculatorMaker* (^)(int))muilt;
-(CaculatorMaker* (^)(int))divide;



@end
