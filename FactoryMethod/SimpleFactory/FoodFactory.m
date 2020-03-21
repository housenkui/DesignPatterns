//
//  FoodFactory.m
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "FoodFactory.h"
#import "Bread.h"
#import "MushRoom.h"
@implementation FoodFactory
- (id <Food>)createBread {
    return [Bread new];
}
- (id <Food>)createMushRoom {
    return [MushRoom new];
}
@end
