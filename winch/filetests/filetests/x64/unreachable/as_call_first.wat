;;! target = "x86_64"

(module
  (func $dummy3 (param i32 i32 i32))
  (func (export "as-call-first")
    (call $dummy3 (unreachable) (i32.const 2) (i32.const 3))
  )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec18             	sub	rsp, 0x18
;;      	 897c2414             	mov	dword ptr [rsp + 0x14], edi
;;      	 89742410             	mov	dword ptr [rsp + 0x10], esi
;;      	 8954240c             	mov	dword ptr [rsp + 0xc], edx
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 4883c418             	add	rsp, 0x18
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 0f0b                 	ud2	
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
