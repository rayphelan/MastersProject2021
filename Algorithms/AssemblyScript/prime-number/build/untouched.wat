(module
 (type $none_=>_f64 (func (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (export "primeNumber" (func $assembly/index/primeNumber))
 (export "memory" (memory $0))
 (func $~lib/math/NativeMath.mod (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 f64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  local.get $1
  f64.abs
  f64.const 1
  f64.eq
  if
   local.get $0
   local.get $0
   f64.trunc
   f64.sub
   local.get $0
   f64.copysign
   return
  end
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $4
  local.get $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $5
  local.get $2
  i64.const 63
  i64.shr_u
  local.set $6
  local.get $3
  i64.const 1
  i64.shl
  local.set $7
  local.get $7
  i64.const 0
  i64.eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i64.const 2047
   i64.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $1
   f64.ne
  end
  if
   local.get $0
   local.get $1
   f64.mul
   local.set $8
   local.get $8
   local.get $8
   f64.div
   return
  end
  local.get $2
  i64.const 1
  i64.shl
  local.set $9
  local.get $9
  local.get $7
  i64.le_u
  if
   local.get $0
   local.get $9
   local.get $7
   i64.ne
   f64.convert_i32_u
   f64.mul
   return
  end
  local.get $4
  i64.const 0
  i64.ne
  i32.eqz
  if
   local.get $4
   local.get $2
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $4
   local.get $2
   i64.const 1
   local.get $4
   i64.sub
   i64.shl
   local.set $2
  else
   local.get $2
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $2
   local.get $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $2
  end
  local.get $5
  i64.const 0
  i64.ne
  i32.eqz
  if
   local.get $5
   local.get $3
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $5
   local.get $3
   i64.const 1
   local.get $5
   i64.sub
   i64.shl
   local.set $3
  else
   local.get $3
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $3
   local.get $3
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $3
  end
  loop $while-continue|0
   local.get $4
   local.get $5
   i64.gt_s
   local.set $10
   local.get $10
   if
    local.get $2
    local.get $3
    i64.ge_u
    if
     local.get $2
     local.get $3
     i64.eq
     if
      f64.const 0
      local.get $0
      f64.mul
      return
     end
     local.get $2
     local.get $3
     i64.sub
     local.set $2
    end
    local.get $2
    i64.const 1
    i64.shl
    local.set $2
    local.get $4
    i64.const 1
    i64.sub
    local.set $4
    br $while-continue|0
   end
  end
  local.get $2
  local.get $3
  i64.ge_u
  if
   local.get $2
   local.get $3
   i64.eq
   if
    f64.const 0
    local.get $0
    f64.mul
    return
   end
   local.get $2
   local.get $3
   i64.sub
   local.set $2
  end
  local.get $2
  i64.const 11
  i64.shl
  i64.clz
  local.set $11
  local.get $4
  local.get $11
  i64.sub
  local.set $4
  local.get $2
  local.get $11
  i64.shl
  local.set $2
  local.get $4
  i64.const 0
  i64.gt_s
  if
   local.get $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.sub
   local.set $2
   local.get $2
   local.get $4
   i64.const 52
   i64.shl
   i64.or
   local.set $2
  else
   local.get $2
   i64.const 0
   local.get $4
   i64.sub
   i64.const 1
   i64.add
   i64.shr_u
   local.set $2
  end
  local.get $2
  local.get $6
  i64.const 63
  i64.shl
  i64.or
  f64.reinterpret_i64
 )
 (func $assembly/index/primeNumber (result f64)
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $0
  f64.const 2
  local.set $1
  f64.const 0
  local.set $3
  i32.const 100000
  local.set $4
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.ne
   local.set $5
   local.get $5
   if
    i32.const 0
    local.set $6
    i32.const 2
    local.set $2
    block $for-break1
     loop $for-loop|1
      local.get $2
      f64.convert_i32_s
      local.get $1
      f64.sqrt
      f64.le
      local.set $7
      local.get $7
      if
       local.get $1
       local.get $2
       f64.convert_i32_s
       call $~lib/math/NativeMath.mod
       f64.const 0
       f64.eq
       if
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $for-break1
       end
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
    end
    local.get $6
    i32.const 0
    i32.eq
    if
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     local.set $3
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $3
 )
)
