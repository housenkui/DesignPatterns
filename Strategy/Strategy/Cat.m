//
//  Cat.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (instancetype)initWithHeight:(int)height
                        weight:(int)weight {
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
    }
    return self;
}
- (int)compareTo:(id<Comparable>)obj {
    Cat *cat = (Cat *) obj;
    if(self.weight < cat.weight) return -1;
    else if(self.weight > cat.weight) return 1;
    return 0;
}
- (int)compareWithHeigth:(Cat <Comparable> *)cat {
    
    if(self.height < cat.height) return -1;
    else if(self.height > cat.height) return 1;
    return 0;
}
- (int)compareWithWeigth:(Cat <Comparable> *)cat {
    if(self.weight < cat.weight) return -1;
    else if(self.weight > cat.weight) return 1;
    return 0;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"cat %d %d",self.height,self.weight];
}

@end
