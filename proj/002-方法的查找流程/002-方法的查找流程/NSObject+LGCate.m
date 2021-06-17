//
//  NSObject+LGCate.m
//  002-方法的查找流程
//
//  Created by cooci on 2020/9/21.
//

#import "NSObject+LGCate.h"

#import <objc/runtime.h>

@implementation NSObject (LGCate)

- (void)sayEasy{
    NSLog(@"%s",__func__);
}






// LG 的说， 重写 NSObject 的默认实现， 不是 覆盖


// 调用方法的时候，先找分类的，再找类的




+ (BOOL)resolveInstanceMethod:(SEL)sel{
    
    
    
    // 动态方法决议 / 解析
    
    
    // 查找不到方法 IMP 时，中间有一步可以处理
    const char * _Nonnull name = "LGStudent";
    NSLog(@"%@ 来了 -- \n -- ",NSStringFromSelector(sel));
    if (sel == @selector(sayMaster)) {
        
        
        Class stu = objc_getClass(name);
        SEL hello = @selector(sayHello);
        IMP imp           = class_getMethodImplementation(self, hello);
        Method sayMMethod = class_getInstanceMethod(self, hello);
        const char *type  = method_getTypeEncoding(sayMMethod);
        
        
        
        // 在这里，动态添加方法
        
        return class_addMethod(self, sel, imp, type);
    }
    else if (sel == @selector(terminate)) {
        
        Class stu = objc_getMetaClass(name);
        SEL hello = @selector(sayObjc);
        IMP imp           = class_getMethodImplementation(stu, hello);
        Method sayMMethod = class_getInstanceMethod(stu, hello);
        const char *type  = method_getTypeEncoding(sayMMethod);
        
        
        
        // 在这里，动态添加方法
        
        return class_addMethod(stu, sel, imp, type);
        
    }
    
    
    return NO;
}



// 在这里，方法找不到，防崩溃


/**
 
 
 
 1: 分类 - 便利
 
 
 全局 hook
 
 全部 hook
 
 
 无侵入埋点
 
 
 
 2: 方法 - 套路
 
 
 
 方法命名， 开发人名前缀 - 模块名 - 功能名
 
 
 
 lg_model_tracffic
 
 
 
 
 非该 prefix 的，不做处理
 带有 lg 前缀的，才去 hook
 
 
 
 
 
 
    例子一
 - lg -  model home -  找不到方法， 防止奔溃  -    pop Home  返回首页
 
 
 
 
 例子 2
        - lg - mine  模块的方法挂了 -  防止奔溃,  返回   mine
 
 
 
 
 
    切面 - SDK - 上传
 
 
 
 3: AOP - 封装SDK - 不处理
 
 
 
 4: 消息转发 -
 
 
 
 
 
 */



@end
