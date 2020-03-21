//
//  CatIntelligenceComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "CatIntelligenceComparator.h"

@implementation CatIntelligenceComparator
- (int)compareTo:(Cat *)cat1 obj2:(Cat  *)cat2 {
    if (cat1.intelligence < cat2.intelligence) {
        return -1;
    }else if (cat1.intelligence > cat1.intelligence) {
        return 1;
    }
    return 0;
}
@end
