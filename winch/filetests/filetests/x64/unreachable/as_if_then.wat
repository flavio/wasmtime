;;! target = "x86_64"

(module
  (func (export "as-if-then") (param i32 i32) (result i32)
    (if (result i32) (local.get 0) (then (unreachable)) (else (local.get 1)))
  )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 897c240c             	mov	dword ptr [rsp + 0xc], edi
;;      	 89742408             	mov	dword ptr [rsp + 8], esi
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 8b44240c             	mov	eax, dword ptr [rsp + 0xc]
;;      	 85c0                 	test	eax, eax
;;      	 0f8402000000         	je	0x22
;;   20:	 0f0b                 	ud2	
;;      	 8b442408             	mov	eax, dword ptr [rsp + 8]
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
