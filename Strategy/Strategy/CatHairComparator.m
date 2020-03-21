//
//  CatHairComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "CatHairComparator.h"

@implementation CatHairComparator
- (int)compareTo:(Cat *)cat1 obj2:(Cat  *)cat2 {
    if (cat1.hair < cat2.hair) {
        return -1;
    }else if (cat1.hair > cat1.hair) {
        return 1;
    }
    return 0;
}
@end
