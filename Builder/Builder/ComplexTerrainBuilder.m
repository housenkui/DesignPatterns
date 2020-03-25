//
//  ComplexTerrainBuilder.m
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "ComplexTerrainBuilder.h"

@implementation ComplexTerrainBuilder
- (Terrain *)terrain {
    if (!_terrain) {
        _terrain = [Terrain new];
    }
    return _terrain;
}
- (id<TerrainBuilder>)buildWall {
    self.terrain.w = [[Wall alloc]initWithX:10 y:10 w:20 h:50];
    return self;
}
- (id<TerrainBuilder>)buildFort {
    self.terrain.f = [[Fort alloc]initWithX:10 y:10 w:20 h:50];
    return self;
}

- (id<TerrainBuilder>)buildMine {
    self.terrain.m = [[Mine alloc]initWithX:10 y:20 w:50 h:50];
    return self;
}
- (Terrain *)build {
    return self.terrain;
}
@end
