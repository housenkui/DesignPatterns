//
//  Child.m
//  Observer_v2.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Child.h"
#import "Dad.h"
#import "Mum.h"
#import "Dog.h"
@interface Child()
@property (nonatomic,strong)Dad *dad;
@property (nonatomic,strong)Mum *mum;
@property (nonatomic,strong)Dog *dog;
@end

@implementation Child
- (instancetype)init {
    if (self = [super init] ) {
        self.cry = false;
        self.dad = [Dad new];
        self.dog = [Dog new];
        self.mum = [Mum new];
    }
    return self;
}

- (BOOL)isCry {
    return self.cry;
}
- (void)wakeUp {
    NSLog(@"Waked Up! Crying wuwuwuw.....");
    self.cry = true;
    [self.dad feed];
    [self.dog wang];
    [self.mum hug];
}
@end
