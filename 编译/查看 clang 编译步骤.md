# Clang


## 查看 clang 编译器前端，

编译我们源代码的几个步骤


<hr>



<hr>


<hr>


<hr>

➜  Clang git:(main) ✗ clang -ccc-print-phases /Users/jzd/Movies/A_a/999998/999998/main.m
               // 找到文件路径
               +- 0: input, "/Users/jzd/Movies/A_a/999998/999998/main.m", objective-c
            // 预处理，宏的展开
            +- 1: preprocessor, {0}, objective-c-cpp-output
         // 编译出，中间语言
         +- 2: compiler, {1}, ir
      +- 3: backend, {2}, assembler
      // 工程里面，有很多文件。一个文件，编译出一个目标文件
   +- 4: assembler, {3}, object
   // 把所有的目标文件，链接起来，得到可执行文件。  一个镜像，相当于一个可执行文件。工程里面，存在多个可执行文件。动态库，静态库
+- 5: linker, {4}, image
6: bind-arch, "x86_64", {5}, image



<hr>





<hr>







宏的展开， 分为我们自己的宏定义


还有头文件的展开



<hr>





<hr>



`#import` 就是一个宏




<hr>





<hr>








<hr>



静态库，跟可执行文件，绑定在一起

生成了一个文件

<hr>



动态库，是一个独立的文件




