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
                        weight:(int)weight {
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
    }
    return self;
}

- (instancetype)initWithPrice:(int)price color:(int)color {
    if (self = [super init]) {
        self.price = price;
        self.color = color;
    }
    return self;
}

- (instancetype)initWithFood:(int)food {
    if (self = [super init]) {
        self.food = food;
    }
    return self;
}

- (int)compareTo:(Dog <Comparable> *)dog {

    if(self.food < dog.food) return -1;
    else if(self.food > dog.food) return 1;
    return 0;
}

- (int)compareWithHeigth:(Dog <DogComparable> *)dog {
    if(self.height < dog.height) return -1;
    else if(self.height > dog.height) return 1;
    return 0;
}
- (int)compareWithWeigth:(Dog <DogComparable> *)dog {
    if(self.weight < dog.weight) return -1;
    else if(self.weight > dog.weight) return 1;
    return 0;
}

- (int)compareWithPrice:(Dog <DogComparable> *)dog {
    if(self.price < dog.price) return -1;
    else if(self.price > dog.price) return 1;
    return 0;
}
- (int)compareWithColor:(Dog <DogComparable> *)dog {
    if(self.color < dog.color) return -1;
    else if(self.color > dog.color) return 1;
    return 0;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"dog %d %d",self.height,self.weight];
}
@end
