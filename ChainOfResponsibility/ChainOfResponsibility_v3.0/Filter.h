//
//  Filter.h
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Request.h"
#import "Response.h"
//#import "FilterChain.h"
@class FilterChain;
NS_ASSUME_NONNULL_BEGIN

@protocol Filter <NSObject>
- (BOOL)doFilter:(Request *)request response:(Response *)response filterChain:(FilterChain *)chain;
@end

NS_ASSUME_NONNULL_END
