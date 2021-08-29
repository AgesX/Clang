TranslationUnitDecl 0x7feb14021c08 <<invalid sloc>> <invalid sloc> <undeserialized declarations>
|-TypedefDecl 0x7feb140224d8 <<invalid sloc>> <invalid sloc> implicit __int128_t '__int128'
| `-BuiltinType 0x7feb140221a0 '__int128'
|-TypedefDecl 0x7feb14022548 <<invalid sloc>> <invalid sloc> implicit __uint128_t 'unsigned __int128'
| `-BuiltinType 0x7feb140221c0 'unsigned __int128'
|-TypedefDecl 0x7feb140225f0 <<invalid sloc>> <invalid sloc> implicit SEL 'SEL *'
| `-PointerType 0x7feb140225a0 'SEL *'
|   `-BuiltinType 0x7feb14022400 'SEL'
|-TypedefDecl 0x7feb140226f0 <<invalid sloc>> <invalid sloc> implicit id 'id'
| `-ObjCObjectPointerType 0x7feb14022690 'id'
|   `-ObjCObjectType 0x7feb14022650 'id'
|-TypedefDecl 0x7feb140227f0 <<invalid sloc>> <invalid sloc> implicit Class 'Class'
| `-ObjCObjectPointerType 0x7feb14022790 'Class'
|   `-ObjCObjectType 0x7feb14022750 'Class'
|-ObjCInterfaceDecl 0x7feb14022848 <<invalid sloc>> <invalid sloc> implicit Protocol
|-TypedefDecl 0x7feb14016600 <<invalid sloc>> <invalid sloc> implicit __NSConstantString 'struct __NSConstantString_tag'
| `-RecordType 0x7feb140229b0 'struct __NSConstantString_tag'
|   `-Record 0x7feb14022918 '__NSConstantString_tag'
|-TypedefDecl 0x7feb140166b0 <<invalid sloc>> <invalid sloc> implicit __builtin_ms_va_list 'char *'
| `-PointerType 0x7feb14016660 'char *'
|   `-BuiltinType 0x7feb14021ca0 'char'
|-TypedefDecl 0x7feb140169c0 <<invalid sloc>> <invalid sloc> implicit __builtin_va_list 'struct __va_list_tag [1]'
| `-ConstantArrayType 0x7feb14016960 'struct __va_list_tag [1]' 1
|   `-RecordType 0x7feb140167a0 'struct __va_list_tag'
|     `-Record 0x7feb14016708 '__va_list_tag'
|-ImportDecl 0x7feb14017278 <main.m:8:1> col:1 implicit Darwin.C.stdio
`-FunctionDecl 0x7feb130a2c00 <line:13:1, line:22:1> line:13:5 main 'int (int, const char **)'
  |-ParmVarDecl 0x7feb140172d0 <col:10, col:14> col:14 argc 'int'
  |-ParmVarDecl 0x7feb14017418 <col:20, col:38> col:33 argv 'const char **':'const char **'
  `-CompoundStmt 0x7feb130a35f0 <col:41, line:22:1>
    |-ObjCAutoreleasePoolStmt 0x7feb130a35a8 <line:14:5, line:20:5>
    | `-CompoundStmt 0x7feb130a3580 <line:14:22, line:20:5>
    |   |-DeclStmt 0x7feb130a2de8 <line:16:9, col:19>
    |   | `-VarDecl 0x7feb130a2d60 <col:9, col:17> col:13 used a 'int' cinit
    |   |   `-IntegerLiteral 0x7feb130a2dc8 <col:17> 'int' 10
    |   |-DeclStmt 0x7feb130a3318 <line:17:9, col:19>
    |   | `-VarDecl 0x7feb130a2e18 <col:9, col:17> col:13 used b 'int' cinit
    |   |   `-IntegerLiteral 0x7feb130a2e80 <col:17> 'int' 20
    |   `-CallExpr 0x7feb130a3520 <line:19:9, col:31> 'int'
    |     |-ImplicitCastExpr 0x7feb130a3508 <col:9> 'int (*)(const char *, ...)' <FunctionToPointerDecay>
    |     | `-DeclRefExpr 0x7feb130a3330 <col:9> 'int (const char *, ...)' Function 0x7feb130a2ea8 'printf' 'int (const char *, ...)'
    |     |-ImplicitCastExpr 0x7feb130a3568 <col:16> 'const char *' <NoOp>
    |     | `-ImplicitCastExpr 0x7feb130a3550 <col:16> 'char *' <ArrayToPointerDecay>
    |     |   `-StringLiteral 0x7feb130a3390 <col:16> 'char [3]' lvalue "%d"
    |     `-BinaryOperator 0x7feb130a3490 <col:22, line:10:11> 'int' '+'
    |       |-BinaryOperator 0x7feb130a3450 <line:19:22, col:26> 'int' '+'
    |       | |-ImplicitCastExpr 0x7feb130a3420 <col:22> 'int' <LValueToRValue>
    |       | | `-DeclRefExpr 0x7feb130a33b0 <col:22> 'int' lvalue Var 0x7feb130a2d60 'a' 'int'
    |       | `-ImplicitCastExpr 0x7feb130a3438 <col:26> 'int' <LValueToRValue>
    |       |   `-DeclRefExpr 0x7feb130a33e8 <col:26> 'int' lvalue Var 0x7feb130a2e18 'b' 'int'
    |       `-IntegerLiteral 0x7feb130a3470 <line:10:11> 'int' 30
    `-ReturnStmt 0x7feb130a35e0 <line:21:5, col:12>
      `-IntegerLiteral 0x7feb130a35c0 <col:12> 'int' 0
