(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (func (;0;) (type 0)
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
      i32.const 1
    end)
  (global (;0;) i32 (i32.const 0))
  (export "__post_instantiate" (func 0))
  (export "fibonacci" (func 1))
  (export "__dso_handle" (global 0))
  (export "__wasm_apply_data_relocs" (func 0)))
