(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i64) (result i64)))
  (import "__wbindgen_placeholder__" "__wbg_log_e2b7116aabd69db1" (func (;0;) (type 1)))
  (func (;1;) (type 4) (param i64) (result i64)
    (local i64)
    i64.const 1
    local.set 1
    local.get 0
    i64.const 2
    i64.ge_u
    if (result i64)  ;; label = @1
      i64.const 0
      local.set 1
      loop  ;; label = @2
        local.get 0
        i64.const -1
        i64.add
        call 1
        local.get 1
        i64.add
        local.set 1
        local.get 0
        i64.const -2
        i64.add
        local.tee 0
        i64.const 1
        i64.gt_u
        br_if 0 (;@2;)
      end
      local.get 1
      i64.const 1
      i64.add
    else
      local.get 1
    end)
  (func (;2;) (type 2) (param i32 i32 i32)
    (local i64)
    local.get 0
    local.get 1
    i64.extend_i32_u
    local.get 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    call 1
    local.tee 3
    i64.store32
    local.get 0
    local.get 3
    i64.const 32
    i64.shr_u
    i64.store32 offset=4)
  (func (;3;) (type 0)
    (local i64)
    i64.const 40
    call 1
    local.tee 0
    i32.wrap_i64
    local.get 0
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call 0)
  (func (;4;) (type 3) (param i32) (result i32)
    local.get 0
    global.get 0
    i32.add
    global.set 0
    global.get 0)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "fibonacci" (func 2))
  (export "main_js" (func 3))
  (export "__wbindgen_add_to_stack_pointer" (func 4))
  (export "__wbindgen_start" (func 3)))
