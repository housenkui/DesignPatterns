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
#import "MagicFactory.h"

#import "Person.h"
#import "WhitePerson.h"
void createFactory(AbstractFactory * abstractFactory)  {
    Vehicle *vehicle = [abstractFactory createVehicle];//父类的指针 指向子类的实例
    [vehicle go];
    
    Weapon *weapon = [abstractFactory createWeapon];
    [weapon shoot];
    
    Food * food = [abstractFactory createFood];
    [food printName];
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"抽象工厂模式");
        createFactory([ModernFactory new]);
        createFactory([MagicFactory new]);
    }
    return 0;
}
