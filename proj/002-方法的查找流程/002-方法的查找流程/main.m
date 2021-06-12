//
//  main.m
//  002-方法的查找流程
//
//  Created by cooci on 2020/9/21.
//

#import <Foundation/Foundation.h>
#import "LGStudent.h"


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
        [LGStudent performSelector:@selector(sayEasy)]; // + 

        

#pragma clang diagnostic pop
    }
    return 0;
}
