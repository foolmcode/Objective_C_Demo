//
//  MyJSObject.h
//  Objective_C_Demo
//
//  Created by foolmcode on 2019/4/2.
//  Copyright © 2019 foolmcode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<JavaScriptCore/JavaScriptCore.h>
NS_ASSUME_NONNULL_BEGIN


//定义一个协议继承JSExport协议
@protocol PersonJSExport <JSExport>
- (void)nslog:(NSString *)str; //协议里面要声明调用的方法
@end

@interface MyJSObject : NSObject<PersonJSExport>
- (void)nslog:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
