//
//  CatWeightComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "CatWeightComparator.h"

@implementation CatWeightComparator
- (int)compareTo:(Cat <Comparable> *)cat1 obj2:(Cat <Comparable> *)cat2 {
    if (cat1.weight < cat2.weight) {
        return -1;
    }else if (cat1.weight > cat1.weight) {
        return 1;
    }
    return 0;
}
@end
