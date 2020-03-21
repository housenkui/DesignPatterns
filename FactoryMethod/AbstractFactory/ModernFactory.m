//
//  ModernFactory.m
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "ModernFactory.h"
#import "Car.h"
#import "AK47.h"
#import "Bread.h"
@implementation ModernFactory
- (id)createFood {
    return [Bread new];
}
- (id )createVehicle {
     return [Car new];
}
- (id )createWeapon {
     return [AK47 new];
}
@end
