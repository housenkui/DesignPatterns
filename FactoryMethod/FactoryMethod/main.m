//
//  main.m
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Weapon.h"
#import "Vehicle.h"
#import "ModernFactory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"抽象工厂模式");
        AbstractFactory *abstractFactory = [ModernFactory new];
        
        Vehicle *vehicle = [abstractFactory createVehicle];
        [vehicle go];
        
        Weapon *weapon = [abstractFactory createWeapon];
        
        [weapon shoot];
        
        Food * food = [abstractFactory createFood];
        [food printName];
        
    }
    return 0;
}
