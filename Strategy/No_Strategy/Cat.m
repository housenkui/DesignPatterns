//
//  Cat.m
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Cat.h"
@implementation Cat
- (instancetype)initWithHair:(int)hair tail:(int)tail intelligence:(int)intelligence age:(int)age {
    if (self = [super init]) {
        self.hair = hair;
        self.tail = tail;
        self.intelligence = intelligence;
        self.age = age;
    }
    return self;
}
- (int)compare:(Cat<CatComparable> *)cat WithParamter:(CatComparableParamter )paramter {
    if (paramter == CatHair) {
        if(self.hair < cat.hair) return -1;
        else if(self.hair > cat.hair) return 1;
        return 0;
    }else if (paramter == CatTail) {
        if(self.tail < cat.tail) return -1;
        else if(self.tail > cat.tail) return 1;
        return 0;
    }else if (paramter == CatIntelligence) {
        if(self.intelligence < cat.intelligence) return -1;
        else if(self.intelligence > cat.intelligence) return 1;
        return 0;
    }else {
        if(self.age < cat.age) return -1;
        else if(self.age > cat.age) return 1;
        return 0;
    }
}
- (void )description {
    NSLog(@"%@", [NSString stringWithFormat:@"cat hair = %d  tail = %d  intelligence = %d age = %d",self.hair,self.tail,self.intelligence,self.age]);
}
@end
