//
//  LGStudent.m
//  002-方法的查找流程
//
//  Created by cooci on 2020/9/21.
//  Copyright © 2020 Cooci. All rights reserved.
//

#import "LGStudent.h"
#import <objc/runtime.h>


@implementation LGStudent
- (void)sayHello{
    NSLog(@"%s\n￣\n",__func__);
}

+ (void)sayObjc{
    NSLog(@"%s",__func__);
}


+ (BOOL)resolveInstanceMethod:(SEL)sel{
    
    if (sel == @selector(sayMaster)) {
        NSLog(@"%@ 来了 -- \n -- ",NSStringFromSelector(sel));
        
        
        SEL hello = @selector(sayHello);
        IMP imp           = class_getMethodImplementation(self, hello);
        Method sayMMethod = class_getInstanceMethod(self, hello);
        const char *type  = method_getTypeEncoding(sayMMethod);
        
        
        
        // 在这里，动态添加方法
        
        return class_addMethod(self, sel, imp, type);
    }
    
    
    return [super resolveInstanceMethod:sel];
}


// objc_msgSend 快速查找
// 慢速查找流程
// 1: 找自己methodlist
// 2: 找父类methodlist
// 3: imp : forward
// 4: 消息处理机制
// 4.1 : 动态方法决议 - 对象方法
//






@end
