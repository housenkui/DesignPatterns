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
- (void)sort:(NSMutableArray <id <Comparable>> *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareTo:array[minPos]] == -1 ? j : minPos;
        }
        [self swap:array i:i j:minPos];
    }
}

- (void)sortCatWithHeigthCompare:(NSMutableArray <Cat <CatComparable> * > *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareWithHeigth:array[minPos]] == -1 ? j : minPos;
        }
        [self swapWithCat:array i:i j:minPos];
    }
}

- (void)sortCatWithWeigthCompare:(NSMutableArray <Cat <CatComparable> * > *)array {
    for (int i = 0; i< array.count ; i++) {
           int minPos = i;
           for (int j= i+1;j < array.count; j ++) {
               minPos = [array[j] compareWithWeigth:array[minPos]] == -1 ? j : minPos;
           }
           [self swapWithCat:array i:i j:minPos];
       }
}

- (void)swapWithCat:(NSMutableArray <Cat <CatComparable> *> *)arr i:(int)i j:(int)j {
    Cat <CatComparable> *temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}


- (void)sortDogWithHeigthCompare:(NSMutableArray <Dog <DogComparable> * > *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareWithHeigth:array[minPos]] == -1 ? j : minPos;
        }
        [self swapWithDog:array i:i j:minPos];
    }
}

- (void)sortDogWithWeigthCompare:(NSMutableArray <Dog <DogComparable> *> *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareWithWeigth:array[minPos]] == -1 ? j : minPos;
        }
        [self swapWithDog:array i:i j:minPos];
    }
}

- (void)sortDogWithPriceCompare:(NSMutableArray <Dog <DogComparable> * > *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareWithPrice:array[minPos]] == -1 ? j : minPos;
        }
        [self swapWithDog:array i:i j:minPos];
    }
}

- (void)sortDogWithColorCompare:(NSMutableArray <Dog <DogComparable> * > *)array {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [array[j] compareWithColor:array[minPos]] == -1 ? j : minPos;
        }
        [self swapWithDog:array i:i j:minPos];
    }
}

- (void)swapWithDog:(NSMutableArray <Dog <DogComparable> *> *)arr i:(int)i j:(int)j {
    Dog <DogComparable> *temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}


- (void)sort:(NSMutableArray <id <Comparable>> *)array comparator:(id <Comparator> )comparator {
    
    for (int i = 0; i< array.count ; i++) {
        int minPos = i;
        for (int j= i+1;j < array.count; j ++) {
            minPos = [comparator compareTo:array[j] obj2:array[minPos]] == -1 ? j : minPos;
        }
        [self swap:array i:i j:minPos];
    }
}

- (void)swap:(NSMutableArray <id <Comparable>> *)arr i:(int)i j:(int)j {
    id <Comparable> temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}
@end
