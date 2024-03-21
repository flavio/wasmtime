;;! target = "riscv64"
;;! test = "compile"
;;! flags = " -C cranelift-enable-heap-access-spectre-mitigation -O static-memory-maximum-size=0 -O static-memory-guard-size=0 -O dynamic-memory-guard-size=0"

;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;; !!! GENERATED BY 'make-load-store-tests.sh' DO NOT EDIT !!!
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

(module
  (memory i32 1)

  (func (export "do_store") (param i32 i32)
    local.get 0
    local.get 1
    i32.store8 offset=0)

  (func (export "do_load") (param i32) (result i32)
    local.get 0
    i32.load8_u offset=0))

;; function u0:0:
;; block0:
;;   ld a4,88(a0)
;;   ld a0,80(a0)
;;   slli a1,a2,32
;;   srli a5,a1,32
;;   sltu a1,a5,a4
;;   xori a4,a1,1
;;   add a2,a0,a5
;;   sub a0,zero,a4
;;   not a4,a0
;;   and a4,a2,a4
;;   sb a3,0(a4)
;;   j label1
;; block1:
;;   ret
;;
;; function u0:1:
;; block0:
;;   ld a3,88(a0)
;;   ld a5,80(a0)
;;   slli a1,a2,32
;;   srli a4,a1,32
;;   sltu a1,a4,a3
;;   xori a3,a1,1
;;   add a2,a5,a4
;;   sub a0,zero,a3
;;   not a3,a0
;;   and a4,a2,a3
;;   lbu a0,0(a4)
;;   j label1
;; block1:
;;   ret
