(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (func (;0;) (type 0)
    nop)
  (func (;1;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (global (;0;) i32 (i32.const 0))
  (export "__post_instantiate" (func 0))
  (export "add" (func 1))
  (export "__dso_handle" (global 0))
  (export "__wasm_apply_data_relocs" (func 0)))
