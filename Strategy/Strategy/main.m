//
//  main.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"
#import "Sorter.h"

#import "CatWeightComparator.h"
#import "CatHeightComparator.h"
#import "DogPriceComparator.h"
#import "DogColorComparator.h"
@interface MBCollection<__covariant T>: NSObject

@property (nonatomic, readonly) NSMutableArray <T> *elements;

- (void)addObject:(T)object;

- (BOOL)insertObject:(T)object atIndex: (NSUInteger)index;
- (int)compareTo:(id <Comparable>)obj1 obj2:(id <Comparable>)obj2;

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"策略模式");
        
        NSMutableArray *mdogArray = [NSMutableArray array];
        for (int i = 5; i > 0 ; i-- ) {
            Dog *dog = [[Dog alloc]initWithHeight:arc4random()%10 weight:arc4random()%10 price:arc4random()%10 color:arc4random()%10];
            [mdogArray addObject:dog];
        }
        
        
        for (Dog *dog  in mdogArray) {
            NSLog(@"%@",[dog description]);
        }
        
        Sorter *dogSorter = [[Sorter alloc]init];
        [dogSorter sort:mdogArray comparator:[DogColorComparator new]];
        //          [dogSorter sortDogWithHeigthCompare:mdogArray];
        NSLog(@"排序后------------");
        for (Dog *dog  in mdogArray) {
            NSLog(@"%@",[dog description]);
        }
        
        
//        NSMutableArray *mcatArray = [NSMutableArray array];
//        for (int i = 5; i > 0 ; i -- ) {
//            Cat *cat = [[Cat alloc]initWithHeight:i weight:i];
//            [mcatArray addObject:cat];
//        }
//
//        for (Cat *cat in mcatArray) {
//            NSLog(@"%@",[cat description]);
//        }
//
//        Sorter *sorter = [[Sorter alloc]init];
//        [sorter sort:mcatArray comparator:[CatHeightComparator new]];
//        [sorter sortCatWithHeigthCompare:mcatArray];
//        [sorter sortCatWithWeigthCompare:mcatArray];
//        for (Cat *cat in mcatArray) {
//            NSLog(@"%@",[cat description]);
//        }
               
//        NSMutableArray *array = [NSMutableArray arrayWithArray:@[@2,@1,@3,@5,@9,@7]];
//        NSLog(@"array = %@",array);
//        Sorter *sorter = [[Sorter alloc]init];
//        [sorter sort:array];
//        NSLog(@"array = %@",array);
        
    }
    return 0;
}

