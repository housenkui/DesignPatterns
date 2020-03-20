//
//  DogComparator.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Comparator.h"
NS_ASSUME_NONNULL_BEGIN

@interface DogComparator : NSObject <Comparator>
- (int)compareTo:(Dog <Comparable> *)dog1 obj2:(Dog <Comparable> *)dog2;
@end

NS_ASSUME_NONNULL_END
