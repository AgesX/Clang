//
//  main.m
//  low
//
//  Created by Jz D on 2021/6/9.
//

#import <Foundation/Foundation.h>


#import <objc/message.h>


@interface LGTeacher : NSObject
- (void)sayHello;
@end



@implementation LGTeacher
- (void)sayHello{
    NSLog(@"66  \n 6  66  \n 6");
}
@end


@interface LGPerson : LGTeacher

- (void)sayNB;

@end

@implementation LGPerson





//    加载分类的方式：







//   只需要，有一个分类是，非懒加载







//  所有都会是，非懒加载


///


///


///




//  因为出于性能考虑，

//  既然要加载


//  加载了一个，就顺便全部加载



///


///

// 开辟了 rwe 后，不需要重新处理

///


///



// 要么不加载，


// 要么全部加载，一次完成



///


///




+ (void)load{
    
    
}



- (void)sayNB{
    NSLog(@"66  \n 6");
}


@end


void one(void){
    LGTeacher *person = [LGTeacher alloc];
    
    
    
    
    // 通过下层 api 调用
    objc_msgSend(person,sel_registerName("sayHello"));
}



void two(void){
    LGPerson *person = [LGPerson alloc];
    [person sayHello];
}



























//  内存， main, 固定的格式， dyld






//  读取到 rax 寄存器







// main 函数, 汇编写的







int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        LGPerson *person = [LGPerson alloc];
        
        [person sayNB];
        
        struct objc_super lgsuper;
        lgsuper.receiver = person;
        lgsuper.super_class = [LGTeacher class];
        
        
        
        // 类的继承， 调用
        objc_msgSendSuper(&lgsuper, sel_registerName("sayHello"));
        
        
        
        
    }
    return 0;
}








