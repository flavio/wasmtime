;;! target = "x86_64"
(module
  (func $dummy)
  (func (export "nested") (result i32)
    (loop (result i32)
      (loop (call $dummy) (block) (nop))
      (loop (result i32) (call $dummy) (i32.const 9))
    )
  )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 4883ec08             	sub	rsp, 8
;;      	 e800000000           	call	0x15
;;      	 4883c408             	add	rsp, 8
;;      	 4883ec08             	sub	rsp, 8
;;      	 e800000000           	call	0x22
;;      	 4883c408             	add	rsp, 8
;;      	 b809000000           	mov	eax, 9
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
