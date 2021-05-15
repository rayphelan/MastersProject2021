(module
 (type $none_=>_f64 (func (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (memory $0 0)
 (export "primeNumber" (func $assembly/index/primeNumber))
 (export "memory" (memory $0))
 (func $~lib/math/NativeMath.mod (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
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
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $5
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 63
  i64.shr_u
  local.set $7
  i32.const 1
  local.get $1
  local.get $1
  f64.ne
  i32.const 1
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $4
  i64.const 2047
  i64.eq
  local.get $3
  i64.const 1
  i64.shl
  local.tee $6
  i64.eqz
  select
  select
  if
   local.get $0
   local.get $1
   f64.mul
   local.tee $0
   local.get $0
   f64.div
   return
  end
  local.get $6
  local.get $2
  i64.const 1
  i64.shl
  local.tee $8
  i64.ge_u
  if
   local.get $0
   local.get $6
   local.get $8
   i64.ne
   f64.convert_i32_u
   f64.mul
   return
  end
  local.get $4
  i64.eqz
  if (result i64)
   local.get $2
   i64.const 1
   local.get $4
   local.get $2
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.tee $4
   i64.sub
   i64.shl
  else
   local.get $2
   i64.const 4503599627370495
   i64.and
   i64.const 4503599627370496
   i64.or
  end
  local.set $2
  local.get $5
  i64.eqz
  if (result i64)
   local.get $3
   i64.const 1
   local.get $5
   local.get $3
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.tee $5
   i64.sub
   i64.shl
  else
   local.get $3
   i64.const 4503599627370495
   i64.and
   i64.const 4503599627370496
   i64.or
  end
  local.set $3
  block $folding-inner0
   loop $while-continue|0
    local.get $4
    local.get $5
    i64.gt_s
    if
     local.get $2
     local.get $3
     i64.ge_u
     if (result i64)
      local.get $2
      local.get $3
      i64.eq
      br_if $folding-inner0
      local.get $2
      local.get $3
      i64.sub
     else
      local.get $2
     end
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
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.sub
    local.set $2
   end
   local.get $2
   local.get $2
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $2
   local.get $4
   local.get $3
   i64.sub
   local.tee $4
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $2
    i64.const 4503599627370496
    i64.sub
    local.get $4
    i64.const 52
    i64.shl
    i64.or
   else
    local.get $2
    i64.const 1
    local.get $4
    i64.sub
    i64.shr_u
   end
   local.get $7
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  local.get $0
  f64.const 0
  f64.mul
 )
 (func $assembly/index/primeNumber (result f64)
  (local $0 f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  f64.const 2
  local.set $1
  loop $while-continue|0
   local.get $4
   i32.const 100000
   i32.ne
   if
    i32.const 0
    local.set $3
    i32.const 2
    local.set $5
    local.get $1
    f64.sqrt
    local.set $2
    loop $for-loop|1
     local.get $5
     f64.convert_i32_s
     local.get $2
     f64.le
     if
      block $for-break1
       local.get $1
       local.get $5
       f64.convert_i32_s
       call $~lib/math/NativeMath.mod
       f64.const 0
       f64.eq
       if
        i32.const 1
        local.set $3
        br $for-break1
       end
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|1
      end
     end
    end
    local.get $3
    i32.eqz
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $1
     local.set $0
    end
    local.get $1
    f64.const 1
    f64.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
 )
)
