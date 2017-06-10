//
//  NSObject+Caculator.h
//  TestCode
//
//  Created by 刘隆昌 on 2017/6/10.
//  Copyright © 2017年 刘隆昌. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CalculateManager.h"


@class CaculatorMaker;



@interface NSObject (Caculator)




+(CGFloat)makeCalculates:(void(^)(CalculateManager*))block;


@end
