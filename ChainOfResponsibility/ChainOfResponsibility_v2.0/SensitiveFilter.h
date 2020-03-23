//
//  SensitiveFilter.h
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Filter.h"
#import "Request.h"
#import "Response.h"
NS_ASSUME_NONNULL_BEGIN

@interface SensitiveFilter : NSObject<Filter>
- (BOOL)doFilter:(Request *)request response:(Response *)response;

@end

NS_ASSUME_NONNULL_END
