//
//  DogComparableParamter.m
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    DogHeight = 1 << 0,
    DogWeight = 1 << 1,
    DogPrice = 1  << 2,
    DogColor = 1  << 3,
}ComparableParamter;//可以比较的参数
