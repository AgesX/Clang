//
//  main.m
//  001-运行时感受
//
//  Created by cooci on 2020/9/18.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

@interface LGTeacher : NSObject
- (void)sayHello;
@end

@implementation LGTeacher
- (void)sayHello{
    NSLog(@"666");
}
@end

@interface LGPerson : LGTeacher
- (void)sayHello;
- (void)sayNB;
@end

@implementation LGPerson
- (void)sayNB{
    NSLog(@"666");
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        // sel_registerName = @seletor() = NSSeletorFromString()
        
        
        
        
        
        
        // 方法, 在底层为消息
        
        // (消息的接受者 . 消息主体)
        
        
        
        
        
        
        LGPerson *person = [LGPerson alloc];
        LGTeacher *teacher = [LGTeacher alloc];

        
        objc_msgSend(person,sel_registerName("sayNB"));
        // =,  等价于下面的
        [person sayNB];
        
        
        
        
        
        
        
        
        
        
        
        
        // 消息的接受者还是自己
        // - 父类 - 请你直接找我的 base
        [person sayHello];
        
        
//
//         struct objc_super {
//             /// Specifies an instance of a class.
//             __unsafe_unretained _Nonnull id receiver;
//
//             /// Specifies the particular superclass of the instance to message.
//         #if !defined(__cplusplus)  &&  !__OBJC2__
//              For compatibility with old objc-runtime.h header */
//             __unsafe_unretained _Nonnull Class class;
//         #else
//             __unsafe_unretained _Nonnull Class super_class;
//         #endif
//             /* super_class is the first class to search */
//         };
//         #endif
    
        
        struct objc_super lgsuper;
        lgsuper.receiver = person;
        lgsuper.super_class = [LGTeacher class];
        
        objc_msgSendSuper(&lgsuper, sel_registerName("sayHello"));
        
        /** clang
         LGPerson *person = ((LGPerson *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("LGPerson"), sel_registerName("alloc"));
         ((void (*)(id, SEL))(void *)objc_msgSend)((id)person, sel_registerName("sayNB"));
         ((void (*)(id, SEL))(void *)objc_msgSend)((id)person, sel_registerName("sayHello"));
         */
        
        
        
        
        
        
        // runtime 三种
        
        
        // 方法 objc_msgSend
        
        
        // c 函数名,        函数地址指针
        
        
        
        // OC 方法 - 消息 (sel imp) sel -> imp -> 内容
        // sel -> imp
        // 难点 + 重点
        
        
        
        
        
        
        //  imp -> 内容
        //  这一层，都是指针级别
        
        
        
        
        
        
        // imp -> 内容
        // 相当于 C 的底层
        // c 函数名,        函数地址指针
        
        
        
        
        
        
        
        
        
        
        // objc_msgSend 汇编
        
        
        // 汇编特性: 快 + 参数的动态性 ( 参数的不确定性 )
        
        
        
        // 消息接受者 :  对象 - ISA - 方法(类) - cache_t - methodlist
        // 消息接受者， 找到真正的寻根露
    }
    return 0;
}







