;;! target = "x86_64"

(module
    (func (result f32)
        (f32.const 1.1)
        (f32.const 2.2)
        (f32.div)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 f30f10051c000000     	movss	xmm0, dword ptr [rip + 0x1c]
;;      	 f30f100d1c000000     	movss	xmm1, dword ptr [rip + 0x1c]
;;      	 f30f5ec8             	divss	xmm1, xmm0
;;      	 0f28c1               	movaps	xmm0, xmm1
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   29:	 0000                 	add	byte ptr [rax], al
;;   2b:	 0000                 	add	byte ptr [rax], al
;;   2d:	 0000                 	add	byte ptr [rax], al
;;   2f:	 00cd                 	add	ch, cl
;;   31:	 cc                   	int3	
;;   32:	 0c40                 	or	al, 0x40
;;   34:	 0000                 	add	byte ptr [rax], al
;;   36:	 0000                 	add	byte ptr [rax], al
;;   38:	 cdcc                 	int	0xcc
