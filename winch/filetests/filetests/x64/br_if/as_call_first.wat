;;! target = "x86_64"
(module
  (func $f (param i32 i32 i32) (result i32) (i32.const -1))
  (func (export "as-call-first") (result i32)
    (block (result i32)
      (call $f
        (br_if 0 (i32.const 12) (i32.const 1)) (i32.const 2) (i32.const 3)
      )
    )
  )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec18             	sub	rsp, 0x18
;;      	 897c2414             	mov	dword ptr [rsp + 0x14], edi
;;      	 89742410             	mov	dword ptr [rsp + 0x10], esi
;;      	 8954240c             	mov	dword ptr [rsp + 0xc], edx
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 b8ffffffff           	mov	eax, 0xffffffff
;;      	 4883c418             	add	rsp, 0x18
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 b901000000           	mov	ecx, 1
;;      	 b80c000000           	mov	eax, 0xc
;;      	 85c9                 	test	ecx, ecx
;;      	 0f8526000000         	jne	0x44
;;   1e:	 4883ec04             	sub	rsp, 4
;;      	 890424               	mov	dword ptr [rsp], eax
;;      	 4883ec04             	sub	rsp, 4
;;      	 8b7c2404             	mov	edi, dword ptr [rsp + 4]
;;      	 be02000000           	mov	esi, 2
;;      	 ba03000000           	mov	edx, 3
;;      	 e800000000           	call	0x3c
;;      	 4883c404             	add	rsp, 4
;;      	 4883c404             	add	rsp, 4
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
