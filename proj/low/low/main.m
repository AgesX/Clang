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
    NSLog(@"666");
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LGTeacher *person = [LGTeacher alloc];
        
        
        
        
        // 通过下层 api 调用
        objc_msgSend(person,sel_registerName("sayHello"));
        
    }
    return 0;
}
