(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32) (result i32)))
  (import "env" "print" (func $print (type 0)))
  (func $std.builtin.default_panic (type 1) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 1
    i32.store offset=12
    loop  ;; label = @1
      unreachable
      br 0 (;@1;)
    end)
  (func $fib (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call $fibonacci
    local.set 5
    local.get 5
    call $print
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set 0
    return)
  (func $fibonacci (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 1
    local.set 4
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 5
    local.get 5
    local.set 6
    local.get 4
    local.set 7
    local.get 6
    local.get 7
    i32.le_u
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      local.get 10
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 11
      local.get 3
      local.get 11
      i32.store offset=12
      local.get 3
      i32.load offset=12
      local.set 12
      i32.const 16
      local.set 13
      local.get 3
      local.get 13
      i32.add
      local.set 14
      local.get 14
      global.set 0
      local.get 12
      return
    end
    local.get 3
    i32.load offset=8
    local.set 15
    i32.const -1
    local.set 16
    local.get 15
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.get 15
    i32.gt_u
    local.set 18
    i32.const 1
    local.set 19
    local.get 18
    local.get 19
    i32.and
    local.set 20
    block  ;; label = @1
      local.get 20
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1044
      local.set 21
      i32.const 0
      local.set 22
      local.get 21
      local.get 22
      call $std.builtin.default_panic
      unreachable
    end
    local.get 17
    call $fibonacci
    local.set 23
    local.get 3
    i32.load offset=8
    local.set 24
    i32.const -2
    local.set 25
    local.get 24
    local.get 25
    i32.add
    local.set 26
    local.get 26
    local.get 24
    i32.gt_u
    local.set 27
    i32.const 1
    local.set 28
    local.get 27
    local.get 28
    i32.and
    local.set 29
    block  ;; label = @1
      local.get 29
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1044
      local.set 30
      i32.const 0
      local.set 31
      local.get 30
      local.get 31
      call $std.builtin.default_panic
      unreachable
    end
    local.get 26
    call $fibonacci
    local.set 32
    local.get 23
    local.get 32
    i32.add
    local.set 33
    local.get 33
    local.get 23
    i32.lt_u
    local.set 34
    i32.const 1
    local.set 35
    local.get 34
    local.get 35
    i32.and
    local.set 36
    block  ;; label = @1
      local.get 36
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1044
      local.set 37
      i32.const 0
      local.set 38
      local.get 37
      local.get 38
      call $std.builtin.default_panic
      unreachable
    end
    local.get 3
    local.get 33
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 39
    i32.const 16
    local.set 40
    local.get 3
    local.get 40
    i32.add
    local.set 41
    local.get 41
    global.set 0
    local.get 39
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66592))
  (export "memory" (memory 0))
  (export "fib" (func $fib))
  (data (;0;) (i32.const 1024) "integer overflow\00\00\00\00\00\04\00\00\10\00\00\00"))
