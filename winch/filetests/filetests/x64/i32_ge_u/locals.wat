;;! target = "x86_64"

(module
    (func (result i32)
        (local $foo i32)
        (local $bar i32)

        (i32.const 2)
        (local.set $foo)
        (i32.const 3)
        (local.set $bar)

        (local.get $foo)
        (local.get $bar)
        (i32.ge_u)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 48c744240800000000   	
;; 				mov	qword ptr [rsp + 8], 0
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 b802000000           	mov	eax, 2
;;      	 8944240c             	mov	dword ptr [rsp + 0xc], eax
;;      	 b803000000           	mov	eax, 3
;;      	 89442408             	mov	dword ptr [rsp + 8], eax
;;      	 8b442408             	mov	eax, dword ptr [rsp + 8]
;;      	 8b4c240c             	mov	ecx, dword ptr [rsp + 0xc]
;;      	 39c1                 	cmp	ecx, eax
;;      	 b900000000           	mov	ecx, 0
;;      	 400f93c1             	setae	cl
;;      	 89c8                 	mov	eax, ecx
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
