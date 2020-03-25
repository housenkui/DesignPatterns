//
//  PersonBuilder.m
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "PersonBuilder.h"

@interface PersonBuilder ()
@property (nonatomic,strong)Person *person;
@end
@implementation PersonBuilder
- (PersonBuilder *)basicInfo:(int)Id name:(NSString *)name age:(int)age {
    self.person.Id = Id;
    self.person.name = name;
    self.person.age = age;
    return self;
}

- (PersonBuilder *)weight:(double)weight {
    self.person.weight = weight;
    return self;
}
- (PersonBuilder *)score:(int)score {
    self.person.score = score;
    return self;
}
- (PersonBuilder *)loc:(NSString *)street roomNo:(NSString *)roomNo {
    Loction *loc = [[Loction alloc]initWithLocation:street roomNo:roomNo];
    self.person.loc = loc;
    return self;
}

- (Person *)build {
    return self.person;
}

- (Person *)person {
    if (!_person) {
        _person = [Person new];
    }
    return _person;
}
@end
