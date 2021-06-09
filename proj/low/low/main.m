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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LGPerson *person = [LGPerson alloc];
        struct objc_super lgsuper;
        lgsuper.receiver = person;
        lgsuper.super_class = [LGTeacher class];
        
        
        
        // 类的继承， 调用
        objc_msgSendSuper(&lgsuper, sel_registerName("sayHello"));
        
        
        
        
    }
    return 0;
}




