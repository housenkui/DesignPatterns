//
//  Comparator.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparable.h"
NS_ASSUME_NONNULL_BEGIN

@protocol Comparator <NSObject>
- (int)compareTo:(id <Comparable> )obj1 obj2:(id <Comparable>)obj2;
@end

NS_ASSUME_NONNULL_END
