//
//  Dog.h
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DogComparable.h"
NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject<DogComparable>
@property (nonatomic,assign)int height;
@property (nonatomic,assign)int weight;

@property (nonatomic,assign)int price;
@property (nonatomic,assign)int color;
- (instancetype)initWithHeight:(int)height weight:(int)weight price:(int)price color:(int)color;
- (int)compare:(Dog <DogComparable>*)dog WithParamter:(ComparableParamter )paramter;
- (NSString *)description;
@end

NS_ASSUME_NONNULL_END
