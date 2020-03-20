//
//  Sorter.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Sorter.h"
#import "Cat.h"
@implementation Sorter
- (void)sort:(NSMutableArray <Cat *> *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareTo:array[minPos]] == -1 ? j : minPos;
        }
        [self swap:array i:i j:minPos];
    }
}

- (void)swap:(NSMutableArray <Cat *> *)arr i:(int)i j:(int)j {
    Cat *temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}
@end
