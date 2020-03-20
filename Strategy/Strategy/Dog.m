//
//  Dog.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (instancetype)initWithHeight:(int)height
                       weight:(int)weight
{
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"dog %d %d",self.height,self.weight];
}

//int compareto(Dog *dog){
//
//}
@end
