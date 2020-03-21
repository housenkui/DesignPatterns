//
//  Sorter.h
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DogComparable.h"
#import "CatComparable.h"
NS_ASSUME_NONNULL_BEGIN

@interface Sorter : NSObject

- (void)sortDog:(NSMutableArray <id <DogComparable> > *)array withParamter:(DogComparableParamter )paramter;

- (void)sortCat:(NSMutableArray <id <CatComparable> > *)array withParamter:(CatComparableParamter )paramter;

@end

NS_ASSUME_NONNULL_END
