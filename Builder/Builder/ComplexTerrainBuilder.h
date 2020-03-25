//
//  ComplexTerrainBuilder.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TerrainBuilder.h"
NS_ASSUME_NONNULL_BEGIN

@interface ComplexTerrainBuilder : NSObject<TerrainBuilder>
@property(nonatomic,strong)Terrain *terrain;
@end

NS_ASSUME_NONNULL_END
