;;! target = "x86_64"

(module
  (func (export "") (param i32) (result i32)
    local.get 0
    i32.const 1
    local.set 0
  )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 897c240c             	mov	dword ptr [rsp + 0xc], edi
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 448b5c240c           	mov	r11d, dword ptr [rsp + 0xc]
;;      	 4883ec04             	sub	rsp, 4
;;      	 44891c24             	mov	dword ptr [rsp], r11d
;;      	 b801000000           	mov	eax, 1
;;      	 89442410             	mov	dword ptr [rsp + 0x10], eax
;;      	 8b0424               	mov	eax, dword ptr [rsp]
;;      	 4883c404             	add	rsp, 4
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
