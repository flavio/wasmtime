;;! target = "x86_64"
;;! test = "compile"
;;! flags = " -C cranelift-enable-heap-access-spectre-mitigation=false -W memory64 -O static-memory-maximum-size=0 -O static-memory-guard-size=0 -O dynamic-memory-guard-size=0"

;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;; !!! GENERATED BY 'make-load-store-tests.sh' DO NOT EDIT !!!
;; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

(module
  (memory i64 1)

  (func (export "do_store") (param i64 i32)
    local.get 0
    local.get 1
    i32.store offset=0xffff0000)

  (func (export "do_load") (param i64) (result i32)
    local.get 0
    i32.load offset=0xffff0000))

;; function u0:0:
;;   pushq   %rbp
;;   unwind PushFrameRegs { offset_upward_to_caller_sp: 16 }
;;   movq    %rsp, %rbp
;;   unwind DefineNewFrame { offset_upward_to_caller_sp: 16, offset_downward_to_clobbers: 0 }
;; block0:
;;   movq    %rdx, %r11
;;   addq    %r11, const(0), %r11
;;   jb #trap=heap_oob
;;   movq    88(%rdi), %rsi
;;   cmpq    %rsi, %r11
;;   jnbe    label3; j label1
;; block1:
;;   addq    %rdx, 80(%rdi), %rdx
;;   movl    $-65536, %eax
;;   movl    %ecx, 0(%rdx,%rax,1)
;;   jmp     label2
;; block2:
;;   movq    %rbp, %rsp
;;   popq    %rbp
;;   ret
;; block3:
;;   ud2 heap_oob
;;
;; function u0:1:
;;   pushq   %rbp
;;   unwind PushFrameRegs { offset_upward_to_caller_sp: 16 }
;;   movq    %rsp, %rbp
;;   unwind DefineNewFrame { offset_upward_to_caller_sp: 16, offset_downward_to_clobbers: 0 }
;; block0:
;;   movq    %rdx, %r11
;;   addq    %r11, const(0), %r11
;;   jb #trap=heap_oob
;;   movq    88(%rdi), %rsi
;;   cmpq    %rsi, %r11
;;   jnbe    label3; j label1
;; block1:
;;   addq    %rdx, 80(%rdi), %rdx
;;   movl    $-65536, %eax
;;   movl    0(%rdx,%rax,1), %eax
;;   jmp     label2
;; block2:
;;   movq    %rbp, %rsp
;;   popq    %rbp
;;   ret
;; block3:
;;   ud2 heap_oob
