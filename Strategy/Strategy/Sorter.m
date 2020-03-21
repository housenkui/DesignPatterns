//
//  Sorter.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter

//如果不使用比较器 比较逻辑放在Sorter中，sorter会越来越臃肿，并且它违反了依赖倒置的原则，无法让细节依赖于抽象，反而导致了抽象依赖于细节

- (void)sort:(NSMutableArray <id> *)array comparator:(id <Comparator> )comparator {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [comparator compareTo:array[j] obj2:array[minPos]] == -1 ? j : minPos;
        }
        [self swap:array i:i j:minPos];
    }
}

- (void)swap:(NSMutableArray <id > *)arr i:(int)i j:(int)j {
    id  temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}
@end
