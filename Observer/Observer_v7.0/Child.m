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
#import "WakeUpEvent.h"
@interface Child()
@property (nonatomic,strong)Dad *dad;
@property (nonatomic,strong)Mum *mum;
@property (nonatomic,strong)Dog *dog;
@property (nonatomic,strong)NSMutableArray *observers;
@end

@implementation Child
- (instancetype)init {
    if (self = [super init] ) {
        _cry = false;
        _dad = [Dad new];
        _dog = [Dog new];
        _mum = [Mum new];
        _observers = [NSMutableArray arrayWithObjects:_dog,_dad,_mum,nil];
    }
    return self;
}

- (BOOL)isCry {
    return self.cry;
}
- (void)wakeUp {
    NSLog(@"Waked Up! Crying wuwuwuw.....");
    self.cry = true;
    WakeUpEvent *event = [[WakeUpEvent alloc]init];
    [event wakeUpEvent:8 loc:@"bed" child:self];
    
    for (id <Observer> obj in self.observers) {
        [obj actionOnWakeUp:event];
    }
}
@end
