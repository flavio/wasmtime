;;! target = "riscv64"
;;! test = "compile"
;;! flags = " -C cranelift-enable-heap-access-spectre-mitigation -O static-memory-forced -O static-memory-guard-size=0 -O dynamic-memory-guard-size=0"

;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;; !!! GENERATED BY 'make-load-store-tests.sh' DO NOT EDIT !!!
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

(module
  (memory i32 1)

  (func (export "do_store") (param i32 i32)
    local.get 0
    local.get 1
    i32.store8 offset=0xffff0000)

  (func (export "do_load") (param i32) (result i32)
    local.get 0
    i32.load8_u offset=0xffff0000))

;; function u0:0:
;; block0:
;;   slli a4,a2,32
;;   srli a1,a4,32
;;   lui a4,16
;;   addi a2,a4,-1
;;   sltu a5,a2,a1
;;   ld a0,80(a0)
;;   add a0,a0,a1
;;   lui a4,65535
;;   slli a1,a4,4
;;   add a0,a0,a1
;;   sub a4,zero,a5
;;   not a5,a4
;;   and a1,a0,a5
;;   sb a3,0(a1)
;;   j label1
;; block1:
;;   ret
;;
;; function u0:1:
;; block0:
;;   slli a4,a2,32
;;   srli a1,a4,32
;;   lui a4,16
;;   addi a2,a4,-1
;;   sltu a5,a2,a1
;;   ld a0,80(a0)
;;   add a0,a0,a1
;;   lui a4,65535
;;   slli a1,a4,4
;;   add a0,a0,a1
;;   sub a3,zero,a5
;;   not a5,a3
;;   and a1,a0,a5
;;   lbu a0,0(a1)
;;   j label1
;; block1:
;;   ret
