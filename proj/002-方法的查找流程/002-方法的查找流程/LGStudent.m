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









// objc_msgSend 快速查找
// 慢速查找流程



// 1: 找自己methodlist
// 2: 找父类methodlist







// 3: imp : forward
// 将待返回的 IMP 置换为 forward 类型

// imp = forward_imp;








// 4: 消息处理机制
// 4.1 : 动态方法决议 - 对象方法
//




// 666: 最后找不到 IMP
// 无法处理， objc_fatal


@end




