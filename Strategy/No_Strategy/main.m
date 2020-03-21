//
//  main.m
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Sorter.h"
#import "Cat.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"不使用策略模式");
        NSMutableArray *mdogArray = [NSMutableArray array];
        for (int i = 5; i > 0 ; i-- ) {
            Dog *dog = [[Dog alloc]initWithHeight:arc4random()%10 weight:arc4random()%10 price:arc4random()%10 color:arc4random()%10];
            [mdogArray addObject:dog];
        }
        
        for (Dog *dog  in mdogArray) {
            NSLog(@"%@",[dog description]);
        }
        
        Sorter *dogSorter = [[Sorter alloc]init];
        [dogSorter sortDog:mdogArray WithParamter:DogWeight];
        NSLog(@"排序后---------");
        for (Dog *dog  in mdogArray) {
            NSLog(@"%@",[dog description]);
        }
        
        
        NSMutableArray *mCatArray = [NSMutableArray array];
        for (int i = 5; i > 0 ; i-- ) {
            Cat *cat = [[Cat alloc]initWithHair:arc4random()%10 tail:arc4random()%10 intelligence:arc4random()%10 age:arc4random()%10];
            [mCatArray addObject:cat];
        }
        
        for (Cat *cat  in mCatArray) {
            [cat description];
        }
        
        Sorter *catSorter = [[Sorter alloc]init];
        [catSorter sortCat:mCatArray WithParamter:CatHair];
        NSLog(@"排序后---------");
        for (Cat *cat  in mCatArray) {
            [cat description];
        }
        
    }
    return 0;
}
