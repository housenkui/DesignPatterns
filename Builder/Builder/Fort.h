//
//  Fort.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fort : NSObject
@property(nonatomic,assign)int x;
@property(nonatomic,assign)int y;
@property(nonatomic,assign)int w;
@property(nonatomic,assign)int h;
- (instancetype)initWithX:(int)x y:(int)y w:(int)w h:(int)h;
@end

NS_ASSUME_NONNULL_END
