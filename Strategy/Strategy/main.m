//
//  main.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Sorter.h"
#define ARRAY_SIZE(x) (sizeof(x)/sizeof((x)[0]))
//@interface MBCollection<__covariant T>: NSObject
//
//@property (nonatomic, readonly) NSMutableArray <T> *elements;
//
//- (void)addObject:(T)object;
//
//- (BOOL)insertObject:(T)object atIndex: (NSUInteger)index;
//
//@end
void swapInt(int arr[],int i,int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

void selectSortInt(int a[]){
    int count = sizeof(a)/sizeof(a[0]);
    for ( int i = 0; i < count; i++) {
        for (int j=i+1; j < count; j++) {//当i= 0是，a[0]将会与a[1]~a[n-1]进行比较
            if (a[j] <  a[i]) {
                swapInt(a, i, j);
            }
        }
    }
}

void swapDogArray(NSMutableArray <Dog *> *array,int i,int j) {
    Dog *temp = array[i];
    array[i]  = array[j];
    array[j]  = temp;
}

void selectSortDogArray(NSMutableArray <Dog *> *array){
    
    for ( int i = 0; i < array.count ; i++) {
        for (int j = i+1; j < array.count; j++) {//当i= 0是，a[0]将会与a[1]~a[n-1]进行比较
            if (array[j].height < array[i].height) {
                swapDogArray(array, i, j);
            }
        }
    }
}

//void printArr(int a[]) {
//    int sizeOfArr = sizeof(*a);
//    int sizeOfCell = sizeof(a[0]);
//
//    int count = sizeof(&a)/sizeof(a[0]);
//
//    for (int i = 0 ; i < count; i++) {
//        printf("%d",a[i]);
//    }
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"策略模式");
        
        NSMutableArray *mdogArray = [NSMutableArray array];
        for (int i = 0; i< 5 ; i++ ) {
            Dog *dog = [[Dog alloc]initWithHeight:i weight:i];
            [mdogArray addObject:dog];
        }
        
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
        
        NSMutableArray *array = [NSMutableArray arrayWithArray:@[@2,@1,@3,@5,@9,@7]];
        NSLog(@"array = %@",array);
        Sorter *sorter = [[Sorter alloc]init];
        [sorter sort:array];
        NSLog(@"array = %@",array);
        
    }
    return 0;
}

