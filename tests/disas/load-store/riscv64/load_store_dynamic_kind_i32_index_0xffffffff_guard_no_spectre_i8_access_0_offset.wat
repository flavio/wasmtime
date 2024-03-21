;;! target = "riscv64"
;;! test = "compile"
;;! flags = " -C cranelift-enable-heap-access-spectre-mitigation=false -O static-memory-maximum-size=0 -O static-memory-guard-size=4294967295 -O dynamic-memory-guard-size=4294967295"

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
;;   slli a2,a2,32
;;   srli a5,a2,32
;;   bgeu a5,a4,taken(label3),not_taken(label1)
;; block1:
;;   ld a4,80(a0)
;;   add a4,a4,a5
;;   sb a3,0(a4)
;;   j label2
;; block2:
;;   ret
;; block3:
;;   udf##trap_code=heap_oob
;;
;; function u0:1:
;; block0:
;;   ld a3,88(a0)
;;   slli a2,a2,32
;;   srli a4,a2,32
;;   bgeu a4,a3,taken(label3),not_taken(label1)
;; block1:
;;   ld a5,80(a0)
;;   add a4,a5,a4
;;   lbu a0,0(a4)
;;   j label2
;; block2:
;;   ret
;; block3:
;;   udf##trap_code=heap_oob
