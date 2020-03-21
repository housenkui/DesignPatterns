//
//  main.m
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Broom.h"
#import "Bread.h"
#import "MushRoom.h"
#import "AK47.h"
#import "MigicStick.h"

#import "VehicleFactory.h"
#import "FoodFactory.h"
#import "WeaponFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"简单工厂模式");
        VehicleFactory *vehicleFactory = [[VehicleFactory alloc]init];
        Car *car  =  [vehicleFactory createCar];
        [car go];
        Broom *broom  =  [vehicleFactory createBroom];
        [broom go];
        
        FoodFactory *foodFactory = [[FoodFactory alloc]init];
        Bread *bread  =  [foodFactory createBread];
        [bread printName];
        MushRoom *mushRoom  =  [foodFactory createMushRoom];
        [mushRoom printName];
        
        WeaponFactory *weaponFactory = [[WeaponFactory alloc]init];
        AK47 *aK47  =  [weaponFactory createAK47];
        [aK47 shoot];
        MigicStick *migicStick  =  [weaponFactory createMigicStick];
        [migicStick shoot];
    }
    return 0;
}
