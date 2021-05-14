(module
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (export "fibonacci" (func $assembly/index/fibonacci))
 (export "memory" (memory $0))
 (func $assembly/index/fib (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.le_s
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 1
   i32.sub
   call $assembly/index/fib
   local.get $0
   i32.const 2
   i32.sub
   call $assembly/index/fib
   i32.add
  end
 )
 (func $assembly/index/fibonacci (result i32)
  i32.const 45
  call $assembly/index/fib
 )
)
