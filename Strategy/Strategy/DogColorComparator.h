//
//  DogColorComparator.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Comparator.h"
NS_ASSUME_NONNULL_BEGIN

@interface DogColorComparator : NSObject <Comparator>
- (int)compareTo:(Dog *)dog1 obj2:(Dog *)dog2;
@end

NS_ASSUME_NONNULL_END
