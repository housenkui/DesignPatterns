//
//  CatComparable.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Cat.h"
NS_ASSUME_NONNULL_BEGIN

@protocol CatComparable <NSObject>
- (int)compareWithHeigth:(id <CatComparable> )cat;
- (int)compareWithWeigth:(id <CatComparable> )cat;
@end

NS_ASSUME_NONNULL_END
