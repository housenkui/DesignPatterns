//
//  TerrainBuilder.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Terrain.h"
NS_ASSUME_NONNULL_BEGIN

@protocol TerrainBuilder <NSObject>
- (id<TerrainBuilder>)buildWall;
- (id<TerrainBuilder>)buildFort;
- (id<TerrainBuilder>)buildMine;
- (Terrain *)build;
@end

NS_ASSUME_NONNULL_END
