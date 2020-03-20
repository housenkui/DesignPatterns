//
//  Sorter.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparable.h"
#import "Comparator.h"

NS_ASSUME_NONNULL_BEGIN
@interface Sorter <T>: NSObject



/// 接收一个数组 和比较策略
/// @param array 待排序数组
/// @param comparator 比较策略
- (void)sort:(NSMutableArray <id <Comparable>> *)array comparator:(id <Comparator>)comparator;

- (void)sort:(NSMutableArray <id <Comparable>> *)array;
@end

NS_ASSUME_NONNULL_END
