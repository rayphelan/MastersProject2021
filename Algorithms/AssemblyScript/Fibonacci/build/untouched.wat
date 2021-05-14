(module
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
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
  (local $0 i32)
  i32.const 45
  call $assembly/index/fib
  local.set $0
  local.get $0
 )
)
