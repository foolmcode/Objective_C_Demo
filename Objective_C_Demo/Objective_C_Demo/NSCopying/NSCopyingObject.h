//
//  NSCopyingObject.h
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/3/25.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSCopyingObject : NSObject<NSCopying>
@property(nonatomic,copy)NSString * name;
@end

NS_ASSUME_NONNULL_END
