//
//  DogHeightComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "DogHeightComparator.h"

@implementation DogHeightComparator
- (int)compareTo:(Dog  *)dog1 obj2:(Dog *)dog2 {
    
    if(dog1.height < dog2.height) return -1;
    else if(dog1.height > dog2.height) return 1;
    return 0;
}
@end
