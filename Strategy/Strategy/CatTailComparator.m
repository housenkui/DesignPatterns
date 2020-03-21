//
//  CatTailComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "CatTailComparator.h"

@implementation CatTailComparator
- (int)compareTo:(Cat *)cat1 obj2:(Cat  *)cat2 {
    if (cat1.tail < cat2.tail) {
        return -1;
    }else if (cat1.tail > cat1.tail) {
        return 1;
    }
    return 0; 
}
@end
