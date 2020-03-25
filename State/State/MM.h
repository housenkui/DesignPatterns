//
//  MM.h
//  State
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMHappyState.h"
NS_ASSUME_NONNULL_BEGIN

@interface MM : NSObject
@property (nonatomic,copy)NSString *name;
@property (nonatomic,strong)MMHappyState *state;
- (void)smile;
- (void)cry;
- (void)say;
@end

NS_ASSUME_NONNULL_END
