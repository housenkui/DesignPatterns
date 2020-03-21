//
//  Sorter.m
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter
/*
 添加新的比较，就需要更改Sorter的代码
 */
- (void)sortDog:(NSMutableArray <id <DogComparable> > *)array withParamter:(DogComparableParamter )paramter {
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compare:array[minPos] withParamter:paramter] == -1 ? j : minPos;
        }
        [self swapWithDog:array i:i j:minPos];
    }
}

- (void)swapWithDog:(NSMutableArray <id <DogComparable> > *)arr i:(int)i j:(int)j {
    id <DogComparable>  temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

- (void)sortCat:(NSMutableArray <id <CatComparable> > *)array withParamter:(CatComparableParamter )paramter {
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compare:array[minPos] withParamter:paramter] == -1 ? j : minPos;
        }
        [self swapWithCat:array i:i j:minPos];
    }
}

- (void)swapWithCat:(NSMutableArray <id <CatComparable> > *)arr i:(int)i j:(int)j {
    id <CatComparable>  temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}
@end
