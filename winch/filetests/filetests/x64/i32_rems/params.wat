;;! target = "x86_64"

(module
    (func (param i32) (param i32) (result i32)
	(local.get 0)
	(local.get 1)
	(i32.rem_s)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 897c240c             	mov	dword ptr [rsp + 0xc], edi
;;      	 89742408             	mov	dword ptr [rsp + 8], esi
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 8b4c2408             	mov	ecx, dword ptr [rsp + 8]
;;      	 8b44240c             	mov	eax, dword ptr [rsp + 0xc]
;;      	 99                   	cdq	
;;      	 83f9ff               	cmp	ecx, -1
;;      	 0f850a000000         	jne	0x30
;;   26:	 ba00000000           	mov	edx, 0
;;      	 e902000000           	jmp	0x32
;;   30:	 f7f9                 	idiv	ecx
;;      	 89d0                 	mov	eax, edx
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
