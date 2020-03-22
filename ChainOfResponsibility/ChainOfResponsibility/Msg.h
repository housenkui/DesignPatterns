//
//  Msg.h
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Msg : NSObject
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *msg;
- (NSString *)getMsg;
- (void)setMsg:(NSString *)msg;
- (void)description;
@end

NS_ASSUME_NONNULL_END
