(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i64 i32) (result i32)))
  (type (;10;) (func (param i32 i64 i32) (result i64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;0;) (type 12)))
  (import "env" "emscripten_memcpy_big" (func (;1;) (type 2)))
  (import "env" "setTempRet0" (func (;2;) (type 3)))
  (func (;3;) (type 5)
    nop)
  (func (;4;) (type 5)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    local.set 1
    local.get 0
    global.set 0
    local.get 0
    i32.const 2016
    i32.load
    local.tee 2
    local.get 2
    i32.mul
    i32.const 2
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    i32.sub
    local.tee 4
    global.set 0
    local.get 2
    i32.const 1
    i32.ge_s
    if  ;; label = @1
      local.get 2
      i32.const 2
      i32.shl
      local.set 3
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 4
        local.get 0
        local.get 2
        i32.mul
        i32.const 2
        i32.shl
        i32.add
        i32.const 255
        local.get 3
        call 13
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        local.get 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1
    i32.const 1064
    i64.load
    i64.store offset=72
    local.get 1
    i32.const -64
    i32.sub
    i32.const 1056
    i64.load
    i64.store
    local.get 1
    i32.const 1048
    i64.load
    i64.store offset=56
    local.get 1
    i32.const 1040
    i64.load
    i64.store offset=48
    local.get 1
    i32.const 1096
    i64.load
    i64.store offset=40
    local.get 1
    i32.const 1088
    i64.load
    i64.store offset=32
    local.get 1
    i32.const 1080
    i64.load
    i64.store offset=24
    local.get 1
    i32.const 1072
    i64.load
    i64.store offset=16
    local.get 4
    i32.const 0
    i32.store
    block  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 1
      local.get 4
      local.get 1
      i32.const 48
      i32.add
      local.get 1
      i32.const 16
      i32.add
      call 5
      i32.eqz
      if  ;; label = @2
        i32.const 1104
        i32.const 0
        call 31
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
      i32.const 2016
      i32.load
      local.tee 5
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 5
      local.set 0
      loop  ;; label = @2
        local.get 0
        i32.const 1
        i32.ge_s
        if  ;; label = @3
          local.get 4
          local.get 3
          local.get 5
          i32.mul
          i32.const 2
          i32.shl
          i32.add
          local.set 2
          i32.const 0
          local.set 0
          loop  ;; label = @4
            local.get 1
            local.get 2
            local.get 0
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.store
            i32.const 1024
            local.get 1
            call 31
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 2016
            i32.load
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 1128
        i32.load
        call 7
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.const 2016
        i32.load
        local.tee 0
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 1
    i32.const 80
    i32.add
    global.set 0)
  (func (;5;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      i32.const 1
      i32.const 2016
      i32.load
      local.tee 9
      local.get 9
      i32.mul
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      i32.const 1
      i32.add
      local.set 11
      local.get 9
      local.set 6
      loop (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 4
          local.get 10
          i32.const 2
          i32.shl
          local.tee 7
          i32.add
          i32.load
          local.get 0
          i32.add
          local.tee 8
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 6
          local.get 5
          local.get 7
          i32.add
          i32.load
          local.get 1
          i32.add
          local.tee 7
          i32.le_s
          br_if 0 (;@3;)
          local.get 7
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 6
          local.get 8
          i32.le_s
          br_if 0 (;@3;)
          local.get 3
          local.get 6
          local.get 8
          i32.mul
          i32.const 2
          i32.shl
          i32.add
          local.get 7
          i32.const 2
          i32.shl
          local.tee 6
          i32.add
          i32.load
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          local.get 8
          local.get 9
          i32.mul
          i32.const 2
          i32.shl
          i32.add
          local.get 6
          i32.add
          local.tee 6
          local.get 2
          i32.store
          i32.const 1
          local.get 8
          local.get 7
          local.get 11
          local.get 3
          local.get 4
          local.get 5
          call 5
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          drop
          local.get 6
          i32.const -1
          i32.store
        end
        local.get 10
        i32.const 1
        i32.add
        local.tee 10
        i32.const 8
        i32.eq
        if (result i32)  ;; label = @3
          i32.const 0
        else
          i32.const 2016
          i32.load
          local.set 6
          br 1 (;@2;)
        end
      end
    end)
  (func (;6;) (type 0) (param i32) (result i32)
    i32.const 2016
    local.get 0
    i32.store
    call 4
    i32.const 0)
  (func (;7;) (type 3) (param i32)
    (local i32)
    local.get 0
    i32.load offset=76
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_s offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.tee 1
        local.get 0
        i32.load offset=16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 1
        i32.const 10
        i32.store8
        return
      end
      local.get 0
      call 15
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_s offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.tee 1
        local.get 0
        i32.load offset=16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 1
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      call 15
    end)
  (func (;8;) (type 0) (param i32) (result i32)
    i32.const 0)
  (func (;9;) (type 10) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;10;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 6
    i32.const 2
    local.set 7
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=60
          local.get 3
          i32.const 16
          i32.add
          i32.const 2
          local.get 3
          i32.const 12
          i32.add
          call 0
          call 12
          i32.eqz
          if  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.load offset=12
              local.tee 4
              i32.eq
              br_if 2 (;@3;)
              local.get 4
              i32.const -1
              i32.le_s
              br_if 3 (;@2;)
              local.get 1
              local.get 4
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 5
              i32.const 3
              i32.shl
              i32.add
              local.tee 9
              local.get 4
              local.get 8
              i32.const 0
              local.get 5
              select
              i32.sub
              local.tee 8
              local.get 9
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 5
              select
              i32.add
              local.tee 9
              local.get 9
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 6
              local.get 4
              i32.sub
              local.set 6
              local.get 0
              i32.load offset=60
              local.get 1
              i32.const 8
              i32.add
              local.get 1
              local.get 5
              select
              local.tee 1
              local.get 7
              local.get 5
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 0
              call 12
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 1
      i32.load offset=4
      i32.sub
    end
    local.set 4
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 4)
  (func (;11;) (type 7) (result i32)
    i32.const 3064)
  (func (;12;) (type 0) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 3064
    local.get 0
    i32.store
    i32.const -1)
  (func (;13;) (type 1) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 2
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const 3
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 4
      i32.sub
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const 4
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 12
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const 16
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 20
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 24
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 28
      i32.sub
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 4
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 5
      i64.const 32
      i64.shl
      local.get 5
      i64.or
      local.set 5
      local.get 3
      local.get 4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const 32
        i32.sub
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;14;) (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_u offset=74
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store8 offset=74
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;15;) (type 3) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 10
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 2
        if (result i32)  ;; label = @3
          local.get 2
        else
          local.get 0
          call 14
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=16
        end
        local.get 0
        i32.load offset=20
        local.tee 2
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        i32.load8_s offset=75
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 2)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=15
      drop
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;16;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u)
  (func (;17;) (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 0
    i32.ne
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.sub
            local.tee 1
            i32.const 0
            i32.ne
            local.set 2
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const 16843009
          i32.sub
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.sub
          local.tee 1
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func (;18;) (type 4) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 1948
          i32.load
          i32.load
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            i32.const 3064
            i32.const 25
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.const 2047
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          local.get 1
          i32.const 55296
          i32.ge_u
          i32.const 0
          local.get 1
          i32.const -8192
          i32.and
          i32.const 57344
          i32.ne
          select
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end
          local.get 1
          i32.const 65536
          i32.sub
          i32.const 1048575
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end
          i32.const 3064
          i32.const 25
          i32.store
        end
        i32.const -1
      else
        i32.const 1
      end
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func (;19;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    call 18)
  (func (;20;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    local.get 2
    i32.const 512
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 1
      drop
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.xor
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.lt_s
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -4
          i32.and
          local.tee 4
          i32.const 64
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const -64
          i32.add
          local.tee 0
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load
            i32.store
            local.get 2
            local.get 1
            i32.load offset=4
            i32.store offset=4
            local.get 2
            local.get 1
            i32.load offset=8
            i32.store offset=8
            local.get 2
            local.get 1
            i32.load offset=12
            i32.store offset=12
            local.get 2
            local.get 1
            i32.load offset=16
            i32.store offset=16
            local.get 2
            local.get 1
            i32.load offset=20
            i32.store offset=20
            local.get 2
            local.get 1
            i32.load offset=24
            i32.store offset=24
            local.get 2
            local.get 1
            i32.load offset=28
            i32.store offset=28
            local.get 2
            local.get 1
            i32.load offset=32
            i32.store offset=32
            local.get 2
            local.get 1
            i32.load offset=36
            i32.store offset=36
            local.get 2
            local.get 1
            i32.load offset=40
            i32.store offset=40
            local.get 2
            local.get 1
            i32.load offset=44
            i32.store offset=44
            local.get 2
            local.get 1
            i32.load offset=48
            i32.store offset=48
            local.get 2
            local.get 1
            i32.load offset=52
            i32.store offset=52
            local.get 2
            local.get 1
            i32.load offset=56
            i32.store offset=56
            local.get 2
            local.get 1
            i32.load offset=60
            i32.store offset=60
            local.get 1
            i32.const -64
            i32.sub
            local.set 1
            local.get 2
            i32.const -64
            i32.sub
            local.tee 2
            local.get 0
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.const 4
      i32.sub
      local.tee 4
      i32.gt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 4
        i32.le_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func (;21;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call 14
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 4
      i32.sub
      i32.gt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 2)
        drop
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        local.set 5
        loop  ;; label = @3
          local.get 5
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          i32.const 1
          i32.sub
          local.tee 5
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 2)
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 2
        i32.load offset=20
        local.set 4
      end
      local.get 4
      local.get 0
      local.get 1
      call 20
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
    end)
  (func (;22;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=204
    i32.const 0
    local.set 2
    local.get 3
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 13
    local.get 3
    local.get 3
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 1
      local.get 3
      i32.const 200
      i32.add
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.const 160
      i32.add
      call 23
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1
      local.get 2
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.ge_s
      select
      local.set 2
      local.get 0
      i32.load
      local.set 4
      local.get 0
      i32.load8_s offset=74
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 0
        local.get 4
        i32.const -33
        i32.and
        i32.store
      end
      local.get 4
      i32.const 32
      i32.and
      local.set 4
      block (result i32)  ;; label = @2
        local.get 0
        i32.load offset=48
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 3
          i32.const 200
          i32.add
          local.get 3
          i32.const 80
          i32.add
          local.get 3
          i32.const 160
          i32.add
          call 23
          br 1 (;@2;)
        end
        local.get 0
        i32.const 80
        i32.store offset=48
        local.get 0
        local.get 3
        i32.const 80
        i32.add
        i32.store offset=16
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        local.get 3
        i32.store offset=20
        local.get 0
        i32.load offset=44
        local.set 5
        local.get 0
        local.get 3
        i32.store offset=44
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call 23
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 2)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        drop
        local.get 0
        i32.const 0
        i32.store offset=20
        i32.const 0
      end
      drop
      local.get 0
      local.get 0
      i32.load
      local.get 4
      i32.or
      i32.store
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 208
    i32.add
    global.set 0)
  (func (;23;) (type 8) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=76
    local.get 5
    i32.const 55
    i32.add
    local.set 19
    local.get 5
    i32.const 56
    i32.add
    local.set 16
    i32.const 0
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 13
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 2147483647
          local.get 13
          i32.sub
          local.get 1
          i32.lt_s
          if  ;; label = @4
            i32.const 3064
            i32.const 61
            i32.store
            i32.const -1
            local.set 13
            br 1 (;@3;)
          end
          local.get 1
          local.get 13
          i32.add
          local.set 13
        end
        local.get 5
        i32.load offset=76
        local.tee 9
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              i32.load8_u
              local.tee 6
              if  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 255
                      i32.and
                      local.tee 6
                      i32.eqz
                      if  ;; label = @10
                        local.get 1
                        local.set 6
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.const 37
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 1
                      local.set 6
                      loop  ;; label = @10
                        local.get 1
                        i32.load8_u offset=1
                        i32.const 37
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 5
                        local.get 1
                        i32.const 2
                        i32.add
                        local.tee 7
                        i32.store offset=76
                        local.get 6
                        i32.const 1
                        i32.add
                        local.set 6
                        local.get 1
                        i32.load8_u offset=2
                        local.set 10
                        local.get 7
                        local.set 1
                        local.get 10
                        i32.const 37
                        i32.eq
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 6
                    local.get 9
                    i32.sub
                    local.set 1
                    local.get 0
                    if  ;; label = @9
                      local.get 0
                      local.get 9
                      local.get 1
                      call 24
                    end
                    local.get 1
                    br_if 6 (;@2;)
                    local.get 5
                    i32.load offset=76
                    i32.load8_s offset=1
                    call 16
                    local.set 1
                    local.get 5
                    i32.load offset=76
                    local.set 6
                    local.get 5
                    block (result i32)  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=2
                        i32.const 36
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_s offset=1
                        i32.const 48
                        i32.sub
                        local.set 15
                        i32.const 1
                        local.set 17
                        local.get 6
                        i32.const 3
                        i32.add
                        br 1 (;@9;)
                      end
                      i32.const -1
                      local.set 15
                      local.get 6
                      i32.const 1
                      i32.add
                    end
                    local.tee 1
                    i32.store offset=76
                    i32.const 0
                    local.set 14
                    block  ;; label = @9
                      local.get 1
                      i32.load8_s
                      local.tee 10
                      i32.const 32
                      i32.sub
                      local.tee 7
                      i32.const 31
                      i32.gt_u
                      if  ;; label = @10
                        local.get 1
                        local.set 6
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.set 6
                      i32.const 1
                      local.get 7
                      i32.shl
                      local.tee 7
                      i32.const 75913
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 5
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 6
                        i32.store offset=76
                        local.get 7
                        local.get 14
                        i32.or
                        local.set 14
                        local.get 1
                        i32.load8_s offset=1
                        local.tee 10
                        i32.const 32
                        i32.sub
                        local.tee 7
                        i32.const 32
                        i32.ge_u
                        br_if 1 (;@9;)
                        local.get 6
                        local.set 1
                        i32.const 1
                        local.get 7
                        i32.shl
                        local.tee 7
                        i32.const 75913
                        i32.and
                        br_if 0 (;@10;)
                      end
                    end
                    block  ;; label = @9
                      local.get 10
                      i32.const 42
                      i32.eq
                      if  ;; label = @10
                        local.get 5
                        block (result i32)  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.load8_s offset=1
                            call 16
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=76
                            local.tee 6
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load8_s offset=1
                            i32.const 2
                            i32.shl
                            local.get 4
                            i32.add
                            i32.const 192
                            i32.sub
                            i32.const 10
                            i32.store
                            local.get 6
                            i32.load8_s offset=1
                            i32.const 3
                            i32.shl
                            local.get 3
                            i32.add
                            i32.const 384
                            i32.sub
                            i32.load
                            local.set 11
                            i32.const 1
                            local.set 17
                            local.get 6
                            i32.const 3
                            i32.add
                            br 1 (;@11;)
                          end
                          local.get 17
                          br_if 6 (;@5;)
                          i32.const 0
                          local.set 17
                          i32.const 0
                          local.set 11
                          local.get 0
                          if  ;; label = @12
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 1
                            i32.load
                            local.set 11
                          end
                          local.get 5
                          i32.load offset=76
                          i32.const 1
                          i32.add
                        end
                        local.tee 1
                        i32.store offset=76
                        local.get 11
                        i32.const -1
                        i32.gt_s
                        br_if 1 (;@9;)
                        i32.const 0
                        local.get 11
                        i32.sub
                        local.set 11
                        local.get 14
                        i32.const 8192
                        i32.or
                        local.set 14
                        br 1 (;@9;)
                      end
                      local.get 5
                      i32.const 76
                      i32.add
                      call 25
                      local.tee 11
                      i32.const 0
                      i32.lt_s
                      br_if 4 (;@5;)
                      local.get 5
                      i32.load offset=76
                      local.set 1
                    end
                    i32.const -1
                    local.set 8
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      i32.const 46
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_u offset=1
                      i32.const 42
                      i32.eq
                      if  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load8_s offset=2
                          call 16
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.load offset=76
                          local.tee 1
                          i32.load8_u offset=3
                          i32.const 36
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load8_s offset=2
                          i32.const 2
                          i32.shl
                          local.get 4
                          i32.add
                          i32.const 192
                          i32.sub
                          i32.const 10
                          i32.store
                          local.get 1
                          i32.load8_s offset=2
                          i32.const 3
                          i32.shl
                          local.get 3
                          i32.add
                          i32.const 384
                          i32.sub
                          i32.load
                          local.set 8
                          local.get 5
                          local.get 1
                          i32.const 4
                          i32.add
                          local.tee 1
                          i32.store offset=76
                          br 2 (;@9;)
                        end
                        local.get 17
                        br_if 5 (;@5;)
                        local.get 0
                        if (result i32)  ;; label = @11
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 1
                          i32.load
                        else
                          i32.const 0
                        end
                        local.set 8
                        local.get 5
                        local.get 5
                        i32.load offset=76
                        i32.const 2
                        i32.add
                        local.tee 1
                        i32.store offset=76
                        br 1 (;@9;)
                      end
                      local.get 5
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store offset=76
                      local.get 5
                      i32.const 76
                      i32.add
                      call 25
                      local.set 8
                      local.get 5
                      i32.load offset=76
                      local.set 1
                    end
                    i32.const 0
                    local.set 6
                    loop  ;; label = @9
                      local.get 6
                      local.set 7
                      i32.const -1
                      local.set 12
                      local.get 1
                      i32.load8_s
                      i32.const 65
                      i32.sub
                      i32.const 57
                      i32.gt_u
                      br_if 8 (;@1;)
                      local.get 5
                      local.get 1
                      i32.const 1
                      i32.add
                      local.tee 10
                      i32.store offset=76
                      local.get 1
                      i32.load8_s
                      local.set 6
                      local.get 10
                      local.set 1
                      local.get 6
                      local.get 7
                      i32.const 58
                      i32.mul
                      i32.add
                      i32.const 1087
                      i32.add
                      i32.load8_u
                      local.tee 6
                      i32.const 1
                      i32.sub
                      i32.const 8
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        i32.const 19
                        i32.ne
                        if  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 10 (;@1;)
                          local.get 15
                          i32.const 0
                          i32.ge_s
                          if  ;; label = @12
                            local.get 4
                            local.get 15
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 6
                            i32.store
                            local.get 5
                            local.get 3
                            local.get 15
                            i32.const 3
                            i32.shl
                            i32.add
                            i64.load
                            i64.store offset=64
                            br 2 (;@10;)
                          end
                          local.get 0
                          i32.eqz
                          br_if 8 (;@3;)
                          local.get 5
                          i32.const -64
                          i32.sub
                          local.get 6
                          local.get 2
                          call 26
                          local.get 5
                          i32.load offset=76
                          local.set 10
                          br 2 (;@9;)
                        end
                        local.get 15
                        i32.const -1
                        i32.gt_s
                        br_if 9 (;@1;)
                      end
                      i32.const 0
                      local.set 1
                      local.get 0
                      i32.eqz
                      br_if 7 (;@2;)
                    end
                    local.get 14
                    i32.const -65537
                    i32.and
                    local.tee 18
                    local.get 14
                    local.get 14
                    i32.const 8192
                    i32.and
                    select
                    local.set 6
                    i32.const 0
                    local.set 12
                    i32.const 1132
                    local.set 15
                    local.get 16
                    local.set 14
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block (result i32)  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 10
                                                    i32.const 1
                                                    i32.sub
                                                    i32.load8_s
                                                    local.tee 1
                                                    i32.const -33
                                                    i32.and
                                                    local.get 1
                                                    local.get 1
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 3
                                                    i32.eq
                                                    select
                                                    local.get 1
                                                    local.get 7
                                                    select
                                                    local.tee 1
                                                    i32.const 88
                                                    i32.sub
                                                    br_table 4 (;@20;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 14 (;@10;) 20 (;@4;) 15 (;@9;) 6 (;@18;) 14 (;@10;) 14 (;@10;) 14 (;@10;) 20 (;@4;) 6 (;@18;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 20 (;@4;) 2 (;@22;) 5 (;@19;) 3 (;@21;) 20 (;@4;) 20 (;@4;) 9 (;@15;) 20 (;@4;) 1 (;@23;) 20 (;@4;) 20 (;@4;) 4 (;@20;) 0 (;@24;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 1
                                                    i32.const 65
                                                    i32.sub
                                                    br_table 14 (;@10;) 20 (;@4;) 11 (;@13;) 20 (;@4;) 14 (;@10;) 14 (;@10;) 14 (;@10;) 0 (;@24;)
                                                  end
                                                  local.get 1
                                                  i32.const 83
                                                  i32.eq
                                                  br_if 9 (;@14;)
                                                  br 19 (;@4;)
                                                end
                                                local.get 5
                                                i64.load offset=64
                                                local.set 20
                                                i32.const 1132
                                                br 5 (;@17;)
                                              end
                                              i32.const 0
                                              local.set 1
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 7
                                                            i32.const 255
                                                            i32.and
                                                            br_table 0 (;@28;) 1 (;@27;) 2 (;@26;) 3 (;@25;) 4 (;@24;) 26 (;@2;) 5 (;@23;) 6 (;@22;) 26 (;@2;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=64
                                                          local.get 13
                                                          i32.store
                                                          br 25 (;@2;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=64
                                                        local.get 13
                                                        i32.store
                                                        br 24 (;@2;)
                                                      end
                                                      local.get 5
                                                      i32.load offset=64
                                                      local.get 13
                                                      i64.extend_i32_s
                                                      i64.store
                                                      br 23 (;@2;)
                                                    end
                                                    local.get 5
                                                    i32.load offset=64
                                                    local.get 13
                                                    i32.store16
                                                    br 22 (;@2;)
                                                  end
                                                  local.get 5
                                                  i32.load offset=64
                                                  local.get 13
                                                  i32.store8
                                                  br 21 (;@2;)
                                                end
                                                local.get 5
                                                i32.load offset=64
                                                local.get 13
                                                i32.store
                                                br 20 (;@2;)
                                              end
                                              local.get 5
                                              i32.load offset=64
                                              local.get 13
                                              i64.extend_i32_s
                                              i64.store
                                              br 19 (;@2;)
                                            end
                                            local.get 8
                                            i32.const 8
                                            local.get 8
                                            i32.const 8
                                            i32.gt_u
                                            select
                                            local.set 8
                                            local.get 6
                                            i32.const 8
                                            i32.or
                                            local.set 6
                                            i32.const 120
                                            local.set 1
                                          end
                                          local.get 5
                                          i64.load offset=64
                                          local.get 16
                                          local.get 1
                                          i32.const 32
                                          i32.and
                                          call 27
                                          local.set 9
                                          local.get 6
                                          i32.const 8
                                          i32.and
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 5
                                          i64.load offset=64
                                          i64.eqz
                                          br_if 3 (;@16;)
                                          local.get 1
                                          i32.const 4
                                          i32.shr_u
                                          i32.const 1132
                                          i32.add
                                          local.set 15
                                          i32.const 2
                                          local.set 12
                                          br 3 (;@16;)
                                        end
                                        local.get 5
                                        i64.load offset=64
                                        local.get 16
                                        call 28
                                        local.set 9
                                        local.get 6
                                        i32.const 8
                                        i32.and
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 8
                                        local.get 16
                                        local.get 9
                                        i32.sub
                                        local.tee 1
                                        i32.const 1
                                        i32.add
                                        local.get 1
                                        local.get 8
                                        i32.lt_s
                                        select
                                        local.set 8
                                        br 2 (;@16;)
                                      end
                                      local.get 5
                                      i64.load offset=64
                                      local.tee 20
                                      i64.const -1
                                      i64.le_s
                                      if  ;; label = @18
                                        local.get 5
                                        i64.const 0
                                        local.get 20
                                        i64.sub
                                        local.tee 20
                                        i64.store offset=64
                                        i32.const 1
                                        local.set 12
                                        i32.const 1132
                                        br 1 (;@17;)
                                      end
                                      local.get 6
                                      i32.const 2048
                                      i32.and
                                      if  ;; label = @18
                                        i32.const 1
                                        local.set 12
                                        i32.const 1133
                                        br 1 (;@17;)
                                      end
                                      i32.const 1134
                                      i32.const 1132
                                      local.get 6
                                      i32.const 1
                                      i32.and
                                      local.tee 12
                                      select
                                    end
                                    local.set 15
                                    local.get 20
                                    local.get 16
                                    call 29
                                    local.set 9
                                  end
                                  local.get 6
                                  i32.const -65537
                                  i32.and
                                  local.get 6
                                  local.get 8
                                  i32.const -1
                                  i32.gt_s
                                  select
                                  local.set 6
                                  local.get 5
                                  i64.load offset=64
                                  local.set 20
                                  block  ;; label = @16
                                    local.get 8
                                    br_if 0 (;@16;)
                                    local.get 20
                                    i64.eqz
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 8
                                    local.get 16
                                    local.set 9
                                    br 12 (;@4;)
                                  end
                                  local.get 8
                                  local.get 20
                                  i64.eqz
                                  local.get 16
                                  local.get 9
                                  i32.sub
                                  i32.add
                                  local.tee 1
                                  local.get 1
                                  local.get 8
                                  i32.lt_s
                                  select
                                  local.set 8
                                  br 11 (;@4;)
                                end
                                local.get 5
                                i32.load offset=64
                                local.tee 1
                                i32.const 1142
                                local.get 1
                                select
                                local.tee 9
                                local.get 8
                                call 17
                                local.tee 1
                                local.get 8
                                local.get 9
                                i32.add
                                local.get 1
                                select
                                local.set 14
                                local.get 18
                                local.set 6
                                local.get 1
                                local.get 9
                                i32.sub
                                local.get 8
                                local.get 1
                                select
                                local.set 8
                                br 10 (;@4;)
                              end
                              local.get 8
                              if  ;; label = @14
                                local.get 5
                                i32.load offset=64
                                br 2 (;@12;)
                              end
                              i32.const 0
                              local.set 1
                              local.get 0
                              i32.const 32
                              local.get 11
                              i32.const 0
                              local.get 6
                              call 30
                              br 2 (;@11;)
                            end
                            local.get 5
                            i32.const 0
                            i32.store offset=12
                            local.get 5
                            local.get 5
                            i64.load offset=64
                            i64.store32 offset=8
                            local.get 5
                            local.get 5
                            i32.const 8
                            i32.add
                            i32.store offset=64
                            i32.const -1
                            local.set 8
                            local.get 5
                            i32.const 8
                            i32.add
                          end
                          local.set 7
                          i32.const 0
                          local.set 1
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 7
                              i32.load
                              local.tee 10
                              i32.eqz
                              br_if 1 (;@12;)
                              block  ;; label = @14
                                local.get 5
                                i32.const 4
                                i32.add
                                local.get 10
                                call 19
                                local.tee 10
                                i32.const 0
                                i32.lt_s
                                local.tee 9
                                br_if 0 (;@14;)
                                local.get 10
                                local.get 8
                                local.get 1
                                i32.sub
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 4
                                i32.add
                                local.set 7
                                local.get 8
                                local.get 1
                                local.get 10
                                i32.add
                                local.tee 1
                                i32.gt_u
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            i32.const -1
                            local.set 12
                            local.get 9
                            br_if 11 (;@1;)
                          end
                          local.get 0
                          i32.const 32
                          local.get 11
                          local.get 1
                          local.get 6
                          call 30
                          local.get 1
                          i32.eqz
                          if  ;; label = @12
                            i32.const 0
                            local.set 1
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 7
                          local.get 5
                          i32.load offset=64
                          local.set 10
                          loop  ;; label = @12
                            local.get 10
                            i32.load
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 5
                            i32.const 4
                            i32.add
                            local.get 9
                            call 19
                            local.tee 9
                            local.get 7
                            i32.add
                            local.tee 7
                            local.get 1
                            i32.gt_s
                            br_if 1 (;@11;)
                            local.get 0
                            local.get 5
                            i32.const 4
                            i32.add
                            local.get 9
                            call 24
                            local.get 10
                            i32.const 4
                            i32.add
                            local.set 10
                            local.get 1
                            local.get 7
                            i32.gt_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 0
                        i32.const 32
                        local.get 11
                        local.get 1
                        local.get 6
                        i32.const 8192
                        i32.xor
                        call 30
                        local.get 11
                        local.get 1
                        local.get 1
                        local.get 11
                        i32.lt_s
                        select
                        local.set 1
                        br 8 (;@2;)
                      end
                      local.get 0
                      local.get 5
                      f64.load offset=64
                      local.get 11
                      local.get 8
                      local.get 6
                      local.get 1
                      i32.const 0
                      call_indirect (type 14)
                      local.set 1
                      br 7 (;@2;)
                    end
                    local.get 5
                    local.get 5
                    i64.load offset=64
                    i64.store8 offset=55
                    i32.const 1
                    local.set 8
                    local.get 19
                    local.set 9
                    local.get 18
                    local.set 6
                    br 4 (;@4;)
                  end
                  local.get 5
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 7
                  i32.store offset=76
                  local.get 1
                  i32.load8_u offset=1
                  local.set 6
                  local.get 7
                  local.set 1
                  br 0 (;@7;)
                end
                unreachable
              end
              local.get 13
              local.set 12
              local.get 0
              br_if 4 (;@1;)
              local.get 17
              i32.eqz
              br_if 2 (;@3;)
              i32.const 1
              local.set 1
              loop  ;; label = @6
                local.get 4
                local.get 1
                i32.const 2
                i32.shl
                i32.add
                i32.load
                local.tee 6
                if  ;; label = @7
                  local.get 3
                  local.get 1
                  i32.const 3
                  i32.shl
                  i32.add
                  local.get 6
                  local.get 2
                  call 26
                  i32.const 1
                  local.set 12
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.const 10
                  i32.ne
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
              end
              i32.const 1
              local.set 12
              local.get 1
              i32.const 10
              i32.ge_u
              br_if 4 (;@1;)
              loop  ;; label = @6
                local.get 4
                local.get 1
                i32.const 2
                i32.shl
                i32.add
                i32.load
                br_if 1 (;@5;)
                local.get 1
                i32.const 1
                i32.add
                local.tee 1
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
              end
              br 4 (;@1;)
            end
            i32.const -1
            local.set 12
            br 3 (;@1;)
          end
          local.get 0
          i32.const 32
          local.get 12
          local.get 14
          local.get 9
          i32.sub
          local.tee 10
          local.get 8
          local.get 8
          local.get 10
          i32.lt_s
          select
          local.tee 14
          i32.add
          local.tee 7
          local.get 11
          local.get 7
          local.get 11
          i32.gt_s
          select
          local.tee 1
          local.get 7
          local.get 6
          call 30
          local.get 0
          local.get 15
          local.get 12
          call 24
          local.get 0
          i32.const 48
          local.get 1
          local.get 7
          local.get 6
          i32.const 65536
          i32.xor
          call 30
          local.get 0
          i32.const 48
          local.get 14
          local.get 10
          i32.const 0
          call 30
          local.get 0
          local.get 9
          local.get 10
          call 24
          local.get 0
          i32.const 32
          local.get 1
          local.get 7
          local.get 6
          i32.const 8192
          i32.xor
          call 30
          br 1 (;@2;)
        end
      end
      i32.const 0
      local.set 12
    end
    local.get 5
    i32.const 80
    i32.add
    global.set 0
    local.get 12)
  (func (;24;) (type 1) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call 21
    end)
  (func (;25;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    call 16
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.load8_s
        local.set 3
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 1
        i32.const 10
        i32.mul
        i32.add
        i32.const 48
        i32.sub
        local.set 1
        local.get 2
        i32.load8_s offset=1
        call 16
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;26;) (type 1) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 20
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 9
                          i32.sub
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 10 (;@1;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load32_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load16_s
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load16_u
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load8_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load8_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        f64.load
        f64.store
        return
      end
      local.get 0
      local.get 2
      i32.const 0
      call_indirect (type 6)
    end)
  (func (;27;) (type 15) (param i64 i32 i32) (result i32)
    local.get 0
    i64.eqz
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1616
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 4
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;28;) (type 9) (param i64 i32) (result i32)
    local.get 0
    i64.eqz
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 3
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;29;) (type 9) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 0
      i64.const 4294967296
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 5
    i32.wrap_i64
    local.tee 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 2
        local.get 2
        i32.const 10
        i32.div_u
        local.tee 3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 2
        i32.const 9
        i32.gt_u
        local.set 4
        local.get 3
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;30;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      i32.const 255
      i32.and
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 3
      select
      call 13
      local.get 3
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 24
          local.get 2
          i32.const 256
          i32.sub
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call 24
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;31;) (type 6) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 1128
    i32.load
    local.get 0
    local.get 1
    call 22
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;32;) (type 7) (result i32)
    global.get 0)
  (func (;33;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;34;) (type 0) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;35;) (type 8) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    local.get 1
    local.get 2
    i64.extend_i32_u
    local.get 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get 4
    local.get 0
    call_indirect (type 10)
    local.tee 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    call 2
    local.get 5
    i32.wrap_i64)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5246016))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 3))
  (export "knightsTour" (func 6))
  (export "__errno_location" (func 11))
  (export "__indirect_function_table" (table 0))
  (export "stackSave" (func 32))
  (export "stackRestore" (func 33))
  (export "stackAlloc" (func 34))
  (export "dynCall_jiji" (func 35))
  (elem (;0;) (i32.const 1) func 8 10 9)
  (data (;0;) (i32.const 1024) " %2d ")
  (data (;1;) (i32.const 1040) "\02\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\fe\ff\ff\ff\ff\ff\ff\ff\01\00\00\00\02\00\00\00\01\00\00\00\02\00\00\00\02\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\fe\ff\ff\ff\ff\ff\ff\ffSolution does not exist\00`\06\00\00-+   0X0x\00(null)\00\00\00\00\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\00\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;2;) (i32.const 1233) "\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;3;) (i32.const 1291) "\0c")
  (data (;4;) (i32.const 1303) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;5;) (i32.const 1349) "\0e")
  (data (;6;) (i32.const 1361) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;7;) (i32.const 1407) "\10")
  (data (;8;) (i32.const 1419) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;9;) (i32.const 1474) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;10;) (i32.const 1523) "\0b")
  (data (;11;) (i32.const 1535) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;12;) (i32.const 1581) "\0c")
  (data (;13;) (i32.const 1593) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF")
  (data (;14;) (i32.const 1632) "\05")
  (data (;15;) (i32.const 1644) "\01")
  (data (;16;) (i32.const 1668) "\02\00\00\00\03\00\00\00\f8\07\00\00\00\04")
  (data (;17;) (i32.const 1692) "\01")
  (data (;18;) (i32.const 1707) "\0a\ff\ff\ff\ff")
  (data (;19;) (i32.const 1948) "$\0c"))
