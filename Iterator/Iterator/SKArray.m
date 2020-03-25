//
//  SKArray.m
//  Iterator
//
//  Created by 侯森魁 on 2020/3/24.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "SKArray.h"
@interface SKArray1:SKArray
- (void)dodo;
@end
@implementation SKArray1
- (void)dodo {
    NSLog(@"dodo");
}
@end
@implementation SKArray
- (void)dododo {
    SKArray1 * skArray1 = [[SKArray1 alloc]init];
    [skArray1 dodo];
}
@end
