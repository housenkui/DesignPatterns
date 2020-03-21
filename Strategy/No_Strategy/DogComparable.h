//
//  DogComparable.h
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DogComparableParamter.h"
NS_ASSUME_NONNULL_BEGIN

@protocol DogComparable <NSObject>

- (int)compare:(id<DogComparable>)dog withParamter:(DogComparableParamter )paramter;

@end

NS_ASSUME_NONNULL_END
