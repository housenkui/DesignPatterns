//
//  CatComparableParamter.h
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    CatHair = 1 << 0,
    CatTail = 1 << 1,
    CatIntelligence = 1  << 2,
    CatAge = 1  << 3,
}CatComparableParamter;//猫类可以比较的参数
