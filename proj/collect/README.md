预处理指令

#  clang -E main.m >> main_two.m


<hr>

<hr>


词法分析， 分析 token 

clang -fmodules -fsyntax-only -Xclang -dump-tokens main.m



<hr>

<hr>


语法分析， 得到 AST

clang -fmodules -fsyntax-only -Xclang -ast-dump main.m


clang -fmodules -fsyntax-only -Xclang -ast-dump main.m   >> main_ast.m


<hr>

<hr>




<hr>

<hr>





<hr>

<hr>




<hr>

<hr>

