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
@interface MBCollection<__covariant T>: NSObject

@property (nonatomic, readonly) NSMutableArray <T> *elements;

- (void)addObject:(T)object;

- (BOOL)insertObject:(T)object atIndex: (NSUInteger)index;

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"策略模式");
        
        NSMutableArray *mdogArray = [NSMutableArray array];
        for (int i = 5; i > 0 ; i-- ) {
            Dog *dog = [[Dog alloc]initWithFood:i];
            [mdogArray addObject:dog];
        }
        
        
        for (Dog *dog  in mdogArray) {
            NSLog(@"%@",[dog description]);
        }
        
        Sorter *dogSorter = [[Sorter alloc]init];
        [dogSorter sort:mdogArray];
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
//        [sorter sort:mcatArray];
//        for (Cat *cat in mcatArray) {
//            NSLog(@"%@",[cat description]);
//        }
               
//        Dog *dog0 = [[Dog alloc]initWithHeight:1 weight:1];
//        Dog *dog1 = [[Dog alloc]initWithHeight:2 weight:2];
//        Dog *dog2 = [[Dog alloc]initWithHeight:3 weight:3];
//        Dog *dog3 = [[Dog alloc]initWithHeight:4 weight:4];
//
//        NSArray <Dog *> *dogArray = @[dog3,dog2,dog0,dog1];
//
//        NSMutableArray *mdogArray = [NSMutableArray arrayWithArray:dogArray];
//
//        for (Dog *dog in mdogArray) {
//            NSLog(@"%@",[dog description]);
//        }
//
//        selectSortDogArray(mdogArray);
//
//        for (Dog *dog in mdogArray) {
//            NSLog(@"%@",[dog description]);
//        }
        
//        NSMutableArray *array = [NSMutableArray arrayWithArray:@[@2,@1,@3,@5,@9,@7]];
//        NSLog(@"array = %@",array);
//        Sorter *sorter = [[Sorter alloc]init];
//        [sorter sort:array];
//        NSLog(@"array = %@",array);
        
    }
    return 0;
}

