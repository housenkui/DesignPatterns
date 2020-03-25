//
//  Wall.m
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Wall.h"

@implementation Wall
- (instancetype)initWithX:(int)x y:(int)y w:(int)w h:(int)h {
    if (self = [super init]) {
        _x = x;
        _y = y;
        _w = w;
        _h = h;
    }
    return self;
}
@end
