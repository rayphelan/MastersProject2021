(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i64)))
  (type (;11;) (func (result i32)))
  (type (;12;) (func (param i64 i32) (result i32)))
  (func (;0;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 245
        i32.ge_u
        if  ;; label = @3
          i32.const 0
          call 76
          local.tee 1
          local.get 1
          i32.const 8
          call 51
          i32.sub
          i32.const 20
          i32.const 8
          call 51
          i32.sub
          i32.const 16
          i32.const 8
          call 51
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 2
          i32.const 0
          i32.const 16
          i32.const 8
          call 51
          i32.const 2
          i32.shl
          i32.sub
          local.tee 1
          local.get 2
          local.get 1
          i32.lt_u
          select
          local.get 0
          i32.le_u
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.const 8
          call 51
          local.set 4
          i32.const 1049608
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          local.get 4
          i32.sub
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                i32.const 0
                local.get 4
                i32.const 8
                i32.shr_u
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                drop
                i32.const 31
                local.get 4
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                drop
                local.get 4
                i32.const 6
                local.get 0
                i32.clz
                local.tee 0
                i32.sub
                i32.const 31
                i32.and
                i32.shr_u
                i32.const 1
                i32.and
                local.get 0
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
              end
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1049876
              i32.add
              i32.load
              local.tee 0
              if  ;; label = @6
                local.get 4
                local.get 5
                call 49
                i32.const 31
                i32.and
                i32.shl
                local.set 7
                i32.const 0
                local.set 1
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    call 69
                    local.tee 2
                    local.get 4
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 4
                    i32.sub
                    local.tee 2
                    local.get 3
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.set 1
                    local.get 2
                    local.tee 3
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 3
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 2
                  local.get 6
                  local.get 2
                  local.get 0
                  local.get 7
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 0
                  i32.ne
                  select
                  local.get 6
                  local.get 2
                  select
                  local.set 6
                  local.get 7
                  i32.const 1
                  i32.shl
                  local.set 7
                  local.get 0
                  br_if 0 (;@7;)
                end
                local.get 6
                if  ;; label = @7
                  local.get 6
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 1
                br_if 2 (;@4;)
              end
              i32.const 0
              local.set 1
              i32.const 1
              local.get 5
              i32.const 31
              i32.and
              i32.shl
              call 55
              i32.const 1049608
              i32.load
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              call 61
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1049876
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
            end
            loop  ;; label = @5
              local.get 0
              local.get 1
              local.get 0
              call 69
              local.tee 1
              local.get 4
              i32.ge_u
              local.get 1
              local.get 4
              i32.sub
              local.tee 6
              local.get 3
              i32.lt_u
              i32.and
              local.tee 2
              select
              local.set 1
              local.get 6
              local.get 3
              local.get 2
              select
              local.set 3
              local.get 0
              call 48
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          i32.const 1050004
          i32.load
          local.tee 0
          local.get 4
          i32.ge_u
          i32.const 0
          local.get 3
          local.get 0
          local.get 4
          i32.sub
          i32.ge_u
          select
          br_if 1 (;@2;)
          local.get 1
          local.tee 0
          local.get 4
          call 74
          local.set 5
          local.get 0
          call 11
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.const 8
            call 51
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 4
              call 63
              local.get 5
              local.get 3
              call 50
              local.get 3
              i32.const 256
              i32.ge_u
              if  ;; label = @6
                local.get 5
                local.get 3
                call 10
                br 2 (;@4;)
              end
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 1
              i32.const 3
              i32.shl
              i32.const 1049612
              i32.add
              local.set 6
              block (result i32)  ;; label = @6
                i32.const 1049604
                i32.load
                local.tee 2
                i32.const 1
                local.get 1
                i32.shl
                local.tee 1
                i32.and
                if  ;; label = @7
                  local.get 6
                  i32.load offset=8
                  br 1 (;@6;)
                end
                i32.const 1049604
                local.get 1
                local.get 2
                i32.or
                i32.store
                local.get 6
              end
              local.set 1
              local.get 6
              local.get 5
              i32.store offset=8
              local.get 1
              local.get 5
              i32.store offset=12
              local.get 5
              local.get 6
              i32.store offset=12
              local.get 5
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            local.get 3
            local.get 4
            i32.add
            call 47
          end
          local.get 0
          call 76
          local.tee 3
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 16
        local.get 0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call 51
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 51
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 1049604
                    i32.load
                    local.tee 1
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    local.tee 0
                    i32.const 31
                    i32.and
                    local.tee 2
                    i32.shr_u
                    local.tee 6
                    i32.const 3
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 4
                      i32.const 1050004
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 6
                      br_if 1 (;@8;)
                      i32.const 1049608
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      call 61
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1049876
                      i32.add
                      i32.load
                      local.tee 1
                      call 69
                      local.get 4
                      i32.sub
                      local.set 3
                      local.get 1
                      call 48
                      local.tee 0
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          call 69
                          local.get 4
                          i32.sub
                          local.tee 2
                          local.get 3
                          local.get 2
                          local.get 3
                          i32.lt_u
                          local.tee 2
                          select
                          local.set 3
                          local.get 0
                          local.get 1
                          local.get 2
                          select
                          local.set 1
                          local.get 0
                          call 48
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 1
                      local.tee 2
                      local.get 4
                      call 74
                      local.set 0
                      local.get 1
                      call 11
                      local.get 3
                      i32.const 16
                      i32.const 8
                      call 51
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 2
                      local.get 4
                      call 63
                      local.get 0
                      local.get 3
                      call 50
                      i32.const 1050004
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 1
                      i32.const 3
                      i32.shr_u
                      local.tee 1
                      i32.const 3
                      i32.shl
                      i32.const 1049612
                      i32.add
                      local.set 7
                      i32.const 1050012
                      i32.load
                      local.set 5
                      i32.const 1049604
                      i32.load
                      local.tee 6
                      i32.const 1
                      local.get 1
                      i32.const 31
                      i32.and
                      i32.shl
                      local.tee 1
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 7
                      i32.load offset=8
                      br 3 (;@6;)
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.const -1
                      i32.xor
                      i32.const 1
                      i32.and
                      local.get 0
                      i32.add
                      local.tee 3
                      i32.const 3
                      i32.shl
                      local.tee 0
                      i32.const 1049620
                      i32.add
                      i32.load
                      local.tee 6
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 2
                      local.get 0
                      i32.const 1049612
                      i32.add
                      local.tee 0
                      i32.ne
                      if  ;; label = @10
                        local.get 2
                        local.get 0
                        i32.store offset=12
                        local.get 0
                        local.get 2
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      i32.const 1049604
                      local.get 1
                      i32.const -2
                      local.get 3
                      i32.rotl
                      i32.and
                      i32.store
                    end
                    local.get 6
                    local.get 3
                    i32.const 3
                    i32.shl
                    call 47
                    local.get 6
                    call 76
                    local.set 3
                    br 7 (;@1;)
                  end
                  block  ;; label = @8
                    i32.const 1
                    local.get 2
                    i32.shl
                    call 55
                    local.get 6
                    local.get 2
                    i32.shl
                    i32.and
                    call 61
                    i32.ctz
                    local.tee 2
                    i32.const 3
                    i32.shl
                    local.tee 0
                    i32.const 1049620
                    i32.add
                    i32.load
                    local.tee 3
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 1
                    local.get 0
                    i32.const 1049612
                    i32.add
                    local.tee 0
                    i32.ne
                    if  ;; label = @9
                      local.get 1
                      local.get 0
                      i32.store offset=12
                      local.get 0
                      local.get 1
                      i32.store offset=8
                      br 1 (;@8;)
                    end
                    i32.const 1049604
                    i32.const 1049604
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  local.get 3
                  local.get 4
                  call 63
                  local.get 3
                  local.get 4
                  call 74
                  local.tee 6
                  local.get 2
                  i32.const 3
                  i32.shl
                  local.get 4
                  i32.sub
                  local.tee 2
                  call 50
                  i32.const 1050004
                  i32.load
                  local.tee 0
                  if  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shr_u
                    local.tee 0
                    i32.const 3
                    i32.shl
                    i32.const 1049612
                    i32.add
                    local.set 7
                    i32.const 1050012
                    i32.load
                    local.set 5
                    block (result i32)  ;; label = @9
                      i32.const 1049604
                      i32.load
                      local.tee 1
                      i32.const 1
                      local.get 0
                      i32.const 31
                      i32.and
                      i32.shl
                      local.tee 0
                      i32.and
                      if  ;; label = @10
                        local.get 7
                        i32.load offset=8
                        br 1 (;@9;)
                      end
                      i32.const 1049604
                      local.get 0
                      local.get 1
                      i32.or
                      i32.store
                      local.get 7
                    end
                    local.set 0
                    local.get 7
                    local.get 5
                    i32.store offset=8
                    local.get 0
                    local.get 5
                    i32.store offset=12
                    local.get 5
                    local.get 7
                    i32.store offset=12
                    local.get 5
                    local.get 0
                    i32.store offset=8
                  end
                  i32.const 1050012
                  local.get 6
                  i32.store
                  i32.const 1050004
                  local.get 2
                  i32.store
                  local.get 3
                  call 76
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1049604
                local.get 1
                local.get 6
                i32.or
                i32.store
                local.get 7
              end
              local.set 1
              local.get 7
              local.get 5
              i32.store offset=8
              local.get 1
              local.get 5
              i32.store offset=12
              local.get 5
              local.get 7
              i32.store offset=12
              local.get 5
              local.get 1
              i32.store offset=8
            end
            i32.const 1050012
            local.get 0
            i32.store
            i32.const 1050004
            local.get 3
            i32.store
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          local.get 4
          i32.add
          call 47
        end
        local.get 2
        call 76
        local.tee 3
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1050004
                i32.load
                local.tee 0
                local.get 4
                i32.lt_u
                if  ;; label = @7
                  i32.const 1050008
                  i32.load
                  local.tee 0
                  local.get 4
                  i32.gt_u
                  br_if 3 (;@4;)
                  i32.const 0
                  local.set 3
                  local.get 11
                  local.get 4
                  i32.const 0
                  call 76
                  local.tee 0
                  i32.sub
                  local.get 0
                  i32.const 8
                  call 51
                  i32.add
                  i32.const 20
                  i32.const 8
                  call 51
                  i32.add
                  i32.const 16
                  i32.const 8
                  call 51
                  i32.add
                  i32.const 8
                  i32.add
                  i32.const 65536
                  call 51
                  call 35
                  local.get 11
                  i32.load
                  local.tee 8
                  i32.eqz
                  br_if 6 (;@1;)
                  local.get 11
                  i32.load offset=8
                  local.set 12
                  i32.const 1050020
                  local.get 11
                  i32.load offset=4
                  local.tee 10
                  i32.const 1050020
                  i32.load
                  i32.add
                  local.tee 1
                  i32.store
                  i32.const 1050024
                  i32.const 1050024
                  i32.load
                  local.tee 0
                  local.get 1
                  local.get 0
                  local.get 1
                  i32.gt_u
                  select
                  i32.store
                  i32.const 1050016
                  i32.load
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 1050028
                  local.set 0
                  loop  ;; label = @8
                    local.get 0
                    call 64
                    local.get 8
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 0
                    i32.load offset=8
                    local.tee 0
                    br_if 0 (;@8;)
                  end
                  br 4 (;@3;)
                end
                i32.const 1050012
                i32.load
                local.set 2
                local.get 0
                local.get 4
                i32.sub
                local.tee 1
                i32.const 16
                i32.const 8
                call 51
                i32.lt_u
                if  ;; label = @7
                  i32.const 1050012
                  i32.const 0
                  i32.store
                  i32.const 1050004
                  i32.load
                  local.set 0
                  i32.const 1050004
                  i32.const 0
                  i32.store
                  local.get 2
                  local.get 0
                  call 47
                  local.get 2
                  call 76
                  local.set 3
                  br 6 (;@1;)
                end
                local.get 2
                local.get 4
                call 74
                local.set 0
                i32.const 1050004
                local.get 1
                i32.store
                i32.const 1050012
                local.get 0
                i32.store
                local.get 0
                local.get 1
                call 50
                local.get 2
                local.get 4
                call 63
                local.get 2
                call 76
                local.set 3
                br 5 (;@1;)
              end
              i32.const 1050048
              i32.load
              local.tee 0
              i32.const 0
              local.get 8
              local.get 0
              i32.ge_u
              select
              i32.eqz
              if  ;; label = @6
                i32.const 1050048
                local.get 8
                i32.store
              end
              i32.const 1050052
              i32.const 4095
              i32.store
              i32.const 1050040
              local.get 12
              i32.store
              i32.const 1050032
              local.get 10
              i32.store
              i32.const 1050028
              local.get 8
              i32.store
              i32.const 1049624
              i32.const 1049612
              i32.store
              i32.const 1049632
              i32.const 1049620
              i32.store
              i32.const 1049620
              i32.const 1049612
              i32.store
              i32.const 1049640
              i32.const 1049628
              i32.store
              i32.const 1049628
              i32.const 1049620
              i32.store
              i32.const 1049648
              i32.const 1049636
              i32.store
              i32.const 1049636
              i32.const 1049628
              i32.store
              i32.const 1049656
              i32.const 1049644
              i32.store
              i32.const 1049644
              i32.const 1049636
              i32.store
              i32.const 1049664
              i32.const 1049652
              i32.store
              i32.const 1049652
              i32.const 1049644
              i32.store
              i32.const 1049672
              i32.const 1049660
              i32.store
              i32.const 1049660
              i32.const 1049652
              i32.store
              i32.const 1049680
              i32.const 1049668
              i32.store
              i32.const 1049668
              i32.const 1049660
              i32.store
              i32.const 1049688
              i32.const 1049676
              i32.store
              i32.const 1049676
              i32.const 1049668
              i32.store
              i32.const 1049684
              i32.const 1049676
              i32.store
              i32.const 1049696
              i32.const 1049684
              i32.store
              i32.const 1049692
              i32.const 1049684
              i32.store
              i32.const 1049704
              i32.const 1049692
              i32.store
              i32.const 1049700
              i32.const 1049692
              i32.store
              i32.const 1049712
              i32.const 1049700
              i32.store
              i32.const 1049708
              i32.const 1049700
              i32.store
              i32.const 1049720
              i32.const 1049708
              i32.store
              i32.const 1049716
              i32.const 1049708
              i32.store
              i32.const 1049728
              i32.const 1049716
              i32.store
              i32.const 1049724
              i32.const 1049716
              i32.store
              i32.const 1049736
              i32.const 1049724
              i32.store
              i32.const 1049732
              i32.const 1049724
              i32.store
              i32.const 1049744
              i32.const 1049732
              i32.store
              i32.const 1049740
              i32.const 1049732
              i32.store
              i32.const 1049752
              i32.const 1049740
              i32.store
              i32.const 1049760
              i32.const 1049748
              i32.store
              i32.const 1049748
              i32.const 1049740
              i32.store
              i32.const 1049768
              i32.const 1049756
              i32.store
              i32.const 1049756
              i32.const 1049748
              i32.store
              i32.const 1049776
              i32.const 1049764
              i32.store
              i32.const 1049764
              i32.const 1049756
              i32.store
              i32.const 1049784
              i32.const 1049772
              i32.store
              i32.const 1049772
              i32.const 1049764
              i32.store
              i32.const 1049792
              i32.const 1049780
              i32.store
              i32.const 1049780
              i32.const 1049772
              i32.store
              i32.const 1049800
              i32.const 1049788
              i32.store
              i32.const 1049788
              i32.const 1049780
              i32.store
              i32.const 1049808
              i32.const 1049796
              i32.store
              i32.const 1049796
              i32.const 1049788
              i32.store
              i32.const 1049816
              i32.const 1049804
              i32.store
              i32.const 1049804
              i32.const 1049796
              i32.store
              i32.const 1049824
              i32.const 1049812
              i32.store
              i32.const 1049812
              i32.const 1049804
              i32.store
              i32.const 1049832
              i32.const 1049820
              i32.store
              i32.const 1049820
              i32.const 1049812
              i32.store
              i32.const 1049840
              i32.const 1049828
              i32.store
              i32.const 1049828
              i32.const 1049820
              i32.store
              i32.const 1049848
              i32.const 1049836
              i32.store
              i32.const 1049836
              i32.const 1049828
              i32.store
              i32.const 1049856
              i32.const 1049844
              i32.store
              i32.const 1049844
              i32.const 1049836
              i32.store
              i32.const 1049864
              i32.const 1049852
              i32.store
              i32.const 1049852
              i32.const 1049844
              i32.store
              i32.const 1049872
              i32.const 1049860
              i32.store
              i32.const 1049860
              i32.const 1049852
              i32.store
              i32.const 1049868
              i32.const 1049860
              i32.store
              i32.const 0
              call 76
              local.tee 3
              i32.const 8
              call 51
              local.set 6
              i32.const 20
              i32.const 8
              call 51
              local.set 2
              i32.const 16
              i32.const 8
              call 51
              local.set 1
              local.get 8
              local.get 8
              call 76
              local.tee 0
              i32.const 8
              call 51
              local.get 0
              i32.sub
              local.tee 0
              call 74
              local.set 5
              i32.const 1050008
              local.get 3
              local.get 10
              i32.add
              local.get 6
              i32.sub
              local.get 2
              i32.sub
              local.get 1
              i32.sub
              local.get 0
              i32.sub
              local.tee 3
              i32.store
              i32.const 1050016
              local.get 5
              i32.store
              local.get 5
              local.get 3
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              call 76
              local.tee 6
              i32.const 8
              call 51
              local.set 2
              i32.const 20
              i32.const 8
              call 51
              local.set 1
              i32.const 16
              i32.const 8
              call 51
              local.set 0
              local.get 5
              local.get 3
              call 74
              local.get 0
              local.get 1
              local.get 2
              local.get 6
              i32.sub
              i32.add
              i32.add
              i32.store offset=4
              i32.const 1050044
              i32.const 2097152
              i32.store
              br 3 (;@2;)
            end
            local.get 0
            call 71
            br_if 1 (;@3;)
            local.get 0
            call 72
            local.get 12
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            i32.const 1050016
            i32.load
            call 44
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=4
            local.get 10
            i32.add
            i32.store offset=4
            i32.const 1050008
            i32.load
            local.set 1
            i32.const 1050016
            i32.load
            local.tee 0
            local.get 0
            call 76
            local.tee 0
            i32.const 8
            call 51
            local.get 0
            i32.sub
            local.tee 0
            call 74
            local.set 5
            i32.const 1050008
            local.get 1
            local.get 10
            i32.add
            local.get 0
            i32.sub
            local.tee 3
            i32.store
            i32.const 1050016
            local.get 5
            i32.store
            local.get 5
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            call 76
            local.tee 6
            i32.const 8
            call 51
            local.set 2
            i32.const 20
            i32.const 8
            call 51
            local.set 1
            i32.const 16
            i32.const 8
            call 51
            local.set 0
            local.get 5
            local.get 3
            call 74
            local.get 0
            local.get 1
            local.get 2
            local.get 6
            i32.sub
            i32.add
            i32.add
            i32.store offset=4
            i32.const 1050044
            i32.const 2097152
            i32.store
            br 2 (;@2;)
          end
          i32.const 1050008
          local.get 0
          local.get 4
          i32.sub
          local.tee 1
          i32.store
          i32.const 1050016
          i32.const 1050016
          i32.load
          local.tee 2
          local.get 4
          call 74
          local.tee 0
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 4
          call 63
          local.get 2
          call 76
          local.set 3
          br 2 (;@1;)
        end
        i32.const 1050048
        i32.const 1050048
        i32.load
        local.tee 0
        local.get 8
        local.get 8
        local.get 0
        i32.gt_u
        select
        i32.store
        local.get 8
        local.get 10
        i32.add
        local.set 1
        i32.const 1050028
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.get 0
            i32.load
            i32.ne
            if  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 0
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 0
          call 71
          br_if 0 (;@3;)
          local.get 0
          call 72
          local.get 12
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          local.get 0
          local.get 8
          i32.store
          local.get 0
          local.get 0
          i32.load offset=4
          local.get 10
          i32.add
          i32.store offset=4
          local.get 8
          call 76
          local.tee 6
          i32.const 8
          call 51
          local.set 2
          local.get 3
          call 76
          local.tee 1
          i32.const 8
          call 51
          local.set 0
          local.get 8
          local.get 2
          local.get 6
          i32.sub
          i32.add
          local.tee 5
          local.get 4
          call 74
          local.set 7
          local.get 5
          local.get 4
          call 63
          local.get 3
          local.get 0
          local.get 1
          i32.sub
          i32.add
          local.tee 0
          local.get 5
          i32.sub
          local.get 4
          i32.sub
          local.set 4
          block  ;; label = @4
            local.get 0
            i32.const 1050016
            i32.load
            i32.ne
            if  ;; label = @5
              i32.const 1050012
              i32.load
              local.get 0
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              call 60
              i32.eqz
              if  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  call 69
                  local.tee 6
                  i32.const 256
                  i32.ge_u
                  if  ;; label = @8
                    local.get 0
                    call 11
                    br 1 (;@7;)
                  end
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 2
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.load
                  local.tee 1
                  i32.ne
                  if  ;; label = @8
                    local.get 1
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 1
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  i32.const 1049604
                  i32.const 1049604
                  i32.load
                  i32.const -2
                  local.get 6
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store
                end
                local.get 4
                local.get 6
                i32.add
                local.set 4
                local.get 0
                local.get 6
                call 74
                local.set 0
              end
              local.get 7
              local.get 4
              local.get 0
              call 45
              local.get 4
              i32.const 256
              i32.ge_u
              if  ;; label = @6
                local.get 7
                local.get 4
                call 10
                local.get 5
                call 76
                local.set 3
                br 5 (;@1;)
              end
              local.get 4
              i32.const 3
              i32.shr_u
              local.tee 0
              i32.const 3
              i32.shl
              i32.const 1049612
              i32.add
              local.set 2
              block (result i32)  ;; label = @6
                i32.const 1049604
                i32.load
                local.tee 1
                i32.const 1
                local.get 0
                i32.shl
                local.tee 0
                i32.and
                if  ;; label = @7
                  local.get 2
                  i32.load offset=8
                  br 1 (;@6;)
                end
                i32.const 1049604
                local.get 0
                local.get 1
                i32.or
                i32.store
                local.get 2
              end
              local.set 0
              local.get 2
              local.get 7
              i32.store offset=8
              local.get 0
              local.get 7
              i32.store offset=12
              local.get 7
              local.get 2
              i32.store offset=12
              local.get 7
              local.get 0
              i32.store offset=8
              local.get 5
              call 76
              local.set 3
              br 4 (;@1;)
            end
            i32.const 1050016
            local.get 7
            i32.store
            i32.const 1050008
            i32.const 1050008
            i32.load
            local.get 4
            i32.add
            local.tee 0
            i32.store
            local.get 7
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 5
            call 76
            local.set 3
            br 3 (;@1;)
          end
          i32.const 1050012
          local.get 7
          i32.store
          i32.const 1050004
          i32.const 1050004
          i32.load
          local.get 4
          i32.add
          local.tee 0
          i32.store
          local.get 7
          local.get 0
          call 50
          local.get 5
          call 76
          local.set 3
          br 2 (;@1;)
        end
        i32.const 1050016
        i32.load
        local.set 9
        i32.const 1050028
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load
            local.get 9
            i32.le_u
            if  ;; label = @5
              local.get 0
              call 64
              local.get 9
              i32.gt_u
              br_if 2 (;@3;)
            end
            local.get 0
            i32.load offset=8
            local.tee 0
            br_if 0 (;@4;)
          end
          i32.const 0
          local.set 0
        end
        local.get 9
        local.get 0
        call 64
        local.tee 7
        i32.const 20
        i32.const 8
        call 51
        local.tee 16
        i32.sub
        i32.const -23
        i32.add
        local.tee 1
        call 76
        local.tee 0
        i32.const 8
        call 51
        local.get 0
        i32.sub
        local.get 1
        i32.add
        local.tee 0
        local.get 0
        i32.const 16
        i32.const 8
        call 51
        local.get 9
        i32.add
        i32.lt_u
        select
        local.tee 13
        call 76
        local.set 14
        local.get 13
        local.get 16
        call 74
        local.set 0
        i32.const 0
        call 76
        local.tee 5
        i32.const 8
        call 51
        local.set 3
        i32.const 20
        i32.const 8
        call 51
        local.set 6
        i32.const 16
        i32.const 8
        call 51
        local.set 2
        local.get 8
        local.get 8
        call 76
        local.tee 1
        i32.const 8
        call 51
        local.get 1
        i32.sub
        local.tee 1
        call 74
        local.set 15
        i32.const 1050008
        local.get 5
        local.get 10
        i32.add
        local.get 3
        i32.sub
        local.get 6
        i32.sub
        local.get 2
        i32.sub
        local.get 1
        i32.sub
        local.tee 5
        i32.store
        i32.const 1050016
        local.get 15
        i32.store
        local.get 15
        local.get 5
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 0
        call 76
        local.tee 3
        i32.const 8
        call 51
        local.set 6
        i32.const 20
        i32.const 8
        call 51
        local.set 2
        i32.const 16
        i32.const 8
        call 51
        local.set 1
        local.get 15
        local.get 5
        call 74
        local.get 1
        local.get 2
        local.get 6
        local.get 3
        i32.sub
        i32.add
        i32.add
        i32.store offset=4
        i32.const 1050044
        i32.const 2097152
        i32.store
        local.get 13
        local.get 16
        call 63
        i32.const 1050028
        i64.load align=4
        local.set 17
        local.get 14
        i32.const 8
        i32.add
        i32.const 1050036
        i64.load align=4
        i64.store align=4
        local.get 14
        local.get 17
        i64.store align=4
        i32.const 1050040
        local.get 12
        i32.store
        i32.const 1050032
        local.get 10
        i32.store
        i32.const 1050028
        local.get 8
        i32.store
        i32.const 1050036
        local.get 14
        i32.store
        loop  ;; label = @3
          local.get 0
          i32.const 4
          call 74
          local.set 1
          local.get 0
          i32.const 7
          i32.store offset=4
          local.get 7
          local.get 1
          local.tee 0
          i32.const 4
          i32.add
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 9
        local.get 13
        i32.eq
        br_if 0 (;@2;)
        local.get 9
        local.get 13
        local.get 9
        i32.sub
        local.tee 0
        local.get 9
        local.get 0
        call 74
        call 45
        local.get 0
        i32.const 256
        i32.ge_u
        if  ;; label = @3
          local.get 9
          local.get 0
          call 10
          br 1 (;@2;)
        end
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 0
        i32.const 3
        i32.shl
        i32.const 1049612
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1049604
          i32.load
          local.tee 1
          i32.const 1
          local.get 0
          i32.shl
          local.tee 0
          i32.and
          if  ;; label = @4
            local.get 2
            i32.load offset=8
            br 1 (;@3;)
          end
          i32.const 1049604
          local.get 0
          local.get 1
          i32.or
          i32.store
          local.get 2
        end
        local.set 0
        local.get 2
        local.get 9
        i32.store offset=8
        local.get 0
        local.get 9
        i32.store offset=12
        local.get 9
        local.get 2
        i32.store offset=12
        local.get 9
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      local.set 3
      i32.const 1050008
      i32.load
      local.tee 0
      local.get 4
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1050008
      local.get 0
      local.get 4
      i32.sub
      local.tee 1
      i32.store
      i32.const 1050016
      i32.const 1050016
      i32.load
      local.tee 2
      local.get 4
      call 74
      local.tee 0
      i32.store
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 4
      call 63
      local.get 2
      call 76
      local.set 3
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;1;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    call 77
    local.tee 0
    local.get 0
    call 69
    local.tee 2
    call 74
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call 70
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 3
        block  ;; label = @3
          local.get 0
          call 62
          i32.eqz
          if  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            local.set 2
            local.get 0
            local.get 3
            call 75
            local.tee 0
            i32.const 1050012
            i32.load
            i32.ne
            br_if 1 (;@3;)
            local.get 1
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            i32.const 1050004
            local.get 2
            i32.store
            local.get 0
            local.get 2
            local.get 1
            call 45
            return
          end
          local.get 2
          local.get 3
          i32.add
          i32.const 16
          i32.add
          local.set 0
          br 2 (;@1;)
        end
        local.get 3
        i32.const 256
        i32.ge_u
        if  ;; label = @3
          local.get 0
          call 11
          br 1 (;@2;)
        end
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 4
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 5
        i32.ne
        if  ;; label = @3
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=8
          br 1 (;@2;)
        end
        i32.const 1049604
        i32.const 1049604
        i32.load
        i32.const -2
        local.get 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      block  ;; label = @2
        local.get 1
        call 59
        if  ;; label = @3
          local.get 0
          local.get 2
          local.get 1
          call 45
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 1050016
          i32.load
          local.get 1
          i32.ne
          if  ;; label = @4
            local.get 1
            i32.const 1050012
            i32.load
            i32.ne
            br_if 1 (;@3;)
            i32.const 1050012
            local.get 0
            i32.store
            i32.const 1050004
            i32.const 1050004
            i32.load
            local.get 2
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            call 50
            return
          end
          i32.const 1050016
          local.get 0
          i32.store
          i32.const 1050008
          i32.const 1050008
          i32.load
          local.get 2
          i32.add
          local.tee 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          i32.const 1050012
          i32.load
          local.get 0
          i32.eq
          if  ;; label = @4
            i32.const 1050004
            i32.const 0
            i32.store
            i32.const 1050012
            i32.const 0
            i32.store
          end
          i32.const 1050044
          i32.load
          local.get 1
          i32.ge_u
          br_if 2 (;@1;)
          i32.const 0
          call 76
          local.tee 0
          i32.const 8
          call 51
          local.set 1
          i32.const 20
          i32.const 8
          call 51
          local.set 3
          i32.const 16
          i32.const 8
          call 51
          local.set 2
          i32.const 16
          i32.const 8
          call 51
          local.set 4
          i32.const 1050016
          i32.load
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.sub
          local.get 3
          i32.sub
          local.get 2
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 0
          i32.const 0
          local.get 4
          i32.const 2
          i32.shl
          i32.sub
          local.tee 1
          local.get 0
          local.get 1
          i32.lt_u
          select
          i32.eqz
          br_if 2 (;@1;)
          i32.const 0
          call 76
          local.tee 0
          i32.const 8
          call 51
          local.set 1
          i32.const 20
          i32.const 8
          call 51
          local.set 2
          i32.const 16
          i32.const 8
          call 51
          local.set 4
          i32.const 0
          block  ;; label = @4
            i32.const 1050008
            i32.load
            local.tee 5
            local.get 4
            local.get 2
            local.get 1
            local.get 0
            i32.sub
            i32.add
            i32.add
            local.tee 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 1050016
            i32.load
            local.set 1
            i32.const 1050028
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load
                local.get 1
                i32.le_u
                if  ;; label = @7
                  local.get 0
                  call 64
                  local.get 1
                  i32.gt_u
                  br_if 2 (;@5;)
                end
                local.get 0
                i32.load offset=8
                local.tee 0
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 0
            end
            local.get 0
            call 71
            br_if 0 (;@4;)
            local.get 0
            i32.const 12
            i32.add
            i32.load
            drop
            br 0 (;@4;)
          end
          i32.const 0
          call 9
          i32.sub
          i32.ne
          br_if 2 (;@1;)
          i32.const 1050008
          i32.load
          i32.const 1050044
          i32.load
          i32.le_u
          br_if 2 (;@1;)
          i32.const 1050044
          i32.const -1
          i32.store
          return
        end
        local.get 1
        call 69
        local.tee 3
        local.get 2
        i32.add
        local.set 2
        block  ;; label = @3
          local.get 3
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 1
            call 11
            br 1 (;@3;)
          end
          local.get 1
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 1
          i32.const 8
          i32.add
          i32.load
          local.tee 1
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 1049604
          i32.const 1049604
          i32.load
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 0
        local.get 2
        call 50
        local.get 0
        i32.const 1050012
        i32.load
        i32.ne
        br_if 0 (;@2;)
        i32.const 1050004
        local.get 2
        i32.store
        return
      end
      local.get 2
      i32.const 256
      i32.ge_u
      if  ;; label = @2
        local.get 0
        local.get 2
        call 10
        i32.const 1050052
        i32.const 1050052
        i32.load
        i32.const -1
        i32.add
        local.tee 0
        i32.store
        local.get 0
        br_if 1 (;@1;)
        call 9
        drop
        return
      end
      local.get 2
      i32.const 3
      i32.shr_u
      local.tee 3
      i32.const 3
      i32.shl
      i32.const 1049612
      i32.add
      local.set 1
      block (result i32)  ;; label = @2
        i32.const 1049604
        i32.load
        local.tee 2
        i32.const 1
        local.get 3
        i32.shl
        local.tee 3
        i32.and
        if  ;; label = @3
          local.get 1
          i32.load offset=8
          br 1 (;@2;)
        end
        i32.const 1049604
        local.get 2
        local.get 3
        i32.or
        i32.store
        local.get 1
      end
      local.set 3
      local.get 1
      local.get 0
      i32.store offset=8
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
    end)
  (func (;2;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 9
          i32.ge_u
          if  ;; label = @4
            local.get 3
            local.get 2
            call 7
            local.tee 2
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          i32.const 0
          local.set 2
          i32.const 0
          call 76
          local.tee 1
          local.get 1
          i32.const 8
          call 51
          i32.sub
          i32.const 20
          i32.const 8
          call 51
          i32.sub
          i32.const 16
          i32.const 8
          call 51
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 1
          i32.const 0
          i32.const 16
          i32.const 8
          call 51
          i32.const 2
          i32.shl
          i32.sub
          local.tee 4
          local.get 1
          local.get 4
          i32.lt_u
          select
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
          i32.const 16
          local.get 3
          i32.const 4
          i32.add
          i32.const 16
          i32.const 8
          call 51
          i32.const -5
          i32.add
          local.get 3
          i32.gt_u
          select
          i32.const 8
          call 51
          local.set 6
          local.get 0
          call 77
          local.tee 1
          local.get 1
          call 69
          local.tee 5
          call 74
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          call 62
                          i32.eqz
                          if  ;; label = @12
                            local.get 5
                            local.get 6
                            i32.ge_u
                            br_if 1 (;@11;)
                            local.get 4
                            i32.const 1050016
                            i32.load
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 4
                            i32.const 1050012
                            i32.load
                            i32.eq
                            br_if 3 (;@9;)
                            local.get 4
                            call 59
                            br_if 8 (;@4;)
                            local.get 4
                            call 69
                            local.tee 7
                            local.get 5
                            i32.add
                            local.tee 8
                            local.get 6
                            i32.lt_u
                            br_if 8 (;@4;)
                            local.get 8
                            local.get 6
                            i32.sub
                            local.set 5
                            local.get 7
                            i32.const 256
                            i32.lt_u
                            br_if 4 (;@8;)
                            local.get 4
                            call 11
                            br 5 (;@7;)
                          end
                          local.get 1
                          call 69
                          local.set 5
                          local.get 6
                          i32.const 256
                          i32.lt_u
                          br_if 7 (;@4;)
                          local.get 5
                          local.get 6
                          i32.const 4
                          i32.add
                          i32.ge_u
                          if  ;; label = @12
                            local.get 1
                            local.set 4
                            local.get 5
                            local.get 6
                            i32.sub
                            i32.const 131073
                            i32.lt_u
                            br_if 7 (;@5;)
                          end
                          local.get 1
                          i32.load
                          local.tee 7
                          local.get 5
                          i32.add
                          i32.const 16
                          i32.add
                          local.set 8
                          local.get 6
                          i32.const 31
                          i32.add
                          i32.const 65536
                          call 51
                          local.set 5
                          i32.const 0
                          local.tee 6
                          i32.eqz
                          br_if 7 (;@4;)
                          local.get 6
                          local.get 7
                          i32.add
                          local.tee 4
                          local.get 5
                          local.get 7
                          i32.sub
                          local.tee 7
                          i32.const -16
                          i32.add
                          local.tee 9
                          i32.store offset=4
                          local.get 4
                          local.get 9
                          call 74
                          i32.const 7
                          i32.store offset=4
                          local.get 4
                          local.get 7
                          i32.const -12
                          i32.add
                          call 74
                          i32.const 0
                          i32.store offset=4
                          i32.const 1050020
                          i32.const 1050020
                          i32.load
                          local.get 5
                          local.get 8
                          i32.sub
                          i32.add
                          local.tee 5
                          i32.store
                          i32.const 1050048
                          i32.const 1050048
                          i32.load
                          local.tee 7
                          local.get 6
                          local.get 6
                          local.get 7
                          i32.gt_u
                          select
                          i32.store
                          i32.const 1050024
                          i32.const 1050024
                          i32.load
                          local.tee 6
                          local.get 5
                          local.get 6
                          local.get 5
                          i32.gt_u
                          select
                          i32.store
                          br 6 (;@5;)
                        end
                        local.get 1
                        local.set 4
                        local.get 5
                        local.get 6
                        i32.sub
                        local.tee 5
                        i32.const 16
                        i32.const 8
                        call 51
                        i32.lt_u
                        br_if 5 (;@5;)
                        local.get 1
                        local.get 6
                        call 74
                        local.set 4
                        local.get 1
                        local.get 6
                        call 41
                        local.get 4
                        local.get 5
                        call 41
                        local.get 4
                        local.get 5
                        call 5
                        br 4 (;@6;)
                      end
                      i32.const 1050008
                      i32.load
                      local.get 5
                      i32.add
                      local.tee 5
                      local.get 6
                      i32.le_u
                      br_if 5 (;@4;)
                      local.get 1
                      local.get 6
                      call 74
                      local.set 4
                      local.get 1
                      local.get 6
                      call 41
                      local.get 4
                      local.get 5
                      local.get 6
                      i32.sub
                      local.tee 6
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 1050008
                      local.get 6
                      i32.store
                      i32.const 1050016
                      local.get 4
                      i32.store
                      br 3 (;@6;)
                    end
                    i32.const 1050004
                    i32.load
                    local.get 5
                    i32.add
                    local.tee 4
                    local.get 6
                    i32.lt_u
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 4
                      local.get 6
                      i32.sub
                      local.tee 5
                      i32.const 16
                      i32.const 8
                      call 51
                      i32.lt_u
                      if  ;; label = @10
                        local.get 1
                        local.get 4
                        call 41
                        i32.const 0
                        local.set 5
                        i32.const 0
                        local.set 4
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.get 6
                      call 74
                      local.tee 4
                      local.get 5
                      call 74
                      local.set 7
                      local.get 1
                      local.get 6
                      call 41
                      local.get 4
                      local.get 5
                      call 50
                      local.get 7
                      local.get 7
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                    end
                    i32.const 1050012
                    local.get 4
                    i32.store
                    i32.const 1050004
                    local.get 5
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 4
                  i32.const 12
                  i32.add
                  i32.load
                  local.tee 9
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.load
                  local.tee 4
                  i32.ne
                  if  ;; label = @8
                    local.get 4
                    local.get 9
                    i32.store offset=12
                    local.get 9
                    local.get 4
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  i32.const 1049604
                  i32.const 1049604
                  i32.load
                  i32.const -2
                  local.get 7
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store
                end
                local.get 5
                i32.const 16
                i32.const 8
                call 51
                i32.ge_u
                if  ;; label = @7
                  local.get 1
                  local.get 6
                  call 74
                  local.set 4
                  local.get 1
                  local.get 6
                  call 41
                  local.get 4
                  local.get 5
                  call 41
                  local.get 4
                  local.get 5
                  call 5
                  br 1 (;@6;)
                end
                local.get 1
                local.get 8
                call 41
              end
              local.get 1
              local.set 4
            end
            local.get 4
            br_if 3 (;@1;)
          end
          local.get 3
          call 0
          local.tee 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 0
          local.get 3
          local.get 1
          call 69
          i32.const -8
          i32.const -4
          local.get 1
          call 62
          select
          i32.add
          local.tee 1
          local.get 1
          local.get 3
          i32.gt_u
          select
          call 37
          local.get 0
          call 1
          return
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 1
        local.get 1
        local.get 3
        i32.gt_u
        select
        call 37
        drop
        local.get 0
        call 1
      end
      local.get 2
      return
    end
    local.get 4
    call 62
    drop
    local.get 4
    call 76)
  (func (;3;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 43
    i32.const 1114112
    local.get 0
    i32.load
    local.tee 3
    i32.const 1
    i32.and
    local.tee 4
    select
    local.set 6
    local.get 2
    local.get 4
    i32.add
    local.set 4
    i32.const 1049268
    i32.const 0
    local.get 3
    i32.const 4
    i32.and
    select
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 1
        i32.ne
        if  ;; label = @3
          local.get 0
          local.get 6
          local.get 7
          call 32
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 5
        local.get 4
        i32.le_u
        if  ;; label = @3
          local.get 0
          local.get 6
          local.get 7
          call 32
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 8
                i32.and
                if  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  local.set 8
                  local.get 0
                  i32.const 48
                  i32.store offset=4
                  local.get 0
                  i32.load8_u offset=32
                  local.set 9
                  local.get 0
                  i32.const 1
                  i32.store8 offset=32
                  local.get 0
                  local.get 6
                  local.get 7
                  call 32
                  br_if 5 (;@2;)
                  i32.const 0
                  local.set 3
                  local.get 5
                  local.get 4
                  i32.sub
                  local.tee 4
                  local.set 5
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 6
                  local.get 6
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  i32.const 1
                  i32.sub
                  br_table 2 (;@5;) 1 (;@6;) 2 (;@5;) 3 (;@4;)
                end
                i32.const 0
                local.set 3
                local.get 5
                local.get 4
                i32.sub
                local.tee 4
                local.set 5
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1
                      local.get 0
                      i32.load8_u offset=32
                      local.tee 8
                      local.get 8
                      i32.const 3
                      i32.eq
                      select
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.sub
                      br_table 1 (;@8;) 0 (;@9;) 1 (;@8;) 2 (;@7;)
                    end
                    local.get 4
                    i32.const 1
                    i32.shr_u
                    local.set 3
                    local.get 4
                    i32.const 1
                    i32.add
                    i32.const 1
                    i32.shr_u
                    local.set 5
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 5
                  local.get 4
                  local.set 3
                end
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                loop  ;; label = @7
                  local.get 3
                  i32.const -1
                  i32.add
                  local.tee 3
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 0
                  i32.load offset=24
                  local.get 0
                  i32.load offset=4
                  local.get 0
                  i32.load offset=28
                  i32.load offset=16
                  call_indirect (type 1)
                  i32.eqz
                  br_if 0 (;@7;)
                end
                i32.const 1
                return
              end
              local.get 4
              i32.const 1
              i32.shr_u
              local.set 3
              local.get 4
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 5
              br 1 (;@4;)
            end
            i32.const 0
            local.set 5
            local.get 4
            local.set 3
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=24
              local.get 0
              i32.load offset=4
              local.get 0
              i32.load offset=28
              i32.load offset=16
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          local.get 0
          i32.load offset=4
          local.set 4
          local.get 0
          i32.load offset=24
          local.get 1
          local.get 2
          local.get 0
          i32.load offset=28
          i32.load offset=12
          call_indirect (type 3)
          br_if 1 (;@2;)
          local.get 5
          i32.const 1
          i32.add
          local.set 3
          local.get 0
          i32.load offset=28
          local.set 1
          local.get 0
          i32.load offset=24
          local.set 2
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            if  ;; label = @5
              local.get 2
              local.get 4
              local.get 1
              i32.load offset=16
              call_indirect (type 1)
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
          end
          local.get 0
          local.get 9
          i32.store8 offset=32
          local.get 0
          local.get 8
          i32.store offset=4
          i32.const 0
          return
        end
        local.get 0
        i32.load offset=4
        local.set 4
        local.get 0
        local.get 6
        local.get 7
        call 32
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type 3)
        br_if 0 (;@2;)
        local.get 5
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.load offset=28
        local.set 1
        local.get 0
        i32.load offset=24
        local.set 0
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          if  ;; label = @4
            i32.const 0
            return
          end
          local.get 0
          local.get 4
          local.get 1
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      i32.const 1
      return
    end
    local.get 0
    i32.load offset=24
    local.get 1
    local.get 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type 3))
  (func (;4;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 36
    i32.add
    i32.const 1048988
    i32.store
    local.get 2
    i32.const 3
    i32.store8 offset=40
    local.get 2
    i64.const 137438953472
    i64.store offset=8
    local.get 2
    local.get 0
    i32.store offset=32
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=16
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            local.tee 3
            if  ;; label = @5
              local.get 1
              i32.load
              local.set 5
              local.get 1
              i32.load offset=4
              local.tee 8
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.tee 4
              local.get 4
              local.get 8
              i32.gt_u
              select
              local.tee 4
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 5
              i32.load
              local.get 5
              i32.load offset=4
              i32.const 1049000
              i32.load
              call_indirect (type 3)
              br_if 3 (;@2;)
              local.get 5
              i32.const 12
              i32.add
              local.set 0
              local.get 1
              i32.load offset=16
              local.set 7
              local.get 4
              local.set 9
              loop  ;; label = @6
                local.get 2
                local.get 3
                i32.const 28
                i32.add
                i32.load8_u
                i32.store8 offset=40
                local.get 2
                local.get 3
                i32.const 4
                i32.add
                i64.load align=4
                i64.const 32
                i64.rotl
                i64.store offset=8
                local.get 3
                i32.const 24
                i32.add
                i32.load
                local.set 6
                i32.const 0
                local.set 10
                i32.const 0
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.const 20
                      i32.add
                      i32.load
                      i32.const 1
                      i32.sub
                      br_table 0 (;@9;) 2 (;@7;) 1 (;@8;)
                    end
                    local.get 6
                    i32.const 3
                    i32.shl
                    local.get 7
                    i32.add
                    local.tee 11
                    i32.load offset=4
                    i32.const 16
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 11
                    i32.load
                    i32.load
                    local.set 6
                  end
                  i32.const 1
                  local.set 1
                end
                local.get 2
                local.get 6
                i32.store offset=20
                local.get 2
                local.get 1
                i32.store offset=16
                local.get 3
                i32.const 16
                i32.add
                i32.load
                local.set 1
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.const 12
                      i32.add
                      i32.load
                      i32.const 1
                      i32.sub
                      br_table 0 (;@9;) 2 (;@7;) 1 (;@8;)
                    end
                    local.get 1
                    i32.const 3
                    i32.shl
                    local.get 7
                    i32.add
                    local.tee 6
                    i32.load offset=4
                    i32.const 16
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 6
                    i32.load
                    i32.load
                    local.set 1
                  end
                  i32.const 1
                  local.set 10
                end
                local.get 2
                local.get 1
                i32.store offset=28
                local.get 2
                local.get 10
                i32.store offset=24
                local.get 7
                local.get 3
                i32.load
                i32.const 3
                i32.shl
                i32.add
                local.tee 1
                i32.load
                local.get 2
                i32.const 8
                i32.add
                local.get 1
                i32.load offset=4
                call_indirect (type 1)
                br_if 4 (;@2;)
                local.get 9
                i32.const -1
                i32.add
                local.tee 9
                i32.eqz
                br_if 3 (;@3;)
                local.get 3
                i32.const 32
                i32.add
                local.set 3
                local.get 0
                i32.const -4
                i32.add
                local.set 1
                local.get 0
                i32.load
                local.set 6
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 2
                i32.load offset=32
                local.get 1
                i32.load
                local.get 6
                local.get 2
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 3)
                i32.eqz
                br_if 0 (;@6;)
              end
              br 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 1
            i32.load offset=4
            local.tee 8
            local.get 1
            i32.const 20
            i32.add
            i32.load
            local.tee 4
            local.get 4
            local.get 8
            i32.gt_u
            select
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=16
            local.set 3
            local.get 0
            local.get 5
            i32.load
            local.get 5
            i32.load offset=4
            i32.const 1049000
            i32.load
            call_indirect (type 3)
            br_if 2 (;@2;)
            local.get 5
            i32.const 12
            i32.add
            local.set 0
            local.get 4
            local.set 1
            loop  ;; label = @5
              local.get 3
              i32.load
              local.get 2
              i32.const 8
              i32.add
              local.get 3
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 1)
              br_if 3 (;@2;)
              local.get 1
              i32.const -1
              i32.add
              local.tee 1
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              i32.const 8
              i32.add
              local.set 3
              local.get 0
              i32.const -4
              i32.add
              local.set 9
              local.get 0
              i32.load
              local.set 7
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 2
              i32.load offset=32
              local.get 9
              i32.load
              local.get 7
              local.get 2
              i32.load offset=36
              i32.load offset=12
              call_indirect (type 3)
              i32.eqz
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          i32.const 0
          local.set 4
        end
        local.get 8
        local.get 4
        i32.gt_u
        if  ;; label = @3
          local.get 2
          i32.load offset=32
          local.get 5
          local.get 4
          i32.const 3
          i32.shl
          i32.add
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          local.get 2
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 3)
          br_if 1 (;@2;)
        end
        i32.const 0
        br 1 (;@1;)
      end
      i32.const 1
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;5;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    call 74
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call 70
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.set 3
        block  ;; label = @3
          local.get 0
          call 62
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 3
            i32.add
            local.set 1
            local.get 0
            local.get 3
            call 75
            local.tee 0
            i32.const 1050012
            i32.load
            i32.ne
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            i32.const 1050004
            local.get 1
            i32.store
            local.get 0
            local.get 1
            local.get 2
            call 45
            return
          end
          local.get 1
          local.get 3
          i32.add
          i32.const 16
          i32.add
          local.set 0
          br 2 (;@1;)
        end
        local.get 3
        i32.const 256
        i32.ge_u
        if  ;; label = @3
          local.get 0
          call 11
          br 1 (;@2;)
        end
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 4
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.tee 5
        i32.ne
        if  ;; label = @3
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=8
          br 1 (;@2;)
        end
        i32.const 1049604
        i32.const 1049604
        i32.load
        i32.const -2
        local.get 3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
      end
      block  ;; label = @2
        local.get 2
        call 59
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          call 45
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 1050016
          i32.load
          local.get 2
          i32.ne
          if  ;; label = @4
            local.get 2
            i32.const 1050012
            i32.load
            i32.ne
            br_if 1 (;@3;)
            i32.const 1050012
            local.get 0
            i32.store
            i32.const 1050004
            i32.const 1050004
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            call 50
            return
          end
          i32.const 1050016
          local.get 0
          i32.store
          i32.const 1050008
          i32.const 1050008
          i32.load
          local.get 1
          i32.add
          local.tee 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 1050012
          i32.load
          i32.ne
          br_if 2 (;@1;)
          i32.const 1050004
          i32.const 0
          i32.store
          i32.const 1050012
          i32.const 0
          i32.store
          return
        end
        local.get 2
        call 69
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 2
            call 11
            br 1 (;@3;)
          end
          local.get 2
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 2
          i32.ne
          if  ;; label = @4
            local.get 2
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 1049604
          i32.const 1049604
          i32.load
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 0
        local.get 1
        call 50
        local.get 0
        i32.const 1050012
        i32.load
        i32.ne
        br_if 0 (;@2;)
        i32.const 1050004
        local.get 1
        i32.store
        return
      end
      local.get 1
      i32.const 256
      i32.ge_u
      if  ;; label = @2
        local.get 0
        local.get 1
        call 10
        return
      end
      local.get 1
      i32.const 3
      i32.shr_u
      local.tee 2
      i32.const 3
      i32.shl
      i32.const 1049612
      i32.add
      local.set 1
      block (result i32)  ;; label = @2
        i32.const 1049604
        i32.load
        local.tee 3
        i32.const 1
        local.get 2
        i32.shl
        local.tee 2
        i32.and
        if  ;; label = @3
          local.get 1
          i32.load offset=8
          br 1 (;@2;)
        end
        i32.const 1049604
        local.get 2
        local.get 3
        i32.or
        i32.store
        local.get 1
      end
      local.set 2
      local.get 1
      local.get 0
      i32.store offset=8
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
    end)
  (func (;6;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 128
              i32.ge_u
              if  ;; label = @6
                local.get 2
                i32.const 0
                i32.store offset=16
                local.get 1
                i32.const 2048
                i32.lt_u
                br_if 1 (;@5;)
                local.get 2
                i32.const 16
                i32.add
                local.set 0
                local.get 1
                i32.const 65536
                i32.lt_u
                if  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=18
                  local.get 2
                  local.get 1
                  i32.const 12
                  i32.shr_u
                  i32.const 224
                  i32.or
                  i32.store8 offset=16
                  local.get 2
                  local.get 1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=17
                  i32.const 3
                  local.set 1
                  br 5 (;@2;)
                end
                local.get 2
                local.get 1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=19
                local.get 2
                local.get 1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=16
                local.get 2
                local.get 1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=18
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=17
                i32.const 4
                local.set 1
                br 4 (;@2;)
              end
              local.get 4
              i32.load offset=8
              local.tee 0
              local.get 4
              i32.const 4
              i32.add
              i32.load
              i32.ne
              if  ;; label = @6
                local.get 4
                i32.load
                local.set 3
                br 3 (;@3;)
              end
              local.get 0
              i32.const 1
              i32.add
              local.tee 3
              local.get 0
              i32.lt_u
              br_if 1 (;@4;)
              local.get 0
              i32.const 1
              i32.shl
              local.tee 5
              local.get 3
              local.get 5
              local.get 3
              i32.gt_u
              select
              local.tee 3
              i32.const 8
              local.get 3
              i32.const 8
              i32.gt_u
              select
              local.set 3
              block  ;; label = @6
                local.get 0
                if  ;; label = @7
                  local.get 2
                  i32.const 24
                  i32.add
                  i32.const 1
                  i32.store
                  local.get 2
                  local.get 0
                  i32.store offset=20
                  local.get 2
                  local.get 4
                  i32.load
                  i32.store offset=16
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 0
                i32.store offset=16
              end
              local.get 2
              local.get 3
              local.get 2
              i32.const 16
              i32.add
              call 22
              local.get 2
              i32.const 8
              i32.add
              i32.load
              local.set 0
              local.get 2
              i32.load offset=4
              local.set 3
              local.get 2
              i32.load
              i32.const 1
              i32.ne
              if  ;; label = @6
                local.get 4
                local.get 3
                i32.store
                local.get 4
                i32.const 4
                i32.add
                local.get 0
                i32.store
                local.get 4
                i32.load offset=8
                local.set 0
                br 3 (;@3;)
              end
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              local.get 0
              call 73
              unreachable
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=17
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8 offset=16
            local.get 2
            i32.const 16
            i32.add
            local.set 0
            i32.const 2
            local.set 1
            br 2 (;@2;)
          end
          call 65
          unreachable
        end
        local.get 0
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 4
        local.get 4
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 4
      local.get 0
      local.get 0
      local.get 1
      i32.add
      call 14
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    i32.const 0)
  (func (;7;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 9
      i32.ge_u
      if  ;; label = @2
        i32.const 16
        i32.const 8
        call 51
        local.get 1
        i32.gt_u
        if  ;; label = @3
          i32.const 16
          i32.const 8
          call 51
          local.set 1
        end
        i32.const 0
        call 76
        local.tee 3
        local.get 3
        i32.const 8
        call 51
        i32.sub
        i32.const 20
        i32.const 8
        call 51
        i32.sub
        i32.const 16
        i32.const 8
        call 51
        i32.sub
        i32.const -65544
        i32.add
        i32.const -9
        i32.and
        i32.const -3
        i32.add
        local.tee 3
        i32.const 0
        i32.const 16
        i32.const 8
        call 51
        i32.const 2
        i32.shl
        i32.sub
        local.tee 2
        local.get 3
        local.get 2
        i32.lt_u
        select
        local.get 1
        i32.sub
        local.get 0
        i32.le_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        local.get 0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call 51
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 51
        local.tee 3
        i32.add
        i32.const 16
        i32.const 8
        call 51
        i32.add
        i32.const -4
        i32.add
        call 0
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call 77
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 4
          local.get 2
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 4
          i32.add
          i32.const 0
          local.get 1
          i32.sub
          i32.and
          call 77
          local.set 2
          i32.const 16
          i32.const 8
          call 51
          local.set 4
          local.get 0
          call 69
          local.get 2
          local.get 1
          local.get 2
          i32.add
          local.get 2
          local.get 0
          i32.sub
          local.get 4
          i32.gt_u
          select
          local.tee 1
          local.get 0
          i32.sub
          local.tee 2
          i32.sub
          local.set 4
          local.get 0
          call 62
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 4
            call 41
            local.get 0
            local.get 2
            call 41
            local.get 0
            local.get 2
            call 5
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.set 0
          local.get 1
          local.get 4
          i32.store offset=4
          local.get 1
          local.get 0
          local.get 2
          i32.add
          i32.store
        end
        block  ;; label = @3
          local.get 1
          call 62
          br_if 0 (;@3;)
          local.get 1
          call 69
          local.tee 2
          i32.const 16
          i32.const 8
          call 51
          local.get 3
          i32.add
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          call 74
          local.set 0
          local.get 1
          local.get 3
          call 41
          local.get 0
          local.get 2
          local.get 3
          i32.sub
          local.tee 3
          call 41
          local.get 0
          local.get 3
          call 5
        end
        local.get 1
        call 76
        local.get 1
        call 62
        drop
        return
      end
      local.get 0
      call 0
      local.set 4
    end
    local.get 4)
  (func (;8;) (type 12) (param i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    i32.const 39
    local.set 2
    block  ;; label = @1
      local.get 0
      i64.const 10000
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 7
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 4
        i32.const 9
        i32.add
        local.get 2
        i32.add
        local.tee 3
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 7
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 5
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 1
        i32.shl
        i32.const 1049352
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const -2
        i32.add
        local.get 5
        local.get 6
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049352
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.get 7
        local.set 0
        br_if 0 (;@2;)
      end
    end
    local.get 7
    i32.wrap_i64
    local.tee 3
    i32.const 99
    i32.gt_s
    if  ;; label = @1
      local.get 2
      i32.const -2
      i32.add
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 7
      i32.wrap_i64
      local.tee 3
      local.get 3
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 3
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049352
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 3
      i32.const 10
      i32.ge_s
      if  ;; label = @2
        local.get 2
        i32.const -2
        i32.add
        local.tee 2
        local.get 4
        i32.const 9
        i32.add
        i32.add
        local.get 3
        i32.const 1
        i32.shl
        i32.const 1049352
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const -1
      i32.add
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 3
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 1
    local.get 4
    i32.const 9
    i32.add
    local.get 2
    i32.add
    i32.const 39
    local.get 2
    i32.sub
    call 3
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;9;) (type 11) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1050036
    i32.load
    local.tee 3
    i32.eqz
    if  ;; label = @1
      i32.const 1050052
      i32.const 4095
      i32.store
      i32.const 0
      return
    end
    i32.const 1050028
    local.set 2
    loop  ;; label = @1
      local.get 3
      local.tee 0
      i32.load offset=8
      local.set 3
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 0
      i32.load
      local.set 5
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        i32.load
        drop
        i32.const 1
        if  ;; label = @3
          local.get 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 0
        call 71
        if  ;; label = @3
          local.get 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 5
        local.get 5
        call 76
        local.tee 1
        i32.const 8
        call 51
        local.get 1
        i32.sub
        i32.add
        local.tee 1
        call 69
        local.set 7
        i32.const 0
        call 76
        local.tee 9
        i32.const 8
        call 51
        local.set 10
        i32.const 20
        i32.const 8
        call 51
        local.set 11
        i32.const 16
        i32.const 8
        call 51
        local.set 12
        local.get 1
        call 60
        local.get 1
        local.get 7
        i32.add
        local.get 5
        local.get 4
        local.get 9
        i32.add
        local.get 10
        i32.sub
        local.get 11
        i32.sub
        local.get 12
        i32.sub
        i32.add
        i32.lt_u
        if  ;; label = @3
          local.get 0
          local.set 2
          br 1 (;@2;)
        end
        if  ;; label = @3
          local.get 0
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 1050012
          i32.load
          i32.ne
          if  ;; label = @4
            local.get 1
            call 11
            br 1 (;@3;)
          end
          i32.const 1050004
          i32.const 0
          i32.store
          i32.const 1050012
          i32.const 0
          i32.store
        end
        local.get 1
        local.get 7
        call 10
        local.get 0
        local.set 2
        br 0 (;@2;)
      end
      local.get 6
      i32.const 1
      i32.add
      local.set 6
      local.get 3
      br_if 0 (;@1;)
    end
    i32.const 1050052
    local.get 6
    i32.const 4095
    local.get 6
    i32.const 4095
    i32.gt_u
    select
    i32.store
    local.get 8)
  (func (;10;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 1
      i32.const 8
      i32.shr_u
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      drop
      i32.const 31
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      drop
      local.get 1
      i32.const 6
      local.get 2
      i32.clz
      local.tee 2
      i32.sub
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
    end
    local.tee 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1049876
    i32.add
    local.set 3
    local.get 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1049608
            i32.load
            local.tee 5
            i32.const 1
            local.get 2
            i32.const 31
            i32.and
            i32.shl
            local.tee 6
            i32.and
            if  ;; label = @5
              local.get 3
              i32.load
              local.set 3
              local.get 2
              call 49
              local.set 2
              local.get 3
              call 69
              local.get 1
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              local.set 2
              br 2 (;@3;)
            end
            i32.const 1049608
            local.get 5
            local.get 6
            i32.or
            i32.store
            local.get 3
            local.get 0
            i32.store
            br 3 (;@1;)
          end
          local.get 1
          local.get 2
          i32.const 31
          i32.and
          i32.shl
          local.set 5
          loop  ;; label = @4
            local.get 3
            local.get 5
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 6
            i32.load
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            i32.const 1
            i32.shl
            local.set 5
            local.get 2
            local.tee 3
            call 69
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.load offset=8
        local.tee 1
        local.get 4
        i32.store offset=12
        local.get 2
        local.get 4
        i32.store offset=8
        local.get 4
        local.get 2
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        return
      end
      local.get 6
      local.get 0
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 4
    local.get 4
    i32.store offset=8
    local.get 4
    local.get 4
    i32.store offset=12)
  (func (;11;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=12
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 20
          i32.const 16
          local.get 0
          i32.const 20
          i32.add
          local.tee 1
          i32.load
          local.tee 3
          select
          i32.add
          i32.load
          local.tee 2
          br_if 1 (;@2;)
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=8
        local.tee 2
        local.get 0
        i32.load offset=12
        local.tee 1
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      select
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.set 5
        local.get 2
        local.tee 1
        i32.const 20
        i32.add
        local.tee 3
        i32.load
        local.tee 2
        i32.eqz
        if  ;; label = @3
          local.get 1
          i32.const 16
          i32.add
          local.set 3
          local.get 1
          i32.load offset=16
          local.set 2
        end
        local.get 2
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 0
      i32.store
    end
    block  ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=28
        i32.const 2
        i32.shl
        i32.const 1049876
        i32.add
        local.tee 2
        i32.load
        i32.ne
        if  ;; label = @3
          local.get 4
          i32.const 16
          i32.const 20
          local.get 4
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 1
          i32.store
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.store
        local.get 1
        br_if 0 (;@2;)
        i32.const 1049608
        i32.const 1049608
        i32.load
        i32.const -2
        local.get 0
        i32.load offset=28
        i32.rotl
        i32.and
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      local.get 4
      i32.store offset=24
      local.get 0
      i32.load offset=16
      local.tee 2
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.store offset=16
        local.get 2
        local.get 1
        i32.store offset=24
      end
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 20
      i32.add
      local.get 0
      i32.store
      local.get 0
      local.get 1
      i32.store offset=24
    end)
  (func (;12;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.tee 3
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.const 4
      i32.add
      local.set 3
      local.get 1
      i32.load
      local.set 4
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 56
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 48
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 4
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      local.get 2
      i32.const 40
      i32.add
      call 4
      drop
      local.get 2
      i32.const 16
      i32.add
      local.tee 4
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        call 1
      end
      local.get 3
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 3
      i32.load
      local.set 3
    end
    local.get 1
    i32.const 1
    i32.store offset=4
    local.get 1
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    local.set 5
    local.get 1
    i64.const 0
    i64.store align=4
    i32.const 12
    i32.const 4
    call 56
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 12
      i32.const 4
      call 73
      unreachable
    end
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 5
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049172
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;13;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      local.tee 3
      local.get 2
      i32.ge_u
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 2
          i32.const 1
          i32.shl
          local.tee 5
          local.get 3
          local.get 5
          local.get 3
          i32.gt_u
          select
          local.tee 3
          i32.const 4
          local.get 3
          i32.const 4
          i32.gt_u
          select
          local.tee 3
          i32.const 536870911
          i32.and
          local.get 3
          i32.eq
          if  ;; label = @4
            local.get 3
            i32.const 3
            i32.shl
            local.set 3
            i32.const 8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=4
          local.set 2
          i32.const 0
        end
        local.set 5
        block  ;; label = @3
          local.get 2
          if  ;; label = @4
            local.get 1
            i32.load
            local.set 6
            local.get 4
            i32.const 40
            i32.add
            i32.const 8
            i32.store
            local.get 4
            local.get 2
            i32.const 3
            i32.shl
            i32.store offset=36
            local.get 4
            local.get 6
            i32.store offset=32
            br 1 (;@3;)
          end
          local.get 4
          i32.const 0
          i32.store offset=32
        end
        local.get 4
        i32.const 16
        i32.add
        local.get 3
        local.get 5
        local.get 4
        i32.const 32
        i32.add
        call 23
        i32.const 1
        local.set 2
        local.get 4
        i32.const 24
        i32.add
        i32.load
        local.set 3
        local.get 4
        i32.load offset=20
        local.set 5
        local.get 4
        i32.load offset=16
        i32.const 1
        i32.ne
        if  ;; label = @3
          local.get 1
          local.get 5
          i32.store
          local.get 1
          local.get 3
          i32.const 3
          i32.shr_u
          i32.store offset=4
          i32.const 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 5
        local.get 3
        call 57
        local.get 0
        local.get 4
        i64.load offset=8
        i64.store offset=4 align=4
        br 1 (;@1;)
      end
      local.get 4
      local.get 3
      i32.const 0
      call 57
      local.get 0
      local.get 4
      i64.load
      i64.store offset=4 align=4
      i32.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;14;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 5
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 4
      i32.sub
      local.get 2
      local.get 1
      i32.sub
      local.tee 6
      i32.ge_u
      if  ;; label = @2
        local.get 0
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        local.get 6
        i32.add
        local.tee 2
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 5
        i32.const 1
        i32.shl
        local.tee 4
        local.get 2
        local.get 4
        local.get 2
        i32.gt_u
        select
        local.tee 2
        i32.const 8
        local.get 2
        i32.const 8
        i32.gt_u
        select
        local.set 2
        block  ;; label = @3
          local.get 5
          if  ;; label = @4
            local.get 3
            i32.const 24
            i32.add
            i32.const 1
            i32.store
            local.get 3
            local.get 5
            i32.store offset=20
            local.get 3
            local.get 0
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.store offset=16
        end
        local.get 3
        local.get 2
        local.get 3
        i32.const 16
        i32.add
        call 22
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.set 4
        local.get 3
        i32.load offset=4
        local.set 2
        local.get 3
        i32.load
        i32.const 1
        i32.ne
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 4
          i32.store
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.set 4
          br 2 (;@1;)
        end
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        call 73
        unreachable
      end
      call 65
      unreachable
    end
    local.get 2
    local.get 4
    i32.add
    local.get 1
    local.get 6
    call 37
    drop
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    local.get 0
    i32.load
    local.get 6
    i32.add
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;15;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=16
        i32.const 0
        i32.ne
        local.get 1
        i64.load offset=8
        local.tee 6
        local.get 1
        i64.load
        local.tee 7
        i64.lt_u
        i32.or
        local.tee 4
        br_if 0 (;@2;)
        local.get 6
        local.get 7
        i64.sub
        local.tee 8
        i64.const 4294967295
        i64.le_u
        if  ;; label = @3
          local.get 8
          i32.wrap_i64
          local.tee 5
          i32.const 1
          i32.add
          local.tee 2
          local.get 5
          i32.ge_u
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 24
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 3
        i32.const 16
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 3
        local.get 1
        i64.load
        i64.store offset=8
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        call 18
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      i32.load offset=8
      local.get 2
      call 29
      local.get 0
      i32.load offset=8
      local.set 2
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.get 2
        i32.const 3
        i32.shl
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 6
          local.get 7
          i64.gt_u
          if  ;; label = @4
            local.get 7
            local.set 8
            loop  ;; label = @5
              local.get 1
              local.get 8
              i64.store
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 6
              local.get 8
              i64.const 1
              i64.add
              local.tee 8
              i64.ne
              br_if 0 (;@5;)
            end
            local.get 6
            i32.wrap_i64
            local.get 7
            i32.wrap_i64
            i32.sub
            local.get 2
            i32.add
            local.set 2
            br 1 (;@3;)
          end
          local.get 6
          local.get 7
          i64.ne
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 6
        i64.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
      end
      local.get 0
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;16;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i64)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.set 4
      local.get 3
      i32.const -1
      i32.add
      local.set 6
      local.get 1
      i64.load
      local.set 7
      i32.const 0
      local.set 1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i64.load
                    local.tee 8
                    local.get 7
                    i64.gt_u
                    if  ;; label = @9
                      local.get 7
                      i64.eqz
                      br_if 1 (;@8;)
                      local.get 8
                      local.get 7
                      i64.rem_u
                      i64.eqz
                      br_if 2 (;@7;)
                    end
                    local.get 2
                    if  ;; label = @9
                      local.get 1
                      local.get 2
                      i32.sub
                      local.tee 5
                      local.get 3
                      i32.ge_u
                      br_if 3 (;@6;)
                      local.get 4
                      local.get 2
                      i32.const 3
                      i32.shl
                      i32.sub
                      local.tee 5
                      i64.load
                      local.set 9
                      local.get 5
                      local.get 8
                      i64.store
                      local.get 4
                      local.get 9
                      i64.store
                      br 4 (;@5;)
                    end
                    i32.const 0
                    local.set 2
                    local.get 1
                    local.get 6
                    i32.ne
                    br_if 4 (;@4;)
                    br 7 (;@1;)
                  end
                  i32.const 1048800
                  i32.const 57
                  i32.const 1048772
                  call 33
                  unreachable
                end
                local.get 2
                i32.const 1
                i32.add
                local.set 2
                br 1 (;@5;)
              end
              local.get 5
              local.get 3
              i32.const 1048656
              call 28
              unreachable
            end
            local.get 1
            local.get 6
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.const 8
          i32.add
          local.set 4
          local.get 3
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 3
        i32.const 1048744
        call 28
        unreachable
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.get 3
      local.get 2
      i32.sub
      local.tee 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func (;17;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.set 4
    local.get 1
    i32.load offset=4
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      local.set 3
      local.get 2
      i32.const 0
      i32.store offset=32
      local.get 2
      i64.const 1
      i64.store offset=24
      local.get 2
      local.get 2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get 2
      i32.const 56
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 48
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 36
      i32.add
      local.get 2
      i32.const 40
      i32.add
      call 4
      drop
      local.get 2
      i32.const 16
      i32.add
      local.tee 3
      local.get 2
      i32.load offset=32
      i32.store
      local.get 2
      local.get 2
      i64.load offset=24
      i64.store offset=8
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        call 1
      end
      local.get 4
      local.get 2
      i64.load offset=8
      i64.store align=4
      local.get 4
      i32.const 8
      i32.add
      local.get 3
      i32.load
      i32.store
    end
    local.get 0
    i32.const 1049172
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;18;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i64 i64 i64 i64)
    block  ;; label = @1
      local.get 1
      i32.load8_u offset=16
      br_if 0 (;@1;)
      local.get 1
      i64.load
      local.tee 6
      local.get 1
      i64.load offset=8
      local.tee 7
      i64.gt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 6
          local.get 7
          i64.ge_u
          if  ;; label = @4
            local.get 1
            i32.const 1
            i32.store8 offset=16
            local.get 6
            local.set 8
            i32.const 1
            br 1 (;@3;)
          end
          local.get 1
          local.get 6
          i64.const 1
          i64.add
          local.tee 8
          i64.store
          i32.const 0
        end
        local.set 5
        local.get 0
        i32.load offset=8
        local.tee 2
        local.get 0
        i32.load offset=4
        i32.eq
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.const -1
          block (result i32)  ;; label = @4
            i32.const 0
            local.get 5
            local.get 7
            local.get 8
            i64.lt_u
            i32.or
            br_if 0 (;@4;)
            drop
            i32.const -1
            local.get 7
            local.get 8
            i64.sub
            local.tee 9
            i64.const 4294967295
            i64.gt_u
            br_if 0 (;@4;)
            drop
            i32.const -1
            local.get 9
            i32.wrap_i64
            local.tee 3
            i32.const 1
            i32.add
            local.tee 4
            local.get 4
            local.get 3
            i32.lt_u
            select
          end
          local.tee 3
          i32.const 1
          i32.add
          local.tee 4
          local.get 4
          local.get 3
          i32.lt_u
          select
          call 29
        end
        local.get 0
        i32.load
        local.get 2
        i32.const 3
        i32.shl
        i32.add
        local.get 6
        i64.store
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=8
        local.get 5
        i32.const -1
        i32.xor
        local.get 7
        local.get 8
        local.tee 6
        i64.ge_u
        i32.and
        br_if 0 (;@2;)
      end
    end)
  (func (;19;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1
    local.set 5
    i32.const 1049600
    i32.const 1049600
    i32.load
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 1050056
          i32.load
          i32.const 1
          i32.ne
          if  ;; label = @4
            i32.const 1050056
            i64.const 4294967297
            i64.store
            br 1 (;@3;)
          end
          i32.const 1050060
          i32.const 1050060
          i32.load
          i32.const 1
          i32.add
          local.tee 5
          i32.store
          local.get 5
          i32.const 2
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 3
        i32.store offset=28
        local.get 4
        local.get 2
        i32.store offset=24
        local.get 4
        i32.const 1049012
        i32.store offset=20
        local.get 4
        i32.const 1049012
        i32.store offset=16
        i32.const 1049588
        i32.load
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 1049588
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store
        i32.const 1049588
        i32.const 1049596
        i32.load
        local.tee 3
        if (result i32)  ;; label = @3
          i32.const 1049592
          i32.load
          local.get 4
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          local.get 4
          local.get 4
          i64.load offset=8
          i64.store offset=16
          local.get 4
          i32.const 16
          i32.add
          local.get 3
          i32.load offset=12
          call_indirect (type 0)
          i32.const 1049588
          i32.load
        else
          local.get 2
        end
        i32.const -1
        i32.add
        i32.store
        local.get 5
        i32.const 1
        i32.le_u
        br_if 1 (;@1;)
      end
      unreachable
    end
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    unreachable)
  (func (;20;) (type 0) (param i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=16
        br_if 0 (;@2;)
        local.get 1
        i64.load offset=8
        local.tee 5
        local.get 1
        i64.load
        local.tee 6
        i64.lt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 6
        i64.sub
        local.tee 5
        i64.const 4294967295
        i64.le_u
        if  ;; label = @3
          local.get 5
          i32.wrap_i64
          local.tee 4
          i32.const 1
          i32.add
          local.tee 3
          local.get 4
          i32.ge_u
          br_if 1 (;@2;)
        end
        local.get 0
        i32.const 8
        i32.store
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 2
      local.get 3
      call 25
      local.get 2
      i32.load offset=4
      local.set 3
      local.get 0
      local.get 2
      i32.load
      i32.store
    end
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    call 15
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;21;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 1
    i32.load offset=4
    local.tee 3
    local.get 2
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.shl
        local.set 3
        local.get 1
        i32.load
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.shl
            local.tee 6
            i32.eqz
            if  ;; label = @5
              i32.const 8
              local.set 7
              local.get 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 5
              call 1
              br 1 (;@4;)
            end
            local.get 5
            local.get 3
            i32.const 8
            local.get 6
            call 52
            local.tee 7
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 7
          i32.store
          local.get 1
          local.get 2
          i32.const 536870911
          i32.and
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 6
        i32.const 8
        call 57
        local.get 0
        local.get 4
        i64.load offset=8
        i64.store offset=4 align=4
        i32.const 1
        local.set 8
      end
      local.get 0
      local.get 8
      i32.store
      local.get 4
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048933
    i32.const 36
    i32.const 1048972
    call 33
    unreachable)
  (func (;22;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    i32.const 1
    local.set 3
    i32.const 1
    local.set 4
    block  ;; label = @1
      local.get 1
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      block (result i32)  ;; label = @2
        local.get 2
        i32.load
        local.tee 5
        i32.eqz
        if  ;; label = @3
          i32.const 1
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          drop
          local.get 1
          i32.const 1
          call 56
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=4
        local.tee 2
        i32.eqz
        if  ;; label = @3
          i32.const 1
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
          drop
          local.get 1
          i32.const 1
          call 56
          br 1 (;@2;)
        end
        local.get 5
        local.get 2
        i32.const 1
        local.get 1
        call 52
      end
      local.tee 2
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.store offset=4
      i32.const 0
      local.set 4
      local.get 1
      local.set 3
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.store)
  (func (;23;) (type 6) (param i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          if  ;; label = @4
            i32.const 1
            local.set 4
            local.get 1
            i32.const 0
            i32.ge_s
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.store offset=4
          i32.const 1
          local.set 4
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load
                  local.tee 5
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.eqz
                    br_if 1 (;@7;)
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.load offset=4
                  local.tee 3
                  br_if 1 (;@6;)
                  local.get 1
                  br_if 2 (;@5;)
                end
                local.get 2
                local.set 3
                br 3 (;@3;)
              end
              local.get 5
              local.get 3
              local.get 2
              local.get 1
              call 52
              local.tee 3
              i32.eqz
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 1
            local.get 2
            call 56
            local.tee 3
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.store offset=4
          local.get 2
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 0
    local.get 4
    i32.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.store)
  (func (;24;) (type 4) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load
    local.tee 2
    i32.const 20
    i32.add
    i32.load
    local.set 3
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 3
          br_if 2 (;@1;)
          i32.const 0
          local.set 2
          i32.const 1049012
          br 1 (;@2;)
        end
        local.get 3
        br_if 1 (;@1;)
        local.get 2
        i32.load
        local.tee 3
        i32.load offset=4
        local.set 2
        local.get 3
        i32.load
      end
      local.set 3
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 1
      i32.const 1049152
      local.get 0
      i32.load offset=4
      i32.load offset=8
      local.get 0
      i32.load offset=8
      call 19
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store
    local.get 1
    i32.const 1049132
    local.get 0
    i32.load offset=4
    i32.load offset=8
    local.get 0
    i32.load offset=8
    call 19
    unreachable)
  (func (;25;) (type 0) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      local.get 1
      i32.const 536870911
      i32.and
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 3
      i32.shl
      local.tee 1
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        if  ;; label = @3
          local.get 1
          i32.const 8
          call 56
          local.tee 2
          br_if 1 (;@2;)
          local.get 1
          i32.const 8
          call 73
          unreachable
        end
        i32.const 8
        local.set 2
      end
      local.get 0
      local.get 2
      i32.store
      local.get 0
      local.get 1
      i32.const 3
      i32.shr_u
      i32.store offset=4
      return
    end
    call 65
    unreachable)
  (func (;26;) (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i64.extend_i32_u
    local.get 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    call 27
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i32.load
    local.tee 1
    i32.store
    local.get 3
    local.get 3
    i64.load
    i64.store offset=16
    local.get 3
    i32.load offset=20
    local.get 1
    i32.gt_u
    if  ;; label = @1
      local.get 3
      i32.const 16
      i32.add
      local.get 1
      call 31
      local.get 3
      i32.load offset=24
      local.set 1
    end
    local.get 3
    i32.load offset=16
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;27;) (type 10) (param i32 i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=24
    local.get 2
    local.get 1
    i64.store offset=16
    i64.const 2
    local.set 4
    local.get 2
    i64.const 2
    i64.store offset=8
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    call 20
    block  ;; label = @1
      local.get 1
      i64.const 2
      i64.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 4
        i64.store offset=8
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        call 16
        local.get 4
        local.get 4
        local.get 1
        i64.lt_u
        local.tee 3
        i64.extend_i32_u
        i64.add
        local.tee 4
        local.get 1
        i64.gt_u
        br_if 1 (;@1;)
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;28;) (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 3
    i32.const 44
    i32.add
    i32.const 15
    i32.store
    local.get 3
    i64.const 2
    i64.store offset=12 align=4
    local.get 3
    i32.const 1049336
    i32.store offset=8
    local.get 3
    i32.const 15
    i32.store offset=36
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 3
    local.get 3
    i32.store offset=40
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 40
    unreachable)
  (func (;29;) (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.sub
      local.get 2
      i32.ge_u
      if  ;; label = @2
        local.get 3
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      local.get 0
      local.get 1
      local.get 2
      call 13
      local.get 3
      i32.load
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 8
      i32.add
      i32.load
      local.tee 0
      if  ;; label = @2
        local.get 3
        i32.load offset=4
        local.get 0
        call 73
        unreachable
      end
      call 65
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;30;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    local.get 2
    i32.const 8
    i32.add
    call 4
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;31;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    local.get 1
    call 21
    block  ;; label = @1
      local.get 2
      i32.load
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=4
        local.get 0
        call 73
        unreachable
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    call 65
    unreachable)
  (func (;32;) (type 3) (param i32 i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 1114112
      i32.ne
      if  ;; label = @2
        i32.const 1
        local.get 0
        i32.load offset=24
        local.get 1
        local.get 0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type 1)
        br_if 1 (;@1;)
        drop
      end
      local.get 2
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      local.get 0
      i32.load offset=24
      local.get 2
      i32.const 0
      local.get 0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type 3)
    end)
  (func (;33;) (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 1049268
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=4 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call 40
    unreachable)
  (func (;34;) (type 0) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    i32.const 8
    i32.const 4
    call 56
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8
      i32.const 4
      call 73
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049188
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;35;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    i32.const 16
    i32.shr_u
    memory.grow
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    local.get 1
    i32.const -65536
    i32.and
    local.get 2
    i32.const -1
    i32.eq
    local.tee 1
    select
    i32.store offset=4
    local.get 0
    i32.const 0
    local.get 2
    i32.const 16
    i32.shl
    local.get 1
    select
    i32.store)
  (func (;36;) (type 4) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=12
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 1049028
      i32.const 43
      i32.const 1049100
      call 33
      unreachable
    end
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.eqz
    if  ;; label = @1
      i32.const 1049028
      i32.const 43
      i32.const 1049116
      call 33
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    call 39
    unreachable)
  (func (;37;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    if  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;38;) (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.get 1
      i32.const 3
      i32.shl
      i32.eqz
      br_if 0 (;@1;)
      call 1
    end)
  (func (;39;) (type 4) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    call 24
    unreachable)
  (func (;40;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1049268
    i32.store offset=4
    local.get 2
    i32.const 1049268
    i32.store
    local.get 2
    call 36
    unreachable)
  (func (;41;) (type 0) (param i32 i32)
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and
    local.get 1
    i32.or
    i32.const 2
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.tee 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func (;42;) (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 1
    end)
  (func (;43;) (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 1
    end)
  (func (;44;) (type 1) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.load offset=4
      i32.add
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    i32.const 0)
  (func (;45;) (type 5) (param i32 i32 i32)
    local.get 2
    local.get 2
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func (;46;) (type 8)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i64.const 100000
    call 27
    local.get 0
    call 38
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;47;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.tee 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func (;48;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=16
    local.tee 1
    if (result i32)  ;; label = @1
      local.get 1
    else
      local.get 0
      i32.const 20
      i32.add
      i32.load
    end)
  (func (;49;) (type 2) (param i32) (result i32)
    i32.const 0
    i32.const 25
    local.get 0
    i32.const 1
    i32.shr_u
    i32.sub
    local.get 0
    i32.const 31
    i32.eq
    select)
  (func (;50;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func (;51;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func (;52;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 2)
  (func (;53;) (type 0) (param i32 i32)
    local.get 1
    if  ;; label = @1
      local.get 0
      call 1
    end)
  (func (;54;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 1
    local.get 2
    i32.add
    call 14
    i32.const 0)
  (func (;55;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shl
    local.tee 0
    i32.const 0
    local.get 0
    i32.sub
    i32.or)
  (func (;56;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 7)
  (func (;57;) (type 5) (param i32 i32 i32)
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;58;) (type 0) (param i32 i32)
    local.get 0
    i32.const 1049188
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;59;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func (;60;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 1
    i32.ne)
  (func (;61;) (type 2) (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    i32.and)
  (func (;62;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 3
    i32.and
    i32.eqz)
  (func (;63;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4)
  (func (;64;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.add)
  (func (;65;) (type 8)
    i32.const 1049232
    i32.const 17
    i32.const 1049252
    call 33
    unreachable)
  (func (;66;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop  ;; label = @1
      br 0 (;@1;)
    end
    unreachable)
  (func (;67;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 8)
  (func (;68;) (type 2) (param i32) (result i32)
    local.get 0
    global.get 0
    i32.add
    global.set 0
    global.get 0)
  (func (;69;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const -8
    i32.and)
  (func (;70;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and)
  (func (;71;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.and)
  (func (;72;) (type 2) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.shr_u)
  (func (;73;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1049584
    i32.load
    local.tee 0
    i32.const 1
    local.get 0
    select
    call_indirect (type 0)
    unreachable)
  (func (;74;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (;75;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func (;76;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func (;77;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const -8
    i32.add)
  (func (;78;) (type 7) (param i32) (result i64)
    i64.const -5786388802339902217)
  (func (;79;) (type 7) (param i32) (result i64)
    i64.const 9147559743429524724)
  (func (;80;) (type 7) (param i32) (result i64)
    i64.const -9040091204923801142)
  (func (;81;) (type 4) (param i32)
    nop)
  (func (;82;) (type 0) (param i32 i32)
    nop)
  (table (;0;) 19 19 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "primes_up_to" (func 26))
  (export "main_js" (func 46))
  (export "__wbindgen_add_to_stack_pointer" (func 68))
  (export "__wbindgen_free" (func 53))
  (export "__wbindgen_start" (func 46))
  (elem (;0;) (i32.const 1) func 82 81 54 6 30 80 43 12 17 34 58 42 78 79 67 66 81 80)
  (data (;0;) (i32.const 1048576) "/rustc/cb75ad5db02783e8b0222fee363c5f63f7e2cf5b/library/core/src/slice/mod.rs\00\00\00\00\00\10\00M\00\00\00\1f\02\00\00\1f\00\00\00/rustc/cb75ad5db02783e8b0222fee363c5f63f7e2cf5b/library/alloc/src/vec.rs`\00\10\00H\00\00\00,\05\00\00\18\00\00\00src/lib.rs\00\00\b8\00\10\00\0a\00\00\00\0e\00\00\00#")
  (data (;1;) (i32.const 1048800) "attempt to calculate the remainder with a divisor of zero/rustc/cb75ad5db02783e8b0222fee363c5f63f7e2cf5b/library/alloc/src/raw_vec.rsTried to shrink to a larger capacity\00\00\00\19\01\10\00L\00\00\00\bf\01\00\00\09\00\00\00\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00called `Option::unwrap()` on a `None` valuelibrary/std/src/panicking.rs\00\ef\01\10\00\1c\00\00\00\eb\01\00\00\1f\00\00\00\ef\01\10\00\1c\00\00\00\ec\01\00\00\1e\00\00\00\07\00\00\00\10\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\02\00\00\00\08\00\00\00\04\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\0c\00\00\00\04\00\00\00\0d\00\00\00\02\00\00\00\08\00\00\00\04\00\00\00\0e\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00t\02\10\00\1c\00\00\00\19\02\00\00\05\00\00\00\11\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00index out of bounds: the len is  but the index is \00\00\c4\02\10\00 \00\00\00\e4\02\10\00\12\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"))
