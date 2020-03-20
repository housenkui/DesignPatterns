//
//  Dog.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparable.h"
NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject<Comparable>

@property (nonatomic,assign)int height;
@property (nonatomic,assign)int weight;

- (instancetype)initWithHeight:(int)height
                       weight:(int)weight;
-(NSString *)description;

@end

NS_ASSUME_NONNULL_END
