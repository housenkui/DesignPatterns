//
//  Dog.m
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (instancetype)initWithHeight:(int)height weight:(int)weight price:(int)price color:(int)color {
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
        self.price = price;
        self.color = color;
    }
    return self;
}


- (int)compare:(Dog <DogComparable> *)dog WithParamter:(ComparableParamter )paramter {
    if (paramter == DogHeight)
    {
        if(self.height < dog.height) return -1;
        else if(self.height > dog.height) return 1;
        return 0;
    }
    else if(paramter == DogWeight)
    {
        if(self.weight < dog.weight) return -1;
        else if(self.weight > dog.weight) return 1;
        return 0;
    }
    else if(paramter == DogPrice)
    {
        if(self.price < dog.price) return -1;
        else if(self.price > dog.price) return 1;
        return 0;
    }
    else
    {
        if(self.color < dog.color) return -1;
        else if(self.color > dog.color) return 1;
        return 0;
    }
    return  0;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"dog height = %d  weight = %d  price = %d color = %d",self.height,self.weight,self.price,self.color];
}
@end
