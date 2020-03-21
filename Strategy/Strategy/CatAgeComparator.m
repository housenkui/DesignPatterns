//
//  CatAgeComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "CatAgeComparator.h"

@implementation CatAgeComparator
- (int)compareTo:(Cat *)cat1 obj2:(Cat  *)cat2 {
    if (cat1.age < cat2.age) {
        return -1;
    }else if (cat1.age > cat1.age) {
        return 1;
    }
    return 0;
}
@end
