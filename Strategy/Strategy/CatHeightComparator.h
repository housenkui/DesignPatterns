//
//  CatHeightComparator.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Comparator.h"
NS_ASSUME_NONNULL_BEGIN

@interface CatHeightComparator : NSObject <Comparator>
- (int)compareTo:(Cat <Comparable> *)cat1 obj2:(Cat <Comparable> *)cat2;

@end

NS_ASSUME_NONNULL_END
