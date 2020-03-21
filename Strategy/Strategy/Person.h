//
//  Person.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparable.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic,assign)int height;
@property (nonatomic,assign)int weight;
@property (nonatomic,assign)int hair;
@property (nonatomic,assign)int income;

- (instancetype)initWithHeight:(int)height weight:(int)weight;
- (int)compareWithHeigth:(Person <Comparable> *)person;
- (int)compareWithWeigth:(Person <Comparable> *)person;

@end

NS_ASSUME_NONNULL_END
