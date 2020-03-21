//
//  main.m
//  no_factory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AK47.h"
#import "Bread.h"
#import "Car.h"
#import "Broom.h"
#import "MagicStick.h"
#import "MushRoom.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"不用任何工厂模式");
        AK47 *aK47 = [AK47 new];
        [aK47 shoot];
        Bread *bread = [Bread new];
        [bread printName];
        Car *car = [Car new];
        [car go];
        
        MagicStick *magicStick = [MagicStick new];
        [magicStick shoot];
        MushRoom *mushRoom = [MushRoom new];
        [mushRoom printName];
        Broom *broom = [Broom new];
        [broom go];
    }
    return 0;
}
