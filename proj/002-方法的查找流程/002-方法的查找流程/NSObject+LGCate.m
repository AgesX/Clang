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






// 覆盖 NSObject 的默认实现


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


@end
