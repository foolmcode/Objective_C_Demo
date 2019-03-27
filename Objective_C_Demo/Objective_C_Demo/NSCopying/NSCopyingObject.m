//
//  NSCopyingObject.m
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/25.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import "NSCopyingObject.h"

@implementation NSCopyingObject
-(id)copyWithZone:(NSZone *)zone{
    NSCopyingObject * copy = [[[self class] allocWithZone:zone]init];
    return copy;
}
@end
