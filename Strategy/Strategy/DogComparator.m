//
//  DogComparator.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "DogComparator.h"

@implementation DogComparator

- (int)compareTo:(Dog <Comparable> *)dog1 obj2:(Dog <Comparable> *)dog2 {
    
    if(dog1.food < dog2.food) return -1;
    else if(dog1.food > dog2.food) return 1;
    return 0;
}

@end
