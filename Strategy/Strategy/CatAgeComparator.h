//
//  CatAgeComparator.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Comparator.h"
NS_ASSUME_NONNULL_BEGIN

@interface CatAgeComparator : NSObject<Comparator>
- (int)compareTo:(Cat *)cat1 obj2:(Cat  *)cat2;

@end

NS_ASSUME_NONNULL_END
