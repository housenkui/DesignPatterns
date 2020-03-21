//
//  DogComparable.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@protocol DogComparable <NSObject>
- (int)compareWithHeigth:(id<DogComparable>)dog;
- (int)compareWithWeigth:(id<DogComparable>)dog;

- (int)compareWithPrice:(id<DogComparable>)dog;
- (int)compareWithColor:(id<DogComparable>)dog;
@end

NS_ASSUME_NONNULL_END
