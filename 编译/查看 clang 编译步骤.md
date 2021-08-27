# Clang


## 查看 clang 编译器前端，

编译我们源代码的几个步骤


<hr>



<hr>


<hr>


<hr>

➜  Clang git:(main) ✗ clang -ccc-print-phases /Users/jzd/Movies/A_a/999998/999998/main.m
               +- 0: input, "/Users/jzd/Movies/A_a/999998/999998/main.m", objective-c
            +- 1: preprocessor, {0}, objective-c-cpp-output
         +- 2: compiler, {1}, ir
      +- 3: backend, {2}, assembler
   +- 4: assembler, {3}, object
+- 5: linker, {4}, image
6: bind-arch, "x86_64", {5}, image



<hr>





<hr>



