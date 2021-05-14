(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (func (;0;) (type 2)
    nop)
  (func (;1;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 1
    local.set 1
    local.get 0
    i32.const 2
    i32.ge_s
    if (result i32)  ;; label = @1
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 0
        i32.const 1
        i32.sub
        call 1
        local.get 1
        i32.add
        local.set 1
        local.get 0
        i32.const 3
        i32.gt_s
        local.set 2
        local.get 0
        i32.const 2
        i32.sub
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.add
    else
      local.get 1
    end)
  (func (;2;) (type 0) (result i32)
    i32.const 45
    call 1)
  (func (;3;) (type 0) (result i32)
    global.get 0)
  (func (;4;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;5;) (type 1) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;6;) (type 0) (result i32)
    i32.const 1024)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243920))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "fibonacci" (func 2))
  (export "__errno_location" (func 6))
  (export "stackSave" (func 3))
  (export "stackRestore" (func 4))
  (export "stackAlloc" (func 5))
  (export "__indirect_function_table" (table 0)))
