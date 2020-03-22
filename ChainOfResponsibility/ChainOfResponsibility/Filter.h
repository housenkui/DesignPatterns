//
//  Filter.h
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Msg;
NS_ASSUME_NONNULL_BEGIN

@protocol Filter <NSObject>
- (BOOL)doFilter:(Msg *)m;
@end

NS_ASSUME_NONNULL_END
