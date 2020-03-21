//
//  Sorter.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter

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
