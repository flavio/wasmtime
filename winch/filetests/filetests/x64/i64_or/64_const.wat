;;! target = "x86_64"

(module
    (func (result i64)
        (i64.const 9223372036854775806)
        (i64.const 9223372036854775807)
        (i64.or)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 48b8feffffffffffff7f 	
;; 				movabs	rax, 0x7ffffffffffffffe
;;      	 49bbffffffffffffff7f 	
;; 				movabs	r11, 0x7fffffffffffffff
;;      	 4c09d8               	or	rax, r11
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
