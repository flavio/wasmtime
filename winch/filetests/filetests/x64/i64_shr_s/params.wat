;;! target = "x86_64"

(module
    (func (param i64) (param i64) (result i64)
        (local.get 0)
        (local.get 1)
        (i64.shr_s)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec18             	sub	rsp, 0x18
;;      	 48897c2410           	mov	qword ptr [rsp + 0x10], rdi
;;      	 4889742408           	mov	qword ptr [rsp + 8], rsi
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 488b4c2408           	mov	rcx, qword ptr [rsp + 8]
;;      	 488b442410           	mov	rax, qword ptr [rsp + 0x10]
;;      	 48d3f8               	sar	rax, cl
;;      	 4883c418             	add	rsp, 0x18
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
