//
//  Dog.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject

@property (nonatomic,assign)int height;
@property (nonatomic,assign)int weight;

@property (nonatomic,assign)int price;
@property (nonatomic,assign)int color;

- (instancetype)initWithHeight:(int)height weight:(int)weight price:(int)price color:(int)color;

-(void)description;

@end

NS_ASSUME_NONNULL_END
