//
//  main.m
//  002-方法的查找流程
//
//  Created by cooci on 2020/9/21.
//

#import <Foundation/Foundation.h>
#import "LGStudent.h"
#import "LGPerson+NO.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma clang diagnostic push
// 让编译器忽略错误
#pragma clang diagnostic ignored "-Wundeclared-selector"
        LGStudent *student = [[LGStudent alloc] init];
        // 对象方法
        [student sayHello];
        [student sayNB];
        // unrecognized selector sent to instance 0x103d32010
        // [student sayMaster];
        
        
        // 类方法
        
        [LGStudent sayObjc];
        [LGStudent sayHappay];
        
        
        
        
        // 竟然没有崩溃
        
        
        // 把类方法，当作实例方法，调用成功
        
        
        [LGStudent performSelector:@selector(sayEasy)]; // + 

        
        // 查找方法
        // isa
        // cache
        // method_list
        
        
        // 类方法， 在元类里面，
        // 元类， NSObject 元类，  NSObject 类
        
        
        // 元类里面，储存的类方法
        // 以对象方法的形式
        

#pragma clang diagnostic pop
    }
    return 0;
}




