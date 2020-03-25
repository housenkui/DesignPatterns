//
//  Terrain.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mine.h"
#import "Fort.h"
#import "Wall.h"
NS_ASSUME_NONNULL_BEGIN

@interface Terrain : NSObject
@property (nonatomic,strong)Mine *m;
@property (nonatomic,strong)Fort *f;
@property (nonatomic,strong)Wall *w;
@end

NS_ASSUME_NONNULL_END
