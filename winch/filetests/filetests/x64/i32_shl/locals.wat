;;! target = "x86_64"

(module
    (func (result i32)
        (local $foo i32)  
        (local $bar i32)

        (i32.const 1)
        (local.set $foo)

        (i32.const 2)
        (local.set $bar)

        (local.get $foo)
        (local.get $bar)
        (i32.shl)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 48c744240800000000   	
;; 				mov	qword ptr [rsp + 8], 0
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 b801000000           	mov	eax, 1
;;      	 8944240c             	mov	dword ptr [rsp + 0xc], eax
;;      	 b802000000           	mov	eax, 2
;;      	 89442408             	mov	dword ptr [rsp + 8], eax
;;      	 8b4c2408             	mov	ecx, dword ptr [rsp + 8]
;;      	 8b44240c             	mov	eax, dword ptr [rsp + 0xc]
;;      	 d3e0                 	shl	eax, cl
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
