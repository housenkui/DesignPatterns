//
//  SensitiveFilter.h
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Filter.h"
#import "Msg.h"
NS_ASSUME_NONNULL_BEGIN

@interface SensitiveFilter : NSObject<Filter>
- (BOOL)doFilter:(Msg *)m;

@end

NS_ASSUME_NONNULL_END
