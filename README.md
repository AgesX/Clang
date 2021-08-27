# Clang
based on LGCooci/llvm


<hr>



<hr>


<hr>



<hr>


# 制作出了，自己的编译器

等价于，设计了一门新的编程语言



<hr>



<hr>


<hr>



<hr>


Clang 是 C , Objective - C, Cpp 的编译器前端


Swift 是 Swift 的编译器前端

<hr>



<hr>


#### 1, OMF_alloc


```
auto &Runtime = CGM.getLangOpts().ObjCRuntime;
  switch (Sel.getMethodFamily()) {
  case OMF_alloc:
    if (isClassMessage &&
        Runtime.shouldUseRuntimeFunctionsForAlloc() &&
        ResultType->isObjCObjectPointerType()) {
        // [Foo alloc] -> objc_alloc(Foo) or
        // [self alloc] -> objc_alloc(self)
        if (Sel.isUnarySelector() && Sel.getNameForSlot(0) == "alloc")
          return CGF.EmitObjCAlloc(Receiver, CGF.ConvertType(ResultType));
        // [Foo allocWithZone:nil] -> objc_allocWithZone(Foo) or
        // [self allocWithZone:nil] -> objc_allocWithZone(self)
        if (Sel.isKeywordSelector() && Sel.getNumArgs() == 1 &&
            Args.size() == 1 && Args.front().getType()->isPointerType() &&
            Sel.getNameForSlot(0) == "allocWithZone") {
          const llvm::Value* arg = Args.front().getKnownRValue().getScalarVal();
          if (isa<llvm::ConstantPointerNull>(arg))
            return CGF.EmitObjCAllocWithZone(Receiver,
                                             CGF.ConvertType(ResultType));
          return None;
        }
    }
    break;
```

<hr>


<hr>



#### 2,  GeneratePossiblySpecializedMessageSend

调用 tryGenerateSpecializedMessageSend

走  OMF_alloc





<hr>


<hr>





#### Union


联合体位域， 为了内存优化








<hr>


<hr>



<hr>


<hr>



<hr>


<hr>




二进制可执行文件中，


一般分为



指令和数据