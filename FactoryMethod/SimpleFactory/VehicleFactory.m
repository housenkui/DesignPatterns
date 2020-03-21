//
//  VehicleFactory.m
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "VehicleFactory.h"
#import "Car.h"
#import "Broom.h"
@implementation VehicleFactory
- (id <Moveable>)createCar {
    return [Car new];
}
- (id <Moveable>)createBroom {
    return [Broom new];
}
@end
