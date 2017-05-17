## 寄存器相关
##### C function:
  * 参数1 : rdi
  * 参数2 : rci
  * 参数3 : rdx
  * 参数4 : rcx
  * 参数5 : r8
  * 参数6 : r9
  * 参数>6 : 用stack

##### Pseudo code
 ```ObjC
 NSString *name = @"Zoltan";
NSLog(@"Hello world, I am %@. I'm %d, and I live in %@.", name, 30, @"my
father's basement");
 ```

 ```assembly
RDI = @"Hello world, I am %@. I'm %d, and I live in %@.";
RSI = @"Zoltan";
RDX = 30;
RCX = @"my father's basement"
 ```
##### In ObjC
`[@"Hello" stringByAppendingString:@"world"];`

`objc_msgSend(@"Hello","stringByAppendingString:",@"world");`

##### Examples(Swift)
```swift
func executeALotOfArgs(one: Int, two: Int, three: Int, four: Int, five: Int, six: Int, seven: Int, eight: Int) {
    print("args are: \(one),\(two),\(three),\(four),\(five),\(six),\(seven),\(eight).")
}
//execute
executeALotOfArgs(one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8)
```
```assembly
General Purpose Registers:
       rax = 105553117189376
       rbx = 1
       rcx = 4 //four:
       rdx = 3 //three:
       rdi = 1 //one:
       rsi = 2 //two:
       rbp = 140734799799808
       rsp = 140734799799568
        r8 = 5 //five:
        r9 = 6 //six:
       r10 = 8
       r11 = 7
       r12 = 105553116596272
       r13 = 140735987630452  "performSelector:"
       r14 = 1
       r15 = 4295012216  (void *)0x001d80010000b0d9
       rip = 4294978950  Registers`Registers.ViewController.executeALotOfArgs (one : Swift.Int, two : Swift.Int, three : Swift.Int, four : Swift.Int, five : Swift.Int, six : Swift.Int, seven : Swift.Int, eight : Swift.Int) -> () + 70 at ViewController.swift:44
    rflags = 514
        cs = 43
        fs = 0
        gs = 0
```
###### Examples(Swift return value)

```Swift
func executeALotOfArgs(one: Int, two: Int, three: Int, four: Int, five: Int, six: Int, seven: Int, eight: Int) -> String {
    print("args are: \(one),\(two),\(three),\(four),\(five),\(six),\(seven),\(eight).")
    return "what???"
  }
//execute
let _ = self.executeALotOfArgs(one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8)
```

```assembly
register read -f d
General Purpose Registers:
      rax = 4294997109  "what???"
      rbx = 4298780760  libswiftCore.dylib`swift_isaMask
      rcx = 0
      rdx = 7
      rdi = 4294997109  "what???"
      rsi = 7
      rbp = 140734799799936
      rsp = 140734799799808
       r8 = 22
       r9 = 23
      r10 = -1
      r11 = 140736374269655  libsystem_c.dylib`funlockfile
      r12 = 106102872369744
      r13 = 140735987630452  "performSelector:"
      r14 = 105553117193344
      r15 = 4295012216  (void *)0x001d80010000b0d9
      rip = 4294978400  Registers`Registers.ViewController.viewDidLoad () -> () + 192 at ViewController.swift:37
   rflags = 518
       cs = 43
       fs = 0
       gs = 0

register read rax
rax = 0x0000000100007475  "what???"

```
