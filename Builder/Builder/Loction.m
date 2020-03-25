//
//  Loction.m
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Loction.h"

@implementation Loction
- (instancetype)initWithLocation:(NSString *)street roomNo:(NSString *)roomNo {
    if (self = [super init]) {
        _street = street;
        _roomNo = roomNo;
    }
    return self;
}
@end
