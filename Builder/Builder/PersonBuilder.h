//
//  PersonBuilder.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Loction.h"
NS_ASSUME_NONNULL_BEGIN

@interface PersonBuilder : NSObject
- (PersonBuilder *)basicInfo:(int)Id name:(NSString *)name age:(int)age;
- (PersonBuilder *)weight:(double)weight;
- (PersonBuilder *)score:(int)score;
- (PersonBuilder *)loc:(NSString *)street roomNo:(NSString *)roomNo;
- (Person *)build;
@end

NS_ASSUME_NONNULL_END
