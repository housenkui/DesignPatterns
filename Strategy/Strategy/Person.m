//
//  Person.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)initWithHeight:(int)height
                        weight:(int)weight {
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"cat %d %d",self.height,self.weight];
}
@end
