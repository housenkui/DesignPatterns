//
//  Sorter.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparator.h"
NS_ASSUME_NONNULL_BEGIN
@interface Sorter : NSObject

/*
 sorter类应该做到尽可能的抽象，就是说它不应该关心比较的细节；
 比如它不应该关心猫的身度、猫的体重、狗的体重、狗的身高，人的身高，人的体重，羊的身高，羊的体重
 具体的比较细节交给 具体的比较器去处理。这样更符合设计模式的单一职责的原则,也更方便后期的更新，添加新的比较，不需要更改
 Sorter类的代码
 */

/// 接收一个数组 和比较策略
/// @param array 待排序数组
/// @param comparator 比较策略
- (void)sort:(NSMutableArray <id> *)array comparator:(id <Comparator>)comparator;

@end

NS_ASSUME_NONNULL_END
