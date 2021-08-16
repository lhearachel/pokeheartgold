	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0201581C
sub_0201581C: ; 0x0201581C
	ldr r1, _02015830 ; =0x0000FFFF
	mov r2, #0
	strh r1, [r0]
_02015822:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _02015822
	bx lr
	nop
_02015830: .word 0x0000FFFF
	thumb_func_end sub_0201581C

	thumb_func_start sub_02015834
sub_02015834: ; 0x02015834
	strh r1, [r0]
	mov r2, #0
	ldr r1, _02015848 ; =0x0000FFFF
	strh r2, [r0, #2]
_0201583C:
	add r2, r2, #1
	strh r1, [r0, #4]
	add r0, r0, #2
	cmp r2, #2
	blt _0201583C
	bx lr
	.balign 4, 0
_02015848: .word 0x0000FFFF
	thumb_func_end sub_02015834

	thumb_func_start sub_0201584C
sub_0201584C: ; 0x0201584C
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl sub_02015834
	mov r0, #5
	strh r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end sub_0201584C

	thumb_func_start sub_0201585C
sub_0201585C: ; 0x0201585C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	bl sub_02015834
	ldrb r0, [r4, #1]
	strh r0, [r5, #2]
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02015880
	bl sub_02015DC8
	ldrh r1, [r4, #4]
	bl sub_02015B60
	strh r0, [r5, #4]
_02015880:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02015894
	bl sub_02015DC8
	ldrh r1, [r4, #6]
	bl sub_02015B60
	strh r0, [r5, #6]
_02015894:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201585C

	thumb_func_start sub_02015898
sub_02015898: ; 0x02015898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	str r1, [sp, #4]
	bl ScrStrBufs_new
	ldr r5, [sp]
	ldr r7, _020158FC ; =0x0000FFFF
	add r6, r0, #0
	mov r4, #0
_020158AE:
	ldrh r2, [r5, #4]
	cmp r2, r7
	beq _020158C4
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C528
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #2
	blt _020158AE
_020158C4:
	ldr r2, [sp]
	mov r0, #1
	ldrh r2, [r2]
	mov r1, #0x1b
	lsl r3, r2, #1
	ldr r2, _02015900 ; =0x020F60E0
	ldrh r2, [r2, r3]
	ldr r3, [sp, #4]
	bl NewMsgDataFromNarc
	add r5, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldrh r2, [r2, #2]
	add r0, r6, #0
	add r1, r5, #0
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	add r0, r5, #0
	bl DestroyMsgData
	add r0, r6, #0
	bl ScrStrBufs_delete
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020158FC: .word 0x0000FFFF
_02015900: .word 0x020F60E0
	thumb_func_end sub_02015898

	thumb_func_start sub_02015904
sub_02015904: ; 0x02015904
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	ldrh r1, [r4]
	mov r0, #0x1b
	lsl r2, r1, #1
	ldr r1, _0201591C ; =0x020F60E0
	ldrh r1, [r1, r2]
	ldrh r2, [r4, #2]
	bl ReadMsgData_NewNarc_NewString
	pop {r4, pc}
	.balign 4, 0
_0201591C: .word 0x020F60E0
	thumb_func_end sub_02015904

	thumb_func_start sub_02015920
sub_02015920: ; 0x02015920
	ldrh r1, [r0]
	ldr r0, _02015930 ; =0x0000FFFF
	cmp r1, r0
	beq _0201592C
	mov r0, #1
	bx lr
_0201592C:
	mov r0, #0
	bx lr
	.balign 4, 0
_02015930: .word 0x0000FFFF
	thumb_func_end sub_02015920

	thumb_func_start sub_02015934
sub_02015934: ; 0x02015934
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02015964
	mov r3, #0
	cmp r0, #0
	bls _0201595A
	ldr r1, _02015960 ; =0x0000FFFF
_02015948:
	ldrh r2, [r4, #4]
	cmp r2, r1
	bne _02015952
	mov r0, #0
	pop {r4, pc}
_02015952:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, r0
	blo _02015948
_0201595A:
	mov r0, #1
	pop {r4, pc}
	nop
_02015960: .word 0x0000FFFF
	thumb_func_end sub_02015934

	thumb_func_start sub_02015964
sub_02015964: ; 0x02015964
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #5
	blo _02015972
	bl GF_AssertFail
_02015972:
	add r0, r5, #0
	bl sub_02015A38
	cmp r4, r0
	blo _02015980
	bl GF_AssertFail
_02015980:
	ldr r1, _020159D4 ; =0x020F60E0
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	mov r0, #0x1b
	add r2, r4, #0
	mov r3, #0
	bl ReadMsgData_NewNarc_NewString
	str r0, [sp]
	bl sub_02026AA4
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _020159D8 ; =0x0000FFFF
	mov r5, #0
	cmp r1, r0
	beq _020159C8
	add r7, r0, #0
	sub r6, r0, #1
_020159A6:
	cmp r1, r6
	bne _020159C0
	add r0, r4, #0
	bl sub_0201FB5C
	cmp r0, #0
	beq _020159B6
	add r5, r5, #1
_020159B6:
	add r0, r4, #0
	bl sub_0201FB1C
	add r4, r0, #0
	b _020159C2
_020159C0:
	add r4, r4, #2
_020159C2:
	ldrh r1, [r4]
	cmp r1, r7
	bne _020159A6
_020159C8:
	ldr r0, [sp]
	bl String_dtor
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020159D4: .word 0x020F60E0
_020159D8: .word 0x0000FFFF
	thumb_func_end sub_02015964

	thumb_func_start sub_020159DC
sub_020159DC: ; 0x020159DC
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_020159DC

	thumb_func_start sub_020159E4
sub_020159E4: ; 0x020159E4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_020159E4

	thumb_func_start sub_020159E8
sub_020159E8: ; 0x020159E8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_020159E8

	thumb_func_start sub_020159EC
sub_020159EC: ; 0x020159EC
	push {r3, r4}
	ldrh r3, [r0]
	ldrh r2, [r1]
	cmp r3, r2
	bne _020159FE
	ldrh r3, [r0, #2]
	ldrh r2, [r1, #2]
	cmp r3, r2
	beq _02015A04
_020159FE:
	mov r0, #0
	pop {r3, r4}
	bx lr
_02015A04:
	mov r4, #0
_02015A06:
	ldrh r3, [r0, #4]
	ldrh r2, [r1, #4]
	cmp r3, r2
	beq _02015A14
	mov r0, #0
	pop {r3, r4}
	bx lr
_02015A14:
	add r4, r4, #1
	add r1, r1, #2
	add r0, r0, #2
	cmp r4, #2
	blt _02015A06
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020159EC

	thumb_func_start sub_02015A24
sub_02015A24: ; 0x02015A24
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015A24

	thumb_func_start sub_02015A38
sub_02015A38: ; 0x02015A38
	cmp r0, #5
	bhs _02015A40
	mov r0, #0x14
	bx lr
_02015A40:
	mov r0, #0
	bx lr
	thumb_func_end sub_02015A38

	thumb_func_start sub_02015A44
sub_02015A44: ; 0x02015A44
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #5
	blo _02015A54
	bl GF_AssertFail
_02015A54:
	strh r4, [r5]
	strh r6, [r5, #2]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02015A44

	thumb_func_start sub_02015A5C
sub_02015A5C: ; 0x02015A5C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	blo _02015A6C
	bl GF_AssertFail
_02015A6C:
	lsl r0, r4, #1
	add r0, r5, r0
	strh r6, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015A5C

	thumb_func_start sub_02015A74
sub_02015A74: ; 0x02015A74
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_02015964
	cmp r0, #2
	bhs _02015A94
	lsl r1, r0, #1
	add r2, r4, r1
	ldr r1, _02015A98 ; =0x0000FFFF
_02015A8A:
	add r0, r0, #1
	strh r1, [r2, #4]
	add r2, r2, #2
	cmp r0, #2
	blo _02015A8A
_02015A94:
	pop {r4, pc}
	nop
_02015A98: .word 0x0000FFFF
	thumb_func_end sub_02015A74

	thumb_func_start sub_02015A9C
sub_02015A9C: ; 0x02015A9C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x30
	add r6, r0, #0
	bl AllocFromHeap
	ldr r4, _02015AD0 ; =0x020F612C
	str r0, [sp]
	mov r7, #0
	add r5, r0, #0
_02015AAE:
	ldr r0, [sp]
	mov r1, #0x1b
	str r6, [r0]
	ldrh r2, [r4]
	mov r0, #1
	add r3, r6, #0
	bl NewMsgDataFromNarc
	str r0, [r5, #4]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #0xb
	blt _02015AAE
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02015AD0: .word 0x020F612C
	thumb_func_end sub_02015A9C

	thumb_func_start sub_02015AD4
sub_02015AD4: ; 0x02015AD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02015ADC:
	ldr r0, [r5, #4]
	bl DestroyMsgData
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xb
	blt _02015ADC
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02015AD4

	thumb_func_start sub_02015AF4
sub_02015AF4: ; 0x02015AF4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02015BB0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl ReadMsgDataIntoString
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02015AF4

	thumb_func_start sub_02015B1C
sub_02015B1C: ; 0x02015B1C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _02015B58 ; =0x0000FFFF
	cmp r0, r1
	beq _02015B4C
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02015BB0
	ldr r0, [sp, #8]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _02015B5C ; =0x020F612C
	ldrh r0, [r0, r1]
	str r0, [sp, #8]
	str r4, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	mov r0, #0x1b
	bl ReadMsgData_NewNarc_ExistingString
	add sp, #0xc
	pop {r3, r4, pc}
_02015B4C:
	add r0, r4, #0
	bl StringSetEmpty
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02015B58: .word 0x0000FFFF
_02015B5C: .word 0x020F612C
	thumb_func_end sub_02015B1C

	thumb_func_start sub_02015B60
sub_02015B60: ; 0x02015B60
	push {r4, r5}
	ldr r4, _02015BA4 ; =0x020F612C
	mov r2, #0
_02015B66:
	ldrh r3, [r4]
	cmp r0, r3
	bne _02015B94
	mov r4, #0
	add r3, r4, #0
	cmp r2, #0
	bls _02015B8A
	ldr r0, _02015BA8 ; =0x020F6142
_02015B76:
	lsl r5, r4, #1
	ldrh r5, [r0, r5]
	add r4, r4, #1
	lsl r4, r4, #0x10
	add r3, r3, r5
	lsl r3, r3, #0x10
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r2
	blo _02015B76
_02015B8A:
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5}
	bx lr
_02015B94:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xb
	blo _02015B66
	ldr r0, _02015BAC ; =0x0000FFFF
	pop {r4, r5}
	bx lr
	nop
_02015BA4: .word 0x020F612C
_02015BA8: .word 0x020F6142
_02015BAC: .word 0x0000FFFF
	thumb_func_end sub_02015B60

	thumb_func_start sub_02015BB0
sub_02015BB0: ; 0x02015BB0
	push {r3, r4, r5, r6}
	ldr r3, _02015BE8 ; =0x00000FFF
	ldr r6, _02015BEC ; =0x020F6142
	and r3, r0
	mov r0, #0
	add r5, r0, #0
_02015BBC:
	ldrh r4, [r6]
	add r0, r0, r4
	cmp r3, r0
	bhs _02015BD8
	str r5, [r1]
	ldr r1, _02015BEC ; =0x020F6142
	lsl r4, r5, #1
	ldrh r1, [r1, r4]
	sub r0, r0, r1
	sub r0, r3, r0
	str r0, [r2]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_02015BD8:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #0xb
	blo _02015BBC
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02015BE8: .word 0x00000FFF
_02015BEC: .word 0x020F6142
	thumb_func_end sub_02015BB0

	thumb_func_start sub_02015BF0
sub_02015BF0: ; 0x02015BF0
	mov r0, #8
	bx lr
	thumb_func_end sub_02015BF0

	thumb_func_start sub_02015BF4
sub_02015BF4: ; 0x02015BF4
	push {r3, lr}
	mov r2, #0
	str r2, [r0]
	ldr r3, _02015C20 ; =0x020F6120
	str r2, [r0, #4]
_02015BFE:
	ldrb r1, [r3]
	cmp r1, #2
	bne _02015C10
	ldr r1, _02015C24 ; =0x020F6121
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	bl sub_02015CFC
	b _02015C18
_02015C10:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02015BFE
_02015C18:
	mov r0, #0x1e
	bl sub_0202893C
	pop {r3, pc}
	.balign 4, 0
_02015C20: .word 0x020F6120
_02015C24: .word 0x020F6121
	thumb_func_end sub_02015BF4

	thumb_func_start sub_02015C28
sub_02015C28: ; 0x02015C28
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02028900
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_020272C8
	pop {r4, pc}
	thumb_func_end sub_02015C28

	thumb_func_start sub_02015C3C
sub_02015C3C: ; 0x02015C3C
	ldr r0, [r0, #4]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02015C3C

	thumb_func_start sub_02015C48
sub_02015C48: ; 0x02015C48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0
	ldr r3, [r4, #4]
	add r5, r2, #0
	mov r0, #1
_02015C54:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02015C5E
	add r5, r5, #1
_02015C5E:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02015C54
	cmp r5, #0
	beq _02015CA0
	bl sub_0201FD44
	add r1, r5, #0
	bl _u32_div_f
	ldr r3, [r4, #4]
	mov r5, #0
	mov r0, #1
_02015C78:
	add r2, r3, #0
	lsr r2, r5
	tst r2, r0
	bne _02015C9A
	cmp r1, #0
	bne _02015C98
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r5
	orr r0, r1
	str r0, [r4, #4]
	mov r0, #0x1e
	bl sub_0202893C
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02015C98:
	sub r1, r1, #1
_02015C9A:
	add r5, r5, #1
	cmp r5, #0x20
	blo _02015C78
_02015CA0:
	mov r0, #0x1e
	bl sub_0202893C
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02015C48

	thumb_func_start sub_02015CAC
sub_02015CAC: ; 0x02015CAC
	ldr r3, [r0, #4]
	mov r2, #0
	mov r0, #1
_02015CB2:
	add r1, r3, #0
	lsr r1, r2
	tst r1, r0
	bne _02015CBE
	mov r0, #0
	bx lr
_02015CBE:
	add r2, r2, #1
	cmp r2, #0x20
	blo _02015CB2
	mov r0, #1
	bx lr
	thumb_func_end sub_02015CAC

	thumb_func_start sub_02015CC8
sub_02015CC8: ; 0x02015CC8
	push {r3, r4}
	mov r3, #0
	ldr r4, _02015CEC ; =0x020F6142
	add r2, r3, #0
_02015CD0:
	ldrh r1, [r4]
	add r2, r2, #1
	add r4, r4, #2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, #9
	blt _02015CD0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_02015CEC: .word 0x020F6142
	thumb_func_end sub_02015CC8

	thumb_func_start sub_02015CF0
sub_02015CF0: ; 0x02015CF0
	ldr r0, [r0]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end sub_02015CF0

	thumb_func_start sub_02015CFC
sub_02015CFC: ; 0x02015CFC
	mov r2, #1
	ldr r3, [r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0]
	ldr r3, _02015D10 ; =sub_0202893C
	mov r0, #0x1e
	bx r3
	nop
_02015D10: .word sub_0202893C
	thumb_func_end sub_02015CFC

	thumb_func_start sub_02015D14
sub_02015D14: ; 0x02015D14
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #8
	add r5, r0, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xd6
	add r2, r1, #0
	add r3, r5, #0
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	lsr r0, r0, #2
	str r0, [r4]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02015D14

	thumb_func_start sub_02015D54
sub_02015D54: ; 0x02015D54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02015D54

	thumb_func_start sub_02015D68
sub_02015D68: ; 0x02015D68
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_02015D68

	thumb_func_start sub_02015D6C
sub_02015D6C: ; 0x02015D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015D7A
	bl GF_AssertFail
_02015D7A:
	ldr r0, [r5]
	cmp r0, r4
	bhi _02015D84
	ldr r0, _02015D90 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02015D84:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02015D90: .word 0x0000FFFF
	thumb_func_end sub_02015D6C

	thumb_func_start sub_02015D94
sub_02015D94: ; 0x02015D94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015DA2
	bl GF_AssertFail
_02015DA2:
	ldr r3, [r5]
	mov r1, #0
	cmp r3, #0
	bls _02015DC0
	ldr r2, [r5, #4]
_02015DAC:
	ldr r0, [r2]
	cmp r4, r0
	bne _02015DB8
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02015DB8:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, r3
	blo _02015DAC
_02015DC0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02015D94

	thumb_func_start sub_02015DC8
sub_02015DC8: ; 0x02015DC8
	cmp r0, #0xb
	blt _02015DCE
	mov r0, #0
_02015DCE:
	lsl r1, r0, #1
	ldr r0, _02015DD8 ; =0x020F612C
	ldrh r0, [r0, r1]
	bx lr
	nop
_02015DD8: .word 0x020F612C
	thumb_func_end sub_02015DC8

	thumb_func_start sub_02015DDC
sub_02015DDC: ; 0x02015DDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	bl AllocFromHeap
	add r4, r0, #0
	bne _02015DF0
	bl GF_AssertFail
_02015DF0:
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl sub_0201605C
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	bl sub_0201608C
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_020160BC
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02015DDC

	thumb_func_start sub_02015E20
sub_02015E20: ; 0x02015E20
	push {r4, lr}
	add r4, r0, #0
	bne _02015E2A
	bl GF_AssertFail
_02015E2A:
	ldr r0, [r4]
	cmp r0, #0
	bne _02015E34
	bl GF_AssertFail
_02015E34:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02015E3E
	bl GF_AssertFail
_02015E3E:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02015E48
	bl GF_AssertFail
_02015E48:
	ldr r0, [r4]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl FreeToHeap
	ldr r0, [r4, #0x10]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02015E20

	thumb_func_start sub_02015E64
sub_02015E64: ; 0x02015E64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02015E98 ; =0x04000444
	mov r6, #0
	str r6, [r0]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02015E8E
	add r4, r6, #0
_02015E76:
	ldr r0, [r5]
	add r0, r0, r4
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _02015E84
	bl sub_020161CC
_02015E84:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x40
	cmp r6, r0
	blt _02015E76
_02015E8E:
	ldr r0, _02015E9C ; =0x04000448
	mov r1, #1
	str r1, [r0]
	pop {r4, r5, r6, pc}
	nop
_02015E98: .word 0x04000444
_02015E9C: .word 0x04000448
	thumb_func_end sub_02015E64

	thumb_func_start sub_02015EA0
sub_02015EA0: ; 0x02015EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016118
	add r4, r0, #0
	bne _02015EB2
	bl GF_AssertFail
_02015EB2:
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02015EBE
	bl GF_AssertFail
_02015EBE:
	ldr r0, [r5, #4]
	bl sub_02016170
	str r0, [r4]
	cmp r0, #0
	bne _02015ECE
	bl GF_AssertFail
_02015ECE:
	ldr r0, [r5, #4]
	ldr r1, [r4]
	add r2, r4, #4
	bl sub_02016198
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015EA0

	thumb_func_start sub_02015EDC
sub_02015EDC: ; 0x02015EDC
	push {r4, lr}
	ldr r1, _02015EF0 ; =0x02110928
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r1]
	blx r1
	add r0, r4, #0
	bl sub_02016044
	pop {r4, pc}
	.balign 4, 0
_02015EF0: .word 0x02110928
	thumb_func_end sub_02015EDC

	thumb_func_start sub_02015EF4
sub_02015EF4: ; 0x02015EF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02015F1A
	add r4, r6, #0
_02015F02:
	ldr r1, [r5, #8]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015F10
	add r0, r1, r4
	bl sub_02015EDC
_02015F10:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _02015F02
_02015F1A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015EF4

	thumb_func_start sub_02015F1C
sub_02015F1C: ; 0x02015F1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016144
	add r4, r0, #0
	bne _02015F2E
	bl GF_AssertFail
_02015F2E:
	ldr r0, [r5, #8]
	bl sub_02016184
	str r0, [r4]
	cmp r0, #0
	bne _02015F3E
	bl GF_AssertFail
_02015F3E:
	ldr r0, [r5, #4]
	ldr r1, [r4]
	add r2, r4, #4
	bl sub_020161A8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015F1C

	thumb_func_start sub_02015F4C
sub_02015F4C: ; 0x02015F4C
	push {r4, lr}
	ldr r1, _02015F60 ; =0x02110930
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r1]
	blx r1
	add r0, r4, #0
	bl sub_02016050
	pop {r4, pc}
	.balign 4, 0
_02015F60: .word 0x02110930
	thumb_func_end sub_02015F4C

	thumb_func_start sub_02015F64
sub_02015F64: ; 0x02015F64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _02015F8A
	add r4, r6, #0
_02015F72:
	ldr r1, [r5, #0x10]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02015F80
	add r0, r1, r4
	bl sub_02015F4C
_02015F80:
	ldr r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, r0
	blt _02015F72
_02015F8A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02015F64

	thumb_func_start sub_02015F8C
sub_02015F8C: ; 0x02015F8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_020160EC
	add r4, r0, #0
	bne _02015F9E
	bl GF_AssertFail
_02015F9E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201630C
	mov r0, #1
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02015F8C

	thumb_func_start sub_02015FB0
sub_02015FB0: ; 0x02015FB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02015FBE
	bl GF_AssertFail
_02015FBE:
	str r4, [r5, #0x20]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02015FB0

	thumb_func_start sub_02015FC4
sub_02015FC4: ; 0x02015FC4
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FC4

	thumb_func_start sub_02015FCC
sub_02015FCC: ; 0x02015FCC
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FCC

	thumb_func_start sub_02015FD8
sub_02015FD8: ; 0x02015FD8
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FD8

	thumb_func_start sub_02015FE0
sub_02015FE0: ; 0x02015FE0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FE0

	thumb_func_start sub_02015FE8
sub_02015FE8: ; 0x02015FE8
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FE8

	thumb_func_start sub_02015FF4
sub_02015FF4: ; 0x02015FF4
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_02015FF4

	thumb_func_start sub_02015FF8
sub_02015FF8: ; 0x02015FF8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_02015FF8

	thumb_func_start sub_02015FFC
sub_02015FFC: ; 0x02015FFC
	add r0, #0x3e
	strb r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02015FFC

	thumb_func_start sub_02016004
sub_02016004: ; 0x02016004
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02016004

	thumb_func_start sub_02016008
sub_02016008: ; 0x02016008
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_02016008

	thumb_func_start sub_0201600C
sub_0201600C: ; 0x0201600C
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0201600C

	thumb_func_start sub_02016010
sub_02016010: ; 0x02016010
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_02016010

	thumb_func_start sub_02016014
sub_02016014: ; 0x02016014
	cmp r1, #0
	bne _0201601C
	str r2, [r0, #0x34]
	bx lr
_0201601C:
	str r2, [r0, #0x38]
	bx lr
	thumb_func_end sub_02016014

	thumb_func_start sub_02016020
sub_02016020: ; 0x02016020
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_02016020

	thumb_func_start sub_02016024
sub_02016024: ; 0x02016024
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl memset
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x3e
	strb r1, [r0]
	ldr r0, _02016040 ; =0x00007FFF
	strh r0, [r4, #0x3c]
	pop {r4, pc}
	nop
_02016040: .word 0x00007FFF
	thumb_func_end sub_02016024

	thumb_func_start sub_02016044
sub_02016044: ; 0x02016044
	ldr r3, _0201604C ; =sub_020B8008
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	.balign 4, 0
_0201604C: .word sub_020B8008
	thumb_func_end sub_02016044

	thumb_func_start sub_02016050
sub_02016050: ; 0x02016050
	ldr r3, _02016058 ; =sub_020B804C
	mov r1, #0
	stmia r0!, {r1}
	bx r3
	.balign 4, 0
_02016058: .word sub_020B804C
	thumb_func_end sub_02016050

	thumb_func_start sub_0201605C
sub_0201605C: ; 0x0201605C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	lsl r1, r6, #6
	bl AllocFromHeap
	add r7, r0, #0
	bne _02016070
	bl GF_AssertFail
_02016070:
	mov r4, #0
	cmp r6, #0
	ble _02016086
	add r5, r7, #0
_02016078:
	add r0, r5, #0
	bl sub_02016024
	add r4, r4, #1
	add r5, #0x40
	cmp r4, r6
	blt _02016078
_02016086:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201605C

	thumb_func_start sub_0201608C
sub_0201608C: ; 0x0201608C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x28
	mul r1, r6
	bl AllocFromHeap
	add r7, r0, #0
	bne _020160A2
	bl GF_AssertFail
_020160A2:
	mov r4, #0
	cmp r6, #0
	ble _020160B8
	add r5, r7, #0
_020160AA:
	add r0, r5, #0
	bl sub_02016044
	add r4, r4, #1
	add r5, #0x28
	cmp r4, r6
	blt _020160AA
_020160B8:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201608C

	thumb_func_start sub_020160BC
sub_020160BC: ; 0x020160BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	mul r1, r6
	bl AllocFromHeap
	add r7, r0, #0
	bne _020160D2
	bl GF_AssertFail
_020160D2:
	mov r4, #0
	cmp r6, #0
	ble _020160E8
	add r5, r7, #0
_020160DA:
	add r0, r5, #0
	bl sub_02016050
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r6
	blt _020160DA
_020160E8:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020160BC

	thumb_func_start sub_020160EC
sub_020160EC: ; 0x020160EC
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _02016110
	ldr r3, [r0]
	add r2, r3, #0
_020160FA:
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _02016108
	lsl r0, r1, #6
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02016108:
	add r1, r1, #1
	add r2, #0x40
	cmp r1, r4
	blt _020160FA
_02016110:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_020160EC

	thumb_func_start sub_02016118
sub_02016118: ; 0x02016118
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _0201613E
	ldr r3, [r0, #8]
	add r2, r3, #0
_02016126:
	ldr r0, [r2]
	cmp r0, #0
	bne _02016136
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02016136:
	add r1, r1, #1
	add r2, #0x28
	cmp r1, r4
	blt _02016126
_0201613E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02016118

	thumb_func_start sub_02016144
sub_02016144: ; 0x02016144
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _0201616A
	ldr r3, [r0, #0x10]
	add r2, r3, #0
_02016152:
	ldr r0, [r2]
	cmp r0, #0
	bne _02016162
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02016162:
	add r1, r1, #1
	add r2, #0x18
	cmp r1, r4
	blt _02016152
_0201616A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02016144

	thumb_func_start sub_02016170
sub_02016170: ; 0x02016170
	push {r3, lr}
	ldr r3, _02016180 ; =0x02110924
	mov r1, #0
	ldr r0, [r0, #0x10]
	ldr r3, [r3]
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	.balign 4, 0
_02016180: .word 0x02110924
	thumb_func_end sub_02016170

	thumb_func_start sub_02016184
sub_02016184: ; 0x02016184
	push {r3, lr}
	ldr r3, _02016194 ; =0x0211092C
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #5
	add r2, r1, #0
	blx r3
	pop {r3, pc}
	.balign 4, 0
_02016194: .word 0x0211092C
	thumb_func_end sub_02016184

	thumb_func_start sub_02016198
sub_02016198: ; 0x02016198
	push {r3, lr}
	lsl r1, r1, #0x10
	add r3, r2, #0
	lsr r1, r1, #0xd
	mov r2, #0
	bl sub_020B82CC
	pop {r3, pc}
	thumb_func_end sub_02016198

	thumb_func_start sub_020161A8
sub_020161A8: ; 0x020161A8
	push {r3, r4, r5, lr}
	add r3, r2, #0
	ldr r2, _020161C8 ; =0xFFFF0000
	add r5, r0, #0
	and r2, r1
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r4, [r5, #8]
	lsl r2, r2, #3
	str r2, [r5, #8]
	lsr r1, r1, #0xd
	mov r2, #0
	bl NNS_G2dLoadPalette
	str r4, [r5, #8]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_020161C8: .word 0xFFFF0000
	thumb_func_end sub_020161A8

	thumb_func_start sub_020161CC
sub_020161CC: ; 0x020161CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r7, _020162EC ; =0x04000444
	mov r6, #0
	add r5, r0, #0
	str r6, [r7]
	ldrh r1, [r5, #0x3c]
	ldr r0, _020162F0 ; =0x7FFF8000
	orr r0, r1
	str r0, [r7, #0x7c]
	add r0, r7, #0
	ldr r1, _020162F4 ; =0x00004210
	add r0, #0x80
	str r1, [r0]
	ldr r3, [r5, #0x24]
	ldr r4, [r3, #8]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #4]
	ldr r0, [r3]
	lsl r3, r2, #0x1d
	lsl r2, r1, #0x17
	lsl r1, r0, #0x14
	ldr r0, [r5, #0x28]
	lsl r4, r4, #0x1a
	lsr r0, r0, #3
	orr r4, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r7, #0x64]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _02016218
	mov r6, #1
_02016218:
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #4
	sub r0, r0, r6
	lsr r1, r0
	ldr r2, _020162F8 ; =0x040004AC
	add r0, r5, #0
	str r1, [r2]
	add r0, #0x3e
	ldrb r0, [r0]
	sub r2, #8
	lsl r1, r0, #0x10
	mov r0, #0xc0
	orr r0, r1
	str r0, [r2]
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _0201624A
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r7, #0
	str r0, [sp, #0x14]
	b _02016252
_0201624A:
	mov r0, #8
	ldrsh r7, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
_02016252:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _02016260
	mov r0, #0xa
	ldrsh r6, [r5, r0]
	mov r4, #0
	b _02016266
_02016260:
	mov r0, #0xa
	ldrsh r4, [r5, r0]
	mov r6, #0
_02016266:
	ldr r0, [r5, #0x14]
	mov r1, #6
	lsl r2, r0, #0xc
	mov r0, #2
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	mov r3, #4
	ldrsh r3, [r5, r3]
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r0, r0, r3
	ldr r3, _020162FC ; =0x04000470
	lsl r0, r0, #0xc
	str r0, [r3]
	str r1, [r3]
	str r2, [r3]
	ldr r0, [r5, #0x18]
	ldr r1, _02016300 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl sub_020CFC30
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, _02016304 ; =0x0400046C
	mov r3, #8
	str r0, [r1]
	str r2, [r1]
	lsr r0, r1, #0xe
	str r0, [r1]
	mov r2, #4
	mov r0, #6
	ldrsh r2, [r5, r2]
	ldrsh r0, [r5, r0]
	neg r2, r2
	neg r0, r0
	lsl r2, r2, #0xc
	lsl r0, r0, #0xc
	str r2, [r1, #4]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #4]
	mov r1, #0xa
	ldrsh r1, [r5, r1]
	add r2, r0, #0
	str r1, [sp]
	ldr r1, [sp, #0x14]
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrsh r3, [r5, r3]
	add r1, r0, #0
	bl sub_020B7418
	ldr r0, _02016308 ; =0x04000448
	mov r1, #1
	str r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020162EC: .word 0x04000444
_020162F0: .word 0x7FFF8000
_020162F4: .word 0x00004210
_020162F8: .word 0x040004AC
_020162FC: .word 0x04000470
_02016300: .word 0x021094DC
_02016304: .word 0x0400046C
_02016308: .word 0x04000448
	thumb_func_end sub_020161CC

	thumb_func_start sub_0201630C
sub_0201630C: ; 0x0201630C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	add r7, r0, #0
	ldr r2, [r1, #0x10]
	mov r6, #8
	mov r0, #0
	cmp r2, #0
	ble _0201632A
_0201631E:
	ldr r2, [r5, #4]
	add r0, r0, #1
	ldr r2, [r2, #0x10]
	lsl r6, r6, #1
	cmp r0, r2
	blt _0201631E
_0201632A:
	ldr r1, [r1, #0x14]
	mov r4, #8
	mov r0, #0
	cmp r1, #0
	ble _02016340
_02016334:
	ldr r1, [r5, #4]
	add r0, r0, #1
	ldr r1, [r1, #0x14]
	lsl r4, r4, #1
	cmp r0, r1
	blt _02016334
_02016340:
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, r7, #0
	bl sub_02015FC4
	lsr r1, r6, #0x1f
	lsr r2, r4, #0x1f
	add r1, r6, r1
	add r2, r4, r2
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015FD8
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02015FE0
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl sub_02015FF4
	ldr r1, [r5, #0x14]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02015FFC
	ldr r1, [r5, #4]
	add r0, r7, #0
	add r1, #0x10
	bl sub_02016004
	ldr r0, [r5, #4]
	mov r1, #0
	add r0, r0, #4
	bl sub_020B802C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016008
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #4
	bl sub_020B8078
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0201600C
	ldrh r1, [r5, #0x1c]
	add r0, r7, #0
	bl sub_02016010
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02016014
	add r0, r7, #0
	mov r1, #1
	mov r2, #0
	bl sub_02016014
	ldrh r1, [r5, #0x10]
	add r0, r7, #0
	bl sub_02016020
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201630C

	thumb_func_start sub_020163E0
sub_020163E0: ; 0x020163E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _02016488 ; =sub_020164D0
	mov r1, #0x50
	mov r2, #0
	bl sub_02007200
	str r0, [sp, #4]
	bl sub_0201F988
	add r4, r0, #0
	cmp r5, #0
	beq _02016424
	cmp r6, #0
	bne _02016414
	add r0, r5, #0
	mov r1, #0
	bl PaletteData_GetUnfadedBuf
	str r0, [sp]
	ldr r0, _0201648C ; =sub_020165D4
	str r0, [r4, #4]
	b _0201643E
_02016414:
	add r0, r5, #0
	mov r1, #1
	bl PaletteData_GetUnfadedBuf
	str r0, [sp]
	ldr r0, _02016490 ; =sub_020165F0
	str r0, [r4, #4]
	b _0201643E
_02016424:
	cmp r6, #0
	bne _02016434
	bl sub_02026E84
	str r0, [sp]
	ldr r0, _02016494 ; =sub_020165A4
	str r0, [r4, #4]
	b _0201643E
_02016434:
	bl sub_02026E94
	str r0, [sp]
	ldr r0, _02016498 ; =sub_020165BC
	str r0, [r4, #4]
_0201643E:
	ldr r1, [sp]
	lsl r0, r7, #5
	str r0, [sp, #8]
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0xc
	mov r2, #0x20
	bl MIi_CpuCopy16
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r2, #0x20
	add r0, r1, r0
	add r1, r4, #0
	add r1, #0x2c
	bl MIi_CpuCopy16
	ldr r0, [sp, #4]
	mov r1, #1
	str r0, [r4]
	add r0, r4, #0
	str r5, [r4, #8]
	add r0, #0x4c
	strb r6, [r0]
	add r0, r4, #0
	add r0, #0x4d
	strb r7, [r0]
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02016488: .word sub_020164D0
_0201648C: .word sub_020165D4
_02016490: .word sub_020165F0
_02016494: .word sub_020165A4
_02016498: .word sub_020165BC
	thumb_func_end sub_020163E0

	thumb_func_start sub_0201649C
sub_0201649C: ; 0x0201649C
	cmp r1, #0
	beq _020164AA
	cmp r1, #1
	beq _020164B2
	cmp r1, #2
	beq _020164BA
	bx lr
_020164AA:
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_020164B2:
	mov r1, #2
	add r0, #0x4e
	strb r1, [r0]
	bx lr
_020164BA:
	mov r1, #3
	add r0, #0x4e
	strb r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201649C

	thumb_func_start sub_020164C4
sub_020164C4: ; 0x020164C4
	ldr r3, _020164CC ; =sub_02007234
	ldr r0, [r0]
	bx r3
	nop
_020164CC: .word sub_02007234
	thumb_func_end sub_020164C4

	thumb_func_start sub_020164D0
sub_020164D0: ; 0x020164D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02016546
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020164EC: ; jump table
	.short _020164F4 - _020164EC - 2 ; case 0
	.short _02016504 - _020164EC - 2 ; case 1
	.short _02016546 - _020164EC - 2 ; case 2
	.short _02016538 - _020164EC - 2 ; case 3
_020164F4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4f
	strb r1, [r0]
	mov r0, #1
	add r4, #0x4e
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02016504:
	add r0, r4, #0
	bl sub_02016548
	cmp r0, #1
	bne _02016518
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0x2c
	blx r2
_02016518:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _02016546
	mov r0, #0
	add r4, #0x4f
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02016538:
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, #0xc
	blx r2
	add r0, r5, #0
	bl sub_02007234
_02016546:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020164D0

	thumb_func_start sub_02016548
sub_02016548: ; 0x02016548
	push {r4, r5}
	add r1, r0, #0
	add r1, #0x4f
	ldrb r1, [r1]
	cmp r1, #0
	bne _02016576
	mov r1, #0x1e
	mov r4, #0
	mov r3, #1
	lsl r1, r1, #0xa
_0201655C:
	add r2, r3, #0
	lsl r2, r4
	tst r2, r1
	beq _02016568
	ldrh r2, [r0, #0xc]
	strh r2, [r0, #0x2c]
_02016568:
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #0x10
	blo _0201655C
	mov r0, #1
	pop {r4, r5}
	bx lr
_02016576:
	cmp r1, #0x18
	bne _0201659E
	mov r1, #0x1e
	mov r5, #0
	add r4, r0, #0
	mov r3, #1
	lsl r1, r1, #0xa
_02016584:
	add r2, r3, #0
	lsl r2, r5
	tst r2, r1
	beq _02016590
	ldrh r2, [r0, #0x2a]
	strh r2, [r4, #0x2c]
_02016590:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0x10
	blo _02016584
	mov r0, #1
	pop {r4, r5}
	bx lr
_0201659E:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02016548

	thumb_func_start sub_020165A4
sub_020165A4: ; 0x020165A4
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #0
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201C260
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020165A4

	thumb_func_start sub_020165BC
sub_020165BC: ; 0x020165BC
	push {r3, lr}
	add r3, r0, #0
	add r3, #0x4d
	ldrb r3, [r3]
	mov r0, #4
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl sub_0201C260
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020165BC

	thumb_func_start sub_020165D4
sub_020165D4: ; 0x020165D4
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #0
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020165D4

	thumb_func_start sub_020165F0
sub_020165F0: ; 0x020165F0
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r3, #8]
	add r3, #0x4d
	ldrb r3, [r3]
	mov r2, #1
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020165F0

	thumb_func_start sub_0201660C
sub_0201660C: ; 0x0201660C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x78
	bl AllocFromHeap
	add r1, r5, #0
	add r4, r0, #0
	bl sub_02016A1C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201660C

	thumb_func_start sub_02016624
sub_02016624: ; 0x02016624
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x77
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0201663A
	bl sub_020169CC
_0201663A:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02016624

	thumb_func_start sub_02016644
sub_02016644: ; 0x02016644
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	str r0, [r5, #0x5c]
	ldr r0, [r4, #4]
	str r0, [r5, #0x60]
	add r0, r5, #0
	ldrb r1, [r4, #0x10]
	add r0, #0x70
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r4, #0x11]
	add r0, #0x71
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x74
	ldrb r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r5, #0
	add r0, #0x74
	strb r1, [r0]
	ldrb r0, [r4, #0x12]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1c
	cmp r1, #2
	bhs _0201667E
	b _02016680
_0201667E:
	mov r1, #0
_02016680:
	add r0, r5, #0
	add r0, #0x75
	strb r1, [r0]
	ldrb r0, [r4, #0x13]
	lsl r1, r0, #1
	ldr r0, _020166F4 ; =0x020F61B8
	ldrb r1, [r0, r1]
	add r0, r5, #0
	add r0, #0x72
	strb r1, [r0]
	ldrb r0, [r4, #0x13]
	lsl r1, r0, #1
	ldr r0, _020166F8 ; =0x020F61B9
	ldrb r1, [r0, r1]
	add r0, r5, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016A64
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016A84
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016AB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02016B4C
	add r0, r5, #0
	add r0, #0x77
	ldrb r1, [r0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r1, r0
	add r0, r5, #0
	add r0, #0x77
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x77
	ldrb r1, [r0]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x80
	orr r1, r0
	add r0, r5, #0
	add r0, #0x77
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020167C4
	pop {r3, r4, r5, pc}
	nop
_020166F4: .word 0x020F61B8
_020166F8: .word 0x020F61B9
	thumb_func_end sub_02016644

	thumb_func_start sub_020166FC
sub_020166FC: ; 0x020166FC
	ldr r3, _02016700 ; =sub_02016644
	bx r3
	.balign 4, 0
_02016700: .word sub_02016644
	thumb_func_end sub_020166FC

	thumb_func_start sub_02016704
sub_02016704: ; 0x02016704
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02016644
	cmp r4, #0
	beq _02016742
	ldr r3, [r5, #0x64]
	mov r0, #0x98
	mov r1, #0
	add r2, sp, #4
	bl GfGfxLoader_GetPlttData
	add r7, r0, #0
	mov r0, #0x40
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r6, #0xc]
	ldr r2, [r5, #0x60]
	lsl r3, r3, #0x14
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	lsr r2, r2, #2
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
	add r0, r7, #0
	bl FreeToHeap
_02016742:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02016704

	thumb_func_start sub_02016748
sub_02016748: ; 0x02016748
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x77
	ldrb r2, [r1]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r4, #0
	add r1, #0x77
	strb r2, [r1]
	bl sub_020168F4
	cmp r0, #0
	bne _02016784
	add r1, r4, #0
	add r1, #0x77
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bne _02016784
	add r4, #0x76
	ldrb r0, [r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _02016782
	mov r0, #3
	pop {r4, pc}
_02016782:
	mov r0, #4
_02016784:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02016748

	thumb_func_start sub_02016788
sub_02016788: ; 0x02016788
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x28
	add r6, r1, #0
	add r4, #0xc
	mul r6, r0
	add r5, r4, r6
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r3, r5, #0
	lsl r2, r2, #2
	str r0, [sp]
	add r3, #0x24
	add r2, r5, r2
	ldrb r3, [r3]
	ldr r0, [r4, r6]
	ldr r1, [r5, #4]
	ldr r2, [r2, #0x10]
	bl sub_02016E40
	ldr r1, [r5, #4]
	ldr r0, [r4, r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02016788

	thumb_func_start sub_020167C4
sub_020167C4: ; 0x020167C4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x74
	ldrb r1, [r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _020167F6
	add r1, r4, #0
	add r1, #0x75
	ldrb r1, [r1]
	mov r2, #1
	bl sub_02016788
	add r0, r4, #0
	add r4, #0x75
	ldrb r2, [r4]
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02016788
	pop {r4, pc}
_020167F6:
	add r4, #0x75
	ldrb r1, [r4]
	mov r2, #0
	bl sub_02016788
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020167C4

	thumb_func_start sub_02016804
sub_02016804: ; 0x02016804
	push {r3, lr}
	mov r2, #1
	add r3, r1, #0
	tst r3, r2
	beq _02016832
	add r1, r0, #0
	add r1, #0x76
	ldrb r3, [r1]
	mov r1, #0xf
	bic r3, r1
	add r1, r0, #0
	add r1, #0x75
	ldrb r2, [r1]
	mov r1, #0xf
	add r0, #0x76
	and r1, r2
	orr r1, r3
	strb r1, [r0]
	ldr r0, _0201687C ; =0x000005E4
	bl PlaySE
	mov r0, #1
	pop {r3, pc}
_02016832:
	mov r3, #2
	tst r3, r1
	beq _02016854
	add r1, r0, #0
	add r1, #0x76
	ldrb r3, [r1]
	mov r1, #0xf
	add r0, #0x76
	bic r3, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r0]
	ldr r0, _0201687C ; =0x000005E4
	bl PlaySE
	mov r0, #1
	pop {r3, pc}
_02016854:
	mov r3, #0xc0
	tst r1, r3
	beq _02016876
	add r1, r0, #0
	add r1, #0x75
	ldrb r1, [r1]
	eor r2, r1
	add r1, r0, #0
	add r1, #0x75
	strb r2, [r1]
	bl sub_020167C4
	ldr r0, _02016880 ; =0x000005DC
	bl PlaySE
	mov r0, #0
	pop {r3, pc}
_02016876:
	mov r0, #0
	pop {r3, pc}
	nop
_0201687C: .word 0x000005E4
_02016880: .word 0x000005DC
	thumb_func_end sub_02016804

	thumb_func_start sub_02016884
sub_02016884: ; 0x02016884
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x76
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bne _020168B0
	ldr r0, [r4]
	bl sub_02026CC4
	cmp r0, #0
	beq _020168B0
	add r0, r4, #0
	add r0, #0x74
	ldrb r1, [r0]
	mov r0, #1
	add r4, #0x74
	bic r1, r0
	mov r0, #1
	orr r1, r0
	strb r1, [r4]
	pop {r4, pc}
_020168B0:
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _020168E2
	ldr r0, _020168F0 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _020168E2
	add r0, r4, #0
	add r0, #0x74
	ldrb r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x74
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020167C4
	mov r0, #0
	pop {r4, pc}
_020168E2:
	ldr r1, _020168F0 ; =0x021D110C
	add r0, r4, #0
	ldr r1, [r1, #0x48]
	bl sub_02016804
	pop {r4, pc}
	nop
_020168F0: .word 0x021D110C
	thumb_func_end sub_02016884

	thumb_func_start sub_020168F4
sub_020168F4: ; 0x020168F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x77
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02016908
	bl GF_AssertFail
_02016908:
	add r0, r4, #0
	add r0, #0x76
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #3
	bne _02016952
	add r0, r4, #0
	bl sub_02016884
	cmp r0, #0
	bne _02016924
	mov r0, #0
	pop {r3, r4, r5, pc}
_02016924:
	add r1, r4, #0
	add r1, #0x76
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_02016788
	add r0, r4, #0
	add r4, #0x76
	ldrb r1, [r4]
	lsl r1, r1, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02016788
	mov r0, #0
	pop {r3, r4, r5, pc}
_02016952:
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x1a
	cmp r5, #8
	bne _0201696C
	cmp r1, #0
	bne _02016968
	mov r0, #1
	pop {r3, r4, r5, pc}
_02016968:
	mov r0, #2
	pop {r3, r4, r5, pc}
_0201696C:
	lsr r2, r5, #0x1f
	lsl r0, r5, #0x1f
	sub r0, r0, r2
	mov r3, #0x1f
	ror r0, r3
	add r0, r2, r0
	bne _0201699A
	lsr r0, r5, #1
	lsr r2, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r2
	ror r0, r3
	add r0, r2, r0
	bne _02016992
	add r0, r4, #0
	mov r2, #1
	bl sub_02016788
	b _0201699A
_02016992:
	add r0, r4, #0
	mov r2, #0
	bl sub_02016788
_0201699A:
	add r0, r4, #0
	add r0, #0x74
	ldrb r2, [r0]
	mov r1, #0xfc
	add r4, #0x74
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1a
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020168F4

	thumb_func_start sub_020169C0
sub_020169C0: ; 0x020169C0
	add r0, #0x74
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	.balign 4, 0
	thumb_func_end sub_020169C0

	thumb_func_start sub_020169CC
sub_020169CC: ; 0x020169CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl sub_02026CAC
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_020169DC:
	add r0, r5, #0
	bl sub_02016CC4
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #2
	blt _020169DC
	ldr r1, [r6, #0x64]
	add r0, r6, #0
	bl sub_02016A1C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020169CC

	thumb_func_start sub_020169F4
sub_020169F4: ; 0x020169F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02016A02
	bl GF_AssertFail
_02016A02:
	add r0, r5, #0
	add r0, #0x76
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x76
	bic r1, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020169F4

	thumb_func_start sub_02016A1C
sub_02016A1C: ; 0x02016A1C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x78
	bl memset
	add r0, r5, #0
	add r0, #0x77
	ldrb r2, [r0]
	mov r1, #0xf
	add r0, r5, #0
	bic r2, r1
	add r0, #0x77
	strb r2, [r0]
	add r0, r5, #0
	str r4, [r5, #0x64]
	add r0, #0x76
	ldrb r2, [r0]
	mov r0, #3
	bic r2, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r5, #0
	add r0, #0x76
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x77
	ldrb r1, [r0]
	mov r0, #0xf0
	add r5, #0x77
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016A1C

	thumb_func_start sub_02016A64
sub_02016A64: ; 0x02016A64
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r0, [r1, #8]
	mov r1, #1
	str r0, [sp]
	ldr r0, [r3, #0x64]
	str r0, [sp, #4]
	ldr r2, [r3, #0x5c]
	ldr r3, [r3, #0x60]
	mov r0, #0x98
	bl sub_02016D24
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02016A64

	thumb_func_start sub_02016A84
sub_02016A84: ; 0x02016A84
	push {r3, lr}
	sub sp, #8
	add r3, r1, #0
	ldr r1, [r0, #0x60]
	cmp r1, #4
	bhs _02016A94
	mov r2, #0
	b _02016A96
_02016A94:
	mov r2, #4
_02016A96:
	mov r1, #0x40
	str r1, [sp]
	ldr r0, [r0, #0x64]
	mov r1, #0
	str r0, [sp, #4]
	ldr r3, [r3, #0xc]
	mov r0, #0x98
	lsl r3, r3, #5
	bl sub_02016D74
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02016A84

	thumb_func_start sub_02016AB0
sub_02016AB0: ; 0x02016AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	mov r2, #0
	add r3, r7, #0
_02016ABA:
	add r2, r2, #1
	lsl r0, r2, #0xc
	str r0, [r3, #0x68]
	add r3, r3, #4
	cmp r2, #2
	blt _02016ABA
	ldr r0, [r7, #0x5c]
	add r2, sp, #4
	str r0, [sp, #4]
	ldr r0, [r7, #0x60]
	mov r5, #2
	strb r0, [r2, #0x12]
	mov r0, #0x98
	strh r0, [r2, #8]
	ldr r0, [r1, #8]
	strh r0, [r2, #0xe]
	ldr r0, [r1, #0xc]
	strh r0, [r2, #0x10]
	add r0, r7, #0
	add r0, #0x68
	str r0, [sp, #8]
	add r0, r7, #0
	strb r5, [r2, #0x13]
	add r0, #0x70
	ldrb r0, [r0]
	strb r0, [r2, #0x14]
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	beq _02016AF6
	mov r5, #6
_02016AF6:
	add r0, r7, #0
	mov r6, #0
	str r0, [sp]
	add r0, #0xc
	add r4, r6, #0
	str r0, [sp]
_02016B02:
	mov r0, #0
	add r1, sp, #4
_02016B06:
	add r2, r5, r0
	add r2, r2, r4
	strh r2, [r1, #0xa]
	add r0, r0, #1
	add r1, r1, #2
	cmp r0, #2
	blt _02016B06
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x73
	add r0, #0x71
	ldrb r1, [r1]
	ldrb r0, [r0]
	mul r1, r6
	add r1, r0, r1
	add r0, sp, #4
	strb r1, [r0, #0x15]
	ldrh r0, [r0, #0x10]
	add r1, r0, r6
	add r0, sp, #4
	strh r1, [r0, #0x10]
	ldr r0, [sp]
	ldr r2, [r7, #0x64]
	add r1, sp, #4
	bl sub_02016C28
	ldr r0, [sp]
	add r6, r6, #1
	add r0, #0x28
	add r4, r4, #2
	str r0, [sp]
	cmp r6, #2
	blt _02016B02
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02016AB0

	thumb_func_start sub_02016B4C
sub_02016B4C: ; 0x02016B4C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
_02016B56:
	add r2, r4, #0
	add r2, #0x71
	ldrb r3, [r2]
	add r2, r4, #0
	add r2, #0x73
	ldrb r2, [r2]
	mul r2, r0
	add r2, r3, r2
	lsl r2, r2, #3
	strb r2, [r1, #4]
	add r2, r4, #0
	add r2, #0x70
	ldrb r2, [r2]
	add r0, r0, #1
	lsl r2, r2, #3
	strb r2, [r1, #6]
	add r2, r4, #0
	add r2, #0x73
	ldrb r2, [r2]
	add r3, r2, #0
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	mul r3, r0
	add r2, r3, r2
	lsl r2, r2, #3
	strb r2, [r1, #5]
	add r2, r4, #0
	add r2, #0x70
	ldrb r3, [r2]
	add r2, r4, #0
	add r2, #0x72
	ldrb r2, [r2]
	add r2, r3, r2
	lsl r2, r2, #3
	strb r2, [r1, #7]
	add r1, r1, #4
	cmp r0, #2
	blt _02016B56
	ldr r0, [r4, #0x64]
	ldr r2, _02016BBC ; =sub_02016BC0
	str r0, [sp]
	add r0, r4, #4
	mov r1, #2
	add r3, r4, #0
	bl sub_02026C44
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_02016BBC: .word sub_02016BC0
	thumb_func_end sub_02016B4C

	thumb_func_start sub_02016BC0
sub_02016BC0: ; 0x02016BC0
	push {r3, r4, lr}
	sub sp, #4
	add r3, r2, #0
	add r3, #0x77
	ldrb r3, [r3]
	mov r4, #0xf0
	bic r3, r4
	lsl r4, r1, #0x18
	lsr r4, r4, #0x18
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x18
	orr r4, r3
	add r3, r2, #0
	add r3, #0x77
	strb r4, [r3]
	cmp r1, #0
	bne _02016C20
	add r1, r2, #0
	add r1, #0x76
	ldrb r1, [r1]
	mov r3, #0xf
	bic r1, r3
	lsl r3, r0, #0x18
	lsr r4, r3, #0x18
	mov r3, #0xf
	and r3, r4
	orr r3, r1
	add r1, r2, #0
	add r1, #0x76
	strb r3, [r1]
	mov r1, #0x28
	add r2, #0xc
	mul r1, r0
	add r3, r2, r1
	add r0, r3, #0
	add r0, #0x25
	ldrb r0, [r0]
	str r0, [sp]
	ldr r0, [r2, r1]
	ldr r1, [r3, #4]
	ldr r2, [r3, #0x14]
	add r3, #0x24
	ldrb r3, [r3]
	bl sub_02016E40
	ldr r0, _02016C24 ; =0x000005E4
	bl PlaySE
_02016C20:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02016C24: .word 0x000005E4
	thumb_func_end sub_02016BC0

	thumb_func_start sub_02016C28
sub_02016C28: ; 0x02016C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r5, #4]
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r2, r0, #0
	str r1, [r0, #0x18]
	ldrb r0, [r5, #0x13]
	add r2, #0x18
	ldr r6, [sp, #4]
	str r0, [r2, #4]
	mov r0, #0
	str r0, [r2, #8]
	str r0, [sp, #0xc]
	ldr r1, [r5]
	ldr r0, [sp, #4]
	ldr r4, [sp, #4]
	str r1, [r0]
	ldrb r1, [r5, #0x12]
	add r6, #0x10
	add r7, r5, #0
	str r1, [r0, #4]
	ldrb r1, [r5, #0x14]
	add r0, #0x24
	strb r1, [r0]
	ldr r0, [sp, #4]
	ldrb r1, [r5, #0x15]
	add r0, #0x25
	strb r1, [r0]
_02016C64:
	ldr r0, [sp, #8]
	mov r2, #1
	str r0, [sp]
	ldrh r0, [r5, #8]
	ldrh r1, [r7, #0xa]
	add r3, r6, #0
	bl GfGfxLoader_GetScrnData
	str r0, [r4, #8]
	ldrh r1, [r5, #0xe]
	ldr r0, [r4, #0x10]
	bl sub_02016E8C
	ldrh r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	bl sub_02016EAC
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #1
	add r7, r7, #2
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _02016C64
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldr r2, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, #0x24
	ldrb r3, [r3]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r2, [r2, #0x10]
	bl sub_02016E40
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x26
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02016C28

	thumb_func_start sub_02016CC4
sub_02016CC4: ; 0x02016CC4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, [r6, #0x10]
	add r3, r6, #0
	str r0, [sp]
	ldrh r0, [r1]
	mov r2, #0
	add r3, #0x24
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, [r6, #4]
	ldrb r3, [r3]
	lsl r1, r1, #0x18
	ldr r0, [r6]
	lsr r1, r1, #0x18
	bl FillBgTilemapRect
	ldr r1, [r6, #4]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	mov r4, #0
	add r5, r6, #0
_02016D08:
	ldr r0, [r5, #8]
	bl FreeToHeap
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02016D08
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x28
	bl memset
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02016CC4

	thumb_func_start sub_02016D24
sub_02016D24: ; 0x02016D24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x10
	add r5, r2, #0
	add r6, r3, #0
	bl AllocFromHeap
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02016D40:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02016D40
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #1
	add r3, r4, #4
	bl GfGfxLoader_GetCharData
	str r0, [r4, #8]
	str r5, [r4]
	ldr r0, [sp, #0x20]
	strh r6, [r4, #0xc]
	strh r0, [r4, #0xe]
	ldr r0, _02016D70 ; =sub_02016DBC
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200E374
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02016D70: .word sub_02016DBC
	thumb_func_end sub_02016D24

	thumb_func_start sub_02016D74
sub_02016D74: ; 0x02016D74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x10
	add r5, r2, #0
	add r6, r3, #0
	bl AllocFromHeap
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02016D8E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02016D8E
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl GfGfxLoader_GetPlttData
	str r0, [r4, #4]
	strh r5, [r4, #8]
	ldr r0, [sp, #0x18]
	strh r6, [r4, #0xa]
	strh r0, [r4, #0xc]
	ldr r0, _02016DB8 ; =sub_02016DF8
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02016DB8: .word sub_02016DF8
	thumb_func_end sub_02016D74

	thumb_func_start sub_02016DBC
sub_02016DBC: ; 0x02016DBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldrh r0, [r4, #0xe]
	ldr r3, [r4, #4]
	str r0, [sp]
	ldrh r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	ldr r0, [r4]
	lsl r1, r1, #0x18
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl BG_LoadCharTilesData
	add r0, r5, #0
	bl sub_0200E390
	ldr r0, [r4, #8]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02016DBC

	thumb_func_start sub_02016DF8
sub_02016DF8: ; 0x02016DF8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldrh r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _02016E1C
	ldr r0, [r4]
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl GX_LoadBGPltt
	b _02016E2C
_02016E1C:
	cmp r0, #4
	bne _02016E2C
	ldr r0, [r4]
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl GXS_LoadBGPltt
_02016E2C:
	add r0, r5, #0
	bl sub_0200E390
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02016DF8

	thumb_func_start sub_02016E40
sub_02016E40: ; 0x02016E40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldrh r6, [r1]
	ldrh r3, [r1, #2]
	lsl r2, r2, #0x18
	lsl r6, r6, #0x15
	lsr r6, r6, #0x18
	lsl r3, r3, #0x15
	str r6, [sp]
	lsr r3, r3, #0x18
	str r3, [sp, #4]
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsl r1, r4, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	add r5, r0, #0
	bl sub_0201C4EC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02016E40

	thumb_func_start sub_02016E8C
sub_02016E8C: ; 0x02016E8C
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _02016EA8
_02016E9A:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _02016E9A
_02016EA8:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02016E8C

	thumb_func_start sub_02016EAC
sub_02016EAC: ; 0x02016EAC
	push {r4, r5}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r3, r2, #1
	mov r2, #0
	cmp r3, #0
	ble _02016ED2
	ldr r4, _02016ED8 ; =0x00000FFF
	lsl r1, r1, #0xc
_02016EBE:
	ldrh r5, [r0]
	add r2, r2, #1
	and r5, r4
	strh r5, [r0]
	ldrh r5, [r0]
	orr r5, r1
	strh r5, [r0]
	add r0, r0, #2
	cmp r2, r3
	blt _02016EBE
_02016ED2:
	pop {r4, r5}
	bx lr
	nop
_02016ED8: .word 0x00000FFF
	thumb_func_end sub_02016EAC

	thumb_func_start sub_02016EDC
sub_02016EDC: ; 0x02016EDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r6, r0, #0
	add r7, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	strb r7, [r4, #8]
	mov r0, #0x1d
	strb r5, [r4, #9]
	lsl r0, r0, #4
	add r7, r5, #0
	mul r7, r0
	add r0, r6, #0
	add r1, r7, #0
	str r6, [r4, #4]
	bl AllocFromHeap
	mov r1, #0
	add r2, r7, #0
	str r0, [r4]
	bl MIi_CpuFill8
	mov r3, #0
	cmp r5, #0
	ble _02016F28
	mov r0, #0x1d
	add r6, r3, #0
	mov r2, #1
	lsl r0, r0, #4
_02016F1A:
	ldr r1, [r4]
	add r3, r3, #1
	add r1, r1, r6
	str r2, [r1, #0x20]
	add r6, r6, r0
	cmp r3, r5
	blt _02016F1A
_02016F28:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02016EDC

	thumb_func_start sub_02016F2C
sub_02016F2C: ; 0x02016F2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02016F2C

	thumb_func_start sub_02016F40
sub_02016F40: ; 0x02016F40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, r2, #0
	ldrh r6, [r0]
	ldrh r0, [r0, #2]
	add r7, r1, #0
	ldrb r1, [r5, #9]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r2, [sp]
	cmp r0, r1
	blo _02016F60
	bl GF_AssertFail
_02016F60:
	ldr r0, [sp, #4]
	mov r1, #0x1d
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5]
	mul r4, r1
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02016F78
	bl GF_AssertFail
_02016F78:
	ldr r0, [r5]
	mov r2, #0x1d
	add r0, r0, r4
	mov r1, #0
	lsl r2, r2, #4
	bl MIi_CpuFill8
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5]
	cmp r6, #0x8f
	str r7, [r0, r4]
	blt _02016F9A
	mov r6, #0
	str r6, [sp, #8]
_02016F9A:
	ldr r0, [r5]
	add r0, r0, r4
	str r6, [r0, #0x14]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02016FAC
	ldr r0, [sp]
	ldrb r2, [r0, #4]
	b _02016FAE
_02016FAC:
	mov r2, #0
_02016FAE:
	ldr r0, [r5]
	add r1, r0, r4
	mov r0, #0x73
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r1, r1, r4
	ldr r1, [r1, #0x14]
	mov r0, #0x5a
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	ldr r1, [r5]
	mov r2, #0
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r0, [r5]
	mov r6, #0x1c
	add r1, r0, r4
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	str r2, [r0, #0x1c]
	ldr r0, [r5]
	add r0, r0, r4
	str r2, [r0, #0x20]
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, _02017060 ; =0x000001CD
	strb r2, [r1, r0]
	ldr r1, [r5]
	add r3, r1, r4
	add r1, r0, #1
	strb r6, [r3, r1]
	ldr r1, [r5]
	add r0, r0, #2
	add r1, r1, r4
	strb r2, [r1, r0]
	ldr r1, [r5]
	ldr r0, _02017064 ; =sub_020170C4
	add r1, r1, r4
	bl sub_0200E320
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r0, [r5]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r0, [r1, #0x54]
	add r0, r7, #0
	mov r1, #0
	bl sub_02008A78
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x58]
	add r0, r7, #0
	mov r1, #1
	bl sub_02008A78
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x5c]
	ldr r1, [r5]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #0x60]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x64]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x68]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x6c]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x70]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x74]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x78]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02017060: .word 0x000001CD
_02017064: .word sub_020170C4
	thumb_func_end sub_02016F40

	thumb_func_start sub_02017068
sub_02017068: ; 0x02017068
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	cmp r4, r0
	blo _02017078
	bl GF_AssertFail
_02017078:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02017068

	thumb_func_start sub_02017088
sub_02017088: ; 0x02017088
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020170C2
	bl sub_0200E390
	ldr r1, [r5]
	mov r0, #0
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r1, [r5]
	mov r2, #1
	add r1, r1, r4
	str r2, [r1, #0x20]
	ldr r1, [r5]
	add r1, r1, r4
	str r0, [r1, #0x10]
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #8]
	bl FreeToHeap
_020170C2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02017088

	thumb_func_start sub_020170C4
sub_020170C4: ; 0x020170C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _020170D8
	add r0, r4, #0
	bl sub_020170FC
	b _020170DC
_020170D8:
	sub r0, r0, #1
	str r0, [r4, #0x54]
_020170DC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020170FA
	mov r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl FreeToHeap
_020170FA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020170C4

	thumb_func_start sub_020170FC
sub_020170FC: ; 0x020170FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	str r6, [r5, #0x18]
	add r7, r5, #0
	str r6, [r5, #0x44]
	add r4, r6, #0
	add r7, #0x7c
_0201710C:
	mov r0, #0x54
	add r1, r4, #0
	mul r1, r0
	add r0, r7, r1
	ldr r1, [r7, r1]
	cmp r1, #0
	beq _0201713A
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	cmp r1, #0
	bne _0201712C
	ldr r2, [r0, #0x50]
	add r1, r5, #0
	blx r2
	b _02017140
_0201712C:
	add r1, r0, #0
	add r1, #0x2d
	ldrb r1, [r1]
	add r0, #0x2d
	sub r1, r1, #1
	strb r1, [r0]
	b _02017140
_0201713A:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02017140:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0201710C
	cmp r6, #4
	bne _02017154
	ldr r0, _020171E8 ; =0x000001CD
	mov r1, #0
	strb r1, [r5, r0]
_02017154:
	ldr r0, _020171E8 ; =0x000001CD
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _0201716A
	add r0, r5, #0
	bl sub_020179D4
	add r0, r5, #0
	bl sub_02017A1C
	pop {r3, r4, r5, r6, r7, pc}
_0201716A:
	add r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02017182
	ldr r0, [r5]
	bl sub_02009138
	cmp r0, #0
	bne _020171E4
	ldr r0, _020171EC ; =0x000001CF
	mov r1, #0
	strb r1, [r5, r0]
_02017182:
	add r6, r5, #0
	add r4, r5, #0
	ldr r7, _020171F0 ; =0x020F61F8
	add r6, #0xc
	add r4, #0x44
_0201718C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #0x22
	blo _0201719E
	bl GF_AssertFail
_0201719E:
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	ldr r1, [r1]
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _020171E4
	ldr r0, [r6]
	add r0, r0, #4
	str r0, [r6]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _020171E4
	ldr r0, _020171E8 ; =0x000001CD
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _020171D2
	add r0, r5, #0
	bl sub_020179D4
	add r0, r5, #0
	bl sub_02017A1C
	pop {r3, r4, r5, r6, r7, pc}
_020171D2:
	mov r0, #1
	ldr r1, [r5, #0x44]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0201718C
	bl GF_AssertFail
	mov r0, #1
	str r0, [r5, #0x1c]
_020171E4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020171E8: .word 0x000001CD
_020171EC: .word 0x000001CF
_020171F0: .word 0x020F61F8
	thumb_func_end sub_020170FC

	thumb_func_start sub_020171F4
sub_020171F4: ; 0x020171F4
	push {r4, lr}
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	cmp r2, #1
	beq _02017202
	bl GF_AssertFail
_02017202:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020171F4

	thumb_func_start sub_02017208
sub_02017208: ; 0x02017208
	ldr r3, _02017210 ; =sub_020171F4
	add r2, r1, #0
	mov r1, #0
	bx r3
	.balign 4, 0
_02017210: .word sub_020171F4
	thumb_func_end sub_02017208

	thumb_func_start sub_02017214
sub_02017214: ; 0x02017214
	ldr r3, _0201721C ; =sub_02017208
	mov r1, #1
	bx r3
	nop
_0201721C: .word sub_02017208
	thumb_func_end sub_02017214

	thumb_func_start sub_02017220
sub_02017220: ; 0x02017220
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r3, #0
	add r0, #0x7c
	mov r2, #0x54
_0201722A:
	add r1, r3, #0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02017254
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x54
	bl MIi_CpuFill8
	mov r0, #1
	str r0, [r4]
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _02017268 ; =0x020F61BC
	ldr r0, [r0, r1]
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02017254:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _0201722A
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02017268: .word 0x020F61BC
	thumb_func_end sub_02017220

	thumb_func_start sub_0201726C
sub_0201726C: ; 0x0201726C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_02017214
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201726C

	thumb_func_start sub_02017280
sub_02017280: ; 0x02017280
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_02017214
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02017280

	thumb_func_start sub_02017294
sub_02017294: ; 0x02017294
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0xc]
	add r1, r1, #4
	str r1, [r0, #0xc]
	add r0, r1, #0
	bl sub_02017214
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #8
	blo _020172B0
	bl GF_AssertFail
_020172B0:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017294

	thumb_func_start sub_020172B4
sub_020172B4: ; 0x020172B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02017294
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02017294
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020172B4

	thumb_func_start sub_020172C8
sub_020172C8: ; 0x020172C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02017294
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _02017308
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add r1, r6, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4]
	add r0, r5, #0
	bl sub_0201726C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02017308:
	cmp r0, #0x13
	bne _02017334
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, #1
	bl sub_020172B4
	add r0, sp, #0
	ldrb r1, [r0, #2]
	add sp, #4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [r4]
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6]
	pop {r3, r4, r5, r6, pc}
_02017334:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020172C8

	thumb_func_start sub_0201733C
sub_0201733C: ; 0x0201733C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02017294
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017280
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x12
	bne _0201736E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201726C
	b _0201738E
_0201736E:
	cmp r0, #0x13
	bne _0201738A
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #3]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4]
	b _0201738E
_0201738A:
	bl GF_AssertFail
_0201738E:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _020173A2
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201726C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020173A2:
	cmp r0, #0x13
	bne _020173C0
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	add sp, #4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6]
	pop {r3, r4, r5, r6, pc}
_020173C0:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0201733C

	thumb_func_start sub_020173C8
sub_020173C8: ; 0x020173C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0
	add r2, #3
	add r5, r0, #0
	add r6, r3, #0
	bl sub_020172B4
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r7, [r0, #0x24]
	add r0, r5, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _020173FE
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201726C
	b _0201741E
_020173FE:
	cmp r0, #0x15
	bne _0201741A
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6]
	b _0201741E
_0201741A:
	bl GF_AssertFail
_0201741E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _02017438
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0201726C
	b _02017458
_02017438:
	cmp r0, #0x15
	bne _02017454
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #1]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _02017458
_02017454:
	bl GF_AssertFail
_02017458:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020173C8

	thumb_func_start sub_02017470
sub_02017470: ; 0x02017470
	ldr r2, [r0]
	ldr r0, [r1]
	sub r0, r2, r0
	bpl _0201747C
	mov r0, #0xf
	bx lr
_0201747C:
	cmp r0, #0
	ble _02017484
	mov r0, #0x10
	bx lr
_02017484:
	mov r0, #0x11
	bx lr
	thumb_func_end sub_02017470

	thumb_func_start sub_02017488
sub_02017488: ; 0x02017488
	add r2, r0, #0
	ldr r0, [r2]
	ldr r2, [r2, #0x74]
	mov r1, #1
	neg r3, r2
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	ldr r3, _020174A0 ; =sub_02008C2C
	asr r2, r2, #3
	bx r3
	nop
_020174A0: .word sub_02008C2C
	thumb_func_end sub_02017488

	thumb_func_start sub_020174A4
sub_020174A4: ; 0x020174A4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020174BC
	mov r0, #1
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_020174A4

	thumb_func_start sub_020174B4
sub_020174B4: ; 0x020174B4
	mov r1, #1
	str r1, [r0, #0x18]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020174B4

	thumb_func_start sub_020174BC
sub_020174BC: ; 0x020174BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r2, [r4, #0x58]
	mov r1, #0
	bl sub_020087A4
	ldr r0, [r4]
	ldr r2, [r4, #0x5c]
	mov r1, #1
	bl sub_020087A4
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0
	bl sub_020087A4
	ldr r0, [r4]
	mov r1, #0xa
	mov r2, #0
	bl sub_020087A4
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4]
	add r2, #0xf4
	bl sub_020087A4
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4]
	add r2, #0xf3
	bl sub_020087A4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020174BC

	thumb_func_start sub_02017504
sub_02017504: ; 0x02017504
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	add r4, r0, #0
	bl sub_020172B4
	add r0, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	ldr r1, [r1, #0x24]
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017504

	thumb_func_start sub_0201752C
sub_0201752C: ; 0x0201752C
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020172C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0201752C

	thumb_func_start sub_02017550
sub_02017550: ; 0x02017550
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020172C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r2, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017550

	thumb_func_start sub_02017578
sub_02017578: ; 0x02017578
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0201733C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02017578

	thumb_func_start sub_0201759C
sub_0201759C: ; 0x0201759C
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0201733C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl _s32_div_f
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201759C

	thumb_func_start sub_020175C4
sub_020175C4: ; 0x020175C4
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0201733C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl _s32_div_f
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_020175C4

	thumb_func_start sub_020175EC
sub_020175EC: ; 0x020175EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _02017620
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #3]
	add r1, sp, #8
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0201726C
	b _0201764E
_02017620:
	cmp r0, #0x15
	bne _0201764A
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_020172B4
	add r0, sp, #0
	ldrb r1, [r0, #3]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #8]
	b _0201764E
_0201764A:
	bl GF_AssertFail
_0201764E:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x11
	bls _02017664
	bl GF_AssertFail
_02017664:
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_02017470
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _02017692
	add r1, sp, #0
	add r0, r5, #0
	add r1, #3
	bl sub_02017294
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0201726C
	b _020176B6
_02017692:
	cmp r0, #0x15
	bne _020176B2
	add r1, sp, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, #3
	add r2, #2
	bl sub_020172B4
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020176B6
_020176B2:
	bl GF_AssertFail
_020176B6:
	add r0, sp, #0
	ldrb r1, [r0, #1]
	cmp r1, r4
	bne _020176C8
	ldrb r0, [r0, #3]
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	add r0, r5, r0
	str r1, [r0, #0x24]
_020176C8:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020175EC

	thumb_func_start sub_020176CC
sub_020176CC: ; 0x020176CC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02017294
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_02017214
	add r1, sp, #0
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020176CC

	thumb_func_start sub_020176F0
sub_020176F0: ; 0x020176F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _020176FE
	bl GF_AssertFail
_020176FE:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0xc]
	bl sub_02017214
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
	thumb_func_end sub_020176F0

	thumb_func_start sub_02017714
sub_02017714: ; 0x02017714
	ldr r1, [r0, #0x4c]
	add r2, r1, #1
	str r2, [r0, #0x4c]
	ldr r1, [r0, #0x48]
	cmp r2, r1
	blt _0201772A
	mov r1, #0
	str r1, [r0, #0x50]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x48]
	bx lr
_0201772A:
	ldr r1, [r0, #0x50]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_02017714

	thumb_func_start sub_02017730
sub_02017730: ; 0x02017730
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_0201726C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017294
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_020087A4
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017730

	thumb_func_start sub_0201775C
sub_0201775C: ; 0x0201775C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	bl sub_0201726C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017294
	add r2, sp, #0
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_02008C2C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201775C

	thumb_func_start sub_02017788
sub_02017788: ; 0x02017788
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #8
	add r4, r0, #0
	bl sub_0201726C
	add r1, sp, #0
	add r0, r4, #0
	add r1, #1
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _020177B0
	add r0, r4, #0
	add r1, sp, #4
	bl sub_0201726C
	b _020177D0
_020177B0:
	cmp r0, #0x15
	bne _020177CC
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020177D0
_020177CC:
	bl GF_AssertFail
_020177D0:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _020177EE
	ldr r0, [r4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_020087A4
	add sp, #0xc
	pop {r3, r4, pc}
_020177EE:
	cmp r0, #0x17
	bne _02017800
	ldr r0, [r4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02008C2C
	add sp, #0xc
	pop {r3, r4, pc}
_02017800:
	bl GF_AssertFail
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02017788

	thumb_func_start sub_02017808
sub_02017808: ; 0x02017808
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020173C8
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02017838 ; =0x021094DC
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	add r0, sp, #0
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02017838: .word 0x021094DC
	thumb_func_end sub_02017808

	thumb_func_start sub_0201783C
sub_0201783C: ; 0x0201783C
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0
	add r2, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	bl sub_020173C8
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017870 ; =0x021094DC
	ldrsh r1, [r1, r2]
	mul r1, r0
	add r0, sp, #0
	ldrb r0, [r0]
	asr r1, r1, #0xc
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02017870: .word 0x021094DC
	thumb_func_end sub_0201783C

	thumb_func_start sub_02017874
sub_02017874: ; 0x02017874
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02017294
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _020178A0
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_020178A0:
	cmp r1, #9
	bne _020178B2
	ldrb r0, [r0, #1]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_020178B2:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017874

	thumb_func_start sub_020178BC
sub_020178BC: ; 0x020178BC
	push {r3, r4, lr}
	sub sp, #4
	add r1, sp, #0
	add r4, r0, #0
	add r1, #1
	bl sub_02017294
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r1, [r0]
	cmp r1, #8
	bne _020178EC
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x60]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_020178EC:
	cmp r1, #9
	bne _02017902
	ldrb r0, [r0, #1]
	ldr r1, [r4, #0x64]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x64]
	pop {r3, r4, pc}
_02017902:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_020178BC

	thumb_func_start sub_0201790C
sub_0201790C: ; 0x0201790C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r1, sp, #0
	add r1, #3
	add r5, r0, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #8
	bne _02017928
	add r4, r5, #0
	add r4, #0x60
	b _02017968
_02017928:
	cmp r0, #9
	bne _02017932
	add r4, r5, #0
	add r4, #0x64
	b _02017968
_02017932:
	cmp r0, #0xa
	bne _0201793C
	add r4, r5, #0
	add r4, #0x68
	b _02017968
_0201793C:
	cmp r0, #0xb
	bne _02017946
	add r4, r5, #0
	add r4, #0x6c
	b _02017968
_02017946:
	cmp r0, #0xc
	bne _02017950
	add r4, r5, #0
	add r4, #0x70
	b _02017968
_02017950:
	cmp r0, #0xd
	bne _0201795A
	add r4, r5, #0
	add r4, #0x74
	b _02017968
_0201795A:
	cmp r0, #0xe
	bne _02017964
	add r4, r5, #0
	add r4, #0x78
	b _02017968
_02017964:
	bl GF_AssertFail
_02017968:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0x14
	bne _02017984
	add r0, r5, #0
	add r1, sp, #4
	bl sub_0201726C
	b _020179A4
_02017984:
	cmp r0, #0x15
	bne _020179A0
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	bl sub_02017294
	add r0, sp, #0
	ldrb r0, [r0, #2]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #4]
	b _020179A4
_020179A0:
	bl GF_AssertFail
_020179A4:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02017280
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _020179BC
	ldr r0, [sp, #4]
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_020179BC:
	cmp r0, #0x17
	bne _020179CC
	ldr r0, [sp, #4]
	ldr r1, [r4]
	add sp, #8
	add r0, r1, r0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_020179CC:
	bl GF_AssertFail
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201790C

	thumb_func_start sub_020179D4
sub_020179D4: ; 0x020179D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	ldr r0, [r4]
	beq _020179F6
	ldr r3, [r4, #0x60]
	ldr r2, [r4, #0x68]
	ldr r5, [r4, #0x58]
	add r2, r3, r2
	mov r1, #0
	sub r2, r5, r2
	bl sub_020087A4
	b _02017A06
_020179F6:
	ldr r3, [r4, #0x58]
	ldr r2, [r4, #0x60]
	ldr r5, [r4, #0x68]
	add r2, r3, r2
	mov r1, #0
	add r2, r5, r2
	bl sub_020087A4
_02017A06:
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x64]
	ldr r5, [r4, #0x6c]
	add r2, r3, r2
	ldr r0, [r4]
	mov r1, #1
	add r2, r5, r2
	bl sub_020087A4
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020179D4

	thumb_func_start sub_02017A1C
sub_02017A1C: ; 0x02017A1C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc
	add r2, r1, #0
	ldr r3, [r4, #0x70]
	add r2, #0xf4
	ldr r0, [r4]
	add r2, r3, r2
	bl sub_020087A4
	mov r1, #0xd
	add r2, r1, #0
	ldr r3, [r4, #0x74]
	add r2, #0xf3
	ldr r0, [r4]
	add r2, r3, r2
	bl sub_020087A4
	ldr r2, [r4, #0x78]
	ldr r0, [r4]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_020087A4
	ldr r0, _02017A80 ; =0x000001CE
	ldrb r0, [r4, r0]
	cmp r0, #0x1b
	bne _02017A64
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bge _02017A7E
	add r0, r4, #0
	bl sub_02017488
	pop {r4, pc}
_02017A64:
	cmp r0, #0x1d
	bne _02017A76
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02017A7E
	add r0, r4, #0
	bl sub_02017488
	pop {r4, pc}
_02017A76:
	cmp r0, #0x1c
	beq _02017A7E
	bl GF_AssertFail
_02017A7E:
	pop {r4, pc}
	.balign 4, 0
_02017A80: .word 0x000001CE
	thumb_func_end sub_02017A1C

	thumb_func_start sub_02017A84
sub_02017A84: ; 0x02017A84
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02017294
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	bl sub_02017214
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	beq _02017AA6
	cmp r0, #0xa
	bne _02017AB6
_02017AA6:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x68]
	pop {r3, r4, pc}
_02017AB6:
	cmp r0, #9
	beq _02017ABE
	cmp r0, #0xb
	bne _02017ACE
_02017ABE:
	add r0, sp, #0
	ldrb r0, [r0]
	add sp, #4
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x6c]
	pop {r3, r4, pc}
_02017ACE:
	bl GF_AssertFail
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017A84

	thumb_func_start sub_02017AD8
sub_02017AD8: ; 0x02017AD8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x54
	bl sub_0201726C
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017AD8

	thumb_func_start sub_02017AEC
sub_02017AEC: ; 0x02017AEC
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #4
	add r1, #2
	add r4, r0, #0
	bl sub_02017280
	add r1, sp, #4
	add r0, r4, #0
	add r1, #1
	bl sub_02017280
	add r0, r4, #0
	add r1, sp, #4
	bl sub_02017280
	add r0, r4, #0
	add r1, sp, #8
	bl sub_0201726C
	ldr r0, [sp, #8]
	add r3, sp, #4
	str r0, [sp]
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4]
	bl sub_020090B4
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017AEC

	thumb_func_start sub_02017B2C
sub_02017B2C: ; 0x02017B2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02009138
	cmp r0, #0
	beq _02017B42
	ldr r0, _02017B44 ; =0x000001CF
	mov r1, #1
	strb r1, [r4, r0]
	str r1, [r4, #0x18]
_02017B42:
	pop {r4, pc}
	.balign 4, 0
_02017B44: .word 0x000001CF
	thumb_func_end sub_02017B2C

	thumb_func_start sub_02017B48
sub_02017B48: ; 0x02017B48
	ldr r1, _02017B50 ; =0x000001CD
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	.balign 4, 0
_02017B50: .word 0x000001CD
	thumb_func_end sub_02017B48

	thumb_func_start sub_02017B54
sub_02017B54: ; 0x02017B54
	push {r4, lr}
	ldr r1, _02017B88 ; =0x000001CE
	add r4, r0, #0
	add r1, r4, r1
	bl sub_02017280
	ldr r0, _02017B88 ; =0x000001CE
	mov r1, #1
	ldrb r0, [r4, r0]
	add r2, r1, #0
	cmp r0, #0x1b
	beq _02017B72
	cmp r0, #0x1d
	beq _02017B72
	mov r2, #0
_02017B72:
	cmp r2, #0
	bne _02017B7C
	cmp r0, #0x1c
	beq _02017B7C
	mov r1, #0
_02017B7C:
	cmp r1, #0
	bne _02017B84
	bl GF_AssertFail
_02017B84:
	pop {r4, pc}
	nop
_02017B88: .word 0x000001CE
	thumb_func_end sub_02017B54

	thumb_func_start sub_02017B8C
sub_02017B8C: ; 0x02017B8C
	ldr r3, _02017B94 ; =sub_02017C78
	mov r1, #0
	bx r3
	nop
_02017B94: .word sub_02017C78
	thumb_func_end sub_02017B8C

	thumb_func_start sub_02017B98
sub_02017B98: ; 0x02017B98
	ldr r3, _02017BA0 ; =sub_02017C78
	mov r1, #1
	bx r3
	nop
_02017BA0: .word sub_02017C78
	thumb_func_end sub_02017B98

	thumb_func_start sub_02017BA4
sub_02017BA4: ; 0x02017BA4
	ldr r3, _02017BAC ; =sub_02017C78
	mov r1, #2
	bx r3
	nop
_02017BAC: .word sub_02017C78
	thumb_func_end sub_02017BA4

	thumb_func_start sub_02017BB0
sub_02017BB0: ; 0x02017BB0
	ldr r3, _02017BB8 ; =sub_02017C78
	mov r1, #3
	bx r3
	nop
_02017BB8: .word sub_02017C78
	thumb_func_end sub_02017BB0

	thumb_func_start sub_02017BBC
sub_02017BBC: ; 0x02017BBC
	ldr r3, _02017BC4 ; =sub_02017C78
	mov r1, #4
	bx r3
	nop
_02017BC4: .word sub_02017C78
	thumb_func_end sub_02017BBC

	thumb_func_start sub_02017BC8
sub_02017BC8: ; 0x02017BC8
	push {r3, lr}
	cmp r0, #0x18
	bne _02017BD4
	ldr r0, [r2]
	str r0, [r3]
	pop {r3, pc}
_02017BD4:
	cmp r0, #0x19
	bne _02017BE2
	ldr r1, [r1]
	ldr r0, [r2]
	add r0, r1, r0
	str r0, [r3]
	pop {r3, pc}
_02017BE2:
	cmp r0, #0x1a
	bne _02017BF0
	ldr r1, [r3]
	ldr r0, [r2]
	add r0, r1, r0
	str r0, [r3]
	pop {r3, pc}
_02017BF0:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02017BC8

	thumb_func_start sub_02017BF8
sub_02017BF8: ; 0x02017BF8
	push {r3, lr}
	sub r0, #0x23
	cmp r0, #4
	bhi _02017C70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017C0C: ; jump table
	.short _02017C16 - _02017C0C - 2 ; case 0
	.short _02017C28 - _02017C0C - 2 ; case 1
	.short _02017C3A - _02017C0C - 2 ; case 2
	.short _02017C4C - _02017C0C - 2 ; case 3
	.short _02017C5E - _02017C0C - 2 ; case 4
_02017C16:
	add r0, r1, #0
	add r0, #0x3c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x68
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x68]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C28:
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x6c
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x6c]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C3A:
	add r0, r1, #0
	add r0, #0x44
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x70
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C4C:
	add r0, r1, #0
	add r0, #0x48
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x74
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C5E:
	add r0, r1, #0
	add r0, #0x4c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x78
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x78]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C70:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02017BF8

	thumb_func_start sub_02017C78
sub_02017C78: ; 0x02017C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_02017220
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2c
	bl sub_02017280
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2d
	bl sub_02017280
	mov r0, #0xc
	mul r0, r6
	ldr r1, _02017D14 ; =0x020F61C0
	str r0, [sp]
	ldr r0, [r1, r0]
	mov r4, #0
	cmp r0, #0
	ble _02017CCE
	ldr r1, _02017D18 ; =0x020F61BC
	ldr r0, [sp]
	add r6, r1, r0
	ldr r0, [sp, #4]
	add r7, r0, #4
_02017CB8:
	lsl r1, r4, #2
	add r0, r5, #0
	add r1, r7, r1
	bl sub_0201726C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r6, #4]
	cmp r4, r0
	blt _02017CB8
_02017CCE:
	ldr r1, _02017D1C ; =0x020F61C4
	ldr r0, [sp]
	add r2, r5, #0
	ldr r0, [r1, r0]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02017BF8
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _02017D00
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r0, #0
	ldr r2, [r2, #0x50]
	blx r2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02017D00:
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #4]
	add r0, #0x2d
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02017D14: .word 0x020F61C0
_02017D18: .word 0x020F61BC
_02017D1C: .word 0x020F61C4
	thumb_func_end sub_02017C78

	thumb_func_start sub_02017D20
sub_02017D20: ; 0x02017D20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	ldr r2, [r4, #0x14]
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02017DAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017D48: ; jump table
	.short _02017D50 - _02017D48 - 2 ; case 0
	.short _02017D64 - _02017D48 - 2 ; case 1
	.short _02017D7C - _02017D48 - 2 ; case 2
	.short _02017D92 - _02017D48 - 2 ; case 3
_02017D50:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017DD4 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017DB0
_02017D64:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017DD4 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0]
	b _02017DB0
_02017D7C:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017DD4 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017DB0
_02017D92:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017DD4 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017DB0
_02017DAC:
	bl GF_AssertFail
_02017DB0:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02017DD2
	mov r0, #0
	str r0, [r4]
_02017DD2:
	pop {r4, pc}
	.balign 4, 0
_02017DD4: .word 0x021094DC
	thumb_func_end sub_02017D20

	thumb_func_start sub_02017DD8
sub_02017DD8: ; 0x02017DD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	mul r0, r1
	ldr r1, [r4, #0x18]
	bl _s32_div_f
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #4]
	sub r0, #0x1e
	cmp r0, #3
	bhi _02017E6A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017E06: ; jump table
	.short _02017E0E - _02017E06 - 2 ; case 0
	.short _02017E22 - _02017E06 - 2 ; case 1
	.short _02017E3A - _02017E06 - 2 ; case 2
	.short _02017E50 - _02017E06 - 2 ; case 3
_02017E0E:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017E94 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017E6E
_02017E22:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017E94 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0]
	b _02017E6E
_02017E3A:
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02017E94 ; =0x021094DC
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017E6E
_02017E50:
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _02017E94 ; =0x021094DC
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0]
	b _02017E6E
_02017E6A:
	bl GF_AssertFail
_02017E6E:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02017E90
	mov r0, #0
	str r0, [r4]
_02017E90:
	pop {r4, pc}
	nop
_02017E94: .word 0x021094DC
	thumb_func_end sub_02017DD8

	thumb_func_start sub_02017E98
sub_02017E98: ; 0x02017E98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x14]
	ldr r5, [r4, #8]
	mul r2, r3
	ldr r0, [r1]
	add r2, r5, r2
	add r0, r0, r2
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x14]
	add r1, r0, #1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02017ED0
	mov r0, #0
	str r0, [r4]
_02017ED0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02017E98

	thumb_func_start sub_02017ED4
sub_02017ED4: ; 0x02017ED4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	ldr r0, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0xc]
	bl _s32_div_f
	ldr r1, [r4, #0x24]
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	add r1, r4, #0
	ldrb r0, [r0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x10]
	add r1, r0, #1
	str r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _02017F0C
	mov r0, #0
	str r0, [r4]
_02017F0C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017ED4

	thumb_func_start sub_02017F10
sub_02017F10: ; 0x02017F10
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #8]
	mul r0, r1
	ldr r1, [r4, #0x24]
	add r2, r2, r0
	ldr r0, [r1]
	add r0, r0, r2
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _02017F34
	cmp r0, #0x1a
	bne _02017F5A
_02017F34:
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02017F4A
	ldr r1, [r4, #0x24]
	ldr r0, [r1]
	cmp r0, r2
	bgt _02017F90
	str r2, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F4A:
	ldr r1, [r4, #0x24]
	ldr r0, [r1]
	cmp r0, r2
	blt _02017F90
	str r2, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F5A:
	cmp r0, #0x19
	bne _02017F8C
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x30]
	ldr r0, [r1]
	add r3, r3, r0
	cmp r2, #0
	ldr r2, [r4, #0x10]
	bge _02017F7C
	cmp r3, r2
	bgt _02017F90
	sub r2, r2, r3
	add r0, r0, r2
	str r0, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F7C:
	cmp r3, r2
	blt _02017F90
	sub r2, r3, r2
	sub r0, r0, r2
	str r0, [r1]
	mov r0, #0
	str r0, [r4]
	b _02017F90
_02017F8C:
	bl GF_AssertFail
_02017F90:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl sub_02017BC8
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02017F10

	thumb_func_start sub_02017FAC
sub_02017FAC: ; 0x02017FAC
	ldr r3, _02017FC8 ; =0x020F6280
	mov r2, #0
_02017FB0:
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhs _02017FBA
	add r0, r2, #0
	bx lr
_02017FBA:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #2
	blt _02017FB0
	add r0, r2, #0
	bx lr
	nop
_02017FC8: .word 0x020F6280
	thumb_func_end sub_02017FAC

	thumb_func_start sub_02017FCC
sub_02017FCC: ; 0x02017FCC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02017FAC
	lsl r1, r0, #1
	ldr r0, _02017FE0 ; =0x020F6280
	ldrh r0, [r0, r1]
	sub r0, r4, r0
	pop {r4, pc}
	nop
_02017FE0: .word 0x020F6280
	thumb_func_end sub_02017FCC

	thumb_func_start sub_02017FE4
sub_02017FE4: ; 0x02017FE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #3
	blt _02017FF2
	bl GF_AssertFail
_02017FF2:
	ldr r0, _02017FFC ; =0x020F6280
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02017FFC: .word 0x020F6280
	thumb_func_end sub_02017FE4

	thumb_func_start sub_02018000
sub_02018000: ; 0x02018000
	cmp r0, #1
	blo _02018008
	cmp r0, #0x6f
	bls _02018022
_02018008:
	mov r1, #0x7d
	lsl r1, r1, #4
	cmp r0, r1
	blo _02018016
	add r1, #0xa
	cmp r0, r1
	bls _02018022
_02018016:
	ldr r1, _0201802C ; =0x00000BB8
	cmp r0, r1
	blo _02018026
	add r1, #0x4c
	cmp r0, r1
	bhi _02018026
_02018022:
	mov r0, #1
	bx lr
_02018026:
	mov r0, #0
	bx lr
	nop
_0201802C: .word 0x00000BB8
	thumb_func_end sub_02018000

	thumb_func_start sub_02018030
sub_02018030: ; 0x02018030
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r4, [sp]
	add r2, r4, #0
	bl sub_02007C98
	str r0, [r5]
	add r0, r5, #0
	bl sub_02018324
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02018030

	thumb_func_start sub_0201804C
sub_0201804C: ; 0x0201804C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201F668
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl sub_0201F64C
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201804C

	thumb_func_start sub_02018068
sub_02018068: ; 0x02018068
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02018098
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020BE4D0
	ldr r1, _020180B4 ; =0x02110928
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _020180B4 ; =0x02110928
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0xc]
	bl sub_020BE588
	ldr r1, _020180B8 ; =0x02110930
	ldr r1, [r1]
	blx r1
_02018098:
	ldr r0, [r4]
	cmp r0, #0
	beq _020180A2
	bl FreeToHeap
_020180A2:
	mov r1, #0x10
	mov r0, #0
_020180A6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _020180A6
	add sp, #8
	pop {r4, pc}
	nop
_020180B4: .word 0x02110928
_020180B8: .word 0x02110930
	thumb_func_end sub_02018068

	thumb_func_start sub_020180BC
sub_020180BC: ; 0x020180BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r6, #0
	add r1, r3, #0
	add r5, r0, #0
	add r0, r2, #0
	ldr r3, [sp, #0x18]
	add r2, r6, #0
	str r6, [sp]
	bl sub_02007C98
	add r2, r0, #0
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020182F8
	add r0, r6, #0
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020180BC

	thumb_func_start sub_020180E8
sub_020180E8: ; 0x020180E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020182F8
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020180E8

	thumb_func_start sub_020180F8
sub_020180F8: ; 0x020180F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02018116
	add r0, r1, #0
	ldr r1, [r4, #8]
	bl sub_020C2BA0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _02018116
	ldr r0, [r4]
	bl FreeToHeap
_02018116:
	mov r1, #0x14
	mov r0, #0
_0201811A:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0201811A
	pop {r4, pc}
	thumb_func_end sub_020180F8

	thumb_func_start sub_02018124
sub_02018124: ; 0x02018124
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r1, #0
	ble _02018142
	ldr r0, [r4, #0xc]
	add r0, r0, r1
	add r1, r2, #0
	bl _s32_div_f
	str r1, [r4, #0xc]
	b _02018154
_02018142:
	ldr r0, [r4, #0xc]
	add r3, r4, #0
	add r3, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	bpl _02018154
	ldr r0, [r3]
	add r0, r0, r2
	str r0, [r3]
_02018154:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02018124

	thumb_func_start sub_0201815C
sub_0201815C: ; 0x0201815C
	push {r3, r4}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #0
	cmp r1, #0
	ble _0201817E
	add r1, r3, r1
	cmp r1, r4
	bge _02018178
	str r1, [r0, #0xc]
	b _0201818A
_02018178:
	str r4, [r0, #0xc]
	mov r2, #1
	b _0201818A
_0201817E:
	add r1, r3, r1
	bmi _02018186
	str r1, [r0, #0xc]
	b _0201818A
_02018186:
	str r2, [r0, #0xc]
	mov r2, #1
_0201818A:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201815C

	thumb_func_start sub_02018198
sub_02018198: ; 0x02018198
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	bx lr
	thumb_func_end sub_02018198

	thumb_func_start sub_020181A0
sub_020181A0: ; 0x020181A0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020181A0

	thumb_func_start sub_020181A4
sub_020181A4: ; 0x020181A4
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	bx lr
	.balign 4, 0
	thumb_func_end sub_020181A4

	thumb_func_start sub_020181B0
sub_020181B0: ; 0x020181B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x78
	add r4, r0, #0
	bl memset
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl sub_020BE120
	mov r0, #1
	str r0, [r4, #0x6c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020181B0

	thumb_func_start sub_020181D4
sub_020181D4: ; 0x020181D4
	ldr r3, _020181DC ; =sub_020BE294
	ldr r1, [r1, #8]
	bx r3
	nop
_020181DC: .word sub_020BE294
	thumb_func_end sub_020181D4

	thumb_func_start sub_020181E0
sub_020181E0: ; 0x020181E0
	ldr r3, _020181E8 ; =sub_020BE388
	ldr r1, [r1, #8]
	bx r3
	nop
_020181E8: .word sub_020BE388
	thumb_func_end sub_020181E0

	thumb_func_start sub_020181EC
sub_020181EC: ; 0x020181EC
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _02018280
	add r0, sp, #0x24
	bl sub_020CAFEC
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _02018284 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB0D0
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020CB410
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r3, _02018284 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB108
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020CB410
	add r0, r4, #0
	add r0, #0x72
	ldrh r0, [r0]
	ldr r3, _02018284 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB0EC
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl sub_020CB410
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x60
	add r1, #0x54
	add r2, sp, #0x24
	add r3, r4, #0
	bl sub_0201F554
_02018280:
	add sp, #0x48
	pop {r4, pc}
	.balign 4, 0
_02018284: .word 0x021094DC
	thumb_func_end sub_020181EC

	thumb_func_start sub_02018288
sub_02018288: ; 0x02018288
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r0, #0x6c]
	cmp r1, #0
	beq _0201829E
	add r1, r0, #0
	add r3, r0, #0
	add r1, #0x54
	add r3, #0x60
	bl sub_0201F554
_0201829E:
	pop {r3, pc}
	thumb_func_end sub_02018288

	thumb_func_start sub_020182A0
sub_020182A0: ; 0x020182A0
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_020182A0

	thumb_func_start sub_020182A4
sub_020182A4: ; 0x020182A4
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_020182A4

	thumb_func_start sub_020182A8
sub_020182A8: ; 0x020182A8
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	str r3, [r0, #0x5c]
	bx lr
	thumb_func_end sub_020182A8

	thumb_func_start sub_020182B0
sub_020182B0: ; 0x020182B0
	push {r3, r4}
	ldr r4, [r0, #0x54]
	str r4, [r1]
	ldr r1, [r0, #0x58]
	str r1, [r2]
	ldr r0, [r0, #0x5c]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_020182B0

	thumb_func_start sub_020182C4
sub_020182C4: ; 0x020182C4
	str r1, [r0, #0x60]
	str r2, [r0, #0x64]
	str r3, [r0, #0x68]
	bx lr
	thumb_func_end sub_020182C4

	thumb_func_start sub_020182CC
sub_020182CC: ; 0x020182CC
	push {r3, r4}
	ldr r4, [r0, #0x60]
	str r4, [r1]
	ldr r1, [r0, #0x64]
	str r1, [r2]
	ldr r0, [r0, #0x68]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_020182CC

	thumb_func_start sub_020182E0
sub_020182E0: ; 0x020182E0
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, #0x70
	strh r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020182E0

	thumb_func_start sub_020182EC
sub_020182EC: ; 0x020182EC
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x70
	ldrh r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020182EC

	thumb_func_start sub_020182F8
sub_020182F8: ; 0x020182F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5]
	add r0, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl sub_020C3B90
	str r0, [r5, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_020C2B7C
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_020BE008
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020182F8

	thumb_func_start sub_02018324
sub_02018324: ; 0x02018324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _02018332
	bl GF_AssertFail
_02018332:
	ldr r0, [r4]
	bl sub_020C3B40
	str r0, [r4, #4]
	cmp r0, #0
	beq _0201835E
	add r2, r0, #0
	add r2, #8
	beq _02018352
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02018352
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02018354
_02018352:
	mov r1, #0
_02018354:
	cmp r1, #0
	beq _0201835E
	ldr r1, [r1]
	add r0, r0, r1
	b _02018360
_0201835E:
	mov r0, #0
_02018360:
	str r0, [r4, #8]
	ldr r0, [r4]
	bl sub_020C3B50
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _0201837A
	mov r2, #1
	ldr r0, _0201837C ; =sub_0201804C
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
_0201837A:
	pop {r4, pc}
	.balign 4, 0
_0201837C: .word sub_0201804C
	thumb_func_end sub_02018324

	thumb_func_start sub_02018380
sub_02018380: ; 0x02018380
	ldr r0, _02018388 ; =0x021D10E8
	mov r1, #0
	str r1, [r0]
	bx lr
	.balign 4, 0
_02018388: .word 0x021D10E8
	thumb_func_end sub_02018380

	thumb_func_start sub_0201838C
sub_0201838C: ; 0x0201838C
	push {r3, lr}
	ldr r1, _020183AC ; =0x021D10E8
	mov r2, #1
	str r2, [r1]
	mov r2, #0
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r0, [r1, #4]
	bl sub_020254FC
	ldr r2, _020183AC ; =0x021D10E8
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	pop {r3, pc}
	.balign 4, 0
_020183AC: .word 0x021D10E8
	thumb_func_end sub_0201838C

	thumb_func_start sub_020183B0
sub_020183B0: ; 0x020183B0
	push {r3, r4, r5, lr}
	ldr r0, _020183EC ; =0x021D10E8
	ldr r0, [r0]
	cmp r0, #0
	beq _020183EA
	bl sub_020254FC
	ldr r2, _020183EC ; =0x021D10E8
	ldr r3, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	sub r0, r0, r3
	sbc r1, r2
	bl sub_02025504
	add r5, r1, #0
	ldr r1, _020183EC ; =0x021D10E8
	add r4, r0, #0
	ldr r3, [r1, #8]
	ldr r2, [r1, #0xc]
	sub r0, r3, r4
	sbc r2, r5
	bhs _020183EA
	ldr r0, [r1, #4]
	sub r1, r4, r3
	bl sub_0202CDBC
	ldr r0, _020183EC ; =0x021D10E8
	str r4, [r0, #8]
	str r5, [r0, #0xc]
_020183EA:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_020183EC: .word 0x021D10E8
	thumb_func_end sub_020183B0

	thumb_func_start sub_020183F0
sub_020183F0: ; 0x020183F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #1
	cmp r0, #0
	beq _02018402
	cmp r0, #1
	beq _02018402
	mov r1, #0
_02018402:
	cmp r1, #0
	bne _0201840A
	bl GF_AssertFail
_0201840A:
	ldr r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020183F0

	thumb_func_start sub_02018410
sub_02018410: ; 0x02018410
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _02018420
	cmp r4, #1
	beq _02018420
	bl GF_AssertFail
_02018420:
	str r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02018410

	thumb_func_start sub_02018424
sub_02018424: ; 0x02018424
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #0x18
	add r5, r0, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MIi_CpuFill8
	str r5, [r4]
	mov r2, #0
	mov r0, #0xa5
	mov r1, #1
	add r3, r5, #0
	str r2, [sp]
	bl GfGfxLoader_LoadFromNarc
	add r1, r4, #4
	str r0, [r4, #0xc]
	bl NNS_G2dGetUnpackedBGCharacterData
	mov r1, #0
	mov r0, #0xa5
	add r2, r1, #0
	add r3, r5, #0
	str r1, [sp]
	bl GfGfxLoader_LoadFromNarc
	add r1, r4, #0
	add r1, #8
	str r0, [r4, #0x10]
	bl NNS_G2dGetUnpackedPaletteData
	str r6, [r4, #0x14]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02018424

	thumb_func_start sub_02018474
sub_02018474: ; 0x02018474
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FreeToHeap
	ldr r0, [r4, #0xc]
	bl FreeToHeap
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	bl MIi_CpuFill8
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02018474

	thumb_func_start sub_02018498
sub_02018498: ; 0x02018498
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r7, r1, #0
	ldr r0, [r5]
	mov r1, #0x38
	add r6, r3, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl MIi_CpuFill8
	add r0, r7, #0
	add r1, r4, #4
	mov r2, #0x18
	bl sub_020D4A50
	str r5, [r4]
	add r0, sp, #8
	ldrb r1, [r0, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	bhs _020184D0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_020184D0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r5]
	add r3, sp, #8
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r3, #0x10]
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r3, #0x18]
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	mov r1, #0xfe
	bic r0, r1
	ldr r1, [sp]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, r4, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x30]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x34]
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #1
	bic r2, r0
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x27
	strb r1, [r0]
	ldrb r1, [r3, #0x14]
	cmp r1, #0
	bne _02018546
	ldrb r1, [r4, #0x18]
	ldrb r3, [r4, #5]
	ldr r0, [r7, #0xc]
	mov r2, #4
	bl sub_0201881C
	add r1, r4, #0
	add r1, #0x26
	strb r0, [r1]
	b _0201854C
_02018546:
	add r0, r4, #0
	add r0, #0x26
	strb r1, [r0]
_0201854C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0201855E
	cmp r0, #1
	beq _02018566
	cmp r0, #2
	beq _0201859C
	bl GF_AssertFail
_0201855E:
	add r0, r4, #0
	add r0, #0x28
	strb r6, [r0]
	b _020185B8
_02018566:
	add r0, r4, #0
	add r0, #0x26
	ldrb r1, [r0]
	mov r0, #1
	add r1, r1, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x26
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r1, r0, #2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r6, r0
	bpl _02018594
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	b _020185B8
_02018594:
	add r0, r4, #0
	add r0, #0x28
	strb r1, [r0]
	b _020185B8
_0201859C:
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r0, r0, #2
	sub r1, r6, r0
	bpl _020185B2
	add r0, r4, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	b _020185B8
_020185B2:
	add r0, r4, #0
	add r0, #0x28
	strb r1, [r0]
_020185B8:
	add r0, r4, #0
	bl sub_02018890
	ldr r2, [r4]
	ldr r3, [r4, #0x2c]
	ldr r2, [r2, #0x14]
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02018744
	add r0, r4, #0
	bl sub_020189AC
	add r0, r4, #0
	bl sub_02018C90
	add r1, r4, #0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r4, #0
	bl sub_02018DF4
	ldr r1, _020185F8 ; =0x000005DC
	add r0, r4, #0
	bl sub_02018FE8
	add r0, r4, #0
	mov r1, #0
	bl sub_02018FFC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020185F8: .word 0x000005DC
	thumb_func_end sub_02018498

	thumb_func_start sub_020185FC
sub_020185FC: ; 0x020185FC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrb r5, [r4, #0x10]
	str r5, [sp]
	ldrb r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrb r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	bl sub_02018498
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_020185FC

	thumb_func_start sub_02018620
sub_02018620: ; 0x02018620
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrb r5, [r4, #0x10]
	str r5, [sp]
	ldrb r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrb r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x18]
	bl sub_02018498
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02018620

	thumb_func_start sub_02018648
sub_02018648: ; 0x02018648
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrb r5, [r4, #0x10]
	str r5, [sp]
	ldrb r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrb r4, [r4, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x38]
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl sub_02018498
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02018648

	thumb_func_start sub_02018674
sub_02018674: ; 0x02018674
	add r0, #0x27
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bx lr
	.balign 4, 0
	thumb_func_end sub_02018674

	thumb_func_start sub_02018680
sub_02018680: ; 0x02018680
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x38
	bl MIi_CpuFill8
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end sub_02018680

	thumb_func_start sub_02018694
sub_02018694: ; 0x02018694
	push {r4, lr}
	add r4, r0, #0
	bl sub_02018D90
	add r0, r4, #0
	bl sub_02018998
	pop {r4, pc}
	thumb_func_end sub_02018694

	thumb_func_start sub_020186A4
sub_020186A4: ; 0x020186A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	cmp r1, #1
	bne _02018716
	add r1, r5, #0
	add r1, #0x2b
	ldrb r4, [r1]
	cmp r4, #0
	bne _020186CE
	bl sub_02018694
	ldr r1, [r5, #0x10]
	add r5, #0x2a
	ldrb r0, [r5]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_020186CE:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r3, #0x1f
	ror r1, r3
	add r1, r2, r1
	bne _02018704
	lsr r1, r4, #1
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	ror r1, r3
	add r1, r2, r1
	bne _020186F8
	add r1, r5, #0
	add r1, #0x2a
	ldrb r1, [r1]
	mov r2, #1
	bl sub_02018D0C
	b _02018704
_020186F8:
	add r1, r5, #0
	add r1, #0x2a
	ldrb r1, [r1]
	mov r2, #0
	bl sub_02018D0C
_02018704:
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	add r5, #0x2b
	sub r0, r0, #1
	strb r0, [r5]
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02018716:
	add r1, sp, #0
	bl sub_02018E08
	add r4, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	bne _0201872C
	add r0, r5, #0
	bl sub_02018E8C
	add r4, r0, #0
_0201872C:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _0201873E
	add r0, r5, #0
	bl sub_02018694
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0201873E:
	add r0, r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020186A4

	thumb_func_start sub_02018744
sub_02018744: ; 0x02018744
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r7, r2, #0
	bl AllocFromHeapAtEnd
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MIi_CpuFill8
	ldr r0, [r6, #4]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [r6, #8]
	mov r2, #0x80
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	str r0, [r4]
	ldrb r0, [r5, #2]
	strb r0, [r4, #4]
	ldrh r0, [r5, #8]
	strh r0, [r4, #6]
	ldrb r0, [r5, #3]
	strb r0, [r4, #5]
	ldr r0, _020187BC ; =sub_020187C0
	bl sub_0200E374
	cmp r7, #0
	beq _020187B8
	ldrb r0, [r5, #2]
	cmp r0, #4
	bhs _020187A2
	mov r0, #0x20
	str r0, [sp]
	ldrb r3, [r5, #3]
	ldr r1, [r4, #0xc]
	add r0, r7, #0
	lsl r3, r3, #0x14
	ldr r1, [r1, #0xc]
	mov r2, #0
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
	pop {r3, r4, r5, r6, r7, pc}
_020187A2:
	mov r0, #0x20
	str r0, [sp]
	ldrb r3, [r5, #3]
	ldr r1, [r4, #0xc]
	add r0, r7, #0
	lsl r3, r3, #0x14
	ldr r1, [r1, #0xc]
	mov r2, #1
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
_020187B8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020187BC: .word sub_020187C0
	thumb_func_end sub_02018744

	thumb_func_start sub_020187C0
sub_020187C0: ; 0x020187C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldrh r0, [r4, #6]
	ldr r3, [r4, #8]
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	ldr r3, [r3, #0x10]
	bl BG_LoadCharTilesData
	ldr r0, [r4, #0xc]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldrb r0, [r4, #4]
	cmp r0, #4
	ldr r0, [r4, #0xc]
	bhs _02018802
	ldrb r1, [r4, #5]
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	lsl r1, r1, #5
	bl GX_LoadBGPltt
	b _0201880E
_02018802:
	ldrb r1, [r4, #5]
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	lsl r1, r1, #5
	bl GXS_LoadBGPltt
_0201880E:
	add r0, r5, #0
	bl sub_0200E390
	add r0, r4, #0
	bl FreeToHeap
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020187C0

	thumb_func_start sub_0201881C
sub_0201881C: ; 0x0201881C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	mov r4, #0
	add r7, r1, #0
	add r5, r0, #0
	add r6, r4, #0
	str r3, [sp, #4]
	cmp r7, #0
	ble _02018864
_02018830:
	ldr r0, [r5]
	cmp r0, #0
	bne _0201883A
	bl GF_AssertFail
_0201883A:
	mov r0, #0
	ldr r1, [r5]
	mvn r0, r0
	cmp r1, r0
	bne _02018848
	bl GF_AssertFail
_02018848:
	ldr r0, [sp]
	ldr r1, [r5]
	mov r2, #0
	bl sub_02002F30
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r4
	bls _0201885C
	add r4, r0, #0
_0201885C:
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blt _02018830
_02018864:
	ldr r0, [sp, #4]
	lsl r0, r0, #1
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	bne _02018884
	lsl r0, r3, #0x15
	add sp, #8
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02018884:
	lsr r0, r3, #3
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201881C

	thumb_func_start sub_02018890
sub_02018890: ; 0x02018890
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0x2c]
	bl AllocWindows
	str r0, [r5, #0x1c]
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0x2c]
	add r1, r1, #1
	lsl r1, r1, #2
	bl AllocFromHeap
	str r0, [r5, #0x20]
	ldrb r2, [r5, #0x18]
	mov r1, #0
	add r2, r2, #1
	lsl r2, r2, #2
	bl MIi_CpuFill8
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	ble _02018988
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r6, r0, #0
	add r7, r0, #0
	add r4, r0, #0
_020188DC:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r3, #0x28
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	str r0, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrb r3, [r3]
	ldr r1, [r5, #0x1c]
	ldrb r2, [r5, #6]
	add r3, r3, #1
	lsl r3, r3, #0x18
	ldr r0, [r5, #0x14]
	add r1, r1, r6
	lsr r3, r3, #0x18
	bl sub_0201D40C
	ldr r0, [r5, #0x1c]
	mov r1, #3
	add r0, r0, r6
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r2, r5, #0
	add r2, #0x26
	add r0, r0, #1
	lsl r0, r0, #3
	add r1, r0, r7
	ldr r0, [r5, #0x20]
	add r6, #0x10
	strb r1, [r0, r4]
	ldr r0, [r5, #0x20]
	add r7, #0x18
	add r1, r0, r4
	ldrb r0, [r0, r4]
	add r0, #0x10
	strb r0, [r1, #1]
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, [r5, #0x20]
	add r0, r0, r4
	strb r1, [r0, #2]
	ldr r0, [r5, #0x20]
	ldrb r2, [r2]
	add r1, r0, r4
	ldrb r0, [r1, #2]
	lsl r2, r2, #3
	add r4, r4, #4
	add r0, r0, r2
	strb r0, [r1, #3]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldrb r1, [r5, #0x18]
	add r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _020188DC
_02018988:
	ldr r0, [sp, #0x20]
	ldr r1, [r5, #0x20]
	mov r2, #0xff
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02018890

	thumb_func_start sub_02018998
sub_02018998: ; 0x02018998
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl FreeToHeap
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	bl sub_0201D54C
	pop {r4, pc}
	thumb_func_end sub_02018998

	thumb_func_start sub_020189AC
sub_020189AC: ; 0x020189AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	ldrh r4, [r5, #0xc]
	sub r0, r0, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _020189C6
	add r4, #0xc
_020189C6:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	lsl r2, r4, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r2, r4, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r3, #0x28
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r2, r4, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	add r3, #0x28
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x24
	ldrh r4, [r5, #0xc]
	ldrb r1, [r0]
	ldr r0, [sp, #0x10]
	add r4, #9
	cmp r1, r0
	bne _02018A62
	add r4, #0xc
_02018A62:
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r5, #0x18]
	ldrb r2, [r0]
	add r3, r5, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r4, #0x10
	add r3, #0x28
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	lsr r2, r2, #0x10
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r5, #0x18]
	ldrb r2, [r0]
	add r3, r5, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r2, r4, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	add r3, r5, #0
	ldrb r1, [r5, #0x18]
	ldrb r2, [r0]
	add r3, #0x28
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r1, [r5, #0x18]
	mov r6, #0
	sub r0, r1, #1
	cmp r0, #0
	ble _02018BFE
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	sub r0, r0, #1
	str r0, [sp, #0x14]
_02018B22:
	ldrh r0, [r5, #0xc]
	add r4, r0, #6
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _02018B34
	cmp r6, #0
	beq _02018B38
_02018B34:
	cmp r0, r6
	bne _02018B3C
_02018B38:
	add r4, #0xc
	b _02018B50
_02018B3C:
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne _02018B48
	ldr r1, [sp, #0x14]
	cmp r6, r1
	beq _02018B4E
_02018B48:
	add r1, r6, #1
	cmp r0, r1
	bne _02018B50
_02018B4E:
	add r4, #0x12
_02018B50:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r7, #3
	add r3, r5, #0
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsl r2, r4, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	lsr r2, r2, #0x10
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r7, #3
	add r3, r5, #0
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	add r3, #0x28
	add r2, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	add r3, r5, #0
	add r2, r4, #2
	ldrb r0, [r0]
	add r1, r7, #3
	add r3, #0x28
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r1, [r5, #0x18]
	add r6, r6, #1
	add r7, r7, #3
	sub r0, r1, #1
	cmp r6, r0
	blt _02018B22
_02018BFE:
	mov r7, #0
	cmp r1, #0
	ble _02018C8C
	add r6, r7, #0
_02018C06:
	ldrh r0, [r5, #0xc]
	add r4, r0, #3
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, r7
	bne _02018C16
	add r4, #0xc
_02018C16:
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	lsl r2, r4, #0x10
	add r0, r0, r6
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	add r3, #0x28
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	bl FillBgTilemapRect
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r3, r5, #0
	add r2, r4, #2
	add r0, r0, r6
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	lsl r2, r2, #0x10
	add r3, #0x28
	str r0, [sp, #0xc]
	ldrb r4, [r3]
	add r3, r5, #0
	add r3, #0x26
	ldrb r3, [r3]
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	add r3, r4, r3
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldrb r0, [r5, #0x18]
	add r7, r7, #1
	add r6, r6, #3
	cmp r7, r0
	blt _02018C06
_02018C8C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020189AC

	thumb_func_start sub_02018C90
sub_02018C90: ; 0x02018C90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x26
	ldrb r0, [r0]
	mov r7, #0
	lsl r0, r0, #3
	str r0, [sp, #0x10]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	ble _02018CFA
	add r6, r7, #0
	add r4, r7, #0
_02018CAA:
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bne _02018CB6
	ldrb r3, [r5, #5]
	b _02018CC8
_02018CB6:
	ldr r1, [r5, #0x10]
	mov r0, #4
	ldr r1, [r1, r6]
	mov r2, #0
	bl sub_02002F30
	ldr r1, [sp, #0x10]
	sub r0, r1, r0
	lsr r3, r0, #1
_02018CC8:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02018D08 ; =0x00010203
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	ldr r2, [r2, r6]
	add r0, r0, r4
	bl sub_020200FC
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	bl sub_0201D5C8
	ldrb r0, [r5, #0x18]
	add r7, r7, #1
	add r6, #8
	add r4, #0x10
	cmp r7, r0
	blt _02018CAA
_02018CFA:
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02018D08: .word 0x00010203
	thumb_func_end sub_02018C90

	thumb_func_start sub_02018D0C
sub_02018D0C: ; 0x02018D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	beq _02018D20
	mov r0, #6
	ldr r7, _02018D88 ; =0x00040506
	str r0, [sp, #0x14]
	b _02018D26
_02018D20:
	mov r0, #3
	ldr r7, _02018D8C ; =0x00010203
	str r0, [sp, #0x14]
_02018D26:
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	lsl r6, r0, #3
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	bne _02018D3C
	ldrb r0, [r5, #5]
	str r0, [sp, #0x10]
	b _02018D50
_02018D3C:
	ldr r2, [r5, #0x10]
	lsl r1, r4, #3
	ldr r1, [r2, r1]
	mov r0, #4
	mov r2, #0
	bl sub_02002F30
	sub r0, r6, r0
	lsr r0, r0, #1
	str r0, [sp, #0x10]
_02018D50:
	ldr r0, [r5, #0x1c]
	lsl r6, r4, #4
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x10]
	lsl r2, r4, #3
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x10]
	add r0, r0, r6
	mov r1, #4
	bl sub_020200FC
	ldr r0, [r5, #0x1c]
	add r0, r0, r6
	bl sub_0201D5C8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02018D88: .word 0x00040506
_02018D8C: .word 0x00010203
	thumb_func_end sub_02018D0C

	thumb_func_start sub_02018D90
sub_02018D90: ; 0x02018D90
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _02018DB2
	add r4, r6, #0
_02018DA0:
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	bl sub_0201D8E4
	ldrb r0, [r5, #0x18]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _02018DA0
_02018DB2:
	add r1, r5, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r3, r5, #0
	add r3, #0x28
	str r1, [sp]
	add r1, r5, #0
	add r1, #0x26
	ldrb r1, [r1]
	mov r2, #0
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r0, [r5, #7]
	str r0, [sp, #0xc]
	ldrb r1, [r5, #6]
	ldrb r3, [r3]
	ldr r0, [r5, #0x14]
	bl FillBgTilemapRect
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02018D90

	thumb_func_start sub_02018DF4
sub_02018DF4: ; 0x02018DF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020189AC
	ldrb r1, [r4, #6]
	ldr r0, [r4, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02018DF4

	thumb_func_start sub_02018E08
sub_02018E08: ; 0x02018E08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl sub_02025224
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02018E24
	mov r1, #0
	str r1, [r4]
	pop {r4, r5, r6, pc}
_02018E24:
	lsl r0, r6, #0x18
	mov r2, #1
	lsr r1, r0, #0x18
	add r0, r5, #0
	str r2, [r4]
	add r0, #0x24
	strb r1, [r0]
	add r0, r5, #0
	bl sub_02018D0C
	add r0, r5, #0
	bl sub_020189AC
	ldrb r1, [r5, #6]
	ldr r0, [r5, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	mov r1, #1
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #8
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2a
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x27
	ldrb r1, [r0]
	mov r0, #0xfe
	bic r1, r0
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r1, _02018E88 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #2
	bl sub_02018FFC
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_02018E88: .word 0x000005DC
	thumb_func_end sub_02018E08

	thumb_func_start sub_02018E8C
sub_02018E8C: ; 0x02018E8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02018FDC ; =0x021D110C
	ldr r1, [r0, #0x48]
	ldr r0, _02018FE0 ; =0x00000CF3
	tst r0, r1
	beq _02018EAA
	add r0, r5, #0
	add r0, #0x27
	ldrb r1, [r0]
	mov r0, #0xfe
	bic r1, r0
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
_02018EAA:
	ldr r0, _02018FDC ; =0x021D110C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02018ECA
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #3
	bl sub_02018FFC
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02018ECA:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _02018F10
	add r1, r5, #0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02018D0C
	add r0, r5, #0
	mov r1, #1
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #8
	add r0, #0x2b
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #2
	bl sub_02018FFC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02018F10:
	add r1, r5, #0
	add r1, #0x24
	ldrb r4, [r1]
	mov r1, #0x40
	tst r0, r1
	beq _02018F6E
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02018F36
	ldrb r1, [r5, #0x18]
	sub r0, r1, #1
	add r0, r4, r0
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
	b _02018F48
_02018F36:
	cmp r4, #0
	beq _02018F48
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
_02018F48:
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	beq _02018F6E
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #1
	bl sub_02018FFC
	add r1, r5, #0
	add r1, #0x24
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_02018DF4
_02018F6E:
	ldr r0, _02018FDC ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _02018FD6
	ldrb r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02018F96
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldrb r1, [r5, #0x18]
	add r0, r0, #1
	bl _s32_div_f
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
	b _02018FB2
_02018F96:
	add r0, r5, #0
	add r0, #0x24
	ldrb r1, [r0]
	ldrb r0, [r5, #0x18]
	sub r0, r0, #1
	cmp r1, r0
	bge _02018FB2
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x24
	strb r1, [r0]
_02018FB2:
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r4, r0
	beq _02018FD6
	ldr r1, _02018FE4 ; =0x000005DC
	add r0, r5, #0
	bl sub_02018FE8
	add r0, r5, #0
	mov r1, #1
	bl sub_02018FFC
	add r0, r5, #0
	add r5, #0x24
	ldrb r1, [r5]
	bl sub_02018DF4
_02018FD6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02018FDC: .word 0x021D110C
_02018FE0: .word 0x00000CF3
_02018FE4: .word 0x000005DC
	thumb_func_end sub_02018E8C

	thumb_func_start sub_02018FE8
sub_02018FE8: ; 0x02018FE8
	push {r3, lr}
	add r0, #0x27
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02018FFA
	add r0, r1, #0
	bl PlaySE
_02018FFA:
	pop {r3, pc}
	thumb_func_end sub_02018FE8

	thumb_func_start sub_02018FFC
sub_02018FFC: ; 0x02018FFC
	push {r4, lr}
	ldr r4, [r0, #0x30]
	add r3, r1, #0
	cmp r4, #0
	beq _02019010
	add r1, r0, #0
	add r1, #0x24
	ldrb r1, [r1]
	ldr r2, [r0, #0x34]
	blx r4
_02019010:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02018FFC

	thumb_func_start sub_02019014
sub_02019014: ; 0x02019014
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x34
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl MIi_CpuFill8
	str r5, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02019014

	thumb_func_start sub_02019030
sub_02019030: ; 0x02019030
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201915C
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end sub_02019030

	thumb_func_start sub_02019040
sub_02019040: ; 0x02019040
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldrb r0, [r5, #7]
	add r3, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _020190DE
	cmp r4, #0
	beq _020190DE
	mov r0, #1
	strb r0, [r5, #7]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r5]
	add r0, sp, #0
	bl sub_02023618
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r0, #8]
	ldrh r1, [r0, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xe]
	ldr r1, [r5]
	add r0, sp, #0x10
	bl sub_02023630
	add r3, sp, #0x10
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5]
	bl sub_02023658
	add r6, r0, #0
	add r0, sp, #0
	ldrh r0, [r0, #8]
	strh r0, [r5, #8]
	ldr r0, [r5]
	bl sub_0202360C
	strh r0, [r5, #0xa]
	cmp r6, #0
	beq _020190BE
	add r2, r5, #0
	add r0, sp, #0x1c
	add r1, r6, #0
	add r2, #0xc
	bl sub_020CCDAC
	b _020190C6
_020190BE:
	mov r0, #0
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
_020190C6:
	ldr r0, [r5]
	bl sub_02023614
	str r0, [r5, #0x18]
	ldr r0, _020190E4 ; =sub_020190FC
	strb r4, [r5, #4]
	mov r2, #0
	add r1, r5, #0
	strb r2, [r5, #5]
	bl sub_0200E320
	str r0, [r5, #0x30]
_020190DE:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_020190E4: .word sub_020190FC
	thumb_func_end sub_02019040

	thumb_func_start sub_020190E8
sub_020190E8: ; 0x020190E8
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _020190F2
	mov r0, #1
	b _020190F4
_020190F2:
	mov r0, #0
_020190F4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
	thumb_func_end sub_020190E8

	thumb_func_start sub_020190FC
sub_020190FC: ; 0x020190FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0201912E
	ldrb r0, [r4, #5]
	add r2, r4, #0
	add r1, #8
	add r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #4]
	add r2, #0x1c
	str r0, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	bl sub_0201917C
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #4]
	cmp r1, r0
	blo _02019158
	add r0, r4, #0
	bl sub_0201915C
	pop {r3, r4, r5, pc}
_0201912E:
	ldrb r5, [r4, #4]
	add r2, r4, #0
	add r1, #0x1c
	str r5, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	add r2, #8
	sub r3, r5, r3
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201917C
	ldrb r0, [r4, #5]
	sub r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _02019158
	add r0, r4, #0
	bl sub_0201915C
_02019158:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020190FC

	thumb_func_start sub_0201915C
sub_0201915C: ; 0x0201915C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0201916E
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #0x30]
_0201916E:
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201915C

	thumb_func_start sub_0201917C
sub_0201917C: ; 0x0201917C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	add r5, r1, #0
	add r6, r2, #0
	str r4, [sp]
	add r1, #0x10
	add r2, #0x10
	add r7, r0, #0
	bl sub_02019218
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020191C4
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r5, #2
	add r2, r6, #2
	bl sub_02019238
	str r4, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	add r1, r5, #4
	add r2, r6, #4
	bl sub_0201925C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201917C

	thumb_func_start sub_020191C4
sub_020191C4: ; 0x020191C4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, sp, #0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldrh r4, [r1]
	ldrh r0, [r2]
	cmp r0, r4
	blo _020191F2
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	b _02019206
_020191F2:
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	neg r0, r0
_02019206:
	add r1, r4, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02023558
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020191C4

	thumb_func_start sub_02019218
sub_02019218: ; 0x02019218
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r1]
	ldr r0, [r2]
	sub r1, r0, r4
	add r0, r1, #0
	add r1, sp, #0
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	add r0, r4, r0
	add r1, r5, #0
	bl sub_020235D4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019218

	thumb_func_start sub_02019238
sub_02019238: ; 0x02019238
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r4, [r1]
	ldrh r0, [r2]
	sub r1, r0, r4
	add r0, r1, #0
	add r1, sp, #0
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	bl sub_02023494
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019238

	thumb_func_start sub_0201925C
sub_0201925C: ; 0x0201925C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, r2, #0
	add r2, sp, #0
	add r4, r3, #0
	bl sub_020CCDAC
	add r2, sp, #0x18
	ldrb r2, [r2, #0x10]
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_020192A4
	str r0, [sp, #0xc]
	add r2, sp, #0x18
	ldrb r2, [r2, #0x10]
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_020192A4
	str r0, [sp, #0x10]
	add r2, sp, #0x18
	ldrb r2, [r2, #0x10]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_020192A4
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	add r1, r5, #0
	bl sub_02023514
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201925C

	thumb_func_start sub_020192A4
sub_020192A4: ; 0x020192A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _020192B4
	bl GF_AssertFail
_020192B4:
	add r0, r5, #0
	mul r0, r4
	add r1, r6, #0
	bl _s32_div_f
	add r7, r0, #0
	sub r0, r4, #1
	mul r0, r5
	add r1, r6, #0
	bl _s32_div_f
	sub r0, r7, r0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020192A4

	thumb_func_start sub_020192D0
sub_020192D0: ; 0x020192D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0201A0FC
	bl sub_0201A108
	bl sub_02022C54
	bl sub_02022CBC
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _0201934C ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _02019350 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _02019354 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1]
	ldr r3, [r0]
	add r1, #0x50
	and r2, r3
	str r2, [r0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x7b
	lsl r2, r2, #0xe
	bl sub_0201A910
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x7b
	bl sub_02007280
	mov r1, #0
	mov r2, #0x80
	add r5, r0, #0
	bl MIi_CpuFill8
	add r0, r4, #0
	bl sub_020072A4
	str r0, [r5]
	ldr r1, _02019358 ; =0x0000047D
	mov r0, #0xb
	mov r2, #1
	bl sub_02004EC4
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0201934C: .word 0xFFFFE0FF
_02019350: .word 0x04001000
_02019354: .word 0xFFFF1FFF
_02019358: .word 0x0000047D
	thumb_func_end sub_020192D0

	thumb_func_start sub_0201935C
sub_0201935C: ; 0x0201935C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02007290
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #8
	bhi _0201945A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02019378: ; jump table
	.short _0201938A - _02019378 - 2 ; case 0
	.short _02019394 - _02019378 - 2 ; case 1
	.short _020193B6 - _02019378 - 2 ; case 2
	.short _020193CA - _02019378 - 2 ; case 3
	.short _020193F2 - _02019378 - 2 ; case 4
	.short _0201940E - _02019378 - 2 ; case 5
	.short _02019426 - _02019378 - 2 ; case 6
	.short _0201943A - _02019378 - 2 ; case 7
	.short _02019456 - _02019378 - 2 ; case 8
_0201938A:
	bl sub_020194B4
	mov r0, #1
	str r0, [r5]
	b _0201945A
_02019394:
	bl sub_02034DB8
	cmp r0, #0
	beq _0201945A
	ldr r1, [r4, #0x10]
	ldr r0, _02019480 ; =0x021D1108
	str r1, [r0]
	ldr r0, _02019484 ; =sub_02019520
	ldr r1, _02019488 ; =sub_02019548
	bl ov00_021EC294
	mov r0, #1
	str r0, [r4, #0x78]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_020193B6:
	ldr r0, _0201948C ; =0x020F6288
	add r1, r4, #0
	mov r2, #0x7b
	bl OverlayManager_new
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_020193CA:
	ldr r0, [r4, #8]
	bl OverlayManager_run
	cmp r0, #1
	bne _0201945A
	ldr r0, [r4, #8]
	bl OverlayManager_delete
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _020193EC
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_020193EC:
	mov r0, #8
	str r0, [r5]
	b _0201945A
_020193F2:
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	bl sub_02087E10
	ldr r1, [r4]
	mov r2, #0x7b
	ldr r1, [r1]
	bl OverlayManager_new
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_0201940E:
	ldr r0, [r4, #8]
	bl OverlayManager_run
	cmp r0, #1
	bne _0201945A
	ldr r0, [r4, #8]
	bl OverlayManager_delete
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_02019426:
	ldr r0, _0201948C ; =0x020F6288
	add r1, r4, #0
	mov r2, #0x7b
	bl OverlayManager_new
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_0201943A:
	ldr r0, [r4, #8]
	bl OverlayManager_run
	cmp r0, #1
	bne _0201945A
	ldr r0, [r4, #8]
	bl OverlayManager_delete
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0201945A
_02019456:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0201945A:
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _0201947C
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0201947C
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _0201947C
	bl ov00_021ECB40
	bl ov00_021EC9D4
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
_0201947C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02019480: .word 0x021D1108
_02019484: .word sub_02019520
_02019488: .word sub_02019548
_0201948C: .word 0x020F6288
	thumb_func_end sub_0201935C

	thumb_func_start sub_02019490
sub_02019490: ; 0x02019490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02007290
	add r4, r0, #0
	bl sub_020194F8
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r5, #0
	bl sub_02007294
	mov r0, #0x7b
	bl sub_0201A9C4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019490

	thumb_func_start sub_020194B4
sub_020194B4: ; 0x020194B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _020194F2
	bl LoadDwcOverlay
	bl LoadOVY38
	mov r0, #0x7b
	bl sub_02039FD8
	ldr r1, _020194F4 ; =0x00020020
	mov r0, #0x7b
	bl AllocFromHeap
	str r0, [r4, #0xc]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl sub_020B535C
	str r0, [r4, #0x10]
	bl sub_02034D8C
	mov r0, #4
	bl sub_0201A4CC
_020194F2:
	pop {r4, pc}
	.balign 4, 0
_020194F4: .word 0x00020020
	thumb_func_end sub_020194B4

	thumb_func_start sub_020194F8
sub_020194F8: ; 0x020194F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _0201951E
	ldr r0, [r4, #0x10]
	bl sub_020B5394
	ldr r0, [r4, #0xc]
	bl FreeToHeap
	bl UnloadOVY38
	bl UnloadDwcOverlay
	bl sub_02034DE0
	mov r0, #0
	str r0, [r4, #0x78]
_0201951E:
	pop {r4, pc}
	thumb_func_end sub_020194F8

	thumb_func_start sub_02019520
sub_02019520: ; 0x02019520
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020D3A38
	add r6, r0, #0
	ldr r0, _02019544 ; =0x021D1108
	add r1, r5, #0
	ldr r0, [r0]
	add r2, r4, #0
	bl sub_020B53A0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020D3A4C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02019544: .word 0x021D1108
	thumb_func_end sub_02019520

	thumb_func_start sub_02019548
sub_02019548: ; 0x02019548
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _02019564
	bl sub_020D3A38
	add r4, r0, #0
	ldr r0, _02019568 ; =0x021D1108
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_020B5530
	add r0, r4, #0
	bl sub_020D3A4C
_02019564:
	pop {r3, r4, r5, pc}
	nop
_02019568: .word 0x021D1108
	thumb_func_end sub_02019548

	thumb_func_start sub_0201956C
sub_0201956C: ; 0x0201956C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r5, r2, #0
	str r3, [sp]
	bl AllocFromHeap
	add r4, r0, #0
	str r6, [r4]
	strh r5, [r4, #8]
	ldr r0, [sp]
	lsl r2, r7, #0x10
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	ldr r1, _020195BC ; =0xFFFF8000
	lsr r3, r2, #0x10
	lsr r2, r1, #0x11
	and r0, r1
	and r2, r3
	orr r0, r2
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	sub r0, r1, #1
	lsl r5, r5, #4
	and r0, r2
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	add r1, r5, #0
	bl AllocFromHeap
	mov r1, #0
	add r2, r5, #0
	str r0, [r4, #4]
	bl MIi_CpuFill8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020195BC: .word 0xFFFF8000
	thumb_func_end sub_0201956C

	thumb_func_start sub_020195C0
sub_020195C0: ; 0x020195C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	bls _020195E4
	add r4, r6, #0
_020195CE:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _020195DA
	bl FreeToHeap
_020195DA:
	ldrh r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blo _020195CE
_020195E4:
	ldr r0, [r5, #4]
	bl FreeToHeap
	add r0, r5, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_020195C0

	thumb_func_start sub_020195F4
sub_020195F4: ; 0x020195F4
	push {r3, r4, r5, r6, r7, lr}
	lsl r7, r1, #4
	ldr r4, [r0, #4]
	ldr r1, [sp, #0x18]
	add r6, r3, #0
	mul r1, r6
	ldr r0, [r0, #0xc]
	add r5, r4, r7
	lsl r1, r1, #1
	str r2, [sp]
	bl AllocFromHeap
	str r0, [r4, r7]
	ldrh r0, [r5, #4]
	mov r1, #0x3f
	bic r0, r1
	lsl r1, r6, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r0, r1
	strh r0, [r5, #4]
	ldrh r1, [r5, #4]
	ldr r0, _02019660 ; =0xFFFFF03F
	and r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x14
	orr r0, r1
	strh r0, [r5, #4]
	ldr r0, [sp]
	ldr r1, _02019664 ; =0xFFFF1FFF
	strb r0, [r5, #0xa]
	mov r0, #0
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	ldrh r2, [r5, #4]
	and r1, r2
	strh r1, [r5, #4]
	mov r1, #1
	ldrh r2, [r5, #4]
	lsl r1, r1, #0xc
	orr r1, r2
	strh r1, [r5, #4]
	strb r0, [r5, #0xc]
	mov r1, #0x20
	strb r1, [r5, #0xd]
	strb r0, [r5, #0xe]
	mov r0, #0x18
	strb r0, [r5, #0xf]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019660: .word 0xFFFFF03F
_02019664: .word 0xFFFF1FFF
	thumb_func_end sub_020195F4

	thumb_func_start sub_02019668
sub_02019668: ; 0x02019668
	push {r4, lr}
	ldr r3, [r0, #4]
	lsl r1, r1, #4
	add r4, r3, r1
	add r0, r2, #0
	ldrh r2, [r4, #4]
	ldr r1, [r3, r1]
	lsl r3, r2, #0x1a
	lsl r2, r2, #0x14
	lsr r3, r3, #0x1a
	lsr r2, r2, #0x1a
	mul r2, r3
	lsl r2, r2, #1
	bl MIi_CpuCopy16
	pop {r4, pc}
	thumb_func_end sub_02019668

	thumb_func_start sub_02019688
sub_02019688: ; 0x02019688
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x18]
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r2, [sp, #4]
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0xc
	bl sub_02019668
	add r0, r6, #0
	bl FreeToHeap
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02019688

	thumb_func_start sub_020196B8
sub_020196B8: ; 0x020196B8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x18]
	add r3, sp, #4
	bl sub_02007C2C
	ldr r2, [sp, #4]
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0xc
	bl sub_02019668
	add r0, r6, #0
	bl FreeToHeap
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020196B8

	thumb_func_start sub_020196E8
sub_020196E8: ; 0x020196E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x1c]
	add r0, r2, #0
	ldr r2, [sp, #0x1c]
	lsl r1, r1, #4
	ldr r2, [r2, #4]
	add r4, r2, r1
	strb r0, [r4, #6]
	strb r3, [r4, #7]
	mov r1, #0xd
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x28]
	cmp r0, r1
	bge _020197E6
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x20]
	cmp r3, r1
	bge _020197E6
	ldrh r1, [r4, #4]
	lsl r2, r1, #0x1a
	lsr r2, r2, #0x1a
	str r2, [sp, #0x2c]
	add r7, r0, r2
	mov r2, #0xc
	ldrsb r2, [r4, r2]
	mov ip, r2
	cmp r7, r2
	blt _020197E6
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1a
	str r1, [sp, #0x24]
	add r6, r3, r1
	mov r1, #0xe
	ldrsb r2, [r4, r1]
	cmp r6, r2
	blt _020197E6
	lsl r1, r0, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x2c]
	mov r5, #0
	lsl r1, r1, #0x18
	str r5, [sp, #0x30]
	mov r5, ip
	lsr r1, r1, #0x18
	cmp r0, r5
	bge _02019762
	mov r5, ip
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	str r5, [sp, #0x34]
	mov r5, ip
	sub r0, r5, r0
	sub r1, r1, r0
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	str r0, [sp, #0x30]
_02019762:
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blt _02019770
	sub r0, r7, r0
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02019770:
	lsl r0, r3, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x24]
	mov r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r3, r2
	bge _02019790
	lsl r5, r2, #0x18
	sub r2, r2, r3
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r7, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r2, #0x18
_02019790:
	ldr r2, [sp, #0x20]
	cmp r6, r2
	blt _0201979E
	sub r2, r6, r2
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_0201979E:
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldrb r1, [r4, #0xa]
	ldr r0, [r0]
	ldr r2, [sp, #0x34]
	bl sub_0201C4EC
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x1c]
	ldrh r2, [r2, #0xa]
	ldrb r1, [r4, #0xa]
	ldr r0, [r0]
	lsl r2, r2, #0x11
	lsr r3, r2, #0xf
	ldr r2, _020197EC ; =0x020F6298
	ldr r2, [r2, r3]
	blx r2
	ldrh r1, [r4, #4]
	ldr r0, _020197F0 ; =0xFFFFEFFF
	and r0, r1
	strh r0, [r4, #4]
_020197E6:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020197EC: .word 0x020F6298
_020197F0: .word 0xFFFFEFFF
	thumb_func_end sub_020196E8

	thumb_func_start sub_020197F4
sub_020197F4: ; 0x020197F4
	push {r4, lr}
	ldr r2, [r0, #4]
	lsl r3, r1, #4
	add r4, r2, r3
	mov r2, #6
	mov r3, #7
	ldrsb r2, [r4, r2]
	ldrsb r3, [r4, r3]
	bl sub_020196E8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020197F4

	thumb_func_start sub_0201980C
sub_0201980C: ; 0x0201980C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r2, [r0, #4]
	str r0, [sp, #0x10]
	lsl r0, r1, #4
	add r4, r2, r0
	mov r0, #1
	ldrh r1, [r4, #4]
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r4, #4]
	mov r0, #0xd
	ldrsb r6, [r4, r0]
	mov r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, r6
	bge _020198F4
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x28]
	mov r1, #7
	ldrsb r3, [r4, r1]
	ldr r1, [sp, #0x28]
	cmp r3, r1
	bge _020198F4
	ldrh r2, [r4, #4]
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1a
	str r1, [sp, #0x24]
	add r7, r0, r1
	mov r1, #0xc
	ldrsb r1, [r4, r1]
	mov ip, r1
	cmp r7, r1
	blt _020198F4
	lsl r1, r2, #0x14
	lsr r1, r1, #0x1a
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	str r3, [sp, #0x18]
	add r2, r3, r1
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	str r1, [sp, #0x14]
	cmp r2, r1
	blt _020198F4
	ldr r1, [sp, #0x24]
	mov r5, ip
	lsl r1, r1, #0x18
	str r0, [sp, #0x20]
	asr r1, r1, #0x18
	cmp r0, r5
	bge _02019884
	mov r5, ip
	str r5, [sp, #0x20]
	mov r5, ip
	sub r0, r5, r0
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
_02019884:
	cmp r7, r6
	blt _02019890
	sub r0, r7, r6
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
_02019890:
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x14]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r3, r5
	bge _020198AA
	add r3, r5, #0
	add r6, r5, #0
	ldr r5, [sp, #0x18]
	sub r5, r6, r5
	sub r0, r0, r5
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
_020198AA:
	ldr r5, [sp, #0x28]
	cmp r2, r5
	blt _020198B8
	sub r2, r2, r5
	sub r0, r0, r2
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
_020198B8:
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	str r2, [sp]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x20]
	ldrb r1, [r4, #0xa]
	lsl r3, r3, #0x18
	ldr r0, [r0]
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldrh r2, [r2, #0xa]
	ldrb r1, [r4, #0xa]
	ldr r0, [r0]
	lsl r2, r2, #0x11
	lsr r3, r2, #0xf
	ldr r2, _020198F8 ; =0x020F6298
	ldr r2, [r2, r3]
	blx r2
_020198F4:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_020198F8: .word 0x020F6298
	thumb_func_end sub_0201980C

	thumb_func_start sub_020198FC
sub_020198FC: ; 0x020198FC
	push {r3, r4}
	ldr r4, [r0, #4]
	lsl r1, r1, #4
	add r1, r4, r1
	strb r2, [r1, #8]
	ldr r2, _0201992C ; =0xFFFFFFF8
	strb r3, [r1, #9]
	add r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r1, #0xb]
	ldrh r3, [r1, #4]
	ldr r2, _02019930 ; =0xFFFF1FFF
	and r3, r2
	mov r2, #2
	lsl r2, r2, #0xc
	orr r3, r2
	strh r3, [r1, #4]
	ldrh r3, [r0, #0xa]
	lsl r1, r2, #2
	orr r1, r3
	strh r1, [r0, #0xa]
	pop {r3, r4}
	bx lr
	nop
_0201992C: .word 0xFFFFFFF8
_02019930: .word 0xFFFF1FFF
	thumb_func_end sub_020198FC

	thumb_func_start sub_02019934
sub_02019934: ; 0x02019934
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0xa]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	beq _02019970
	ldr r0, _02019974 ; =0xFFFF7FFF
	add r6, r5, #0
	and r0, r1
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #8]
	add r6, #0xa
	mov r4, #0
	cmp r0, #0
	bls _02019970
	mov r7, #2
	lsl r7, r7, #0xe
_02019956:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019978
	cmp r0, #1
	bne _02019968
	ldrh r0, [r6]
	orr r0, r7
	strh r0, [r6]
_02019968:
	ldrh r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _02019956
_02019970:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019974: .word 0xFFFF7FFF
	thumb_func_end sub_02019934

	thumb_func_start sub_02019978
sub_02019978: ; 0x02019978
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r2, [r5, #4]
	lsl r4, r6, #4
	add r2, r2, r4
	ldrh r2, [r2, #4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	bne _02019990
	mov r0, #0
	pop {r4, r5, r6, pc}
_02019990:
	bl sub_0201980C
	ldr r2, [r5, #4]
	add r1, r2, #6
	add r3, r2, r4
	mov r2, #8
	ldrsb r0, [r1, r4]
	ldrsb r2, [r3, r2]
	add r0, r0, r2
	strb r0, [r1, r4]
	ldr r2, [r5, #4]
	add r1, r2, #7
	add r3, r2, r4
	mov r2, #9
	ldrsb r0, [r1, r4]
	ldrsb r2, [r3, r2]
	add r0, r0, r2
	strb r0, [r1, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020197F4
	ldr r1, [r5, #4]
	add r1, #0xb
	ldrb r0, [r1, r4]
	sub r0, r0, #1
	strb r0, [r1, r4]
	ldr r0, [r5, #4]
	add r2, r0, r4
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _020199DC
	ldrh r1, [r2, #4]
	ldr r0, _020199E0 ; =0xFFFF1FFF
	and r0, r1
	strh r0, [r2, #4]
	mov r0, #0
	pop {r4, r5, r6, pc}
_020199DC:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_020199E0: .word 0xFFFF1FFF
	thumb_func_end sub_02019978

	thumb_func_start sub_020199E4
sub_020199E4: ; 0x020199E4
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bx lr
	.balign 4, 0
	thumb_func_end sub_020199E4

	thumb_func_start sub_020199F4
sub_020199F4: ; 0x020199F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r1, r2, r0
	ldr r0, [r2, r0]
	add r7, r3, #0
	mov ip, r0
	ldrh r0, [r1, #4]
	add r1, sp, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	mov lr, r0
	ldrb r0, [r1, #0x14]
	add r0, r7, r0
	str r0, [sp, #4]
	cmp r7, r0
	bge _02019A58
	ldrb r0, [r1, #0x18]
	ldrb r1, [r1, #0x10]
	ldr r6, _02019A5C ; =0x00000FFF
	lsl r5, r0, #0xc
	ldr r0, [sp]
	add r2, r0, r1
_02019A26:
	ldr r1, [sp]
	add r0, r1, #0
	cmp r0, r2
	bge _02019A4C
	mov r0, lr
	mul r0, r7
	lsl r3, r0, #1
	mov r0, ip
	add r3, r0, r3
_02019A38:
	lsl r0, r1, #1
	ldrh r4, [r3, r0]
	and r4, r6
	orr r4, r5
	strh r4, [r3, r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, r2
	blt _02019A38
_02019A4C:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #4]
	cmp r7, r0
	blt _02019A26
_02019A58:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02019A5C: .word 0x00000FFF
	thumb_func_end sub_020199F4

	thumb_func_start sub_02019A60
sub_02019A60: ; 0x02019A60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	lsl r0, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r6, #0
	ldr r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r3, r1, r0
	ldr r0, [r1, r0]
	mov ip, r0
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	mov lr, r0
	ldrh r0, [r2, #0xa]
	lsl r0, r0, #0x11
	lsr r7, r0, #0x11
	ldrb r0, [r2, #9]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r2, #8]
	cmp r0, #0
	ble _02019B04
_02019A94:
	ldrb r0, [r2, #6]
	add r3, r0, r6
	ldr r0, [sp]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	cmp r3, r0
	bge _02019B04
	ldrb r0, [r2, #7]
	mov r1, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02019AF0
_02019AB4:
	ldr r0, [sp]
	ldrb r5, [r2, #5]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0xc]
	add r4, r5, r1
	add r0, r3, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r4, r0
	bge _02019AF0
	ldr r0, [sp, #8]
	add r3, r7, r1
	add r0, r0, r3
	ldrb r3, [r2, #6]
	add r4, r3, r6
	mov r3, lr
	mul r4, r3
	add r3, r5, r4
	add r3, r1, r3
	lsl r4, r3, #1
	mov r3, ip
	strh r0, [r3, r4]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r0, [r2, #7]
	str r0, [sp, #4]
	cmp r1, r0
	blt _02019AB4
_02019AF0:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrb r0, [r2, #8]
	cmp r6, r0
	blt _02019A94
_02019B04:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02019A60

	thumb_func_start sub_02019B08
sub_02019B08: ; 0x02019B08
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	ldr r0, [r2, r0]
	bx lr
	thumb_func_end sub_02019B08

	thumb_func_start sub_02019B10
sub_02019B10: ; 0x02019B10
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrb r0, [r0, #0xa]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019B10

	thumb_func_start sub_02019B1C
sub_02019B1C: ; 0x02019B1C
	push {r4, r5}
	cmp r2, #0
	beq _02019B2E
	ldr r5, [r0, #4]
	lsl r4, r1, #4
	add r5, r5, r4
	mov r4, #6
	ldrsb r4, [r5, r4]
	strb r4, [r2]
_02019B2E:
	cmp r3, #0
	beq _02019B3E
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r1, r2, r0
	mov r0, #7
	ldrsb r0, [r1, r0]
	strb r0, [r3]
_02019B3E:
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019B1C

	thumb_func_start sub_02019B44
sub_02019B44: ; 0x02019B44
	push {r4, r5}
	cmp r2, #0
	beq _02019B58
	ldr r5, [r0, #4]
	lsl r4, r1, #4
	add r4, r5, r4
	ldrh r4, [r4, #4]
	lsl r4, r4, #0x1a
	lsr r4, r4, #0x1a
	strh r4, [r2]
_02019B58:
	cmp r3, #0
	beq _02019B6A
	ldr r2, [r0, #4]
	lsl r0, r1, #4
	add r0, r2, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1a
	strh r0, [r3]
_02019B6A:
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019B44

	thumb_func_start sub_02019B70
sub_02019B70: ; 0x02019B70
	push {r3, r4}
	ldr r4, [r0, #4]
	lsl r1, r1, #4
	add r4, r4, r1
	strb r2, [r4, #0xc]
	ldr r2, [r0, #4]
	add r2, r2, r1
	strb r3, [r2, #0xd]
	ldr r3, _02019B9C ; =0xFFFFFFF8
	mov r2, #0x10
	add r3, sp
	ldrsb r4, [r3, r2]
	ldr r2, [r0, #4]
	add r2, r2, r1
	strb r4, [r2, #0xe]
	mov r2, #0x14
	ldr r0, [r0, #4]
	ldrsb r2, [r3, r2]
	add r0, r0, r1
	strb r2, [r0, #0xf]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02019B9C: .word 0xFFFFFFF8
	thumb_func_end sub_02019B70

	thumb_func_start sub_02019BA0
sub_02019BA0: ; 0x02019BA0
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019BA0

	thumb_func_start sub_02019BA4
sub_02019BA4: ; 0x02019BA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x20]
	mov r1, #0x20
	add r6, r2, #0
	add r7, r3, #0
	bl AllocFromHeap
	str r5, [r0]
	str r4, [r0, #4]
	str r6, [r0, #0x18]
	str r7, [r0, #0x1c]
	mov r2, #0
	ldr r1, [sp, #0x18]
	strb r2, [r0, #0xc]
	str r1, [r0, #8]
	add r1, sp, #8
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0xd]
	mov r1, #0xff
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	sub r1, r2, #1
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02019BA4

	thumb_func_start sub_02019BDC
sub_02019BDC: ; 0x02019BDC
	ldr r3, _02019BE0 ; =FreeToHeap
	bx r3
	.balign 4, 0
_02019BE0: .word FreeToHeap
	thumb_func_end sub_02019BDC

	thumb_func_start sub_02019BE4
sub_02019BE4: ; 0x02019BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	sub r7, r4, #1
_02019BF0:
	ldr r2, [r5]
	lsl r1, r4, #2
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	beq _02019C1A
	add r0, r2, r1
	bl sub_02025320
	cmp r0, #1
	bne _02019C12
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019E4C
	cmp r0, r7
	bne _02019D0E
	mov r6, #1
_02019C12:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02019BF0
_02019C1A:
	cmp r6, #0
	beq _02019C26
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02019C26:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _02019C4C
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _02019C4C
	ldr r0, _02019D14 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r1, r0
	beq _02019C46
	add r0, r5, #0
	bl sub_02019E98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019C46:
	add sp, #0x10
	sub r0, #0xf4
	pop {r3, r4, r5, r6, r7, pc}
_02019C4C:
	ldr r0, _02019D14 ; =0x021D110C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02019C72
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	b _02019CE0
_02019C72:
	mov r1, #0x80
	tst r1, r0
	beq _02019C96
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #1
	str r0, [sp, #0xc]
	b _02019CE0
_02019C96:
	mov r1, #0x20
	tst r1, r0
	beq _02019CBA
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp, #0xc]
	b _02019CE0
_02019CBA:
	mov r1, #0x10
	tst r0, r1
	beq _02019CDE
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #3
	str r0, [sp, #0xc]
	b _02019CE0
_02019CDE:
	mov r2, #0xff
_02019CE0:
	cmp r2, #0xff
	beq _02019CF0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02019EB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019CF0:
	ldr r0, _02019D14 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02019D00
	add sp, #0x10
	ldrb r0, [r5, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_02019D00:
	mov r0, #2
	tst r1, r0
	beq _02019D0C
	add sp, #0x10
	sub r0, r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02019D0C:
	sub r0, r0, #3
_02019D0E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019D14: .word 0x021D110C
	thumb_func_end sub_02019BE4

	thumb_func_start sub_02019D18
sub_02019D18: ; 0x02019D18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	sub r7, r4, #1
_02019D24:
	ldr r2, [r5]
	lsl r1, r4, #2
	ldrb r0, [r2, r1]
	cmp r0, #0xff
	beq _02019D4E
	add r0, r2, r1
	bl sub_02025320
	cmp r0, #1
	bne _02019D46
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019E4C
	cmp r0, r7
	bne _02019E42
	mov r6, #1
_02019D46:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02019D24
_02019D4E:
	cmp r6, #0
	beq _02019D5A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02019D5A:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _02019D80
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _02019D80
	ldr r0, _02019E48 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r1, r0
	beq _02019D7A
	add r0, r5, #0
	bl sub_02019E98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019D7A:
	add sp, #0x10
	sub r0, #0xf4
	pop {r3, r4, r5, r6, r7, pc}
_02019D80:
	ldr r0, _02019E48 ; =0x021D110C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _02019DA6
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	b _02019E14
_02019DA6:
	mov r1, #0x80
	tst r1, r0
	beq _02019DCA
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #1
	str r0, [sp, #0xc]
	b _02019E14
_02019DCA:
	mov r1, #0x20
	tst r1, r0
	beq _02019DEE
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp, #0xc]
	b _02019E14
_02019DEE:
	mov r1, #0x10
	tst r0, r1
	beq _02019E12
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #0xd]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02020A24
	add r2, r0, #0
	mov r0, #3
	str r0, [sp, #0xc]
	b _02019E14
_02019E12:
	mov r2, #0xff
_02019E14:
	cmp r2, #0xff
	beq _02019E24
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02019EB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02019E24:
	ldr r0, _02019E48 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02019E34
	add sp, #0x10
	ldrb r0, [r5, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_02019E34:
	mov r0, #2
	tst r1, r0
	beq _02019E40
	add sp, #0x10
	sub r0, r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02019E40:
	sub r0, r0, #3
_02019E42:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02019E48: .word 0x021D110C
	thumb_func_end sub_02019D18

	thumb_func_start sub_02019E4C
sub_02019E4C: ; 0x02019E4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x10
	add r4, r1, #0
	bl sub_0201A06C
	cmp r0, #1
	bne _02019E90
	strb r4, [r5, #0xd]
	mov r0, #0xff
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _02019E80
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _02019E80
	mov r0, #0
	str r0, [r5, #8]
	ldr r3, [r5, #0x18]
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #4]
	blx r3
_02019E80:
	ldr r3, [r5, #0x18]
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #0xc]
	blx r3
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02019E90:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02019E4C

	thumb_func_start sub_02019E98
sub_02019E98: ; 0x02019E98
	push {r3, lr}
	add r3, r0, #0
	mov r0, #1
	str r0, [r3, #8]
	mov r0, #0xff
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xf]
	ldr r0, [r3, #0x1c]
	ldrb r1, [r3, #0xd]
	ldrb r2, [r3, #0xe]
	ldr r3, [r3, #0x18]
	ldr r3, [r3]
	blx r3
	mov r0, #3
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_02019E98

	thumb_func_start sub_02019EB8
sub_02019EB8: ; 0x02019EB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x80
	add r1, r4, #0
	tst r1, r0
	beq _02019EDA
	ldrb r1, [r5, #0xf]
	cmp r1, #0xff
	beq _02019ED4
	add r4, r1, #0
	b _02019EDA
_02019ED4:
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02019EDA:
	mov r0, #1
	str r0, [sp, #0xc]
	mov r7, #0
_02019EE0:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r1, r2, r1
	mov r0, #1
	lsl r0, r1
	lsr r1, r4, #5
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0x10]
	tst r0, r1
	bne _02019F2A
	str r7, [sp, #0xc]
	str r7, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02020A24
	mov r1, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r4
	beq _02019F22
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _02019F26
_02019F22:
	ldrb r4, [r5, #0xd]
	b _02019F2A
_02019F26:
	add r4, r1, #0
	b _02019EE0
_02019F2A:
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	beq _02019F6A
	ldr r1, [r5, #4]
	lsl r0, r4, #3
	add r0, r1, r0
	add r1, r6, #0
	bl sub_0201A020
	cmp r0, #1
	bne _02019F4C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02019F4C
	ldrb r0, [r5, #0xd]
	strb r0, [r5, #0xf]
	b _02019F50
_02019F4C:
	mov r0, #0xff
	strb r0, [r5, #0xf]
_02019F50:
	ldrb r0, [r5, #0xd]
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xd]
	ldr r3, [r5, #0x18]
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #8]
	blx r3
	mov r0, #2
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02019F6A:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02019EB8

	thumb_func_start sub_02019F74
sub_02019F74: ; 0x02019F74
	ldrb r0, [r0, #0xd]
	bx lr
	thumb_func_end sub_02019F74

	thumb_func_start sub_02019F78
sub_02019F78: ; 0x02019F78
	ldrb r0, [r0, #0xf]
	bx lr
	thumb_func_end sub_02019F78

	thumb_func_start sub_02019F7C
sub_02019F7C: ; 0x02019F7C
	strb r1, [r0, #0xd]
	mov r1, #0xff
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019F7C

	thumb_func_start sub_02019F88
sub_02019F88: ; 0x02019F88
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xe]
	strb r3, [r0, #0xf]
	bx lr
	thumb_func_end sub_02019F88

	thumb_func_start sub_02019F90
sub_02019F90: ; 0x02019F90
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02019F90

	thumb_func_start sub_02019F94
sub_02019F94: ; 0x02019F94
	push {r3, lr}
	add r3, r0, #0
	str r1, [r3, #8]
	cmp r1, #1
	bne _02019FB4
	mov r0, #0xff
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xf]
	ldr r0, [r3, #0x1c]
	ldrb r1, [r3, #0xd]
	ldr r3, [r3, #0x18]
	mov r2, #0
	ldr r3, [r3]
	mvn r2, r2
	blx r3
	pop {r3, pc}
_02019FB4:
	ldr r0, [r3, #0x1c]
	ldrb r1, [r3, #0xd]
	ldr r3, [r3, #0x18]
	mov r2, #0
	ldr r3, [r3, #4]
	mvn r2, r2
	blx r3
	pop {r3, pc}
	thumb_func_end sub_02019F94

	thumb_func_start sub_02019FC4
sub_02019FC4: ; 0x02019FC4
	mov r1, #0
	mvn r1, r1
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02019FC4

	thumb_func_start sub_02019FD0
sub_02019FD0: ; 0x02019FD0
	push {r4, r5}
	mov r4, #1
	lsr r2, r1, #5
	mov r3, #0x1f
	and r1, r3
	add r5, r4, #0
	lsl r5, r1
	add r0, #0x10
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	add r1, r5, #0
	tst r1, r4
	beq _02019FF4
	sub r3, #0x20
	add r1, r5, #0
	eor r1, r3
	and r1, r4
	str r1, [r0, r2]
_02019FF4:
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02019FD0

	thumb_func_start sub_02019FF8
sub_02019FF8: ; 0x02019FF8
	push {r3, r4}
	mov r3, #0x1f
	lsr r2, r1, #5
	mov r4, #1
	and r1, r3
	lsl r4, r1
	add r0, #0x10
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	add r3, r4, #0
	tst r3, r1
	bne _0201A014
	eor r1, r4
	str r1, [r0, r2]
_0201A014:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02019FF8

	thumb_func_start sub_0201A018
sub_0201A018: ; 0x0201A018
	ldr r2, [r0, #4]
	lsl r0, r1, #3
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0201A018

	thumb_func_start sub_0201A020
sub_0201A020: ; 0x0201A020
	cmp r1, #3
	bhi _0201A068
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201A030: ; jump table
	.short _0201A038 - _0201A030 - 2 ; case 0
	.short _0201A044 - _0201A030 - 2 ; case 1
	.short _0201A050 - _0201A030 - 2 ; case 2
	.short _0201A05C - _0201A030 - 2 ; case 3
_0201A038:
	ldrb r1, [r0, #5]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A044:
	ldrb r1, [r0, #4]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A050:
	ldrb r1, [r0, #7]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A05C:
	ldrb r1, [r0, #6]
	mov r0, #0x80
	tst r0, r1
	beq _0201A068
	mov r0, #1
	bx lr
_0201A068:
	mov r0, #0
	bx lr
	thumb_func_end sub_0201A020

	thumb_func_start sub_0201A06C
sub_0201A06C: ; 0x0201A06C
	push {r3, r4}
	mov r3, #0x1f
	mov r2, #1
	and r3, r1
	lsr r1, r1, #5
	add r4, r2, #0
	lsl r1, r1, #2
	lsl r4, r3
	ldr r0, [r0, r1]
	tst r0, r4
	bne _0201A084
	mov r2, #0
_0201A084:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201A06C

	thumb_func_start sub_0201A08C
sub_0201A08C: ; 0x0201A08C
	push {r3, lr}
	ldr r3, _0201A0B4 ; =OSi_IntrTable
	ldr r1, _0201A0B8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	mov r0, #3
	bl sub_020D422C
	ldr r0, _0201A0BC ; =0x021D110C
	ldr r0, [r0, #0x1c]
	bl sub_0201F880
	ldr r0, _0201A0BC ; =0x021D110C
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	pop {r3, pc}
	nop
_0201A0B4: .word OSi_IntrTable
_0201A0B8: .word 0x00003FF8
_0201A0BC: .word 0x021D110C
	thumb_func_end sub_0201A08C

	thumb_func_start sub_0201A0C0
sub_0201A0C0: ; 0x0201A0C0
	ldr r3, _0201A0D4 ; =OSi_IntrTable
	ldr r1, _0201A0D8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _0201A0DC ; =sub_020D422C
	mov r0, #3
	bx r3
	nop
_0201A0D4: .word OSi_IntrTable
_0201A0D8: .word 0x00003FF8
_0201A0DC: .word sub_020D422C
	thumb_func_end sub_0201A0C0

	thumb_func_start sub_0201A0E0
sub_0201A0E0: ; 0x0201A0E0
	push {r3, lr}
	mov r0, #1
	bl sub_020D1204
	ldr r1, _0201A0F8 ; =sub_0201A0C0
	mov r0, #1
	bl sub_020D1004
	mov r0, #1
	bl sub_020D11D4
	pop {r3, pc}
	.balign 4, 0
_0201A0F8: .word sub_0201A0C0
	thumb_func_end sub_0201A0E0

	thumb_func_start sub_0201A0FC
sub_0201A0FC: ; 0x0201A0FC
	ldr r2, _0201A104 ; =0x021D110C
	str r0, [r2]
	str r1, [r2, #4]
	bx lr
	.balign 4, 0
_0201A104: .word 0x021D110C
	thumb_func_end sub_0201A0FC

	thumb_func_start sub_0201A108
sub_0201A108: ; 0x0201A108
	push {r3, lr}
	mov r0, #0
	bl sub_0201A16C
	ldr r0, _0201A11C ; =0x021D110C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, pc}
	nop
_0201A11C: .word 0x021D110C
	thumb_func_end sub_0201A108

	thumb_func_start sub_0201A120
sub_0201A120: ; 0x0201A120
	push {r3, lr}
	cmp r0, #0
	bne _0201A138
	mov r0, #0
	bl sub_0201A16C
	ldr r0, _0201A154 ; =0x021D110C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r0, #1
	pop {r3, pc}
_0201A138:
	ldr r2, _0201A154 ; =0x021D110C
	ldr r3, [r2, #8]
	cmp r3, #0
	bne _0201A14E
	str r1, [r2, #0xc]
	str r0, [r2, #8]
	mov r0, #1
	bl sub_0201A16C
	mov r0, #1
	pop {r3, pc}
_0201A14E:
	mov r0, #0
	pop {r3, pc}
	nop
_0201A154: .word 0x021D110C
	thumb_func_end sub_0201A120

	thumb_func_start sub_0201A158
sub_0201A158: ; 0x0201A158
	push {r3, lr}
	ldr r0, _0201A168 ; =0x021D110C
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0201A166
	ldr r0, [r0, #0xc]
	blx r1
_0201A166:
	pop {r3, pc}
	.balign 4, 0
_0201A168: .word 0x021D110C
	thumb_func_end sub_0201A158

	thumb_func_start sub_0201A16C
sub_0201A16C: ; 0x0201A16C
	push {r3, lr}
	ldr r2, _0201A1AC ; =0x04000208
	ldrh r1, [r2]
	mov r1, #0
	strh r1, [r2]
	cmp r0, #0
	bne _0201A18A
	ldr r0, [r2, #8]
	mov r0, #2
	bl sub_020D1204
	mov r0, #0
	bl sub_020CD910
	b _0201A1A0
_0201A18A:
	ldr r0, [r2, #8]
	ldr r1, _0201A1B0 ; =sub_0201A158
	mov r0, #2
	bl sub_020D1004
	mov r0, #2
	bl sub_020D11D4
	mov r0, #1
	bl sub_020CD910
_0201A1A0:
	ldr r1, _0201A1AC ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
	nop
_0201A1AC: .word 0x04000208
_0201A1B0: .word sub_0201A158
	thumb_func_end sub_0201A16C

	thumb_func_start sub_0201A1B4
sub_0201A1B4: ; 0x0201A1B4
	push {r3, lr}
	sub sp, #0x30
	add r0, sp, #0x10
	bl sub_020D3E78
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, #0x20
	bl sub_020E3758
	mov r3, #0
	add r1, r3, #0
	add r2, sp, #0
_0201A1CE:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #1
	add r3, r3, r0
	cmp r1, #0x10
	blo _0201A1CE
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	mov r0, #3
	tst r0, r3
	beq _0201A1EE
	mov r0, #3
_0201A1E6:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _0201A1E6
_0201A1EE:
	ldr r0, _0201A1FC ; =0x020F62A4
	mov r1, #4
	mov r2, #0xa1
	bl sub_0201A7BC
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
_0201A1FC: .word 0x020F62A4
	thumb_func_end sub_0201A1B4

	thumb_func_start InitSystemForTheGame
InitSystemForTheGame: ; 0x0201A200
	push {r3, r4, r5, lr}
	bl sub_020D290C
	bl sub_020CD784
	ldr r2, _0201A324 ; =0x04000304
	ldr r0, _0201A328 ; =0xFFFFFDF1
	ldrh r1, [r2]
	and r1, r0
	ldr r0, _0201A32C ; =0x0000020E
	orr r0, r1
	strh r0, [r2]
	bl sub_020CD7C4
	bl sub_020D33C0
	bl sub_0201A1B4
	mov r0, #0xa0
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #0xa0
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x18]
	mov r0, #0x20
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x1c]
	mov r0, #0x20
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x20]
	mov r0, #4
	bl sub_0201F82C
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	add r1, r0, #0
	mov r0, #4
	bl sub_0201F834
	ldr r1, _0201A330 ; =0x021D110C
	str r0, [r1, #0x24]
	bl sub_020CD978
	ldr r2, _0201A334 ; =0x04001000
	ldr r0, _0201A338 ; =0xFFFEFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r2, _0201A324 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r1, _0201A33C ; =sub_0201A08C
	mov r0, #1
	bl sub_020D1004
	mov r0, #1
	bl sub_020D11D4
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_020D11D4
	ldr r1, _0201A340 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	bl sub_020CD944
	mov r0, #1
	bl sub_020D7F60
	bl sub_02027010
	mov r0, #0
	add r1, r0, #0
	bl sub_020D8728
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_020D2CA0
	add r5, r0, #0
	bne _0201A2F4
	bl GF_AssertFail
_0201A2F4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020D8728
	ldr r0, _0201A330 ; =0x021D110C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x74]
	str r1, [r0, #0x2c]
	ldr r0, _0201A344 ; =0x021D116C
	strb r1, [r0, #9]
	mov r0, #5
	mov r1, #9
	lsl r0, r0, #8
	lsl r1, r1, #0xa
	bl sub_020DC9DC
	mov r0, #0
	bl sub_0201FFB0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0201A324: .word 0x04000304
_0201A328: .word 0xFFFFFDF1
_0201A32C: .word 0x0000020E
_0201A330: .word 0x021D110C
_0201A334: .word 0x04001000
_0201A338: .word 0xFFFEFFFF
_0201A33C: .word sub_0201A08C
_0201A340: .word 0x04000208
_0201A344: .word 0x021D116C
	thumb_func_end InitSystemForTheGame

	thumb_func_start InitGraphicMemory
InitGraphicMemory: ; 0x0201A348
	push {r3, lr}
	ldr r0, _0201A398 ; =0x000001FF
	bl sub_020CE630
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	bl sub_020D4858
	bl sub_020CEB60
	mov r1, #7
	mov r2, #1
	mov r0, #0xc0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl sub_020D4858
	mov r2, #1
	ldr r1, _0201A39C ; =0x07000400
	mov r0, #0xc0
	lsl r2, r2, #0xa
	bl sub_020D4858
	mov r1, #5
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl sub_020D4858
	mov r2, #1
	ldr r1, _0201A3A0 ; =0x05000400
	mov r0, #0
	lsl r2, r2, #0xa
	bl sub_020D4858
	pop {r3, pc}
	.balign 4, 0
_0201A398: .word 0x000001FF
_0201A39C: .word 0x07000400
_0201A3A0: .word 0x05000400
	thumb_func_end InitGraphicMemory

	thumb_func_start sub_0201A3A4
sub_0201A3A4: ; 0x0201A3A4
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r6, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl FS_InitFile
	add r0, sp, #0
	add r1, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _0201A3F0
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r5, r1, r0
	add r0, r6, #0
	add r1, r5, #0
	bl AllocFromHeap
	add r4, r0, #0
	beq _0201A3E8
	add r0, sp, #0
	add r1, r4, #0
	add r2, r5, #0
	bl FS_ReadFile
	cmp r5, r0
	beq _0201A3E8
	add r0, r6, #0
	add r1, r4, #0
	bl FreeToHeapExplicit
	mov r4, #0
_0201A3E8:
	add r0, sp, #0
	bl FS_CloseFile
	b _0201A3F2
_0201A3F0:
	mov r4, #0
_0201A3F2:
	add r0, r4, #0
	add sp, #0x48
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201A3A4

	thumb_func_start sub_0201A3F8
sub_0201A3F8: ; 0x0201A3F8
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	bl FS_InitFile
	add r0, sp, #0
	add r1, r5, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _0201A42A
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r2, r1, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _0201A424
	add r0, sp, #0
	bl FS_ReadFile
_0201A424:
	add r0, sp, #0
	bl FS_CloseFile
_0201A42A:
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201A3F8

	thumb_func_start sub_0201A430
sub_0201A430: ; 0x0201A430
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _0201A454 ; =0x021D157C
	mov r4, #0x7f
	sub r7, r6, #1
_0201A43A:
	ldr r0, [r5]
	cmp r0, #0
	beq _0201A448
	bl FreeToHeap
	str r6, [r5]
	str r6, [r5, #4]
_0201A448:
	sub r4, r4, #1
	sub r5, #8
	cmp r4, r7
	bgt _0201A43A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A454: .word 0x021D157C
	thumb_func_end sub_0201A430

	thumb_func_start InitKeypadAndTouchpad
InitKeypadAndTouchpad: ; 0x0201A458
	push {r3, lr}
	sub sp, #8
	ldr r0, _0201A4A4 ; =0x021D110C
	mov r2, #0
	str r2, [r0, #0x34]
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	mov r1, #4
	str r1, [r0, #0x54]
	mov r1, #8
	str r1, [r0, #0x58]
	ldr r0, _0201A4A8 ; =0x021D114C
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	strh r2, [r0, #0x26]
	ldr r0, _0201A4AC ; =0x021D116C
	strb r2, [r0, #8]
	bl sub_020D9EF0
	bl sub_020210A0
	add r0, sp, #0
	bl sub_020D9F68
	cmp r0, #1
	bne _0201A49E
	add r0, sp, #0
	bl sub_020D9FFC
_0201A49E:
	add sp, #8
	pop {r3, pc}
	nop
_0201A4A4: .word 0x021D110C
_0201A4A8: .word 0x021D114C
_0201A4AC: .word 0x021D116C
	thumb_func_end InitKeypadAndTouchpad

	thumb_func_start sub_0201A4B0
sub_0201A4B0: ; 0x0201A4B0
	ldr r1, _0201A4B8 ; =0x021D116C
	strb r0, [r1, #0xa]
	bx lr
	nop
_0201A4B8: .word 0x021D116C
	thumb_func_end sub_0201A4B0

	thumb_func_start sub_0201A4BC
sub_0201A4BC: ; 0x0201A4BC
	ldr r1, _0201A4C8 ; =0x021D116C
	ldrb r2, [r1, #0xb]
	orr r0, r2
	strb r0, [r1, #0xb]
	bx lr
	nop
_0201A4C8: .word 0x021D116C
	thumb_func_end sub_0201A4BC

	thumb_func_start sub_0201A4CC
sub_0201A4CC: ; 0x0201A4CC
	ldr r1, _0201A4D8 ; =0x021D116C
	mvn r0, r0
	ldrb r2, [r1, #0xb]
	and r0, r2
	strb r0, [r1, #0xb]
	bx lr
	.balign 4, 0
_0201A4D8: .word 0x021D116C
	thumb_func_end sub_0201A4CC

	thumb_func_start ReadKeypadAndTouchpad
ReadKeypadAndTouchpad: ; 0x0201A4DC
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _0201A5D0 ; =0x027FFFA8
	mov r0, #2
	ldrh r1, [r2]
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _0201A502
	ldr r0, _0201A5D4 ; =0x021D110C
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x4c]
	ldr r0, _0201A5D8 ; =0x021D114C
	add sp, #0x10
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	pop {r4, pc}
_0201A502:
	ldr r0, _0201A5DC ; =0x04000130
	ldrh r1, [r0]
	ldrh r0, [r2]
	orr r1, r0
	ldr r0, _0201A5E0 ; =0x00002FFF
	eor r1, r0
	and r0, r1
	lsl r0, r0, #0x10
	ldr r1, _0201A5D4 ; =0x021D110C
	lsr r2, r0, #0x10
	ldr r0, [r1, #0x5c]
	orr r0, r2
	mov r2, #0
	str r2, [r1, #0x5c]
	ldr r2, [r1, #0x38]
	add r3, r0, #0
	eor r3, r2
	and r3, r0
	str r3, [r1, #0x3c]
	str r3, [r1, #0x40]
	cmp r0, #0
	beq _0201A542
	cmp r2, r0
	bne _0201A542
	ldr r2, [r1, #0x50]
	sub r2, r2, #1
	str r2, [r1, #0x50]
	bne _0201A548
	str r0, [r1, #0x40]
	ldr r2, [r1, #0x54]
	str r2, [r1, #0x50]
	b _0201A548
_0201A542:
	ldr r1, _0201A5D4 ; =0x021D110C
	ldr r2, [r1, #0x58]
	str r2, [r1, #0x50]
_0201A548:
	ldr r1, _0201A5D4 ; =0x021D110C
	str r0, [r1, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r1, #0x48]
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r1, #0x4c]
	bl sub_0201A5E8
	ldr r0, _0201A5E4 ; =0x021D116C
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0201A574
	add r4, sp, #8
_0201A564:
	bl sub_020DA124
	add r0, r4, #0
	bl sub_020DA1B8
	cmp r0, #0
	bne _0201A564
	b _0201A57A
_0201A574:
	add r0, sp, #8
	bl sub_020DA3A0
_0201A57A:
	add r0, sp, #0
	add r1, sp, #8
	bl sub_020DA6E0
	add r1, sp, #0
	ldrh r3, [r1, #6]
	cmp r3, #0
	bne _0201A596
	ldrh r2, [r1]
	ldr r0, _0201A5D8 ; =0x021D114C
	strh r2, [r0, #0x20]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x22]
	b _0201A5BA
_0201A596:
	ldr r0, _0201A5D8 ; =0x021D114C
	ldrh r2, [r0, #0x26]
	cmp r2, #0
	beq _0201A5B6
	cmp r3, #1
	beq _0201A5AA
	cmp r3, #2
	beq _0201A5B0
	cmp r3, #3
	b _0201A5BA
_0201A5AA:
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x22]
	b _0201A5BA
_0201A5B0:
	ldrh r1, [r1]
	strh r1, [r0, #0x20]
	b _0201A5BA
_0201A5B6:
	mov r0, #0
	strh r0, [r1, #4]
_0201A5BA:
	add r0, sp, #0
	ldrh r2, [r0, #4]
	ldr r0, _0201A5D8 ; =0x021D114C
	ldrh r1, [r0, #0x26]
	eor r1, r2
	and r1, r2
	strh r1, [r0, #0x24]
	strh r2, [r0, #0x26]
	add sp, #0x10
	pop {r4, pc}
	nop
_0201A5D0: .word 0x027FFFA8
_0201A5D4: .word 0x021D110C
_0201A5D8: .word 0x021D114C
_0201A5DC: .word 0x04000130
_0201A5E0: .word 0x00002FFF
_0201A5E4: .word 0x021D116C
	thumb_func_end ReadKeypadAndTouchpad

	thumb_func_start sub_0201A5E8
sub_0201A5E8: ; 0x0201A5E8
	ldr r0, _0201A710 ; =0x021D110C
	ldr r1, [r0, #0x34]
	cmp r1, #3
	bls _0201A5F2
	b _0201A70C
_0201A5F2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201A5FE: ; jump table
	.short _0201A70C - _0201A5FE - 2 ; case 0
	.short _0201A606 - _0201A5FE - 2 ; case 1
	.short _0201A63C - _0201A5FE - 2 ; case 2
	.short _0201A6C2 - _0201A5FE - 2 ; case 3
_0201A606:
	ldr r2, [r0, #0x48]
	mov r1, #8
	add r3, r2, #0
	tst r3, r1
	beq _0201A616
	lsl r1, r1, #7
	orr r1, r2
	str r1, [r0, #0x48]
_0201A616:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #8
	ldr r2, [r1, #0x44]
	add r3, r2, #0
	tst r3, r0
	beq _0201A628
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x44]
_0201A628:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #8
	ldr r2, [r1, #0x4c]
	add r3, r2, #0
	tst r3, r0
	beq _0201A70C
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x4c]
	bx lr
_0201A63C:
	ldr r3, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, #0
	mov r1, #0
	tst r2, r0
	beq _0201A64E
	lsl r0, r0, #1
	orr r1, r0
_0201A64E:
	mov r0, #2
	lsl r0, r0, #0xa
	add r2, r3, #0
	tst r2, r0
	beq _0201A65C
	lsr r0, r0, #1
	orr r1, r0
_0201A65C:
	ldr r2, _0201A710 ; =0x021D110C
	ldr r0, _0201A714 ; =0x0000F3FF
	ldr r3, [r2, #0x48]
	and r0, r3
	orr r0, r1
	str r0, [r2, #0x48]
	ldr r3, [r2, #0x44]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _0201A67A
	lsl r1, r1, #1
	orr r0, r1
_0201A67A:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _0201A688
	lsr r1, r1, #1
	orr r0, r1
_0201A688:
	ldr r2, _0201A710 ; =0x021D110C
	ldr r1, _0201A714 ; =0x0000F3FF
	ldr r3, [r2, #0x44]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x44]
	ldr r3, [r2, #0x4c]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _0201A6A6
	lsl r1, r1, #1
	orr r0, r1
_0201A6A6:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _0201A6B4
	lsr r1, r1, #1
	orr r0, r1
_0201A6B4:
	ldr r2, _0201A710 ; =0x021D110C
	ldr r1, _0201A714 ; =0x0000F3FF
	ldr r3, [r2, #0x4c]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x4c]
	bx lr
_0201A6C2:
	mov r1, #2
	ldr r2, [r0, #0x48]
	lsl r1, r1, #8
	tst r1, r2
	beq _0201A6D2
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0x48]
_0201A6D2:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #2
	ldr r2, [r1, #0x44]
	lsl r0, r0, #8
	tst r0, r2
	beq _0201A6E4
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x44]
_0201A6E4:
	ldr r1, _0201A710 ; =0x021D110C
	mov r0, #2
	ldr r2, [r1, #0x4c]
	lsl r0, r0, #8
	tst r0, r2
	beq _0201A6F6
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x4c]
_0201A6F6:
	ldr r1, _0201A710 ; =0x021D110C
	ldr r0, _0201A718 ; =0x0000FCFF
	ldr r2, [r1, #0x48]
	and r2, r0
	str r2, [r1, #0x48]
	ldr r2, [r1, #0x44]
	and r2, r0
	str r2, [r1, #0x44]
	ldr r2, [r1, #0x4c]
	and r0, r2
	str r0, [r1, #0x4c]
_0201A70C:
	bx lr
	nop
_0201A710: .word 0x021D110C
_0201A714: .word 0x0000F3FF
_0201A718: .word 0x0000FCFF
	thumb_func_end sub_0201A5E8

	thumb_func_start sub_0201A71C
sub_0201A71C: ; 0x0201A71C
	ldr r2, _0201A724 ; =0x021D110C
	str r0, [r2, #0x54]
	str r1, [r2, #0x58]
	bx lr
	.balign 4, 0
_0201A724: .word 0x021D110C
	thumb_func_end sub_0201A71C

	thumb_func_start sub_0201A728
sub_0201A728: ; 0x0201A728
	ldr r1, _0201A734 ; =0x021D116C
	ldrb r2, [r1, #0xc]
	orr r0, r2
	strb r0, [r1, #0xc]
	bx lr
	nop
_0201A734: .word 0x021D116C
	thumb_func_end sub_0201A728

	thumb_func_start sub_0201A738
sub_0201A738: ; 0x0201A738
	ldr r1, _0201A744 ; =0x021D116C
	mvn r0, r0
	ldrb r2, [r1, #0xc]
	and r0, r2
	strb r0, [r1, #0xc]
	bx lr
	.balign 4, 0
_0201A744: .word 0x021D116C
	thumb_func_end sub_0201A738

	thumb_func_start sub_0201A748
sub_0201A748: ; 0x0201A748
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201A76C ; =0x021D110C
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _0201A758
	bl GF_AssertFail
_0201A758:
	add r0, r4, #0
	mov r1, #4
	bl AllocFromHeapAtEnd
	ldr r1, _0201A76C ; =0x021D110C
	str r0, [r1, #0x74]
	ldr r1, _0201A770 ; =0x2F93A1BC
	str r1, [r0]
	pop {r4, pc}
	nop
_0201A76C: .word 0x021D110C
_0201A770: .word 0x2F93A1BC
	thumb_func_end sub_0201A748

	thumb_func_start sub_0201A774
sub_0201A774: ; 0x0201A774
	push {r3, lr}
	ldr r0, _0201A798 ; =0x021D110C
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _0201A782
	bl GF_AssertFail
_0201A782:
	ldr r0, _0201A798 ; =0x021D110C
	mov r2, #0
	ldr r1, [r0, #0x74]
	str r2, [r1]
	ldr r0, [r0, #0x74]
	bl FreeToHeap
	ldr r0, _0201A798 ; =0x021D110C
	mov r1, #0
	str r1, [r0, #0x74]
	pop {r3, pc}
	.balign 4, 0
_0201A798: .word 0x021D110C
	thumb_func_end sub_0201A774

	thumb_func_start sub_0201A79C
sub_0201A79C: ; 0x0201A79C
	ldr r0, _0201A7B4 ; =0x021D110C
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _0201A7B0
	ldr r1, [r0]
	ldr r0, _0201A7B8 ; =0x2F93A1BC
	cmp r1, r0
	bne _0201A7B0
	mov r0, #1
	bx lr
_0201A7B0:
	mov r0, #0
	bx lr
	.balign 4, 0
_0201A7B4: .word 0x021D110C
_0201A7B8: .word 0x2F93A1BC
	thumb_func_end sub_0201A79C

	thumb_func_start sub_0201A7BC
sub_0201A7BC: ; 0x0201A7BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x18
	add r6, r2, #0
	str r0, [sp, #4]
	cmp r6, r0
	bhs _0201A7D4
	add r6, r0, #0
_0201A7D4:
	cmp r3, #0
	beq _0201A7F2
	mov r0, #3
	tst r0, r3
	beq _0201A7E8
	mov r0, #3
_0201A7E0:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _0201A7E0
_0201A7E8:
	mov r0, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_020D2CA0
_0201A7F2:
	ldr r1, [sp, #4]
	lsl r7, r6, #1
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r7, r1
	mov r0, #0
	add r1, r6, r1
	mov r2, #4
	bl sub_020D2CA0
	ldr r1, _0201A8E4 ; =0x021D1584
	str r0, [r1]
	ldr r1, [sp, #4]
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0201A8E4 ; =0x021D1584
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r1, _0201A8E4 ; =0x021D1584
	str r2, [r1, #8]
	add r1, r2, r0
	ldr r0, _0201A8E4 ; =0x021D1584
	str r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0x10]
	strh r6, [r0, #0x14]
	strh r4, [r0, #0x16]
	ldr r0, [sp, #4]
	mov r7, #0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0201A8E4 ; =0x021D1584
	cmp r4, #0
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	bls _0201A894
	str r7, [sp]
_0201A846:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0201A850
	cmp r0, #2
	beq _0201A85C
_0201A850:
	ldr r1, [r5]
	mov r0, #0
	mov r2, #4
	bl sub_020D2CA0
	b _0201A866
_0201A85C:
	ldr r1, [r5]
	mov r0, #2
	mov r2, #4
	bl sub_020D2D0C
_0201A866:
	cmp r0, #0
	beq _0201A882
	ldr r1, [r5]
	mov r2, #0
	bl sub_020B535C
	ldr r1, _0201A8E4 ; =0x021D1584
	ldr r2, [r1]
	ldr r1, [sp]
	str r0, [r2, r1]
	ldr r0, _0201A8E4 ; =0x021D1584
	ldr r0, [r0, #0x10]
	strb r7, [r0, r7]
	b _0201A886
_0201A882:
	bl GF_AssertFail
_0201A886:
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	add r5, #8
	str r0, [sp]
	cmp r7, r4
	blo _0201A846
_0201A894:
	ldr r0, [sp, #4]
	add r1, r0, #1
	cmp r4, r1
	bhs _0201A8B4
	ldr r3, _0201A8E4 ; =0x021D1584
	lsl r2, r4, #2
	mov r0, #0
_0201A8A2:
	ldr r5, [r3]
	str r0, [r5, r2]
	ldrh r7, [r3, #0x1a]
	ldr r5, [r3, #0x10]
	add r2, r2, #4
	strb r7, [r5, r4]
	add r4, r4, #1
	cmp r4, r1
	blo _0201A8A2
_0201A8B4:
	cmp r4, r6
	bhs _0201A8C6
	ldr r0, _0201A8E4 ; =0x021D1584
_0201A8BA:
	ldrh r2, [r0, #0x1a]
	ldr r1, [r0, #0x10]
	strb r2, [r1, r4]
	add r4, r4, #1
	cmp r4, r6
	blo _0201A8BA
_0201A8C6:
	mov r4, #0
	cmp r6, #0
	bls _0201A8DE
	ldr r0, _0201A8E4 ; =0x021D1584
	add r3, r4, #0
	add r2, r4, #0
_0201A8D2:
	ldr r1, [r0, #0xc]
	add r4, r4, #1
	strh r2, [r1, r3]
	add r3, r3, #2
	cmp r4, r6
	blo _0201A8D2
_0201A8DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A8E4: .word 0x021D1584
	thumb_func_end sub_0201A7BC

	thumb_func_start sub_0201A8E8
sub_0201A8E8: ; 0x0201A8E8
	ldr r1, _0201A90C ; =0x021D1584
	ldrh r0, [r1, #0x16]
	ldrh r3, [r1, #0x18]
	cmp r0, r3
	bge _0201A906
	ldr r2, [r1]
	lsl r1, r0, #2
	add r2, r2, r1
_0201A8F8:
	ldr r1, [r2]
	cmp r1, #0
	beq _0201A90A
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, r3
	blt _0201A8F8
_0201A906:
	mov r0, #0
	mvn r0, r0
_0201A90A:
	bx lr
	.balign 4, 0
_0201A90C: .word 0x021D1584
	thumb_func_end sub_0201A8E8

	thumb_func_start sub_0201A910
sub_0201A910: ; 0x0201A910
	push {r3, lr}
	mov r3, #4
	bl sub_0201A928
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_0201A910

	thumb_func_start sub_0201A91C
sub_0201A91C: ; 0x0201A91C
	push {r3, lr}
	mov r3, #3
	mvn r3, r3
	bl sub_0201A928
	pop {r3, pc}
	thumb_func_end sub_0201A91C

	thumb_func_start sub_0201A928
sub_0201A928: ; 0x0201A928
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201A940
	bl GF_AssertFail
_0201A940:
	ldr r1, _0201A9C0 ; =0x021D1584
	ldr r0, [r1, #0x10]
	ldrh r3, [r1, #0x1a]
	ldrb r2, [r0, r5]
	cmp r3, r2
	bne _0201A9B6
	ldrb r0, [r0, r4]
	ldr r1, [r1]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	beq _0201A9B0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020B53A0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201A9AA
	bl sub_0201A8E8
	add r7, r0, #0
	bmi _0201A9A4
	ldr r0, [sp, #4]
	ldr r1, [sp]
	mov r2, #0
	lsl r4, r7, #2
	bl sub_020B535C
	ldr r1, _0201A9C0 ; =0x021D1584
	ldr r2, [r1]
	str r0, [r2, r4]
	ldr r0, [r1]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0201A99E
	ldr r0, [r1, #4]
	str r6, [r0, r4]
	ldr r0, [sp, #4]
	ldr r2, [r1, #8]
	add sp, #8
	str r0, [r2, r4]
	ldr r0, [r1, #0x10]
	strb r7, [r0, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0201A99E:
	bl GF_AssertFail
	b _0201A9BA
_0201A9A4:
	bl GF_AssertFail
	b _0201A9BA
_0201A9AA:
	bl GF_AssertFail
	b _0201A9BA
_0201A9B0:
	bl GF_AssertFail
	b _0201A9BA
_0201A9B6:
	bl GF_AssertFail
_0201A9BA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0201A9C0: .word 0x021D1584
	thumb_func_end sub_0201A928

	thumb_func_start sub_0201A9C4
sub_0201A9C4: ; 0x0201A9C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201A9D4
	bl GF_AssertFail
_0201A9D4:
	ldr r0, _0201AA34 ; =0x021D1584
	ldr r1, [r0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0201AA32
	bl sub_020B5394
	ldr r1, _0201AA34 ; =0x021D1584
	ldr r0, [r1, #0x10]
	ldrb r0, [r0, r4]
	lsl r2, r0, #2
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	cmp r0, #0
	beq _0201AA06
	cmp r1, #0
	beq _0201AA06
	bl sub_020B5530
	b _0201AA0A
_0201AA06:
	bl GF_AssertFail
_0201AA0A:
	ldr r1, _0201AA34 ; =0x021D1584
	mov r0, #0
	ldr r2, [r1, #0x10]
	ldr r3, [r1]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #4]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #8]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldrh r2, [r1, #0x1a]
	ldr r0, [r1, #0x10]
	strb r2, [r0, r4]
_0201AA32:
	pop {r4, pc}
	.balign 4, 0
_0201AA34: .word 0x021D1584
	thumb_func_end sub_0201A9C4

	thumb_func_start sub_0201AA38
sub_0201AA38: ; 0x0201AA38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r5, #0
	bne _0201AA4A
	bl GF_AssertFail
_0201AA4A:
	bl sub_020D3A38
	add r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020B53A0
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020D3A4C
	cmp r4, #0
	beq _0201AA78
	ldr r1, [r4, #0xc]
	mov r0, #0xff
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4, #0xc]
	add r4, #0x10
_0201AA78:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201AA38

	thumb_func_start sub_0201AA7C
sub_0201AA7C: ; 0x0201AA7C
	push {r3, lr}
	bl sub_02037D78
	cmp r0, #0
	beq _0201AA8A
	bl sub_02096338
_0201AA8A:
	pop {r3, pc}
	thumb_func_end sub_0201AA7C

	thumb_func_start AllocFromHeap
AllocFromHeap: ; 0x0201AA8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0201AAC8 ; =0x021D1584
	mov r4, #0
	ldrh r2, [r0, #0x14]
	cmp r5, r2
	bhs _0201AAAE
	ldr r2, [r0]
	ldr r0, [r0, #0x10]
	add r3, r5, #0
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #4
	bl sub_0201AA38
	add r4, r0, #0
_0201AAAE:
	cmp r4, #0
	beq _0201AAC0
	ldr r0, _0201AAC8 ; =0x021D1584
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0201AAC4
_0201AAC0:
	bl sub_0201AA7C
_0201AAC4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0201AAC8: .word 0x021D1584
	thumb_func_end AllocFromHeap

	thumb_func_start AllocFromHeapAtEnd
AllocFromHeapAtEnd: ; 0x0201AACC
	push {r3, r4, r5, lr}
	ldr r2, _0201AB08 ; =0x021D1584
	add r5, r0, #0
	ldrh r0, [r2, #0x14]
	mov r4, #0
	cmp r5, r0
	bhs _0201AAEE
	ldr r0, [r2]
	ldr r2, [r2, #0x10]
	add r3, r5, #0
	ldrb r2, [r2, r5]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	sub r2, r4, #4
	bl sub_0201AA38
	add r4, r0, #0
_0201AAEE:
	cmp r4, #0
	beq _0201AB00
	ldr r0, _0201AB08 ; =0x021D1584
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0201AB04
_0201AB00:
	bl sub_0201AA7C
_0201AB04:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0201AB08: .word 0x021D1584
	thumb_func_end AllocFromHeapAtEnd

	thumb_func_start FreeToHeap
FreeToHeap: ; 0x0201AB0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	sub r0, r6, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0201AB7C ; =0x021D1584
	ldrh r1, [r0, #0x14]
	cmp r4, r1
	bhs _0201AB74
	ldr r1, [r0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r7, #0
	bne _0201AB32
	bl GF_AssertFail
_0201AB32:
	ldr r0, _0201AB7C ; =0x021D1584
	lsl r5, r4, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _0201AB44
	add r0, r4, #0
	bl sub_0201AC84
_0201AB44:
	ldr r0, _0201AB7C ; =0x021D1584
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _0201AB52
	bl GF_AssertFail
_0201AB52:
	ldr r0, _0201AB7C ; =0x021D1584
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r5]
	sub r0, r0, #1
	strh r0, [r1, r5]
	bl sub_020D3A38
	sub r6, #0x10
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020B5530
	add r0, r4, #0
	bl sub_020D3A4C
	pop {r3, r4, r5, r6, r7, pc}
_0201AB74:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201AB7C: .word 0x021D1584
	thumb_func_end FreeToHeap

	thumb_func_start FreeToHeapExplicit
FreeToHeapExplicit: ; 0x0201AB80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201AB92
	bl GF_AssertFail
_0201AB92:
	ldr r0, _0201ABE8 ; =0x021D1584
	ldrh r1, [r0, #0x14]
	cmp r5, r1
	bhs _0201ABE2
	ldr r1, [r0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	bne _0201ABAC
	bl GF_AssertFail
_0201ABAC:
	sub r0, r4, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	beq _0201ABBC
	bl GF_AssertFail
_0201ABBC:
	sub r4, #0x10
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020B5530
	ldr r0, _0201ABE8 ; =0x021D1584
	lsl r4, r5, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r4]
	cmp r0, #0
	bne _0201ABD6
	bl GF_AssertFail
_0201ABD6:
	ldr r0, _0201ABE8 ; =0x021D1584
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r4]
	sub r0, r0, #1
	strh r0, [r1, r4]
	pop {r4, r5, r6, pc}
_0201ABE2:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0201ABE8: .word 0x021D1584
	thumb_func_end FreeToHeapExplicit

	thumb_func_start sub_0201ABEC
sub_0201ABEC: ; 0x0201ABEC
	push {r3, lr}
	ldr r1, _0201AC10 ; =0x021D1584
	ldrh r2, [r1, #0x14]
	cmp r0, r2
	bhs _0201AC06
	ldr r2, [r1]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_020B556C
	pop {r3, pc}
_0201AC06:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_0201AC10: .word 0x021D1584
	thumb_func_end sub_0201ABEC

	thumb_func_start sub_0201AC14
sub_0201AC14: ; 0x0201AC14
	push {r4, lr}
	ldr r4, _0201AC34 ; =0x021D1584
	ldrh r3, [r4, #0x14]
	cmp r1, r3
	bhs _0201AC2E
	ldr r3, [r4]
	ldr r4, [r4, #0x10]
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl sub_020B59A4
	pop {r4, pc}
_0201AC2E:
	bl GF_AssertFail
	pop {r4, pc}
	.balign 4, 0
_0201AC34: .word 0x021D1584
	thumb_func_end sub_0201AC14

	thumb_func_start sub_0201AC38
sub_0201AC38: ; 0x0201AC38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020D3A9C
	cmp r0, #0x12
	bne _0201AC4A
	bl GF_AssertFail
_0201AC4A:
	add r0, r5, #0
	sub r0, #0x10
	bl sub_020B55A4
	add r4, #0x10
	cmp r0, r4
	blo _0201AC78
	sub r2, r5, #4
	ldr r0, _0201AC80 ; =0x021D1584
	ldr r2, [r2]
	ldr r1, [r0]
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x10]
	lsr r2, r2, #0x18
	ldrb r0, [r0, r2]
	sub r5, #0x10
	add r2, r4, #0
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_020B53D0
	pop {r3, r4, r5, pc}
_0201AC78:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_0201AC80: .word 0x021D1584
	thumb_func_end sub_0201AC38

	thumb_func_start sub_0201AC84
sub_0201AC84: ; 0x0201AC84
	mov r0, #1
	bx lr
	thumb_func_end sub_0201AC84

	thumb_func_start sub_0201AC88
sub_0201AC88: ; 0x0201AC88
	push {r3, r4, r5, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	add r5, r0, #0
	bl AllocFromHeap
	mov r2, #0x5a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	str r5, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201AC88

	thumb_func_start BgConfig_GetHeapId
BgConfig_GetHeapId: ; 0x0201ACAC
	ldr r0, [r0]
	bx lr
	thumb_func_end BgConfig_GetHeapId

	thumb_func_start sub_0201ACB0
sub_0201ACB0: ; 0x0201ACB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl sub_020CD9FC
	ldr r0, [r4, #8]
	bl sub_020CDA64
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0201ACE4 ; =0xC7FFFFFF
	and r1, r0
	str r1, [r2]
	ldr r1, [r2]
	asr r0, r0, #3
	and r0, r1
	str r0, [r2]
	bl sub_02022C54
	bl sub_02022CBC
	pop {r4, pc}
	nop
_0201ACE4: .word 0xC7FFFFFF
	thumb_func_end sub_0201ACB0

	thumb_func_start sub_0201ACE8
sub_0201ACE8: ; 0x0201ACE8
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _0201AD00
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	bl sub_020CD9FC
	bl sub_02022C54
	pop {r3, pc}
_0201AD00:
	ldr r0, [r2, #8]
	bl sub_020CDA64
	bl sub_02022CBC
	pop {r3, pc}
	thumb_func_end sub_0201ACE8

	thumb_func_start sub_0201AD0C
sub_0201AD0C: ; 0x0201AD0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r4, r2, #0
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	ldr r1, [sp, #8]
	ldr r6, [sp, #0x30]
	bl sub_0201BA88
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #7
	bls _0201AD2C
	b _0201B14C
_0201AD2C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201AD38: ; jump table
	.short _0201AD48 - _0201AD38 - 2 ; case 0
	.short _0201ADA0 - _0201AD38 - 2 ; case 1
	.short _0201ADF8 - _0201AD38 - 2 ; case 2
	.short _0201AE9A - _0201AD38 - 2 ; case 3
	.short _0201AF3C - _0201AD38 - 2 ; case 4
	.short _0201AF94 - _0201AD38 - 2 ; case 5
	.short _0201AFEC - _0201AD38 - 2 ; case 6
	.short _0201B0AC - _0201AD38 - 2 ; case 7
_0201AD48:
	mov r0, #1
	add r1, r6, #0
	bl sub_02022C60
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0xc]
	ldr r2, _0201B090 ; =0x04000008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0xc]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201AD96
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201AD96:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201ADA0:
	mov r0, #2
	add r1, r6, #0
	bl sub_02022C60
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x10]
	ldr r2, _0201B094 ; =0x0400000A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x10]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201ADEE
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201ADEE:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201ADF8:
	mov r0, #4
	add r1, r6, #0
	bl sub_02022C60
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201AE0E
	cmp r0, #1
	beq _0201AE30
	cmp r0, #2
	beq _0201AE52
_0201AE0E:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B098 ; =0x0400000C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AE72
_0201AE30:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B098 ; =0x0400000C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AE72
_0201AE52:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B098 ; =0x0400000C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201AE72:
	ldr r0, _0201B098 ; =0x0400000C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201AE90
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201AE90:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _0201B14C
_0201AE9A:
	mov r0, #8
	add r1, r6, #0
	bl sub_02022C60
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201AEB0
	cmp r0, #1
	beq _0201AED2
	cmp r0, #2
	beq _0201AEF4
_0201AEB0:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B09C ; =0x0400000E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AF14
_0201AED2:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B09C ; =0x0400000E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201AF14
_0201AEF4:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B09C ; =0x0400000E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201AF14:
	ldr r0, _0201B09C ; =0x0400000E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201AF32
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201AF32:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _0201B14C
_0201AF3C:
	mov r0, #1
	add r1, r6, #0
	bl sub_02022CC8
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x14]
	ldr r2, _0201B0A0 ; =0x04001008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201AF8A
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201AF8A:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201AF94:
	mov r0, #2
	add r1, r6, #0
	bl sub_02022CC8
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrb r3, [r4, #0x14]
	lsl r0, r0, #7
	mov ip, r0
	ldr r2, _0201B0A4 ; =0x0400100A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	lsl r3, r3, #0xd
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	mov r1, ip
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201AFE2
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _0201B14C
_0201AFE2:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _0201B14C
_0201AFEC:
	mov r0, #4
	add r1, r6, #0
	bl sub_02022CC8
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201B002
	cmp r0, #1
	beq _0201B024
	cmp r0, #2
	beq _0201B046
_0201B002:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B0A8 ; =0x0400100C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B066
_0201B024:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B0A8 ; =0x0400100C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B066
_0201B046:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B0A8 ; =0x0400100C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201B066:
	ldr r0, _0201B0A8 ; =0x0400100C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201B084
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201B084:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _0201B14C
	nop
_0201B090: .word 0x04000008
_0201B094: .word 0x0400000A
_0201B098: .word 0x0400000C
_0201B09C: .word 0x0400000E
_0201B0A0: .word 0x04001008
_0201B0A4: .word 0x0400100A
_0201B0A8: .word 0x0400100C
_0201B0AC:
	mov r0, #8
	add r1, r6, #0
	bl sub_02022CC8
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0201B0C2
	cmp r0, #1
	beq _0201B0E4
	cmp r0, #2
	beq _0201B106
_0201B0C2:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B1E0 ; =0x0400100E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B126
_0201B0E4:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201B1E0 ; =0x0400100E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201B126
_0201B106:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201B1E0 ; =0x0400100E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201B126:
	ldr r0, _0201B1E0 ; =0x0400100E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201B144
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _0201B14C
_0201B144:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
_0201B14C:
	ldr r0, [sp, #4]
	mov r1, #0x2c
	add r5, r0, #0
	ldr r0, [sp]
	mul r5, r1
	add r2, r0, r5
	mov r3, #0
	mov r0, #1
	strh r3, [r2, #0x20]
	lsl r0, r0, #0xc
	str r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r3, [r2, #0x2c]
	str r3, [r2, #0x30]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0201B194
	ldr r0, [sp]
	ldr r6, [sp]
	ldr r0, [r0]
	add r6, #8
	bl AllocFromHeap
	str r0, [r6, r5]
	ldr r1, [r6, r5]
	ldr r2, [r4, #8]
	mov r0, #0
	bl sub_020D4790
	ldr r0, [sp]
	ldr r2, [r4, #8]
	add r1, r0, r5
	str r2, [r1, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0x10]
	b _0201B19A
_0201B194:
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
_0201B19A:
	ldr r0, [sp]
	ldrb r1, [r4, #0x10]
	add r0, r0, r5
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #8]
	strb r1, [r0, #0x1c]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #0x1e]
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _0201B1BC
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	bne _0201B1BC
	mov r1, #0x20
	strb r1, [r0, #0x1f]
	b _0201B1C4
_0201B1BC:
	ldr r0, [sp]
	mov r1, #0x40
	add r0, r0, r5
	strb r1, [r0, #0x1f]
_0201B1C4:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4]
	mov r2, #0
	bl sub_0201BC8C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4, #4]
	mov r2, #3
	bl sub_0201BC8C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0201B1E0: .word 0x0400100E
	thumb_func_end sub_0201AD0C

	thumb_func_start sub_0201B1E4
sub_0201B1E4: ; 0x0201B1E4
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl sub_0201AD0C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201B1E4

	thumb_func_start sub_0201B1F4
sub_0201B1F4: ; 0x0201B1F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r3, #0
	cmp r4, #0
	bne _0201B230
	add r3, r6, #0
	mov r1, #0x2c
	add r2, r7, #0
	mul r2, r1
	add r3, #0x1e
	add r1, r6, r2
	strb r5, [r3, r2]
	mov ip, r1
	ldrb r1, [r1, #0x1c]
	cmp r1, #0
	bne _0201B228
	ldrb r1, [r3, r2]
	cmp r1, #0
	bne _0201B228
	mov r1, #0x20
	mov r2, ip
	strb r1, [r2, #0x1f]
	b _0201B262
_0201B228:
	mov r1, #0x40
	add r2, r6, r2
	strb r1, [r2, #0x1f]
	b _0201B262
_0201B230:
	cmp r4, #3
	bne _0201B262
	mov r0, #0x2c
	mul r0, r7
	str r0, [sp]
	add r0, r6, r0
	strb r5, [r0, #0x1c]
	ldrb r0, [r0, #0x1d]
	add r1, r5, #0
	bl sub_0201BA88
	cmp r5, #0
	bne _0201B25A
	ldr r1, [sp]
	add r2, r6, r1
	ldrb r1, [r2, #0x1e]
	cmp r1, #0
	bne _0201B25A
	mov r1, #0x20
	strb r1, [r2, #0x1f]
	b _0201B262
_0201B25A:
	ldr r2, [sp]
	mov r1, #0x40
	add r2, r6, r2
	strb r1, [r2, #0x1f]
_0201B262:
	cmp r7, #7
	bls _0201B26A
	bl sub_0201BA78
_0201B26A:
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201B276: ; jump table
	.short _0201B286 - _0201B276 - 2 ; case 0
	.short _0201B306 - _0201B276 - 2 ; case 1
	.short _0201B386 - _0201B276 - 2 ; case 2
	.short _0201B4F6 - _0201B276 - 2 ; case 3
	.short _0201B680 - _0201B276 - 2 ; case 4
	.short _0201B700 - _0201B276 - 2 ; case 5
	.short _0201B780 - _0201B276 - 2 ; case 6
	.short _0201B90C - _0201B276 - 2 ; case 7
_0201B286:
	ldr r1, _0201B59C ; =0x04000008
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0x1e]
	bne _0201B2A2
	ldrh r2, [r1, #0x1e]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0x1e]
	b _0201B2C8
_0201B2A2:
	cmp r4, #2
	bne _0201B2B6
	ldrh r2, [r1, #0x1e]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0x1e]
	b _0201B2C8
_0201B2B6:
	cmp r4, #3
	bne _0201B2C8
	ldrh r3, [r1, #0x1e]
	ldr r2, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0x1e]
_0201B2C8:
	add r0, sp, #4
	ldrh r3, [r0, #0x1e]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B59C ; =0x04000008
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B306:
	ldr r1, _0201B5A8 ; =0x0400000A
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0x1c]
	bne _0201B322
	ldrh r2, [r1, #0x1c]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0x1c]
	b _0201B348
_0201B322:
	cmp r4, #2
	bne _0201B336
	ldrh r2, [r1, #0x1c]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0x1c]
	b _0201B348
_0201B336:
	cmp r4, #3
	bne _0201B348
	ldrh r3, [r1, #0x1c]
	ldr r2, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0x1c]
_0201B348:
	add r0, sp, #4
	ldrh r3, [r0, #0x1c]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B5A8 ; =0x0400000A
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B386:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B39A
	cmp r2, #1
	beq _0201B40E
	cmp r2, #2
	beq _0201B482
_0201B39A:
	ldr r2, _0201B5AC ; =0x0400000C
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #0x1a]
	bne _0201B3B6
	ldrh r3, [r2, #0x1a]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #0x1a]
	b _0201B3DC
_0201B3B6:
	cmp r4, #2
	bne _0201B3CA
	ldrh r3, [r2, #0x1a]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1a]
	b _0201B3DC
_0201B3CA:
	cmp r4, #3
	bne _0201B3DC
	ldrh r4, [r2, #0x1a]
	ldr r3, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #0x1a]
_0201B3DC:
	add r0, sp, #4
	ldrh r3, [r0, #0x1a]
	add r1, r6, r1
	ldr r6, _0201B5AC ; =0x0400000C
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B40E:
	ldr r1, _0201B5AC ; =0x0400000C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x18]
	bne _0201B42A
	ldrh r1, [r2, #0x18]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x18]
	b _0201B450
_0201B42A:
	cmp r4, #2
	bne _0201B43E
	ldrh r1, [r2, #0x18]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x18]
	b _0201B450
_0201B43E:
	cmp r4, #3
	bne _0201B450
	ldrh r3, [r2, #0x18]
	ldr r1, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x18]
_0201B450:
	add r0, sp, #4
	ldrh r3, [r0, #0x18]
	ldr r6, _0201B5AC ; =0x0400000C
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B482:
	ldr r1, _0201B5AC ; =0x0400000C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x16]
	bne _0201B49E
	ldrh r1, [r2, #0x16]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x16]
	b _0201B4C4
_0201B49E:
	cmp r4, #2
	bne _0201B4B2
	ldrh r1, [r2, #0x16]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r5, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x16]
	b _0201B4C4
_0201B4B2:
	cmp r4, #3
	bne _0201B4C4
	ldrh r3, [r2, #0x16]
	ldr r1, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x16]
_0201B4C4:
	add r0, sp, #4
	ldrh r3, [r0, #0x16]
	ldr r6, _0201B5AC ; =0x0400000C
	add sp, #0x24
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B4F6:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B50C
	cmp r2, #1
	beq _0201B580
	cmp r2, #2
	bne _0201B50C
	b _0201B60C
_0201B50C:
	ldr r2, _0201B5B0 ; =0x0400000E
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #0x14]
	bne _0201B528
	ldrh r3, [r2, #0x14]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #0x14]
	b _0201B54E
_0201B528:
	cmp r4, #2
	bne _0201B53C
	ldrh r3, [r2, #0x14]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x14]
	b _0201B54E
_0201B53C:
	cmp r4, #3
	bne _0201B54E
	ldrh r4, [r2, #0x14]
	ldr r3, _0201B5A4 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #0x14]
_0201B54E:
	add r0, sp, #4
	ldrh r3, [r0, #0x14]
	add r1, r6, r1
	ldr r6, _0201B5B0 ; =0x0400000E
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B580:
	ldr r1, _0201B5B0 ; =0x0400000E
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x12]
	bne _0201B5B4
	ldrh r1, [r2, #0x12]
	ldr r0, _0201B5A0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x12]
	b _0201B5DA
	.balign 4, 0
_0201B59C: .word 0x04000008
_0201B5A0: .word 0xFFFFE0FF
_0201B5A4: .word 0xFFFF3FFF
_0201B5A8: .word 0x0400000A
_0201B5AC: .word 0x0400000C
_0201B5B0: .word 0x0400000E
_0201B5B4:
	cmp r4, #2
	bne _0201B5C8
	ldrh r1, [r2, #0x12]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x12]
	b _0201B5DA
_0201B5C8:
	cmp r4, #3
	bne _0201B5DA
	ldrh r3, [r2, #0x12]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x12]
_0201B5DA:
	add r0, sp, #4
	ldrh r3, [r0, #0x12]
	ldr r6, _0201B8CC ; =0x0400000E
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B60C:
	ldr r1, _0201B8CC ; =0x0400000E
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #0x10]
	bne _0201B628
	ldrh r1, [r2, #0x10]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x10]
	b _0201B64E
_0201B628:
	cmp r4, #2
	bne _0201B63C
	ldrh r1, [r2, #0x10]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r5, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #0x10]
	b _0201B64E
_0201B63C:
	cmp r4, #3
	bne _0201B64E
	ldrh r3, [r2, #0x10]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #0x10]
_0201B64E:
	add r0, sp, #4
	ldrh r3, [r0, #0x10]
	ldr r6, _0201B8CC ; =0x0400000E
	add sp, #0x24
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B680:
	ldr r1, _0201B8D4 ; =0x04001008
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0xe]
	bne _0201B69C
	ldrh r2, [r1, #0xe]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0xe]
	b _0201B6C2
_0201B69C:
	cmp r4, #2
	bne _0201B6B0
	ldrh r2, [r1, #0xe]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0xe]
	b _0201B6C2
_0201B6B0:
	cmp r4, #3
	bne _0201B6C2
	ldrh r3, [r1, #0xe]
	ldr r2, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0xe]
_0201B6C2:
	add r0, sp, #4
	ldrh r3, [r0, #0xe]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B8D4 ; =0x04001008
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B700:
	ldr r1, _0201B8D8 ; =0x0400100A
	cmp r4, #1
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1, #0xc]
	bne _0201B71C
	ldrh r2, [r1, #0xc]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r2, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r2
	strh r0, [r1, #0xc]
	b _0201B742
_0201B71C:
	cmp r4, #2
	bne _0201B730
	ldrh r2, [r1, #0xc]
	mov r0, #0x3c
	bic r2, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r2
	strh r0, [r1, #0xc]
	b _0201B742
_0201B730:
	cmp r4, #3
	bne _0201B742
	ldrh r3, [r1, #0xc]
	ldr r2, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r1, #0xc]
_0201B742:
	add r0, sp, #4
	ldrh r3, [r0, #0xc]
	add sp, #0x24
	lsl r0, r3, #0x12
	lsr r4, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r7
	add r0, r6, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	mov r6, #0x43
	lsl r1, r0, #7
	ldr r0, _0201B8D8 ; =0x0400100A
	lsl r5, r5, #0xe
	ldrh r7, [r0]
	lsl r4, r4, #0xd
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
_0201B780:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B794
	cmp r2, #1
	beq _0201B808
	cmp r2, #2
	beq _0201B87C
_0201B794:
	ldr r2, _0201B8DC ; =0x0400100C
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #0xa]
	bne _0201B7B0
	ldrh r3, [r2, #0xa]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #0xa]
	b _0201B7D6
_0201B7B0:
	cmp r4, #2
	bne _0201B7C4
	ldrh r3, [r2, #0xa]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xa]
	b _0201B7D6
_0201B7C4:
	cmp r4, #3
	bne _0201B7D6
	ldrh r4, [r2, #0xa]
	ldr r3, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #0xa]
_0201B7D6:
	add r0, sp, #4
	ldrh r3, [r0, #0xa]
	add r1, r6, r1
	ldr r6, _0201B8DC ; =0x0400100C
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B808:
	ldr r1, _0201B8DC ; =0x0400100C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #8]
	bne _0201B824
	ldrh r1, [r2, #8]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #8]
	b _0201B84A
_0201B824:
	cmp r4, #2
	bne _0201B838
	ldrh r1, [r2, #8]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #8]
	b _0201B84A
_0201B838:
	cmp r4, #3
	bne _0201B84A
	ldrh r3, [r2, #8]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #8]
_0201B84A:
	add r0, sp, #4
	ldrh r3, [r0, #8]
	ldr r6, _0201B8DC ; =0x0400100C
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B87C:
	ldr r1, _0201B8DC ; =0x0400100C
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #6]
	bne _0201B898
	ldrh r1, [r2, #6]
	ldr r0, _0201B8D0 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #6]
	b _0201B8BE
_0201B898:
	cmp r4, #2
	bne _0201B8AC
	ldrh r1, [r2, #6]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r5, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #6]
	b _0201B8BE
_0201B8AC:
	cmp r4, #3
	bne _0201B8BE
	ldrh r3, [r2, #6]
	ldr r1, _0201B8C8 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #6]
_0201B8BE:
	add r0, sp, #4
	ldrh r3, [r0, #6]
	ldr r6, _0201B8DC ; =0x0400100C
	b _0201B8E0
	nop
_0201B8C8: .word 0xFFFF3FFF
_0201B8CC: .word 0x0400000E
_0201B8D0: .word 0xFFFFE0FF
_0201B8D4: .word 0x04001008
_0201B8D8: .word 0x0400100A
_0201B8DC: .word 0x0400100C
_0201B8E0:
	add sp, #0x24
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B90C:
	mov r1, #0x2c
	mul r1, r7
	add r2, r6, r1
	ldrb r2, [r2, #0x1c]
	cmp r2, #0
	beq _0201B920
	cmp r2, #1
	beq _0201B994
	cmp r2, #2
	beq _0201BA08
_0201B920:
	ldr r2, _0201BA7C ; =0x0400100E
	cmp r4, #1
	ldrh r3, [r2]
	add r2, sp, #4
	strh r3, [r2, #4]
	bne _0201B93C
	ldrh r3, [r2, #4]
	ldr r0, _0201BA80 ; =0xFFFFE0FF
	and r3, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r3
	strh r0, [r2, #4]
	b _0201B962
_0201B93C:
	cmp r4, #2
	bne _0201B950
	ldrh r3, [r2, #4]
	mov r0, #0x3c
	bic r3, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #4]
	b _0201B962
_0201B950:
	cmp r4, #3
	bne _0201B962
	ldrh r4, [r2, #4]
	ldr r3, _0201BA84 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r3, r4
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r2, #4]
_0201B962:
	add r0, sp, #4
	ldrh r3, [r0, #4]
	add r1, r6, r1
	ldr r6, _0201BA7C ; =0x0400100E
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	ldrb r4, [r1, #0x1e]
	lsl r0, r3, #0x13
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1b
	lsl r1, r0, #8
	lsl r0, r4, #7
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #2
	orr r0, r1
	orr r0, r2
	add sp, #0x24
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201B994:
	ldr r1, _0201BA7C ; =0x0400100E
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2, #2]
	bne _0201B9B0
	ldrh r1, [r2, #2]
	ldr r0, _0201BA80 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #2]
	b _0201B9D6
_0201B9B0:
	cmp r4, #2
	bne _0201B9C4
	ldrh r1, [r2, #2]
	mov r0, #0x3c
	bic r1, r0
	lsl r0, r5, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2, #2]
	b _0201B9D6
_0201B9C4:
	cmp r4, #3
	bne _0201B9D6
	ldrh r3, [r2, #2]
	ldr r1, _0201BA84 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #2]
_0201B9D6:
	add r0, sp, #4
	ldrh r3, [r0, #2]
	ldr r6, _0201BA7C ; =0x0400100E
	add sp, #0x24
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0201BA08:
	ldr r1, _0201BA7C ; =0x0400100E
	add r2, sp, #4
	ldrh r1, [r1]
	cmp r4, #1
	strh r1, [r2]
	bne _0201BA24
	ldrh r1, [r2]
	ldr r0, _0201BA80 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2]
	b _0201BA4A
_0201BA24:
	cmp r4, #2
	bne _0201BA38
	ldrh r1, [r2]
	mov r0, #0x38
	bic r1, r0
	lsl r0, r5, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	strh r0, [r2]
	b _0201BA4A
_0201BA38:
	cmp r4, #3
	bne _0201BA4A
	ldrh r3, [r2]
	ldr r1, _0201BA84 ; =0xFFFF3FFF
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2]
_0201BA4A:
	add r0, sp, #4
	ldrh r3, [r0]
	ldr r6, _0201BA7C ; =0x0400100E
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	thumb_func_end sub_0201B1F4

	thumb_func_start sub_0201BA78
sub_0201BA78: ; 0x0201BA78
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0201BA7C: .word 0x0400100E
_0201BA80: .word 0xFFFFE0FF
_0201BA84: .word 0xFFFF3FFF
	thumb_func_end sub_0201BA78

	thumb_func_start sub_0201BA88
sub_0201BA88: ; 0x0201BA88
	cmp r1, #0
	beq _0201BA96
	cmp r1, #1
	beq _0201BAB6
	cmp r1, #2
	beq _0201BAD6
	b _0201BAF6
_0201BA96:
	cmp r0, #1
	bne _0201BA9E
	mov r0, #0
	bx lr
_0201BA9E:
	cmp r0, #2
	bne _0201BAA6
	mov r0, #2
	bx lr
_0201BAA6:
	cmp r0, #3
	bne _0201BAAE
	mov r0, #1
	bx lr
_0201BAAE:
	cmp r0, #4
	bne _0201BAF6
	mov r0, #3
	bx lr
_0201BAB6:
	cmp r0, #0
	bne _0201BABE
	mov r0, #0
	bx lr
_0201BABE:
	cmp r0, #1
	bne _0201BAC6
	mov r0, #1
	bx lr
_0201BAC6:
	cmp r0, #4
	bne _0201BACE
	mov r0, #2
	bx lr
_0201BACE:
	cmp r0, #5
	bne _0201BAF6
	mov r0, #3
	bx lr
_0201BAD6:
	cmp r0, #0
	bne _0201BADE
	mov r0, #0
	bx lr
_0201BADE:
	cmp r0, #1
	bne _0201BAE6
	mov r0, #1
	bx lr
_0201BAE6:
	cmp r0, #4
	bne _0201BAEE
	mov r0, #2
	bx lr
_0201BAEE:
	cmp r0, #5
	bne _0201BAF6
	mov r0, #3
	bx lr
_0201BAF6:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201BA88

	thumb_func_start sub_0201BAFC
sub_0201BAFC: ; 0x0201BAFC
	cmp r0, #5
	bhi _0201BB4A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201BB0C: ; jump table
	.short _0201BB18 - _0201BB0C - 2 ; case 0
	.short _0201BB20 - _0201BB0C - 2 ; case 1
	.short _0201BB28 - _0201BB0C - 2 ; case 2
	.short _0201BB32 - _0201BB0C - 2 ; case 3
	.short _0201BB3C - _0201BB0C - 2 ; case 4
	.short _0201BB44 - _0201BB0C - 2 ; case 5
_0201BB18:
	mov r0, #0x10
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_0201BB20:
	mov r0, #0x20
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_0201BB28:
	mov r0, #0x20
	strb r0, [r1]
	mov r0, #0x40
	strb r0, [r2]
	bx lr
_0201BB32:
	mov r0, #0x40
	strb r0, [r1]
	mov r0, #0x20
	strb r0, [r2]
	bx lr
_0201BB3C:
	mov r0, #0x40
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_0201BB44:
	mov r0, #0x80
	strb r0, [r1]
	strb r0, [r2]
_0201BB4A:
	bx lr
	thumb_func_end sub_0201BAFC

	thumb_func_start sub_0201BB4C
sub_0201BB4C: ; 0x0201BB4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0x2c
	add r5, r1, #0
	mul r5, r2
	add r4, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0201BB66
	bl FreeToHeap
	mov r0, #0
	str r0, [r4, r5]
_0201BB66:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201BB4C

	thumb_func_start sub_0201BB68
sub_0201BB68: ; 0x0201BB68
	cmp r0, #7
	bhi _0201BC06
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201BB78: ; jump table
	.short _0201BB88 - _0201BB78 - 2 ; case 0
	.short _0201BB98 - _0201BB78 - 2 ; case 1
	.short _0201BBA8 - _0201BB78 - 2 ; case 2
	.short _0201BBB8 - _0201BB78 - 2 ; case 3
	.short _0201BBC8 - _0201BB78 - 2 ; case 4
	.short _0201BBD8 - _0201BB78 - 2 ; case 5
	.short _0201BBE8 - _0201BB78 - 2 ; case 6
	.short _0201BBF8 - _0201BB78 - 2 ; case 7
_0201BB88:
	ldr r2, _0201BC08 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BB98:
	ldr r2, _0201BC0C ; =0x0400000A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BBA8:
	ldr r2, _0201BC10 ; =0x0400000C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BBB8:
	ldr r2, _0201BC14 ; =0x0400000E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BBC8:
	ldr r2, _0201BC18 ; =0x04001008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BBD8:
	ldr r2, _0201BC1C ; =0x0400100A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BBE8:
	ldr r2, _0201BC20 ; =0x0400100C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_0201BBF8:
	ldr r2, _0201BC24 ; =0x0400100E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
_0201BC06:
	bx lr
	.balign 4, 0
_0201BC08: .word 0x04000008
_0201BC0C: .word 0x0400000A
_0201BC10: .word 0x0400000C
_0201BC14: .word 0x0400000E
_0201BC18: .word 0x04001008
_0201BC1C: .word 0x0400100A
_0201BC20: .word 0x0400100C
_0201BC24: .word 0x0400100E
	thumb_func_end sub_0201BB68

	thumb_func_start sub_0201BC28
sub_0201BC28: ; 0x0201BC28
	push {r3, lr}
	cmp r0, #7
	bhi _0201BC88
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201BC3A: ; jump table
	.short _0201BC4A - _0201BC3A - 2 ; case 0
	.short _0201BC52 - _0201BC3A - 2 ; case 1
	.short _0201BC5A - _0201BC3A - 2 ; case 2
	.short _0201BC62 - _0201BC3A - 2 ; case 3
	.short _0201BC6A - _0201BC3A - 2 ; case 4
	.short _0201BC72 - _0201BC3A - 2 ; case 5
	.short _0201BC7A - _0201BC3A - 2 ; case 6
	.short _0201BC82 - _0201BC3A - 2 ; case 7
_0201BC4A:
	mov r0, #1
	bl sub_02022C60
	pop {r3, pc}
_0201BC52:
	mov r0, #2
	bl sub_02022C60
	pop {r3, pc}
_0201BC5A:
	mov r0, #4
	bl sub_02022C60
	pop {r3, pc}
_0201BC62:
	mov r0, #8
	bl sub_02022C60
	pop {r3, pc}
_0201BC6A:
	mov r0, #1
	bl sub_02022CC8
	pop {r3, pc}
_0201BC72:
	mov r0, #2
	bl sub_02022CC8
	pop {r3, pc}
_0201BC7A:
	mov r0, #4
	bl sub_02022CC8
	pop {r3, pc}
_0201BC82:
	mov r0, #8
	bl sub_02022CC8
_0201BC88:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_0201BC28

	thumb_func_start sub_0201BC8C
sub_0201BC8C: ; 0x0201BC8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r0, #0x2c
	add r6, r5, #0
	mul r6, r0
	add r0, r4, #0
	add r0, #8
	add r1, r2, #0
	add r2, r3, #0
	add r0, r0, r6
	bl sub_0201BE38
	add r0, r4, r6
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	cmp r5, #7
	bls _0201BCB2
	b _0201BDC8
_0201BCB2:
	add r2, r5, r5
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201BCBE: ; jump table
	.short _0201BCCE - _0201BCBE - 2 ; case 0
	.short _0201BCE4 - _0201BCBE - 2 ; case 1
	.short _0201BCFA - _0201BCBE - 2 ; case 2
	.short _0201BD24 - _0201BCBE - 2 ; case 3
	.short _0201BD4E - _0201BCBE - 2 ; case 4
	.short _0201BD64 - _0201BCBE - 2 ; case 5
	.short _0201BD7A - _0201BCBE - 2 ; case 6
	.short _0201BDA2 - _0201BCBE - 2 ; case 7
_0201BCCE:
	ldr r2, _0201BDCC ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _0201BDD0 ; =0x04000010
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BCE4:
	ldr r2, _0201BDCC ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _0201BDD4 ; =0x04000014
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BCFA:
	add r2, r4, #0
	add r2, #0x74
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201BD1A
	ldr r2, _0201BDCC ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _0201BDD8 ; =0x04000018
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BD1A:
	add r0, r4, #0
	mov r1, #2
	bl sub_0201BF18
	pop {r4, r5, r6, pc}
_0201BD24:
	add r2, r4, #0
	add r2, #0xa0
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201BD44
	ldr r2, _0201BDCC ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _0201BDDC ; =0x0400001C
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BD44:
	add r0, r4, #0
	mov r1, #3
	bl sub_0201BF18
	pop {r4, r5, r6, pc}
_0201BD4E:
	ldr r2, _0201BDCC ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _0201BDE0 ; =0x04001010
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BD64:
	ldr r2, _0201BDCC ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _0201BDE4 ; =0x04001014
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BD7A:
	mov r2, #0x49
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _0201BD98
	add r2, #0xdb
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _0201BDE8 ; =0x01FF0000
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201BDEC ; =0x04001018
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BD98:
	add r0, r4, #0
	mov r1, #6
	bl sub_0201BF18
	pop {r4, r5, r6, pc}
_0201BDA2:
	mov r2, #0x15
	lsl r2, r2, #4
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _0201BDC0
	add r2, #0xaf
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _0201BDE8 ; =0x01FF0000
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201BDF0 ; =0x0400101C
	str r1, [r0]
	pop {r4, r5, r6, pc}
_0201BDC0:
	add r0, r4, #0
	mov r1, #7
	bl sub_0201BF18
_0201BDC8:
	pop {r4, r5, r6, pc}
	nop
_0201BDCC: .word 0x000001FF
_0201BDD0: .word 0x04000010
_0201BDD4: .word 0x04000014
_0201BDD8: .word 0x04000018
_0201BDDC: .word 0x0400001C
_0201BDE0: .word 0x04001010
_0201BDE4: .word 0x04001014
_0201BDE8: .word 0x01FF0000
_0201BDEC: .word 0x04001018
_0201BDF0: .word 0x0400101C
	thumb_func_end sub_0201BC8C

	thumb_func_start sub_0201BDF4
sub_0201BDF4: ; 0x0201BDF4
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201BDF4

	thumb_func_start sub_0201BE00
sub_0201BE00: ; 0x0201BE00
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x18]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201BE00

	thumb_func_start sub_0201BE0C
sub_0201BE0C: ; 0x0201BE0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201BE38
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201BE7C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201BE0C

	thumb_func_start sub_0201BE38
sub_0201BE38: ; 0x0201BE38
	cmp r1, #5
	bhi _0201BE7A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201BE48: ; jump table
	.short _0201BE54 - _0201BE48 - 2 ; case 0
	.short _0201BE58 - _0201BE48 - 2 ; case 1
	.short _0201BE60 - _0201BE48 - 2 ; case 2
	.short _0201BE68 - _0201BE48 - 2 ; case 3
	.short _0201BE6C - _0201BE48 - 2 ; case 4
	.short _0201BE74 - _0201BE48 - 2 ; case 5
_0201BE54:
	str r2, [r0, #0xc]
	bx lr
_0201BE58:
	ldr r1, [r0, #0xc]
	add r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_0201BE60:
	ldr r1, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_0201BE68:
	str r2, [r0, #0x10]
	bx lr
_0201BE6C:
	ldr r1, [r0, #0x10]
	add r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
_0201BE74:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
_0201BE7A:
	bx lr
	thumb_func_end sub_0201BE38

	thumb_func_start sub_0201BE7C
sub_0201BE7C: ; 0x0201BE7C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	cmp r4, #7
	bhi _0201BF04
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0201BE98: ; jump table
	.short _0201BF04 - _0201BE98 - 2 ; case 0
	.short _0201BF04 - _0201BE98 - 2 ; case 1
	.short _0201BEA8 - _0201BE98 - 2 ; case 2
	.short _0201BEC0 - _0201BE98 - 2 ; case 3
	.short _0201BF04 - _0201BE98 - 2 ; case 4
	.short _0201BF04 - _0201BE98 - 2 ; case 5
	.short _0201BED8 - _0201BE98 - 2 ; case 6
	.short _0201BEF0 - _0201BE98 - 2 ; case 7
_0201BEA8:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _0201BF08 ; =0x04000020
	bl sub_020CF0AC
	add sp, #8
	pop {r3, r4, r5, pc}
_0201BEC0:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _0201BF0C ; =0x04000030
	bl sub_020CF0AC
	add sp, #8
	pop {r3, r4, r5, pc}
_0201BED8:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _0201BF10 ; =0x04001020
	bl sub_020CF0AC
	add sp, #8
	pop {r3, r4, r5, pc}
_0201BEF0:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _0201BF14 ; =0x04001030
	bl sub_020CF0AC
_0201BF04:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0201BF08: .word 0x04000020
_0201BF0C: .word 0x04000030
_0201BF10: .word 0x04001020
_0201BF14: .word 0x04001030
	thumb_func_end sub_0201BE7C

	thumb_func_start sub_0201BF18
sub_0201BF18: ; 0x0201BF18
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #4
	add r3, r2, #0
	str r1, [sp]
	bl sub_0201FECC
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	str r3, [sp]
	bl sub_0201BE7C
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201BF18

	thumb_func_start sub_0201BF44
sub_0201BF44: ; 0x0201BF44
	push {r3, r4, r5, lr}
	cmp r2, #0
	bne _0201BF50
	bl MI_UncompressLZ8
	pop {r3, r4, r5, pc}
_0201BF50:
	mov r4, #3
	add r3, r0, #0
	tst r3, r4
	bne _0201BF76
	add r3, r1, #0
	tst r3, r4
	bne _0201BF76
	lsl r3, r2, #0x10
	lsr r3, r3, #0x10
	lsr r4, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r4
	mov r3, #0x1e
	ror r5, r3
	add r3, r4, r5
	bne _0201BF76
	bl MIi_CpuCopy32
	pop {r3, r4, r5, pc}
_0201BF76:
	bl MIi_CpuCopy16
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201BF44

	thumb_func_start BgCommitTilemapBufferToVram
BgCommitTilemapBufferToVram: ; 0x0201BF7C
	push {r3, lr}
	mov r2, #0x2c
	mul r2, r1
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end BgCommitTilemapBufferToVram

	thumb_func_start BgCopyOrUncompressTilemapBufferRangeToVram
BgCopyOrUncompressTilemapBufferRangeToVram: ; 0x0201BF94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _0201C002
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r7
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201BFD2
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r3, #0
	bl sub_0201BF44
	add r3, r5, r7
	ldr r2, [r3, #0x10]
	ldr r1, [sp, #4]
	ldr r3, [r3, #0xc]
	add r0, r4, #0
	lsl r2, r2, #1
	bl sub_0201C014
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0201BFD2:
	ldr r0, [r6]
	lsr r7, r0, #8
	ldr r0, [r5]
	add r1, r7, #0
	bl AllocFromHeapAtEnd
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0201BF44
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #1
	add r3, r7, #0
	bl sub_0201C014
	add r0, r5, #0
	bl FreeToHeap
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0201C002:
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #1
	bl sub_0201C014
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end BgCopyOrUncompressTilemapBufferRangeToVram

	thumb_func_start sub_0201C014
sub_0201C014: ; 0x0201C014
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	bl DC_FlushRange
	cmp r7, #7
	bhi _0201C0A4
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201C036: ; jump table
	.short _0201C046 - _0201C036 - 2 ; case 0
	.short _0201C052 - _0201C036 - 2 ; case 1
	.short _0201C05E - _0201C036 - 2 ; case 2
	.short _0201C06A - _0201C036 - 2 ; case 3
	.short _0201C076 - _0201C036 - 2 ; case 4
	.short _0201C082 - _0201C036 - 2 ; case 5
	.short _0201C08E - _0201C036 - 2 ; case 6
	.short _0201C09A - _0201C036 - 2 ; case 7
_0201C046:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020CFF24
	pop {r3, r4, r5, r6, r7, pc}
_0201C052:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020CFFE4
	pop {r3, r4, r5, r6, r7, pc}
_0201C05E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D00A4
	pop {r3, r4, r5, r6, r7, pc}
_0201C06A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0164
	pop {r3, r4, r5, r6, r7, pc}
_0201C076:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020CFF84
	pop {r3, r4, r5, r6, r7, pc}
_0201C082:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0044
	pop {r3, r4, r5, r6, r7, pc}
_0201C08E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0104
	pop {r3, r4, r5, r6, r7, pc}
_0201C09A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D01C4
_0201C0A4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201C014

	thumb_func_start BG_LoadScreenTilemapData
BG_LoadScreenTilemapData: ; 0x0201C0A8
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	ldr r1, [r1, #8]
	add r2, r3, #0
	bl sub_0201BF44
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end BG_LoadScreenTilemapData

	thumb_func_start BG_LoadCharTilesData
BG_LoadCharTilesData: ; 0x0201C0C0
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0x2c
	mul r4, r1
	add r4, r0, r4
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _0201C0DE
	ldr r4, [sp, #0x10]
	lsl r4, r4, #5
	str r4, [sp]
	bl sub_0201C0EC
	add sp, #4
	pop {r3, r4, pc}
_0201C0DE:
	ldr r4, [sp, #0x10]
	lsl r4, r4, #6
	str r4, [sp]
	bl sub_0201C0EC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end BG_LoadCharTilesData

	thumb_func_start sub_0201C0EC
sub_0201C0EC: ; 0x0201C0EC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _0201C124
	ldr r1, [r5]
	ldr r0, [r0]
	lsr r4, r1, #8
	add r1, r4, #0
	bl AllocFromHeapAtEnd
	add r6, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201BF44
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r4, #0
	bl sub_0201C130
	add r0, r6, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
_0201C124:
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0201C130
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201C0EC

	thumb_func_start sub_0201C130
sub_0201C130: ; 0x0201C130
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	bl DC_FlushRange
	cmp r7, #7
	bhi _0201C1C0
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201C152: ; jump table
	.short _0201C162 - _0201C152 - 2 ; case 0
	.short _0201C16E - _0201C152 - 2 ; case 1
	.short _0201C17A - _0201C152 - 2 ; case 2
	.short _0201C186 - _0201C152 - 2 ; case 3
	.short _0201C192 - _0201C152 - 2 ; case 4
	.short _0201C19E - _0201C152 - 2 ; case 5
	.short _0201C1AA - _0201C152 - 2 ; case 6
	.short _0201C1B6 - _0201C152 - 2 ; case 7
_0201C162:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0224
	pop {r3, r4, r5, r6, r7, pc}
_0201C16E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D02E4
	pop {r3, r4, r5, r6, r7, pc}
_0201C17A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D03A4
	pop {r3, r4, r5, r6, r7, pc}
_0201C186:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0464
	pop {r3, r4, r5, r6, r7, pc}
_0201C192:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0284
	pop {r3, r4, r5, r6, r7, pc}
_0201C19E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0344
	pop {r3, r4, r5, r6, r7, pc}
_0201C1AA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D0404
	pop {r3, r4, r5, r6, r7, pc}
_0201C1B6:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020D04C4
_0201C1C0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201C130

	thumb_func_start sub_0201C1C4
sub_0201C1C4: ; 0x0201C1C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	add r7, r2, #0
	str r3, [sp]
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_0201C130
	ldr r0, [sp]
	add r1, r4, #0
	bl FreeToHeapExplicit
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201C1C4

	thumb_func_start sub_0201C1F4
sub_0201C1F4: ; 0x0201C1F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #0x2c
	add r6, r7, #0
	add r4, #0x1f
	mul r6, r1
	ldrb r1, [r4, r6]
	ldr r0, [r0]
	add r5, r2, #0
	mul r1, r3
	str r1, [sp]
	bl AllocFromHeapAtEnd
	str r0, [sp, #4]
	ldrb r0, [r4, r6]
	cmp r0, #0x20
	bne _0201C22E
	lsl r2, r5, #0xc
	lsl r1, r5, #8
	lsl r0, r5, #4
	orr r1, r2
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	lsl r0, r1, #0x10
	add r5, r1, #0
	b _0201C238
_0201C22E:
	lsl r2, r5, #0x18
	lsl r1, r5, #0x10
	lsl r0, r5, #8
	orr r1, r2
	orr r0, r1
_0201C238:
	orr r5, r0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_020D4858
	lsl r0, r7, #0x18
	ldrb r2, [r4, r6]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #4]
	mul r2, r3
	ldr r3, [sp]
	lsr r0, r0, #0x18
	bl sub_0201C130
	ldr r0, [sp, #4]
	bl FreeToHeap
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201C1F4

	thumb_func_start sub_0201C260
sub_0201C260: ; 0x0201C260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	bl DC_FlushRange
	cmp r6, #4
	bhs _0201C282
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_0201C282:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201C260

	thumb_func_start sub_0201C290
sub_0201C290: ; 0x0201C290
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	add r7, r2, #0
	str r3, [sp]
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	add r1, r5, #0
	bl DC_FlushRange
	cmp r6, #4
	bhs _0201C2C2
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl GX_LoadBGPltt
	b _0201C2CC
_0201C2C2:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl GXS_LoadBGPltt
_0201C2CC:
	ldr r0, [sp]
	add r1, r4, #0
	bl FreeToHeapExplicit
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201C290

	thumb_func_start sub_0201C2D8
sub_0201C2D8: ; 0x0201C2D8
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r1, sp, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_0201C260
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
	thumb_func_end sub_0201C2D8

	thumb_func_start sub_0201C2F0
sub_0201C2F0: ; 0x0201C2F0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	cmp r2, #5
	bhi _0201C3E2
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C308: ; jump table
	.short _0201C314 - _0201C308 - 2 ; case 0
	.short _0201C32E - _0201C308 - 2 ; case 1
	.short _0201C348 - _0201C308 - 2 ; case 2
	.short _0201C362 - _0201C308 - 2 ; case 3
	.short _0201C388 - _0201C308 - 2 ; case 4
	.short _0201C3CA - _0201C308 - 2 ; case 5
_0201C314:
	cmp r4, #0x10
	blo _0201C31C
	bl GF_AssertFail
_0201C31C:
	cmp r5, #0x10
	blo _0201C324
	bl GF_AssertFail
_0201C324:
	lsl r0, r5, #4
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_0201C32E:
	cmp r4, #0x20
	blo _0201C336
	bl GF_AssertFail
_0201C336:
	cmp r5, #0x20
	blo _0201C33E
	bl GF_AssertFail
_0201C33E:
	lsl r0, r5, #5
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_0201C348:
	cmp r4, #0x20
	blo _0201C350
	bl GF_AssertFail
_0201C350:
	cmp r5, #0x40
	blo _0201C358
	bl GF_AssertFail
_0201C358:
	lsl r0, r5, #5
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_0201C362:
	cmp r4, #0x40
	blo _0201C36A
	bl GF_AssertFail
_0201C36A:
	cmp r5, #0x20
	blo _0201C372
	bl GF_AssertFail
_0201C372:
	mov r0, #0x1f
	add r1, r4, #0
	and r1, r0
	mov r0, #0x1f
	bic r4, r0
	add r0, r5, r4
	lsl r0, r0, #5
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_0201C388:
	cmp r4, #0x40
	blo _0201C390
	bl GF_AssertFail
_0201C390:
	cmp r5, #0x40
	blo _0201C398
	bl GF_AssertFail
_0201C398:
	cmp r6, #0
	bne _0201C3C0
	asr r0, r5, #5
	asr r1, r4, #5
	lsl r0, r0, #1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1a
	lsr r2, r0, #0x10
	mov r0, #0x1f
	add r1, r4, #0
	and r1, r0
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x16
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_0201C3C0:
	lsl r0, r5, #6
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5, r6, pc}
_0201C3CA:
	cmp r4, #0x80
	blo _0201C3D2
	bl GF_AssertFail
_0201C3D2:
	cmp r5, #0x80
	blo _0201C3DA
	bl GF_AssertFail
_0201C3DA:
	lsl r0, r5, #7
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_0201C3E2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201C2F0

	thumb_func_start sub_0201C3E4
sub_0201C3E4: ; 0x0201C3E4
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	str r3, [sp]
	add r6, r2, #0
	ldr r5, [sp]
	add r4, r6, #0
	sub r4, #0x20
	sub r5, #0x20
	mov r2, #0
	lsl r4, r4, #0x10
	lsl r5, r5, #0x10
	add r3, r2, #0
	asr r4, r4, #0x10
	asr r7, r5, #0x10
	lsr r5, r0, #5
	beq _0201C40A
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0201C40A:
	lsr r5, r1, #5
	beq _0201C414
	add r2, r2, #2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0201C414:
	cmp r2, #3
	bhi _0201C4BC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201C424: ; jump table
	.short _0201C42C - _0201C424 - 2 ; case 0
	.short _0201C44A - _0201C424 - 2 ; case 1
	.short _0201C470 - _0201C424 - 2 ; case 2
	.short _0201C49C - _0201C424 - 2 ; case 3
_0201C42C:
	cmp r4, #0
	blt _0201C43C
	lsl r1, r1, #5
	add r0, r0, r1
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _0201C4BC
_0201C43C:
	add r2, r1, #0
	mul r2, r6
	add r0, r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _0201C4BC
_0201C44A:
	cmp r7, #0
	blt _0201C454
	mov r2, #1
	lsl r2, r2, #0xa
	b _0201C458
_0201C454:
	ldr r2, [sp]
	lsl r2, r2, #5
_0201C458:
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	add r0, r1, #0
	mul r0, r4
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _0201C4BC
_0201C470:
	lsl r2, r6, #5
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r4, #0
	blt _0201C48A
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	add r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _0201C4BC
_0201C48A:
	mov r3, #0x1f
	and r1, r3
	add r3, r1, #0
	mul r3, r6
	add r0, r0, r3
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _0201C4BC
_0201C49C:
	add r2, r6, r7
	lsl r2, r2, #5
	add r2, r3, r2
	add r5, r0, #0
	mov r3, #0x1f
	add r0, r1, #0
	and r0, r3
	add r1, r0, #0
	lsl r2, r2, #0x10
	and r5, r3
	mul r1, r4
	lsr r2, r2, #0x10
	add r0, r5, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
_0201C4BC:
	add r0, r3, #0
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0201C3E4

	thumb_func_start sub_0201C4C4
sub_0201C4C4: ; 0x0201C4C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, sp, #0x20
	ldrb r5, [r6, #0x14]
	str r5, [sp]
	ldrb r4, [r6, #0x18]
	str r4, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	add r2, r3, #0
	ldrb r3, [r6, #0x10]
	bl sub_0201C4EC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0201C4C4

	thumb_func_start sub_0201C4EC
sub_0201C4EC: ; 0x0201C4EC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #1
	beq _0201C536
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_0201C5E4
	add sp, #0x1c
	pop {r4, r5, pc}
_0201C536:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_0201C75C
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_0201C4EC

	thumb_func_start sub_0201C568
sub_0201C568: ; 0x0201C568
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #1
	beq _0201C5B2
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_0201C5E4
	add sp, #0x1c
	pop {r4, r5, pc}
_0201C5B2:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_0201C75C
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_0201C568

	thumb_func_start sub_0201C5E4
sub_0201C5E4: ; 0x0201C5E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _0201C608
	b _0201C756
_0201C608:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_0201BAFC
	add r0, sp, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201C6B8
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _0201C652
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x18]
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x14]
_0201C638:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	bge _0201C652
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	blt _0201C654
_0201C652:
	b _0201C756
_0201C654:
	mov r5, #0
	cmp r6, #0
	bls _0201C6A4
	add r1, r4, #0
	mul r1, r2
	lsl r2, r1, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_0201C66C:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _0201C6A4
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _0201C6A4
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldrb r3, [r7, #0x14]
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_0201C2F0
	ldr r1, [sp, #0x10]
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	lsl r2, r0, #1
	ldr r0, [sp, #0x2c]
	strh r1, [r0, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0201C66C
_0201C6A4:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _0201C638
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0201C6B8:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _0201C756
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_0201C6CC:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _0201C756
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _0201C756
	mov r5, #0
	cmp r6, #0
	bls _0201C746
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_0201C6F8:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _0201C746
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _0201C746
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldrb r3, [r7, #0x14]
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_0201C2F0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_0201C3E4
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x38]
	lsl r2, r1, #1
	ldr r1, [sp, #0x2c]
	strh r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0201C6F8
_0201C746:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _0201C6CC
_0201C756:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201C5E4

	thumb_func_start sub_0201C75C
sub_0201C75C: ; 0x0201C75C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _0201C780
	b _0201C8C0
_0201C780:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_0201BAFC
	add r0, sp, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201C826
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _0201C7BC
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x14]
_0201C7AE:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	blt _0201C7BE
_0201C7BC:
	b _0201C8C0
_0201C7BE:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _0201C8C0
	mov r5, #0
	cmp r6, #0
	bls _0201C812
	ldr r1, [sp, #0x14]
	mul r2, r4
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_0201C7DE:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _0201C812
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _0201C812
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldrb r3, [r7, #0x14]
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_0201C2F0
	ldr r1, [sp, #0x10]
	ldrb r2, [r1, r5]
	ldr r1, [sp, #0x2c]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0201C7DE
_0201C812:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _0201C7AE
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0201C826:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _0201C8C0
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_0201C83A:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _0201C8C0
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _0201C8C0
	mov r5, #0
	cmp r6, #0
	bls _0201C8B0
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_0201C866:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _0201C8B0
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _0201C8B0
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldrb r3, [r7, #0x14]
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_0201C2F0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_0201C3E4
	ldr r1, [sp, #0x5c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0201C866
_0201C8B0:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _0201C83A
_0201C8C0:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0201C75C

	thumb_func_start FillBgTilemapRect
FillBgTilemapRect: ; 0x0201C8C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #8
	cmp r1, #1
	beq _0201C8F8
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_0201C914
	add sp, #0xc
	pop {r4, r5, pc}
_0201C8F8:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #4]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201C9D4
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end FillBgTilemapRect

	thumb_func_start sub_0201C914
sub_0201C914: ; 0x0201C914
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r7, r0, #0
	ldr r4, [r7]
	ldr r6, [sp, #0x40]
	cmp r4, #0
	beq _0201C9CA
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x1c
	add r1, #1
	add r2, sp, #0x1c
	bl sub_0201BAFC
	add r0, sp, #0x28
	ldrb r2, [r0, #0x14]
	ldr r1, [sp, #8]
	add r1, r1, r2
	ldr r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, r1
	bge _0201C9CA
	ldr r2, _0201C9D0 ; =0x00000FFF
	ldr r1, [sp]
	and r1, r2
	lsl r2, r6, #0xc
	str r1, [sp, #0x14]
	add r1, r2, r1
	ldrb r2, [r0, #0x10]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
_0201C95E:
	add r0, sp, #0x1c
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	bhs _0201C9CA
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	cmp r1, r0
	bge _0201C9BA
_0201C972:
	add r0, sp, #0x1c
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _0201C9BA
	ldrb r2, [r7, #0x15]
	ldrb r3, [r7, #0x14]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_0201C2F0
	cmp r6, #0x11
	bne _0201C992
	lsl r1, r0, #1
	ldr r0, [sp]
	strh r0, [r4, r1]
	b _0201C9AE
_0201C992:
	cmp r6, #0x10
	bne _0201C9A8
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r2, r1
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	strh r1, [r4, r0]
	b _0201C9AE
_0201C9A8:
	lsl r1, r0, #1
	ldr r0, [sp, #0x18]
	strh r0, [r4, r1]
_0201C9AE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _0201C972
_0201C9BA:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201C95E
_0201C9CA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201C9D0: .word 0x00000FFF
	thumb_func_end sub_0201C914

	thumb_func_start sub_0201C9D4
sub_0201C9D4: ; 0x0201C9D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	ldr r0, [r7]
	add r5, r3, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _0201CA46
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_0201BAFC
	add r1, sp, #0x18
	ldrb r0, [r1, #0x14]
	add r0, r5, r0
	str r0, [sp, #8]
	cmp r5, r0
	bge _0201CA46
	ldrb r1, [r1, #0x10]
	ldr r0, [sp, #4]
	add r6, r0, r1
_0201CA06:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0201CA46
	ldr r4, [sp, #4]
	add r0, r4, #0
	cmp r0, r6
	bge _0201CA3A
_0201CA16:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _0201CA3A
	ldrb r2, [r7, #0x15]
	ldrb r3, [r7, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201C2F0
	ldr r2, [sp]
	ldr r1, [sp, #0xc]
	strb r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _0201CA16
_0201CA3A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	blt _0201CA06
_0201CA46:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201C9D4

	thumb_func_start sub_0201CA4C
sub_0201CA4C: ; 0x0201CA4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	mul r7, r0
	str r2, [sp]
	add r0, r5, r7
	ldr r4, [r0, #8]
	add r6, r3, #0
	cmp r4, #0
	beq _0201CAD8
	ldrb r0, [r0, #0x1d]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_0201BAFC
	add r0, sp, #0x18
	ldrb r1, [r0, #0x14]
	add r1, r6, r1
	str r1, [sp, #4]
	cmp r6, r1
	bge _0201CAD8
	ldrb r1, [r0, #0x18]
	add r7, r5, r7
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	ldrb r1, [r0, #0x10]
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #8]
_0201CA8C:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0201CAD8
	ldr r5, [sp]
	ldr r0, [sp, #8]
	add r1, r5, #0
	cmp r1, r0
	bge _0201CACC
_0201CA9E:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _0201CACC
	ldrb r2, [r7, #0x1d]
	ldrb r3, [r7, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201C2F0
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	ldr r1, _0201CADC ; =0x00000FFF
	and r2, r1
	ldr r1, [sp, #0xc]
	orr r1, r2
	strh r1, [r4, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	blt _0201CA9E
_0201CACC:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _0201CA8C
_0201CAD8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0201CADC: .word 0x00000FFF
	thumb_func_end sub_0201CA4C

	thumb_func_start sub_0201CAE0
sub_0201CAE0: ; 0x0201CAE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r2, r5, r0
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _0201CB02
	ldr r2, [r2, #0xc]
	mov r0, #0
	bl sub_020D4790
	add r0, r5, #0
	add r1, r4, #0
	bl BgCommitTilemapBufferToVram
_0201CB02:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CAE0

	thumb_func_start sub_0201CB04
sub_0201CB04: ; 0x0201CB04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _0201CB26
	add r0, r2, #0
	ldr r2, [r3, #0xc]
	bl sub_020D4790
	add r0, r5, #0
	add r1, r4, #0
	bl BgCommitTilemapBufferToVram
_0201CB26:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CB04

	thumb_func_start sub_0201CB28
sub_0201CB28: ; 0x0201CB28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _0201CB4A
	add r0, r2, #0
	ldr r2, [r3, #0xc]
	bl sub_020D4790
	add r0, r5, #0
	add r1, r4, #0
	bl ScheduleBgTilemapBufferTransfer
_0201CB4A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201CB28

	thumb_func_start sub_0201CB4C
sub_0201CB4C: ; 0x0201CB4C
	push {r3, lr}
	cmp r0, #7
	bhi _0201CB9E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201CB5E: ; jump table
	.short _0201CB6E - _0201CB5E - 2 ; case 0
	.short _0201CB74 - _0201CB5E - 2 ; case 1
	.short _0201CB7A - _0201CB5E - 2 ; case 2
	.short _0201CB80 - _0201CB5E - 2 ; case 3
	.short _0201CB86 - _0201CB5E - 2 ; case 4
	.short _0201CB8C - _0201CB5E - 2 ; case 5
	.short _0201CB92 - _0201CB5E - 2 ; case 6
	.short _0201CB98 - _0201CB5E - 2 ; case 7
_0201CB6E:
	bl sub_020CEED4
	pop {r3, pc}
_0201CB74:
	bl sub_020CEF28
	pop {r3, pc}
_0201CB7A:
	bl sub_020CEF7C
	pop {r3, pc}
_0201CB80:
	bl sub_020CF00C
	pop {r3, pc}
_0201CB86:
	bl sub_020CEF08
	pop {r3, pc}
_0201CB8C:
	bl sub_020CEF5C
	pop {r3, pc}
_0201CB92:
	bl sub_020CEFCC
	pop {r3, pc}
_0201CB98:
	bl sub_020CF064
	pop {r3, pc}
_0201CB9E:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_0201CB4C

	thumb_func_start sub_0201CBA4
sub_0201CBA4: ; 0x0201CBA4
	push {r4, r5, r6, r7}
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	mov r4, #0
	cmp r1, #0
	bls _0201CBDE
	mov r5, #0xf
	add r6, r5, #0
_0201CBB4:
	ldrb r7, [r0, r4]
	and r7, r6
	strb r7, [r2]
	ldrb r7, [r2]
	cmp r7, #0
	beq _0201CBC4
	add r7, r7, r3
	strb r7, [r2]
_0201CBC4:
	ldrb r7, [r0, r4]
	asr r7, r7, #4
	and r7, r5
	strb r7, [r2, #1]
	ldrb r7, [r2, #1]
	cmp r7, #0
	beq _0201CBD6
	add r7, r7, r3
	strb r7, [r2, #1]
_0201CBD6:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, r1
	blo _0201CBB4
_0201CBDE:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201CBA4

	thumb_func_start sub_0201CBE4
sub_0201CBE4: ; 0x0201CBE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r3, #0
	lsl r1, r5, #1
	add r7, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_0201CBA4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201CBE4

	thumb_func_start GetBgTilemapBuffer
GetBgTilemapBuffer: ; 0x0201CC08
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #8]
	bx lr
	.balign 4, 0
	thumb_func_end GetBgTilemapBuffer

	thumb_func_start sub_0201CC14
sub_0201CC14: ; 0x0201CC14
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201CC14

	thumb_func_start sub_0201CC20
sub_0201CC20: ; 0x0201CC20
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1e]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201CC20

	thumb_func_start sub_0201CC2C
sub_0201CC2C: ; 0x0201CC2C
	sub sp, #0x20
	cmp r1, #7
	bls _0201CC34
	b _0201CDE0
_0201CC34:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201CC40: ; jump table
	.short _0201CC50 - _0201CC40 - 2 ; case 0
	.short _0201CC64 - _0201CC40 - 2 ; case 1
	.short _0201CC78 - _0201CC40 - 2 ; case 2
	.short _0201CCC8 - _0201CC40 - 2 ; case 3
	.short _0201CD18 - _0201CC40 - 2 ; case 4
	.short _0201CD2C - _0201CC40 - 2 ; case 5
	.short _0201CD40 - _0201CC40 - 2 ; case 6
	.short _0201CD90 - _0201CC40 - 2 ; case 7
_0201CC50:
	ldr r0, _0201CDE8 ; =0x04000008
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1e]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CC64:
	ldr r0, _0201CDEC ; =0x0400000A
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1c]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CC78:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201CC8C
	cmp r0, #1
	beq _0201CCA0
	cmp r0, #2
	beq _0201CCB4
_0201CC8C:
	ldr r0, _0201CDF0 ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1a]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CCA0:
	ldr r0, _0201CDF0 ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x18]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CCB4:
	ldr r0, _0201CDF0 ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x16]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CCC8:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201CCDC
	cmp r0, #1
	beq _0201CCF0
	cmp r0, #2
	beq _0201CD04
_0201CCDC:
	ldr r0, _0201CDF4 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x14]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CCF0:
	ldr r0, _0201CDF4 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x12]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD04:
	ldr r0, _0201CDF4 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x10]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD18:
	ldr r0, _0201CDF8 ; =0x04001008
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xe]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD2C:
	ldr r0, _0201CDFC ; =0x0400100A
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xc]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD40:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201CD54
	cmp r0, #1
	beq _0201CD68
	cmp r0, #2
	beq _0201CD7C
_0201CD54:
	ldr r0, _0201CE00 ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xa]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD68:
	ldr r0, _0201CE00 ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #8]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD7C:
	ldr r0, _0201CE00 ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #6]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CD90:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201CDA4
	cmp r0, #1
	beq _0201CDB8
	cmp r0, #2
	beq _0201CDCC
_0201CDA4:
	ldr r0, _0201CE04 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #4]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CDB8:
	ldr r0, _0201CE04 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #2]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CDCC:
	ldr r0, _0201CE04 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201CDE0:
	mov r0, #0
	add sp, #0x20
	bx lr
	nop
_0201CDE8: .word 0x04000008
_0201CDEC: .word 0x0400000A
_0201CDF0: .word 0x0400000C
_0201CDF4: .word 0x0400000E
_0201CDF8: .word 0x04001008
_0201CDFC: .word 0x0400100A
_0201CE00: .word 0x0400100C
_0201CE04: .word 0x0400100E
	thumb_func_end sub_0201CC2C

	thumb_func_start BlitBitmapRect4Bit
BlitBitmapRect4Bit: ; 0x0201CE08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x70
	str r0, [sp]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _0201CE30
	ldr r0, [sp, #8]
	add r0, r0, r3
	str r0, [sp, #0x50]
	b _0201CE36
_0201CE30:
	ldr r0, [sp, #8]
	add r0, r2, r0
	str r0, [sp, #0x50]
_0201CE36:
	ldr r2, [sp, #4]
	add r3, sp, #0x70
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _0201CE4E
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	str r2, [sp, #0x4c]
	b _0201CE54
_0201CE4E:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	str r2, [sp, #0x4c]
_0201CE54:
	ldr r2, [sp]
	mov r3, #7
	ldrh r4, [r2, #4]
	add r2, r4, #0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #3
	str r2, [sp, #0x48]
	add r2, r1, #0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #3
	str r1, [sp, #0x44]
	add r1, sp, #0x70
	ldrh r1, [r1, #0x20]
	ldr r2, _0201D040 ; =0x0000FFFF
	str r1, [sp, #0x38]
	cmp r1, r2
	bne _0201CF5C
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _0201CE86
	cmp r2, r1
	blt _0201CE88
_0201CE86:
	b _0201D03A
_0201CE88:
	add r1, r2, #0
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0201CE92:
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _0201CF3E
	cmp r1, r0
	bge _0201CF3E
	add r0, r3, #0
	lsl r5, r0, #2
	add r0, r4, #0
	lsl r6, r0, #2
	ldr r0, _0201D044 ; =0x00003FE0
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x48]
	and r1, r0
	mul r2, r1
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x28]
	mov r1, #0x1c
	and r2, r1
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	and r0, r2
	ldr r2, [sp, #0x44]
	mul r2, r0
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x18]
	and r0, r1
	str r0, [sp, #0x14]
_0201CECE:
	ldr r0, [sp, #4]
	asr r2, r4, #1
	mov r1, #3
	ldr r0, [r0]
	and r1, r2
	add r1, r0, r1
	ldr r0, _0201D044 ; =0x00003FE0
	and r0, r6
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	add r6, r6, #4
	add r0, r1, r0
	str r0, [sp, #0x64]
	lsl r0, r4, #0x1f
	lsr r2, r0, #0x1d
	ldr r0, [sp]
	asr r1, r3, #1
	ldr r7, [r0]
	mov r0, #3
	and r0, r1
	ldr r1, _0201D044 ; =0x00003FE0
	add r4, r4, #1
	and r1, r5
	str r1, [sp, #0x54]
	add r1, r7, r0
	ldr r0, [sp, #0x54]
	add r5, r5, #4
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r1, [r0, r1]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	add r7, r0, #0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	lsl r7, r2
	ldrb r0, [r0, r1]
	add r3, r3, #1
	str r0, [sp, #0x58]
	mov r0, #0xf0
	asr r0, r2
	ldr r1, [sp, #0x58]
	add r2, r7, #0
	and r0, r1
	orr r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	strb r2, [r0, r1]
	ldr r0, [sp, #0x50]
	cmp r3, r0
	blt _0201CECE
_0201CF3E:
	ldr r0, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _0201CE92
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_0201CF5C:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _0201D03A
	cmp r2, r1
	bge _0201D03A
	add r1, r2, #0
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [sp, #0x40]
	str r0, [sp, #0x3c]
_0201CF72:
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _0201D020
	cmp r1, r0
	bge _0201D020
	add r0, r3, #0
	lsl r1, r0, #2
	add r0, r4, #0
	lsl r2, r0, #2
	ldr r0, _0201D044 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x48]
	and r5, r0
	mul r6, r5
	str r6, [sp, #0x34]
	ldr r6, [sp, #0x40]
	mov r5, #0x1c
	and r6, r5
	str r6, [sp, #0x30]
	ldr r6, [sp, #0x3c]
	and r0, r6
	ldr r6, [sp, #0x44]
	mul r6, r0
	ldr r0, [sp, #0x3c]
	str r6, [sp, #0x2c]
	and r0, r5
	str r0, [sp, #0x60]
_0201CFAE:
	ldr r0, [sp, #4]
	asr r6, r4, #1
	mov r5, #3
	and r5, r6
	ldr r0, [r0]
	asr r6, r3, #1
	add r5, r0, r5
	ldr r0, _0201D044 ; =0x00003FE0
	and r0, r2
	add r5, r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r5, r0
	ldr r0, [sp]
	ldr r7, [r0]
	mov r0, #3
	and r0, r6
	ldr r6, _0201D044 ; =0x00003FE0
	and r6, r1
	str r6, [sp, #0x5c]
	add r6, r7, r0
	ldr r0, [sp, #0x5c]
	add r6, r0, r6
	ldr r0, [sp, #0x34]
	add r6, r0, r6
	ldr r0, [sp, #0x30]
	ldrb r6, [r0, r6]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r6, r0
	mov r0, #0xf
	and r0, r6
	ldr r6, [sp, #0x38]
	cmp r0, r6
	beq _0201D012
	lsl r6, r4, #0x1f
	lsr r7, r6, #0x1d
	lsl r0, r7
	mov lr, r0
	ldr r0, [sp, #0x60]
	ldrb r0, [r5, r0]
	mov ip, r0
	mov r0, #0xf0
	add r6, r0, #0
	asr r6, r7
	mov r0, ip
	and r0, r6
	mov r6, lr
	orr r6, r0
	ldr r0, [sp, #0x60]
	strb r6, [r5, r0]
_0201D012:
	ldr r0, [sp, #0x50]
	add r3, r3, #1
	add r1, r1, #4
	add r2, r2, #4
	add r4, r4, #1
	cmp r3, r0
	blt _0201CFAE
_0201D020:
	ldr r0, [sp, #0x40]
	add r0, r0, #4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _0201CF72
_0201D03A:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201D040: .word 0x0000FFFF
_0201D044: .word 0x00003FE0
	thumb_func_end BlitBitmapRect4Bit

	thumb_func_start sub_0201D048
sub_0201D048: ; 0x0201D048
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x58
	str r0, [sp]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _0201D06E
	ldr r0, [sp, #8]
	add r0, r0, r3
	b _0201D072
_0201D06E:
	ldr r0, [sp, #8]
	add r0, r2, r0
_0201D072:
	ldr r2, [sp, #4]
	add r3, sp, #0x58
	mov ip, r0
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _0201D08A
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	b _0201D08E
_0201D08A:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
_0201D08E:
	mov lr, r2
	ldr r2, [sp]
	mov r3, #7
	ldrh r4, [r2, #4]
	add r2, r4, #0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #3
	str r2, [sp, #0x4c]
	add r2, r1, #0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #3
	str r1, [sp, #0x48]
	add r1, sp, #0x58
	ldrh r1, [r1, #0x20]
	ldr r2, _0201D228 ; =0x0000FFFF
	str r1, [sp, #0x3c]
	cmp r1, r2
	bne _0201D16E
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _0201D0C4
	mov r1, lr
	cmp r2, r1
	blt _0201D0C6
_0201D0C4:
	b _0201D224
_0201D0C6:
	add r1, r2, #0
	lsl r1, r1, #3
	lsl r0, r0, #3
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0201D0D0:
	ldr r1, [sp, #8]
	mov r0, ip
	add r2, r1, #0
	ldr r7, [sp, #0x10]
	cmp r2, r0
	bge _0201D150
	mov r0, ip
	cmp r2, r0
	bge _0201D150
	add r0, r1, #0
	lsl r2, r0, #3
	add r0, r7, #0
	lsl r3, r0, #3
	ldr r6, _0201D22C ; =0x00007FC0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x4c]
	and r0, r6
	mul r4, r0
	str r4, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x48]
	and r0, r6
	mul r4, r0
	ldr r0, [sp, #0x24]
	str r4, [sp, #0x18]
	and r0, r5
	str r0, [sp, #0x14]
_0201D10E:
	ldr r0, [sp]
	add r5, r1, #0
	mov r4, #7
	and r5, r4
	ldr r0, [r0]
	ldr r4, _0201D22C ; =0x00007FC0
	add r0, r0, r5
	and r4, r2
	add r4, r4, r0
	ldr r0, [sp, #0x20]
	add r5, r7, #0
	add r4, r0, r4
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	ldrb r6, [r0, r4]
	ldr r0, [sp, #4]
	mov r4, #7
	and r5, r4
	ldr r0, [r0]
	ldr r4, _0201D22C ; =0x00007FC0
	add r0, r0, r5
	and r4, r3
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r2, #8
	add r4, r0, r4
	ldr r0, [sp, #0x14]
	add r3, #8
	strb r6, [r0, r4]
	mov r0, ip
	add r7, r7, #1
	cmp r1, r0
	blt _0201D10E
_0201D150:
	ldr r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0x24]
	mov r0, lr
	cmp r1, r0
	blt _0201D0D0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_0201D16E:
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _0201D224
	mov r1, lr
	cmp r2, r1
	bge _0201D224
	add r1, r2, #0
	lsl r1, r1, #3
	lsl r0, r0, #3
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
_0201D186:
	ldr r2, [sp, #8]
	mov r0, ip
	add r1, r2, #0
	ldr r3, [sp, #0x10]
	cmp r1, r0
	bge _0201D20A
	mov r0, ip
	cmp r1, r0
	bge _0201D20A
	add r0, r2, #0
	lsl r6, r0, #3
	add r0, r3, #0
	lsl r1, r0, #3
	ldr r7, _0201D22C ; =0x00007FC0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	and r0, r7
	mul r4, r0
	str r4, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	and r0, r7
	mul r4, r0
	ldr r0, [sp, #0x40]
	str r4, [sp, #0x30]
	and r0, r5
	str r0, [sp, #0x2c]
_0201D1C4:
	ldr r0, [sp, #4]
	mov r4, #7
	ldr r0, [r0]
	and r4, r3
	add r0, r0, r4
	ldr r4, _0201D22C ; =0x00007FC0
	add r5, r2, #0
	and r4, r1
	add r4, r0, r4
	ldr r0, [sp, #0x30]
	add r7, r4, r0
	ldr r0, [sp]
	mov r4, #7
	and r5, r4
	ldr r0, [r0]
	ldr r4, _0201D22C ; =0x00007FC0
	add r0, r0, r5
	and r4, r6
	add r4, r4, r0
	ldr r0, [sp, #0x38]
	add r4, r0, r4
	ldr r0, [sp, #0x34]
	ldrb r0, [r0, r4]
	ldr r4, [sp, #0x3c]
	cmp r0, r4
	beq _0201D1FC
	ldr r4, [sp, #0x2c]
	strb r0, [r7, r4]
_0201D1FC:
	add r2, r2, #1
	mov r0, ip
	add r6, #8
	add r1, #8
	add r3, r3, #1
	cmp r2, r0
	blt _0201D1C4
_0201D20A:
	ldr r0, [sp, #0x44]
	add r0, #8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0x40]
	mov r0, lr
	cmp r1, r0
	blt _0201D186
_0201D224:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0201D228: .word 0x0000FFFF
_0201D22C: .word 0x00007FC0
	thumb_func_end sub_0201D048

	thumb_func_start sub_0201D230
sub_0201D230: ; 0x0201D230
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r6, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r6, r0
	ble _0201D24C
	add r6, r0, #0
_0201D24C:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #8]
	add r1, r1, r2
	mov ip, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, ip
	cmp r1, r2
	ble _0201D262
	mov ip, r2
_0201D262:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	mov lr, r0
	ldr r1, [sp, #8]
	mov r0, ip
	cmp r1, r0
	bge _0201D2EC
	add r0, r1, #0
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #4
	str r0, [sp, #0x10]
_0201D280:
	ldr r1, [sp, #4]
	add r0, r1, #0
	cmp r0, r6
	bge _0201D2DA
	lsl r5, r0, #2
	ldr r2, _0201D2F0 ; =0x00003FE0
	ldr r0, [sp, #0xc]
	and r0, r2
	add r7, r0, #0
	mov r2, lr
	mul r7, r2
	ldr r0, [sp, #0xc]
	mov r2, #0x1c
	and r2, r0
_0201D29C:
	ldr r0, [sp]
	asr r3, r1, #1
	ldr r4, [r0]
	mov r0, #3
	and r0, r3
	ldr r3, _0201D2F0 ; =0x00003FE0
	add r0, r4, r0
	and r3, r5
	add r0, r0, r3
	add r0, r0, r7
	mov r3, #1
	tst r3, r1
	ldrb r4, [r0, r2]
	beq _0201D2C4
	mov r3, #0xf
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x10]
	b _0201D2CE
_0201D2C4:
	mov r3, #0xf0
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x2c]
_0201D2CE:
	orr r3, r4
	add r1, r1, #1
	strb r3, [r0, r2]
	add r5, r5, #4
	cmp r1, r6
	blt _0201D29C
_0201D2DA:
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201D280
_0201D2EC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0201D2F0: .word 0x00003FE0
	thumb_func_end sub_0201D230

	thumb_func_start sub_0201D2F4
sub_0201D2F4: ; 0x0201D2F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r5, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r5, r0
	ble _0201D310
	add r5, r0, #0
_0201D310:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #8]
	add r1, r1, r2
	mov lr, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, lr
	cmp r1, r2
	ble _0201D326
	mov lr, r2
_0201D326:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	mov r0, lr
	cmp r1, r0
	bge _0201D392
	add r0, r1, #0
	lsl r0, r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	mov ip, r0
_0201D344:
	ldr r2, [sp, #4]
	add r0, r2, #0
	cmp r0, r5
	bge _0201D380
	ldr r1, [sp, #0xc]
	ldr r0, _0201D398 ; =0x00007FC0
	mov r3, ip
	and r0, r1
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	mov r0, #0x38
	mul r7, r1
	ldr r1, [sp, #0xc]
	add r6, r1, #0
	and r6, r0
_0201D362:
	ldr r0, [sp]
	ldr r4, _0201D398 ; =0x00007FC0
	ldr r1, [r0]
	mov r0, #7
	and r0, r2
	and r4, r3
	add r0, r1, r0
	add r0, r4, r0
	add r1, r7, r0
	ldr r0, [sp, #0x2c]
	add r2, r2, #1
	strb r0, [r6, r1]
	add r3, #8
	cmp r2, r5
	blt _0201D362
_0201D380:
	ldr r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, lr
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201D344
_0201D392:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0201D398: .word 0x00007FC0
	thumb_func_end sub_0201D2F4

	thumb_func_start AllocWindows
AllocWindows: ; 0x0201D39C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	lsl r1, r5, #4
	bl AllocFromHeap
	add r6, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0201D3C0
_0201D3AE:
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_0201D3C4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blt _0201D3AE
_0201D3C0:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end AllocWindows

	thumb_func_start sub_0201D3C4
sub_0201D3C4: ; 0x0201D3C4
	mov r3, #0
	str r3, [r0]
	mov r1, #0xff
	strb r1, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	strb r3, [r0, #7]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	ldrh r2, [r0, #0xa]
	ldr r1, _0201D3EC ; =0xFFFF8000
	and r2, r1
	strh r2, [r0, #0xa]
	str r3, [r0, #0xc]
	ldrh r2, [r0, #0xa]
	sub r1, r1, #1
	and r1, r2
	strh r1, [r0, #0xa]
	bx lr
	nop
_0201D3EC: .word 0xFFFF8000
	thumb_func_end sub_0201D3C4

	thumb_func_start sub_0201D3F0
sub_0201D3F0: ; 0x0201D3F0
	ldr r1, [r0]
	cmp r1, #0
	beq _0201D402
	ldrb r1, [r0, #4]
	cmp r1, #0xff
	beq _0201D402
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0201D406
_0201D402:
	mov r0, #0
	bx lr
_0201D406:
	mov r0, #1
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201D3F0

	thumb_func_start sub_0201D40C
sub_0201D40C: ; 0x0201D40C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	mov r0, #0x2c
	add r7, r6, #0
	mul r7, r0
	add r4, r1, #0
	str r3, [sp]
	add r1, r5, r7
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201D488
	add r3, sp, #8
	ldrb r2, [r1, #0x1f]
	ldrb r1, [r3, #0x14]
	ldrb r3, [r3, #0x18]
	ldr r0, [r5]
	mul r3, r1
	add r1, r2, #0
	mul r1, r3
	bl AllocFromHeap
	add r1, r0, #0
	beq _0201D488
	str r5, [r4]
	strb r6, [r4, #4]
	ldr r0, [sp]
	add r3, sp, #8
	strb r0, [r4, #5]
	ldrb r0, [r3, #0x10]
	ldr r2, _0201D48C ; =0xFFFF8000
	strb r0, [r4, #6]
	ldrb r0, [r3, #0x14]
	strb r0, [r4, #7]
	ldrb r0, [r3, #0x18]
	strb r0, [r4, #8]
	ldrb r0, [r3, #0x1c]
	strb r0, [r4, #9]
	ldrh r0, [r4, #0xa]
	ldrh r3, [r3, #0x20]
	and r0, r2
	lsr r2, r2, #0x11
	and r2, r3
	orr r0, r2
	strh r0, [r4, #0xa]
	str r1, [r4, #0xc]
	add r0, r5, r7
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0201D474
	mov r2, #0
	b _0201D476
_0201D474:
	mov r2, #1
_0201D476:
	ldrh r1, [r4, #0xa]
	ldr r0, _0201D490 ; =0xFFFF7FFF
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0xa]
_0201D488:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201D48C: .word 0xFFFF8000
_0201D490: .word 0xFFFF7FFF
	thumb_func_end sub_0201D40C

	thumb_func_start sub_0201D494
sub_0201D494: ; 0x0201D494
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp]
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	add r6, r2, #0
	str r0, [sp, #0x24]
	ldr r0, [sp]
	add r4, r1, #0
	mul r0, r6
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [sp, #4]
	bl AllocFromHeap
	ldr r1, [sp, #0x24]
	add r7, r0, #0
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x18
	ldr r2, [sp, #4]
	lsr r1, r1, #0x18
	bl memset
	cmp r7, #0
	beq _0201D4F0
	str r5, [r4]
	strb r6, [r4, #7]
	ldr r0, [sp]
	strb r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201D4F4 ; =0xFFFF8000
	add r3, r1, #0
	add r1, sp, #0x10
	ldrh r2, [r1, #0x10]
	lsr r1, r0, #0x11
	and r3, r0
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	sub r0, r0, #1
	and r0, r1
	strh r0, [r4, #0xa]
_0201D4F0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0201D4F4: .word 0xFFFF8000
	thumb_func_end sub_0201D494

	thumb_func_start AddWindow
AddWindow: ; 0x0201D4F8
	push {lr}
	sub sp, #0x14
	add r3, r2, #0
	ldrb r2, [r3, #2]
	str r2, [sp]
	ldrb r2, [r3, #3]
	str r2, [sp, #4]
	ldrb r2, [r3, #4]
	str r2, [sp, #8]
	ldrb r2, [r3, #5]
	str r2, [sp, #0xc]
	ldrh r2, [r3, #6]
	str r2, [sp, #0x10]
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	bl sub_0201D40C
	add sp, #0x14
	pop {pc}
	.balign 4, 0
	thumb_func_end AddWindow

	thumb_func_start RemoveWindow
RemoveWindow: ; 0x0201D520
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FreeToHeap
	mov r2, #0
	str r2, [r4]
	mov r0, #0xff
	strb r0, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	strb r2, [r4, #8]
	strb r2, [r4, #9]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201D548 ; =0xFFFF8000
	and r0, r1
	strh r0, [r4, #0xa]
	str r2, [r4, #0xc]
	pop {r4, pc}
	.balign 4, 0
_0201D548: .word 0xFFFF8000
	thumb_func_end RemoveWindow

	thumb_func_start sub_0201D54C
sub_0201D54C: ; 0x0201D54C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0201D570
_0201D558:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0201D566
	bl FreeToHeap
_0201D566:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _0201D558
_0201D570:
	add r0, r5, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201D54C

	thumb_func_start CopyWindowToVram
CopyWindowToVram: ; 0x0201D578
	push {r4, lr}
	add r4, r0, #0
	bne _0201D582
	bl GF_AssertFail
_0201D582:
	ldr r0, [r4]
	cmp r0, #0
	bne _0201D58C
	bl GF_AssertFail
_0201D58C:
	ldrb r0, [r4, #4]
	cmp r0, #8
	blo _0201D596
	bl GF_AssertFail
_0201D596:
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	ldr r2, [r4]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #3
	blo _0201D5AA
	bl GF_AssertFail
_0201D5AA:
	ldrb r2, [r4, #4]
	mov r1, #0x2c
	ldr r3, [r4]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0201D5C4 ; =0x020F62FC
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201D5C4: .word 0x020F62FC
	thumb_func_end CopyWindowToVram

	thumb_func_start sub_0201D5C8
sub_0201D5C8: ; 0x0201D5C8
	push {r4, lr}
	add r4, r0, #0
	bne _0201D5D2
	bl GF_AssertFail
_0201D5D2:
	ldr r0, [r4]
	cmp r0, #0
	bne _0201D5DC
	bl GF_AssertFail
_0201D5DC:
	ldrb r0, [r4, #4]
	cmp r0, #8
	blo _0201D5E6
	bl GF_AssertFail
_0201D5E6:
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	ldr r2, [r4]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #3
	blo _0201D5FA
	bl GF_AssertFail
_0201D5FA:
	ldrb r2, [r4, #4]
	mov r1, #0x2c
	ldr r3, [r4]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0201D614 ; =0x020F62F0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201D614: .word 0x020F62F0
	thumb_func_end sub_0201D5C8

	thumb_func_start sub_0201D618
sub_0201D618: ; 0x0201D618
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201D630 ; =0x020F62CC
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_0201D630: .word 0x020F62CC
	thumb_func_end sub_0201D618

	thumb_func_start sub_0201D634
sub_0201D634: ; 0x0201D634
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201D64C ; =0x020F6308
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_0201D64C: .word 0x020F6308
	thumb_func_end sub_0201D634

	thumb_func_start sub_0201D650
sub_0201D650: ; 0x0201D650
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldrb r1, [r6, #4]
	mov r0, #0x2c
	ldr r2, [r6]
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #8]
	str r0, [sp]
	cmp r0, #0
	beq _0201D6CA
	ldrh r0, [r6, #0xa]
	ldrb r1, [r6, #5]
	lsl r0, r0, #0x11
	lsr r5, r0, #0x11
	ldrb r0, [r6, #7]
	add r7, r1, r0
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #8]
	str r0, [sp, #8]
	add r0, r0, r1
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	cmp r1, r0
	bhs _0201D6CA
_0201D684:
	ldrb r4, [r6, #5]
	cmp r4, r7
	bhs _0201D6BE
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
_0201D692:
	ldrb r2, [r6, #4]
	mov r1, #0x2c
	ldr r0, [r6]
	mul r1, r2
	add r3, r0, r1
	ldrb r2, [r3, #0x1d]
	lsl r0, r4, #0x18
	ldrb r3, [r3, #0x1c]
	ldr r1, [sp, #0xc]
	lsr r0, r0, #0x18
	bl sub_0201C2F0
	ldrb r1, [r6, #9]
	lsl r2, r0, #1
	ldr r0, [sp]
	lsl r1, r1, #0xc
	orr r1, r5
	add r4, r4, #1
	strh r1, [r0, r2]
	add r5, r5, #1
	cmp r4, r7
	blo _0201D692
_0201D6BE:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _0201D684
_0201D6CA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201D650

	thumb_func_start sub_0201D6D0
sub_0201D6D0: ; 0x0201D6D0
	push {r4, r5, r6, r7}
	ldrb r3, [r0, #4]
	mov r1, #0x2c
	add r2, r3, #0
	mul r2, r1
	ldr r1, [r0]
	add r1, r1, r2
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0201D724
	ldrb r2, [r1, #0x1d]
	ldr r1, _0201D728 ; =0x020F62C4
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #6]
	add r2, r1, #0
	mul r2, r6
	add r2, r3, r2
	ldrb r1, [r0, #5]
	mov r3, #0
	add r4, r2, r1
	ldrh r1, [r0, #0xa]
	lsl r1, r1, #0x11
	lsr r5, r1, #0x11
	ldrb r1, [r0, #8]
	cmp r1, #0
	ble _0201D724
	add r1, r3, #0
_0201D706:
	ldrb r7, [r0, #7]
	add r2, r1, #0
	cmp r7, #0
	ble _0201D71A
_0201D70E:
	strb r5, [r4, r2]
	ldrb r7, [r0, #7]
	add r2, r2, #1
	add r5, r5, #1
	cmp r2, r7
	blt _0201D70E
_0201D71A:
	ldrb r2, [r0, #8]
	add r3, r3, #1
	add r4, r4, r6
	cmp r3, r2
	blt _0201D706
_0201D724:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_0201D728: .word 0x020F62C4
	thumb_func_end sub_0201D6D0

	thumb_func_start sub_0201D72C
sub_0201D72C: ; 0x0201D72C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r1, [r5, #4]
	mov r0, #0x2c
	ldr r2, [r5]
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #8]
	str r0, [sp]
	cmp r0, #0
	beq _0201D798
	ldrb r1, [r5, #5]
	ldrb r0, [r5, #7]
	add r6, r1, r0
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #8]
	str r0, [sp, #8]
	add r0, r0, r1
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	cmp r1, r0
	bhs _0201D798
_0201D75A:
	ldrb r4, [r5, #5]
	cmp r4, r6
	bhs _0201D78C
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0201D766:
	ldrb r2, [r5, #4]
	mov r1, #0x2c
	ldr r0, [r5]
	mul r1, r2
	add r3, r0, r1
	ldrb r2, [r3, #0x1d]
	lsl r0, r4, #0x18
	ldrb r3, [r3, #0x1c]
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_0201C2F0
	lsl r2, r0, #1
	ldr r0, [sp]
	mov r1, #0
	add r4, r4, #1
	strh r1, [r0, r2]
	cmp r4, r6
	blo _0201D766
_0201D78C:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _0201D75A
_0201D798:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0201D72C

	thumb_func_start sub_0201D79C
sub_0201D79C: ; 0x0201D79C
	push {r4, r5, r6, r7}
	ldrb r3, [r0, #4]
	mov r1, #0x2c
	add r2, r3, #0
	mul r2, r1
	ldr r1, [r0]
	add r1, r1, r2
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0201D7EA
	ldrb r2, [r1, #0x1d]
	ldr r1, _0201D7F0 ; =0x020F62C4
	mov r4, #0
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #6]
	add r2, r1, #0
	mul r2, r6
	ldrb r1, [r0, #5]
	add r2, r3, r2
	add r5, r2, r1
	ldrb r1, [r0, #8]
	cmp r1, #0
	ble _0201D7EA
	add r1, r4, #0
	add r2, r4, #0
_0201D7CE:
	ldrb r7, [r0, #7]
	add r3, r2, #0
	cmp r7, #0
	ble _0201D7E0
_0201D7D6:
	strb r1, [r5, r3]
	ldrb r7, [r0, #7]
	add r3, r3, #1
	cmp r3, r7
	blt _0201D7D6
_0201D7E0:
	ldrb r3, [r0, #8]
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, r3
	blt _0201D7CE
_0201D7EA:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0201D7F0: .word 0x020F62C4
	thumb_func_end sub_0201D79C

	thumb_func_start sub_0201D7F4
sub_0201D7F4: ; 0x0201D7F4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201D650
	add r0, r4, #0
	bl sub_0201D8A0
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201D7F4

	thumb_func_start sub_0201D820
sub_0201D820: ; 0x0201D820
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D650
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl sub_0201D8A0
	pop {r4, pc}
	thumb_func_end sub_0201D820

	thumb_func_start sub_0201D838
sub_0201D838: ; 0x0201D838
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201D6D0
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp]
	ldrb r5, [r4, #7]
	ldrb r3, [r4, #8]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #6
	bl BG_LoadCharTilesData
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201D838

	thumb_func_start sub_0201D874
sub_0201D874: ; 0x0201D874
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201D6D0
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp]
	ldrb r5, [r4, #7]
	ldrb r3, [r4, #8]
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #6
	bl BG_LoadCharTilesData
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201D874

	thumb_func_start sub_0201D8A0
sub_0201D8A0: ; 0x0201D8A0
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldrh r2, [r3, #0xa]
	ldrb r1, [r3, #4]
	mov r4, #0x2c
	lsl r2, r2, #0x11
	ldr r0, [r3]
	lsr r2, r2, #0x11
	str r2, [sp]
	mul r4, r1
	add r4, r0, r4
	ldr r2, [r3, #0xc]
	ldrb r5, [r3, #7]
	ldrb r3, [r3, #8]
	ldrb r4, [r4, #0x1f]
	mul r3, r5
	mul r3, r4
	bl BG_LoadCharTilesData
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201D8A0

	thumb_func_start ClearWindowTilemapAndCopyToVram
ClearWindowTilemapAndCopyToVram: ; 0x0201D8C8
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201D8E0 ; =0x020F62E4
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_0201D8E0: .word 0x020F62E4
	thumb_func_end ClearWindowTilemapAndCopyToVram

	thumb_func_start sub_0201D8E4
sub_0201D8E4: ; 0x0201D8E4
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201D8FC ; =0x020F62D8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_0201D8FC: .word 0x020F62D8
	thumb_func_end sub_0201D8E4

	thumb_func_start sub_0201D900
sub_0201D900: ; 0x0201D900
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201D72C
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201D900

	thumb_func_start sub_0201D928
sub_0201D928: ; 0x0201D928
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D72C
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201D928

	thumb_func_start sub_0201D93C
sub_0201D93C: ; 0x0201D93C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201D79C
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201D93C

	thumb_func_start sub_0201D964
sub_0201D964: ; 0x0201D964
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D79C
	ldrb r1, [r4, #4]
	ldr r0, [r4]
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201D964

	thumb_func_start FillWindowPixelBuffer
FillWindowPixelBuffer: ; 0x0201D978
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r2, [r4, #4]
	mov r0, #0x2c
	ldr r3, [r4]
	mul r0, r2
	add r0, r3, r0
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x20
	bne _0201D994
	lsl r0, r1, #4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_0201D994:
	lsl r3, r1, #0x18
	lsl r0, r1, #0x10
	orr r0, r3
	lsl r5, r1, #8
	orr r0, r5
	orr r0, r1
	ldr r1, [r4, #0xc]
	ldrb r3, [r4, #8]
	ldrb r4, [r4, #7]
	mul r2, r4
	mul r2, r3
	bl sub_020D4858
	pop {r3, r4, r5, pc}
	thumb_func_end FillWindowPixelBuffer

	thumb_func_start sub_0201D9B0
sub_0201D9B0: ; 0x0201D9B0
	push {r4, lr}
	add r2, r0, #0
	lsl r0, r1, #4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r1, r4, #0x18
	lsl r0, r4, #0x10
	orr r0, r1
	lsl r3, r4, #8
	orr r0, r3
	ldr r1, [r2, #0xc]
	ldrb r3, [r2, #8]
	ldrb r2, [r2, #7]
	orr r0, r4
	lsl r2, r2, #5
	mul r2, r3
	bl sub_020D4858
	pop {r4, pc}
	thumb_func_end sub_0201D9B0

	thumb_func_start BlitBitmapRectToWindow
BlitBitmapRectToWindow: ; 0x0201D9D8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r5, [r4, #0x10]
	str r5, [sp]
	ldrh r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrh r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrh r5, [r4, #0x1c]
	str r5, [sp, #0xc]
	ldrh r5, [r4, #0x20]
	str r5, [sp, #0x10]
	ldrh r4, [r4, #0x24]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl sub_0201DA04
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end BlitBitmapRectToWindow

	thumb_func_start sub_0201DA04
sub_0201DA04: ; 0x0201DA04
	push {r4, r5, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	add r4, sp, #0x20
	ldrh r5, [r4, #0x10]
	add r1, sp, #0x14
	strh r5, [r1, #0xc]
	ldrh r5, [r4, #0x14]
	strh r5, [r1, #0xe]
	ldr r5, [r0, #0xc]
	str r5, [sp, #0x14]
	ldrb r5, [r0, #7]
	lsl r5, r5, #3
	strh r5, [r1, #4]
	ldrb r5, [r0, #8]
	lsl r5, r5, #3
	strh r5, [r1, #6]
	ldrb r5, [r0, #4]
	ldr r1, [r0]
	mov r0, #0x2c
	mul r0, r5
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r1, sp, #0x14
	cmp r0, #0
	ldrh r0, [r4, #0x18]
	bne _0201DA56
	str r0, [sp]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl BlitBitmapRect4Bit
	add sp, #0x24
	pop {r4, r5, pc}
_0201DA56:
	str r0, [sp]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201D048
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201DA04

	thumb_func_start FillWindowPixelRect
FillWindowPixelRect: ; 0x0201DA74
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	add r4, r2, #0
	str r1, [sp, #8]
	ldrb r1, [r0, #7]
	add r2, r3, #0
	lsl r3, r1, #3
	add r1, sp, #8
	strh r3, [r1, #4]
	ldrb r3, [r0, #8]
	lsl r3, r3, #3
	strh r3, [r1, #6]
	ldrb r3, [r0, #4]
	ldr r1, [r0]
	mov r0, #0x2c
	mul r0, r3
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r3, sp, #0x10
	cmp r0, #0
	bne _0201DAB6
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #8
	bl sub_0201D230
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0201DAB6:
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #8
	bl sub_0201D2F4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FillWindowPixelRect

	thumb_func_start sub_0201DACC
sub_0201DACC: ; 0x0201DACC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x118
	add r5, r0, #0
	ldr r0, [sp, #0x330]
	str r1, [sp]
	str r0, [sp, #0x330]
	add r1, sp, #0x318
	ldrh r1, [r1, #0x10]
	ldr r0, [r5, #0xc]
	str r1, [sp, #0x5c]
	ldrb r1, [r5, #7]
	str r0, [sp, #0x278]
	ldrb r0, [r5, #8]
	lsl r1, r1, #0x13
	lsr r4, r1, #0x10
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0x13
	sub r1, r4, r1
	lsr r0, r0, #0x10
	str r4, [sp, #0x58]
	str r1, [sp, #8]
	cmp r1, r2
	blt _0201DAFE
	str r2, [sp, #8]
_0201DAFE:
	add r1, sp, #0x318
	ldrh r1, [r1, #0x14]
	sub r0, r0, r1
	str r1, [sp, #0x48]
	str r0, [sp, #4]
	cmp r0, r3
	blt _0201DB0E
	str r3, [sp, #4]
_0201DB0E:
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #8
	ble _0201DB1E
	mov r0, #1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201DB1E:
	ldr r0, [sp, #4]
	cmp r0, #8
	ble _0201DB2C
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201DB2C:
	ldrh r0, [r5, #0xa]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _0201DB38
	bl sub_0201E4AC
_0201DB38:
	cmp r4, #3
	bls _0201DB40
	bl sub_0201EC3C
_0201DB40:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201DB4C: ; jump table
	.short _0201DB54 - _0201DB4C - 2 ; case 0
	.short _0201DC56 - _0201DB4C - 2 ; case 1
	.short _0201DE66 - _0201DB4C - 2 ; case 2
	.short _0201E086 - _0201DB4C - 2 ; case 3
_0201DB54:
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x70]
	mov r0, #0
	str r0, [sp, #0x274]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0201DB6A
	bl sub_0201EC3C
_0201DB6A:
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x6c]
_0201DB76:
	ldr r0, [sp]
	ldr r1, [sp, #0x70]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x274]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x270]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201DC2A
	ble _0201DC2A
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x6c]
	lsl r5, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x68]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	ldr r5, [sp, #0x6c]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x64]
	str r0, [sp, #0x60]
_0201DBC8:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201DEE8 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x68]
	str r5, [sp, #0x27c]
	add r0, r5, r0
	ldr r5, [sp, #0x26c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201DC1C
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x280]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x284]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x284]
	and r6, r5
	ldr r5, [sp, #0x280]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x270]
	cmp r0, #0
	beq _0201DC1C
	ldr r6, [sp, #0x27c]
	ldr r0, [sp, #0x64]
	add r6, r6, r0
	ldr r0, [sp, #0x60]
	strb r5, [r0, r6]
_0201DC1C:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201DBC8
_0201DC2A:
	ldr r0, [sp, #0x270]
	cmp r0, #0
	beq _0201DC38
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201DC3E
_0201DC38:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201DC3E:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x274]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x274]
	cmp r1, r0
	blt _0201DB76
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201DC56:
	ldr r0, [sp]
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x84]
	mov r0, #0
	str r0, [sp, #0x268]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201DD52
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x80]
_0201DC82:
	ldr r0, [sp, #0x25c]
	ldr r1, [sp, #0x84]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x258]
	ldr r0, [sp, #0x268]
	ldr r6, [sp, #0x80]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x260]
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x264]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x264]
	str r6, [sp, #0x7c]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	ldr r5, [sp, #0x80]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x78]
	str r0, [sp, #0x74]
_0201DCCC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201DEE8 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x7c]
	str r5, [sp, #0x288]
	add r0, r5, r0
	ldr r5, [sp, #0x258]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201DD20
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x28c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x290]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x290]
	and r6, r5
	ldr r5, [sp, #0x28c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _0201DD20
	ldr r6, [sp, #0x288]
	ldr r0, [sp, #0x78]
	add r6, r6, r0
	ldr r0, [sp, #0x74]
	strb r5, [r0, r6]
_0201DD20:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201DCCC
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _0201DD3A
	ldr r0, [sp, #0x264]
	add r0, r0, #2
	str r0, [sp, #0x264]
	b _0201DD40
_0201DD3A:
	ldr r0, [sp, #0x264]
	add r0, r0, #1
	str r0, [sp, #0x264]
_0201DD40:
	ldr r0, [sp, #0x25c]
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x268]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x268]
	cmp r1, r0
	blt _0201DC82
_0201DD52:
	ldr r0, [sp]
	add r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x98]
	mov r0, #0
	str r0, [sp, #0x254]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0201DD6E
	bl sub_0201EC3C
_0201DD6E:
	ldr r0, [sp, #0x5c]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x94]
_0201DD80:
	ldr r0, [sp]
	ldr r1, [sp, #0x98]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x24c]
	ldr r0, [sp, #0x254]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x250]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x294]
	sub r0, #8
	str r0, [sp, #0x294]
	cmp r0, #0
	ble _0201DE3A
	ble _0201DE3A
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x94]
	lsl r5, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x90]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	ldr r5, [sp, #0x94]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x8c]
	str r0, [sp, #0x88]
_0201DDD8:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201DEE8 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x298]
	add r0, r5, r0
	ldr r5, [sp, #0x24c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201DE2C
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x29c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2a0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2a0]
	and r6, r5
	ldr r5, [sp, #0x29c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _0201DE2C
	ldr r6, [sp, #0x298]
	ldr r0, [sp, #0x8c]
	add r6, r6, r0
	ldr r0, [sp, #0x88]
	strb r5, [r0, r6]
_0201DE2C:
	ldr r0, [sp, #0x294]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201DDD8
_0201DE3A:
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _0201DE48
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201DE4E
_0201DE48:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201DE4E:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x254]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x254]
	cmp r1, r0
	blt _0201DD80
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201DE66:
	ldr r0, [sp]
	mov r1, #7
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x244]
	mov r0, #0
	str r0, [sp, #0x248]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x40]
_0201DE86:
	ldr r0, [sp, #0x23c]
	ldr r1, [sp, #0xa8]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x238]
	ldr r0, [sp, #0x248]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x240]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201DF42
	ble _0201DF42
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x244]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x244]
	str r6, [sp, #0xa4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201DEE8 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xa0]
	str r0, [sp, #0x9c]
_0201DED8:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201DEE8 ; =0x00003FE0
	b _0201DEEC
	nop
_0201DEE8: .word 0x00003FE0
_0201DEEC:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xa4]
	str r5, [sp, #0x2a4]
	add r0, r5, r0
	ldr r5, [sp, #0x238]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201DF34
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2a8]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2ac]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2ac]
	and r6, r5
	ldr r5, [sp, #0x2a8]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x240]
	cmp r0, #0
	beq _0201DF34
	ldr r6, [sp, #0x2a4]
	ldr r0, [sp, #0xa0]
	add r6, r6, r0
	ldr r0, [sp, #0x9c]
	strb r5, [r0, r6]
_0201DF34:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201DED8
_0201DF42:
	ldr r0, [sp, #0x240]
	cmp r0, #0
	beq _0201DF50
	ldr r0, [sp, #0x244]
	add r0, r0, #2
	str r0, [sp, #0x244]
	b _0201DF56
_0201DF50:
	ldr r0, [sp, #0x244]
	add r0, r0, #1
	str r0, [sp, #0x244]
_0201DF56:
	ldr r0, [sp, #0x23c]
	add r0, r0, #4
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x248]
	add r0, r0, #1
	str r0, [sp, #0x248]
	cmp r0, #8
	blt _0201DE86
	ldr r0, [sp]
	mov r2, #0
	add r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #0x48]
	mov r1, #1
	add r0, #8
	str r0, [sp, #0x48]
_0201DF76:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201DF84
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201DF84:
	add r2, r2, #1
	cmp r2, #8
	blt _0201DF76
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xb8]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	bgt _0201DFA4
	bl sub_0201EC3C
_0201DFA4:
	ldr r0, [sp]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x230]
	ldr r0, [sp, #0x20]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x234]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201E058
	ble _0201E058
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xb4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xb0]
	str r0, [sp, #0xac]
_0201DFF6:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201E308 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xb4]
	str r5, [sp, #0x2b0]
	add r0, r5, r0
	ldr r5, [sp, #0x230]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201E04A
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2b4]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2b8]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2b8]
	and r6, r5
	ldr r5, [sp, #0x2b4]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x234]
	cmp r0, #0
	beq _0201E04A
	ldr r6, [sp, #0x2b0]
	ldr r0, [sp, #0xb0]
	add r6, r6, r0
	ldr r0, [sp, #0xac]
	strb r5, [r0, r6]
_0201E04A:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201DFF6
_0201E058:
	ldr r0, [sp, #0x234]
	cmp r0, #0
	beq _0201E066
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201E06C
_0201E066:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201E06C:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0201DFA4
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201E086:
	ldr r0, [sp]
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x228]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x22c]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x38]
_0201E0AA:
	ldr r0, [sp, #0x220]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x21c]
	ldr r0, [sp, #0x22c]
	ldr r6, [sp, #0x38]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x224]
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x228]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x228]
	str r6, [sp, #0xc4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	str r3, [sp, #0x34]
	add r4, r1, #0
	str r5, [sp, #0xc0]
	str r0, [sp, #0xbc]
_0201E0F6:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201E308 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xc4]
	str r5, [sp, #0x2bc]
	add r0, r5, r0
	ldr r5, [sp, #0x21c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201E14A
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2c0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2c4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2c4]
	and r6, r5
	ldr r5, [sp, #0x2c0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x224]
	cmp r0, #0
	beq _0201E14A
	ldr r6, [sp, #0x2bc]
	ldr r0, [sp, #0xc0]
	add r6, r6, r0
	ldr r0, [sp, #0xbc]
	strb r5, [r0, r6]
_0201E14A:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201E0F6
	ldr r0, [sp, #0x224]
	cmp r0, #0
	beq _0201E164
	ldr r0, [sp, #0x228]
	add r0, r0, #2
	str r0, [sp, #0x228]
	b _0201E16A
_0201E164:
	ldr r0, [sp, #0x228]
	add r0, r0, #1
	str r0, [sp, #0x228]
_0201E16A:
	ldr r0, [sp, #0x220]
	add r0, r0, #4
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x22c]
	add r0, r0, #1
	str r0, [sp, #0x22c]
	cmp r0, #8
	blt _0201E0AA
	ldr r0, [sp]
	str r0, [sp, #0x20c]
	add r0, #0x20
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x214]
	mov r0, #0
	str r0, [sp, #0x218]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xd4]
	add r0, #8
	str r0, [sp, #0xd4]
_0201E192:
	ldr r0, [sp, #0x20c]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0]
	ldr r2, [sp, #0xd4]
	str r0, [sp, #0x208]
	ldr r0, [sp, #0x218]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x210]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x2c8]
	sub r0, #8
	str r0, [sp, #0x2c8]
	cmp r0, #0
	ble _0201E24C
	ble _0201E24C
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x214]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x214]
	str r6, [sp, #0xd0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xcc]
	str r0, [sp, #0xc8]
_0201E1EA:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201E308 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xd0]
	str r5, [sp, #0x2cc]
	add r0, r5, r0
	ldr r5, [sp, #0x208]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201E23E
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2d0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2d4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2d4]
	and r6, r5
	ldr r5, [sp, #0x2d0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x210]
	cmp r0, #0
	beq _0201E23E
	ldr r6, [sp, #0x2cc]
	ldr r0, [sp, #0xcc]
	add r6, r6, r0
	ldr r0, [sp, #0xc8]
	strb r5, [r0, r6]
_0201E23E:
	ldr r0, [sp, #0x2c8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201E1EA
_0201E24C:
	ldr r0, [sp, #0x210]
	cmp r0, #0
	beq _0201E25A
	ldr r0, [sp, #0x214]
	add r0, r0, #2
	str r0, [sp, #0x214]
	b _0201E260
_0201E25A:
	ldr r0, [sp, #0x214]
	add r0, r0, #1
	str r0, [sp, #0x214]
_0201E260:
	ldr r0, [sp, #0x20c]
	add r0, r0, #4
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x218]
	add r0, r0, #1
	str r0, [sp, #0x218]
	cmp r0, #8
	blt _0201E192
	ldr r0, [sp]
	mov r2, #0
	str r0, [sp, #0x1fc]
	add r0, #0x40
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x48]
	mov r1, #1
	add r0, #8
	str r0, [sp, #0x48]
	str r0, [sp, #0x204]
_0201E284:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201E292
	ldr r0, [sp, #0x204]
	add r0, r0, #1
	str r0, [sp, #0x204]
_0201E292:
	add r2, r2, #1
	cmp r2, #8
	blt _0201E284
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	str r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xe4]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201E388
_0201E2B0:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0xe4]
	ldr r0, [r0]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x1f8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x200]
	ldr r0, [sp, #0x204]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x204]
	str r6, [sp, #0xe0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201E308 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	ldr r3, [sp, #0x34]
	add r4, r1, #0
	str r5, [sp, #0xdc]
	str r0, [sp, #0xd8]
_0201E2F8:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201E308 ; =0x00003FE0
	b _0201E30C
	nop
_0201E308: .word 0x00003FE0
_0201E30C:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xe0]
	str r5, [sp, #0x2d8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f8]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201E354
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2dc]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2e0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2e0]
	and r6, r5
	ldr r5, [sp, #0x2dc]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x200]
	cmp r0, #0
	beq _0201E354
	ldr r6, [sp, #0x2d8]
	ldr r0, [sp, #0xdc]
	add r6, r6, r0
	ldr r0, [sp, #0xd8]
	strb r5, [r0, r6]
_0201E354:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201E2F8
	ldr r0, [sp, #0x200]
	cmp r0, #0
	beq _0201E36E
	ldr r0, [sp, #0x204]
	add r0, r0, #2
	str r0, [sp, #0x204]
	b _0201E374
_0201E36E:
	ldr r0, [sp, #0x204]
	add r0, r0, #1
	str r0, [sp, #0x204]
_0201E374:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x1c]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _0201E2B0
_0201E388:
	ldr r0, [sp]
	mov r2, #0
	add r0, #0x60
	str r0, [sp]
	mov r1, #1
_0201E392:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201E3A0
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201E3A0:
	add r2, r2, #1
	cmp r2, #8
	blt _0201E392
	ldr r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xf4]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	bgt _0201E3BE
	bl sub_0201EC3C
_0201E3BE:
	ldr r0, [sp, #0x5c]
	add r0, #8
	str r0, [sp, #0x5c]
_0201E3C4:
	ldr r0, [sp]
	ldr r1, [sp, #0xf4]
	ldr r0, [r0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x1f0]
	ldr r0, [sp, #0x18]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1f4]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x2e4]
	sub r0, #8
	str r0, [sp, #0x2e4]
	cmp r0, #0
	ble _0201E47E
	ble _0201E47E
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, _0201E6F0 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xf0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201E6F0 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xec]
	str r0, [sp, #0xe8]
_0201E41C:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201E6F0 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xf0]
	str r5, [sp, #0x2e8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f0]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201E470
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2ec]
	ldrb r5, [r0, r7]
	mov ip, r5
	mov r5, #0xf0
	asr r5, r6
	mov r6, ip
	and r6, r5
	ldr r5, [sp, #0x2ec]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x1f4]
	cmp r0, #0
	beq _0201E470
	ldr r6, [sp, #0x2e8]
	ldr r0, [sp, #0xec]
	add r6, r6, r0
	ldr r0, [sp, #0xe8]
	strb r5, [r0, r6]
_0201E470:
	ldr r0, [sp, #0x2e4]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201E41C
_0201E47E:
	ldr r0, [sp, #0x1f4]
	cmp r0, #0
	beq _0201E48C
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201E492
_0201E48C:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201E492:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0201E3C4
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0201DACC

	thumb_func_start sub_0201E4AC
sub_0201E4AC: ; 0x0201E4AC
	lsl r1, r2, #2
	mul r1, r3
	ldr r3, [r5]
	ldrb r2, [r5, #9]
	ldr r0, [sp]
	ldr r3, [r3]
	lsl r1, r1, #3
	bl sub_0201CBE4
	str r0, [sp, #0x1ec]
	cmp r4, #3
	bhi _0201E59E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201E4D0: ; jump table
	.short _0201E4D8 - _0201E4D0 - 2 ; case 0
	.short _0201E5A0 - _0201E4D0 - 2 ; case 1
	.short _0201E74C - _0201E4D0 - 2 ; case 2
	.short _0201E8F0 - _0201E4D0 - 2 ; case 3
_0201E4D8:
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10c]
	mov r0, #0
	str r0, [sp, #0x1e8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201E59E
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x108]
_0201E4F8:
	ldr r1, [sp, #0x10c]
	ldr r0, [sp, #0x1e8]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x310]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201E57C
	ble _0201E57C
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x108]
	lsl r1, r0, #3
	ldr r0, _0201E6F4 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x100]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x104]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201E6F4 ; =0x00007FC0
	ldr r2, [sp, #0x108]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0xfc]
	str r0, [sp, #0xf8]
_0201E544:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201E6F4 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x104]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201E570
	ldr r0, [sp, #0x100]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x310]
	cmp r0, #0
	beq _0201E570
	ldr r0, [sp, #0xfc]
	add r2, r3, r0
	ldr r0, [sp, #0xf8]
	strb r1, [r0, r2]
_0201E570:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201E544
_0201E57C:
	ldr r0, [sp, #0x310]
	cmp r0, #0
	beq _0201E58A
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201E590
_0201E58A:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201E590:
	ldr r0, [sp, #0x1e8]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1e8]
	cmp r1, r0
	blt _0201E4F8
_0201E59E:
	b _0201EC36
_0201E5A0:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1e0]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x124]
	mov r0, #0
	str r0, [sp, #0x1e4]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201E666
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x120]
_0201E5CA:
	ldr r1, [sp, #0x124]
	ldr r0, [sp, #0x1e4]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30c]
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1e0]
	ldr r2, [sp, #0x120]
	lsl r1, r0, #3
	ldr r0, _0201E6F4 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x118]
	ldr r0, [sp, #0x1e0]
	str r2, [sp, #0x11c]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201E6F4 ; =0x00007FC0
	ldr r2, [sp, #0x120]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	mov r4, #0
	str r2, [sp, #0x114]
	str r0, [sp, #0x110]
_0201E60E:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201E6F4 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x11c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201E63A
	ldr r0, [sp, #0x118]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x30c]
	cmp r0, #0
	beq _0201E63A
	ldr r0, [sp, #0x114]
	add r2, r3, r0
	ldr r0, [sp, #0x110]
	strb r1, [r0, r2]
_0201E63A:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201E60E
	ldr r0, [sp, #0x30c]
	cmp r0, #0
	beq _0201E652
	ldr r0, [sp, #0x1e0]
	add r0, r0, #2
	str r0, [sp, #0x1e0]
	b _0201E658
_0201E652:
	ldr r0, [sp, #0x1e0]
	add r0, r0, #1
	str r0, [sp, #0x1e0]
_0201E658:
	ldr r0, [sp, #0x1e4]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1e4]
	cmp r1, r0
	blt _0201E5CA
_0201E666:
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x308]
	add r0, #0x40
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x13c]
	mov r0, #0
	str r0, [sp, #0x1dc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201E74A
	ldr r0, [sp, #0x5c]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x138]
_0201E692:
	ldr r1, [sp, #0x13c]
	ldr r0, [sp, #0x1dc]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1d8]
	ldr r5, [sp, #0x5c]
	cmp r7, #0
	ble _0201E724
	ble _0201E724
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x138]
	lsl r1, r0, #3
	ldr r0, _0201E6F4 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x130]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x134]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201E6F4 ; =0x00007FC0
	ldr r2, [sp, #0x138]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x12c]
	str r0, [sp, #0x128]
_0201E6E0:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201E6F4 ; =0x00007FC0
	b _0201E6F8
	nop
_0201E6F0: .word 0x00003FE0
_0201E6F4: .word 0x00007FC0
_0201E6F8:
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x134]
	add r2, r3, r0
	ldr r0, [sp, #0x308]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201E71A
	ldr r0, [sp, #0x130]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1d8]
	cmp r0, #0
	beq _0201E71A
	ldr r0, [sp, #0x12c]
	add r2, r3, r0
	ldr r0, [sp, #0x128]
	strb r1, [r0, r2]
_0201E71A:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201E6E0
_0201E724:
	ldr r0, [sp, #0x1d8]
	cmp r0, #0
	beq _0201E732
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201E738
_0201E732:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201E738:
	ldr r0, [sp, #0x308]
	add r0, #8
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x1dc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1dc]
	cmp r1, r0
	blt _0201E692
_0201E74A:
	b _0201EC36
_0201E74C:
	ldr r0, [sp, #0x48]
	mov r1, #7
	str r0, [sp, #0x1d0]
	mov r0, #0
	str r0, [sp, #0x1d4]
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x150]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x30]
_0201E76A:
	ldr r1, [sp, #0x150]
	ldr r0, [sp, #0x1d4]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x304]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201E7EE
	ble _0201E7EE
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1d0]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x148]
	ldr r0, [sp, #0x1d0]
	str r2, [sp, #0x14c]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x144]
	str r0, [sp, #0x140]
_0201E7B6:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201EA5C ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x14c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201E7E2
	ldr r0, [sp, #0x148]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x304]
	cmp r0, #0
	beq _0201E7E2
	ldr r0, [sp, #0x144]
	add r2, r3, r0
	ldr r0, [sp, #0x140]
	strb r1, [r0, r2]
_0201E7E2:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201E7B6
_0201E7EE:
	ldr r0, [sp, #0x304]
	cmp r0, #0
	beq _0201E7FC
	ldr r0, [sp, #0x1d0]
	add r0, r0, #2
	str r0, [sp, #0x1d0]
	b _0201E802
_0201E7FC:
	ldr r0, [sp, #0x1d0]
	add r0, r0, #1
	str r0, [sp, #0x1d0]
_0201E802:
	ldr r0, [sp, #0x1d4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x1d4]
	cmp r0, #8
	blt _0201E76A
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #8
	str r0, [sp, #0x48]
	add r7, #0x80
	mov r0, #0
	mov r2, #1
_0201E81C:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201E82A
	ldr r1, [sp, #0x48]
	add r1, r1, #1
	str r1, [sp, #0x48]
_0201E82A:
	add r0, r0, #1
	cmp r0, #8
	blt _0201E81C
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x164]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201E8EE
_0201E846:
	ldr r1, [sp, #0x164]
	ldr r0, [sp, #0x14]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x300]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201E8CA
	ble _0201E8CA
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x15c]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x160]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x158]
	str r0, [sp, #0x154]
_0201E892:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201EA5C ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x160]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201E8BE
	ldr r0, [sp, #0x15c]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x300]
	cmp r0, #0
	beq _0201E8BE
	ldr r0, [sp, #0x158]
	add r2, r3, r0
	ldr r0, [sp, #0x154]
	strb r1, [r0, r2]
_0201E8BE:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201E892
_0201E8CA:
	ldr r0, [sp, #0x300]
	cmp r0, #0
	beq _0201E8D8
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201E8DE
_0201E8D8:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201E8DE:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r0, r0, #1
	sub r1, #8
	add r7, #8
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0201E846
_0201E8EE:
	b _0201EC36
_0201E8F0:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1c8]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x1cc]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x28]
_0201E912:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1cc]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2fc]
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1c8]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x170]
	ldr r0, [sp, #0x1c8]
	str r2, [sp, #0x174]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	mov r4, #0
	str r6, [sp, #0x24]
	str r2, [sp, #0x16c]
	str r0, [sp, #0x168]
_0201E958:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201EA5C ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x174]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201E984
	ldr r0, [sp, #0x170]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2fc]
	cmp r0, #0
	beq _0201E984
	ldr r0, [sp, #0x16c]
	add r2, r3, r0
	ldr r0, [sp, #0x168]
	strb r1, [r0, r2]
_0201E984:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201E958
	ldr r0, [sp, #0x2fc]
	cmp r0, #0
	beq _0201E99C
	ldr r0, [sp, #0x1c8]
	add r0, r0, #2
	str r0, [sp, #0x1c8]
	b _0201E9A2
_0201E99C:
	ldr r0, [sp, #0x1c8]
	add r0, r0, #1
	str r0, [sp, #0x1c8]
_0201E9A2:
	ldr r0, [sp, #0x1cc]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x1cc]
	cmp r0, #8
	blt _0201E912
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x2f8]
	add r0, #0x40
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c0]
	mov r0, #0
	str r0, [sp, #0x1c4]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x188]
	add r0, #8
	str r0, [sp, #0x188]
_0201E9C6:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c4]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1bc]
	ldr r5, [sp, #0x188]
	cmp r7, #0
	ble _0201EA4C
	ble _0201EA4C
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1c0]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x180]
	ldr r0, [sp, #0x1c0]
	str r2, [sp, #0x184]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201EA5C ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x17c]
	str r0, [sp, #0x178]
_0201EA14:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201EA5C ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x184]
	add r2, r3, r0
	ldr r0, [sp, #0x2f8]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201EA42
	ldr r0, [sp, #0x180]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1bc]
	cmp r0, #0
	beq _0201EA42
	ldr r0, [sp, #0x17c]
	add r2, r3, r0
	ldr r0, [sp, #0x178]
	strb r1, [r0, r2]
_0201EA42:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201EA14
_0201EA4C:
	ldr r0, [sp, #0x1bc]
	cmp r0, #0
	beq _0201EA60
	ldr r0, [sp, #0x1c0]
	add r0, r0, #2
	str r0, [sp, #0x1c0]
	b _0201EA66
	nop
_0201EA5C: .word 0x00007FC0
_0201EA60:
	ldr r0, [sp, #0x1c0]
	add r0, r0, #1
	str r0, [sp, #0x1c0]
_0201EA66:
	ldr r0, [sp, #0x2f8]
	add r0, #8
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x1c4]
	add r0, r0, #1
	str r0, [sp, #0x1c4]
	cmp r0, #8
	blt _0201E9C6
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #8
	add r7, #0x80
	str r0, [sp, #0x48]
	str r0, [sp, #0x1b8]
	mov r0, #0
	mov r2, #1
_0201EA86:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201EA94
	ldr r1, [sp, #0x1b8]
	add r1, r1, #1
	str r1, [sp, #0x1b8]
_0201EA94:
	add r0, r0, #1
	cmp r0, #8
	blt _0201EA86
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	str r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x19c]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201EB4E
_0201EAB2:
	ldr r1, [sp, #0x19c]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x1b8]
	mov r3, #0x38
	lsl r1, r0, #3
	ldr r0, _0201EC44 ; =0x00007FC0
	ldr r5, [sp, #0x5c]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x194]
	ldr r0, [sp, #0x1b8]
	str r2, [sp, #0x198]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201EC44 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	ldr r6, [sp, #0x24]
	mov r4, #0
	str r2, [sp, #0x190]
	str r0, [sp, #0x18c]
_0201EAF4:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201EC44 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x198]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201EB20
	ldr r0, [sp, #0x194]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0201EB20
	ldr r0, [sp, #0x190]
	add r2, r3, r0
	ldr r0, [sp, #0x18c]
	strb r1, [r0, r2]
_0201EB20:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201EAF4
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0201EB38
	ldr r0, [sp, #0x1b8]
	add r0, r0, #2
	str r0, [sp, #0x1b8]
	b _0201EB3E
_0201EB38:
	ldr r0, [sp, #0x1b8]
	add r0, r0, #1
	str r0, [sp, #0x1b8]
_0201EB3E:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r0, #1
	sub r1, #8
	add r7, #8
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0201EAB2
_0201EB4E:
	ldr r0, [sp, #0x1ec]
	mov r2, #0
	str r0, [sp, #0x2f0]
	add r0, #0xc0
	str r0, [sp, #0x2f0]
	mov r1, #1
_0201EB5A:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201EB68
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201EB68:
	add r2, r2, #1
	cmp r2, #8
	blt _0201EB5A
	ldr r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1b0]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201EC36
	ldr r0, [sp, #0x5c]
	add r0, #8
	str r0, [sp, #0x5c]
_0201EB88:
	ldr r1, [sp, #0x1b0]
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1b4]
	ldr r5, [sp, #0x5c]
	cmp r7, #0
	ble _0201EC0E
	ble _0201EC0E
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201EC44 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x1a8]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x1ac]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201EC44 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x1a4]
	str r0, [sp, #0x1a0]
_0201EBD6:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201EC44 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x1ac]
	add r2, r3, r0
	ldr r0, [sp, #0x2f0]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201EC04
	ldr r0, [sp, #0x1a8]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1b4]
	cmp r0, #0
	beq _0201EC04
	ldr r0, [sp, #0x1a4]
	add r2, r3, r0
	ldr r0, [sp, #0x1a0]
	strb r1, [r0, r2]
_0201EC04:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201EBD6
_0201EC0E:
	ldr r0, [sp, #0x1b4]
	cmp r0, #0
	beq _0201EC1C
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201EC22
_0201EC1C:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201EC22:
	ldr r0, [sp, #0x2f0]
	ldr r1, [sp, #4]
	add r0, #8
	str r0, [sp, #0x2f0]
	ldr r0, [sp, #0xc]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0201EB88
_0201EC36:
	ldr r0, [sp, #0x1ec]
	bl FreeToHeap
	thumb_func_end sub_0201E4AC

	thumb_func_start sub_0201EC3C
sub_0201EC3C: ; 0x0201EC3C
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
	nop
_0201EC44: .word 0x00007FC0
	thumb_func_end sub_0201EC3C

	thumb_func_start ScrollWindow
ScrollWindow: ; 0x0201EC48
	push {r4, r5, r6, lr}
	ldrb r6, [r0, #4]
	mov r5, #0x2c
	ldr r4, [r0]
	mul r5, r6
	add r4, r4, r5
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _0201EC60
	bl sub_0201EC68
	pop {r4, r5, r6, pc}
_0201EC60:
	bl sub_0201ED54
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrollWindow

	thumb_func_start sub_0201EC68
sub_0201EC68: ; 0x0201EC68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r0, #0
	add r0, r1, #0
	lsl r3, r6, #0x18
	lsl r1, r6, #0x10
	str r2, [sp]
	orr r1, r3
	lsl r5, r6, #8
	orr r1, r5
	orr r1, r6
	str r1, [sp, #4]
	ldrb r1, [r4, #7]
	ldrb r3, [r4, #8]
	ldr r2, [r4, #0xc]
	str r1, [sp, #8]
	mul r1, r3
	lsl r1, r1, #5
	str r1, [sp, #0xc]
	cmp r0, #3
	bhi _0201ED4E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201ECA0: ; jump table
	.short _0201ECA8 - _0201ECA0 - 2 ; case 0
	.short _0201ECF6 - _0201ECA0 - 2 ; case 1
	.short _0201ED4E - _0201ECA0 - 2 ; case 2
	.short _0201ED4E - _0201ECA0 - 2 ; case 3
_0201ECA8:
	add r0, r1, #0
	mov r7, #0
	cmp r0, #0
	ble _0201ED4E
	mov r0, #7
	mov lr, r0
_0201ECB4:
	ldr r3, [sp]
	mov r4, #0
	add r5, r7, #0
_0201ECBA:
	mov r0, #7
	add r6, r3, #0
	and r6, r0
	add r1, r3, #0
	mov r0, lr
	bic r1, r0
	ldr r0, [sp, #8]
	mul r1, r0
	add r0, r6, #0
	orr r0, r1
	lsl r0, r0, #2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201ECDC
	ldr r0, [r2, r1]
	b _0201ECDE
_0201ECDC:
	ldr r0, [sp, #4]
_0201ECDE:
	add r4, r4, #1
	str r0, [r2, r5]
	add r3, r3, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0201ECBA
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201ECB4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0201ECF6:
	add r0, r1, #0
	sub r0, r0, #4
	add r2, r2, r0
	add r0, r1, #0
	mov r7, #0
	cmp r0, #0
	ble _0201ED4E
	mov r0, #7
	mov ip, r0
_0201ED08:
	ldr r4, [sp]
	mov r5, #0
	add r3, r7, #0
_0201ED0E:
	mov r0, #7
	add r6, r4, #0
	and r6, r0
	add r1, r4, #0
	mov r0, ip
	bic r1, r0
	ldr r0, [sp, #8]
	mul r1, r0
	add r0, r6, #0
	orr r0, r1
	lsl r0, r0, #2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201ED36
	sub r0, r2, r1
	ldr r1, [r0]
	sub r0, r2, r3
	str r1, [r0]
	b _0201ED3C
_0201ED36:
	ldr r0, [sp, #4]
	sub r1, r2, r3
	str r0, [r1]
_0201ED3C:
	add r5, r5, #1
	add r4, r4, #1
	add r3, r3, #4
	cmp r5, #8
	blt _0201ED0E
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201ED08
_0201ED4E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201EC68

	thumb_func_start sub_0201ED54
sub_0201ED54: ; 0x0201ED54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r3, #0
	add r4, r0, #0
	str r2, [sp]
	lsl r2, r6, #0x18
	lsl r0, r6, #0x10
	orr r0, r2
	ldrb r2, [r4, #7]
	ldr r3, [r4, #0xc]
	lsl r5, r6, #8
	orr r0, r5
	ldrb r4, [r4, #8]
	str r2, [sp, #0x10]
	orr r0, r6
	mul r2, r4
	lsl r2, r2, #6
	str r2, [sp, #0x1c]
	cmp r1, #3
	bls _0201ED7E
	b _0201EE84
_0201ED7E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201ED8A: ; jump table
	.short _0201ED92 - _0201ED8A - 2 ; case 0
	.short _0201EE00 - _0201ED8A - 2 ; case 1
	.short _0201EE84 - _0201ED8A - 2 ; case 2
	.short _0201EE84 - _0201ED8A - 2 ; case 3
_0201ED92:
	mov r1, #0
	str r1, [sp, #0xc]
	add r1, r2, #0
	cmp r1, #0
	ble _0201EE84
	add r1, r1, #4
	str r1, [sp, #0x14]
	mov r1, #7
	mov lr, r1
_0201EDA4:
	ldr r4, [sp]
	ldr r5, [sp, #0xc]
	mov r7, #0
_0201EDAA:
	mov r1, #7
	add r6, r4, #0
	and r6, r1
	add r2, r4, #0
	mov r1, lr
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0
	orr r1, r2
	lsl r2, r1, #3
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bge _0201EDD0
	ldr r2, [r3, r1]
	str r2, [r3, r5]
	b _0201EDD2
_0201EDD0:
	str r0, [r3, r5]
_0201EDD2:
	add r2, r1, #4
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bge _0201EDE2
	ldr r2, [r3, r2]
	add r1, r5, #4
	str r2, [r3, r1]
	b _0201EDE6
_0201EDE2:
	add r1, r5, #4
	str r0, [r3, r1]
_0201EDE6:
	add r7, r7, #1
	add r4, r4, #1
	add r5, #8
	cmp r7, #8
	blt _0201EDAA
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #0xc]
	cmp r2, r1
	blt _0201EDA4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0201EE00:
	add r1, r2, #0
	sub r1, #8
	add r3, r3, r1
	mov r1, #0
	str r1, [sp, #8]
	add r1, r2, #0
	cmp r1, #0
	ble _0201EE84
_0201EE10:
	mov r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	ldr r5, [sp]
	sub r1, r1, #4
	str r1, [sp, #0x18]
	mov r1, #7
	ldr r4, [sp, #8]
	mov ip, r1
_0201EE22:
	mov r1, #7
	add r6, r5, #0
	and r6, r1
	add r2, r5, #0
	mov r1, ip
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0
	orr r1, r2
	lsl r2, r1, #3
	ldr r1, [sp, #8]
	add r6, r1, r2
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	bge _0201EE4C
	sub r1, r3, r6
	ldr r2, [r1]
	sub r1, r3, r4
	str r2, [r1]
	b _0201EE50
_0201EE4C:
	sub r1, r3, r4
	str r0, [r1]
_0201EE50:
	ldr r1, [sp, #0x18]
	sub r2, r6, #4
	cmp r2, r1
	bge _0201EE64
	sub r1, r3, r2
	sub r2, r4, #4
	ldr r1, [r1]
	sub r2, r3, r2
	str r1, [r2]
	b _0201EE6A
_0201EE64:
	sub r1, r4, #4
	sub r1, r3, r1
	str r0, [r1]
_0201EE6A:
	ldr r1, [sp, #4]
	add r5, r5, #1
	add r1, r1, #1
	add r4, #8
	str r1, [sp, #4]
	cmp r1, #8
	blt _0201EE22
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #8]
	cmp r2, r1
	blt _0201EE10
_0201EE84:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201ED54

	thumb_func_start sub_0201EE88
sub_0201EE88: ; 0x0201EE88
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0201EE88

	thumb_func_start GetWindowBgId
GetWindowBgId: ; 0x0201EE8C
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end GetWindowBgId

	thumb_func_start GetWindowWidth
GetWindowWidth: ; 0x0201EE90
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end GetWindowWidth

	thumb_func_start GetWindowHeight
GetWindowHeight: ; 0x0201EE94
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end GetWindowHeight

	thumb_func_start GetWindowX
GetWindowX: ; 0x0201EE98
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end GetWindowX

	thumb_func_start GetWindowY
GetWindowY: ; 0x0201EE9C
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end GetWindowY

	thumb_func_start sub_0201EEA0
sub_0201EEA0: ; 0x0201EEA0
	ldrh r0, [r0, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	bx lr
	thumb_func_end sub_0201EEA0

	thumb_func_start sub_0201EEA8
sub_0201EEA8: ; 0x0201EEA8
	strb r1, [r0, #5]
	bx lr
	thumb_func_end sub_0201EEA8

	thumb_func_start sub_0201EEAC
sub_0201EEAC: ; 0x0201EEAC
	strb r1, [r0, #6]
	bx lr
	thumb_func_end sub_0201EEAC

	thumb_func_start sub_0201EEB0
sub_0201EEB0: ; 0x0201EEB0
	strb r1, [r0, #9]
	bx lr
	thumb_func_end sub_0201EEB0

	thumb_func_start sub_0201EEB4
sub_0201EEB4: ; 0x0201EEB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201EFCC
	add r0, r4, #0
	bl sub_0201EECC
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201EEB4

	thumb_func_start sub_0201EECC
sub_0201EECC: ; 0x0201EECC
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #6]
	mov r0, #1
	tst r0, r1
	beq _0201EEE6
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0xc]
	mov r0, #0
	lsl r2, r2, #1
	bl sub_0201C014
_0201EEE6:
	ldrh r1, [r4, #6]
	mov r0, #2
	tst r0, r1
	beq _0201EEFC
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldr r3, [r4, #0x38]
	mov r0, #1
	lsl r2, r2, #1
	bl sub_0201C014
_0201EEFC:
	ldrh r1, [r4, #6]
	mov r0, #4
	tst r0, r1
	beq _0201EF12
	ldr r2, [r4, #0x68]
	ldr r1, [r4, #0x60]
	ldr r3, [r4, #0x64]
	mov r0, #2
	lsl r2, r2, #1
	bl sub_0201C014
_0201EF12:
	ldrh r1, [r4, #6]
	mov r0, #8
	tst r0, r1
	beq _0201EF34
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0x94
	add r3, r4, #0
	add r1, #0x8c
	ldr r2, [r2]
	add r3, #0x90
	ldr r1, [r1]
	ldr r3, [r3]
	mov r0, #3
	lsl r2, r2, #1
	bl sub_0201C014
_0201EF34:
	ldrh r1, [r4, #6]
	mov r0, #0x10
	tst r0, r1
	beq _0201EF56
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xc0
	add r3, r4, #0
	add r1, #0xb8
	ldr r2, [r2]
	add r3, #0xbc
	ldr r1, [r1]
	ldr r3, [r3]
	mov r0, #4
	lsl r2, r2, #1
	bl sub_0201C014
_0201EF56:
	ldrh r1, [r4, #6]
	mov r0, #0x20
	tst r0, r1
	beq _0201EF78
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xec
	add r3, r4, #0
	add r1, #0xe4
	ldr r2, [r2]
	add r3, #0xe8
	ldr r1, [r1]
	ldr r3, [r3]
	mov r0, #5
	lsl r2, r2, #1
	bl sub_0201C014
_0201EF78:
	ldrh r0, [r4, #6]
	mov r3, #0x40
	tst r0, r3
	beq _0201EF98
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xd8
	add r1, #0xd0
	ldr r2, [r4, r2]
	add r3, #0xd4
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #6
	lsl r2, r2, #1
	bl sub_0201C014
_0201EF98:
	ldrh r0, [r4, #6]
	mov r3, #0x80
	tst r0, r3
	beq _0201EFB8
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xc4
	add r1, #0xbc
	ldr r2, [r4, r2]
	add r3, #0xc0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #7
	lsl r2, r2, #1
	bl sub_0201C014
_0201EFB8:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201EECC

	thumb_func_start ScheduleBgTilemapBufferTransfer
ScheduleBgTilemapBufferTransfer: ; 0x0201EFBC
	ldrh r3, [r0, #6]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strh r1, [r0, #6]
	bx lr
	.balign 4, 0
	thumb_func_end ScheduleBgTilemapBufferTransfer

	thumb_func_start sub_0201EFCC
sub_0201EFCC: ; 0x0201EFCC
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201EFF2
	ldr r1, [r4, #0x14]
	ldr r0, _0201F204 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x18]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201F208 ; =0x04000010
	str r1, [r0]
_0201EFF2:
	ldrh r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201F012
	ldr r1, [r4, #0x40]
	ldr r0, _0201F204 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x44]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201F20C ; =0x04000014
	str r1, [r0]
_0201F012:
	ldrh r1, [r4, #4]
	mov r0, #4
	tst r0, r1
	beq _0201F072
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201F03E
	ldr r1, [r4, #0x6c]
	ldr r0, _0201F204 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x70]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201F210 ; =0x04000018
	str r1, [r0]
	b _0201F072
_0201F03E:
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0
	add r1, #0x78
	add r3, r4, #0
	add r3, #0x80
	ldrh r1, [r1]
	ldr r2, [r4, #0x7c]
	ldr r3, [r3]
	add r0, sp, #0x38
	bl sub_0201FECC
	ldr r0, [r4, #0x6c]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	add r3, r4, #0
	str r0, [sp, #4]
	add r2, #0x84
	add r3, #0x88
	ldr r0, _0201F214 ; =0x04000020
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, sp, #0x38
	bl sub_020CF0AC
_0201F072:
	ldrh r1, [r4, #4]
	mov r0, #8
	tst r0, r1
	beq _0201F0E2
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201F0A2
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x98
	add r2, #0x9c
	ldr r2, [r2]
	ldr r0, [r0]
	ldr r1, _0201F204 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201F218 ; =0x0400001C
	str r1, [r0]
	b _0201F0E2
_0201F0A2:
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r1, #0xa4
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0xa8
	add r3, #0xac
	ldrh r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, sp, #0x28
	bl sub_0201FECC
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r3, r4, #0
	str r0, [sp, #4]
	add r2, #0xb0
	add r3, #0xb4
	ldr r0, _0201F21C ; =0x04000030
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, sp, #0x28
	bl sub_020CF0AC
_0201F0E2:
	ldrh r1, [r4, #4]
	mov r0, #0x10
	tst r0, r1
	beq _0201F106
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc4
	add r2, #0xc8
	ldr r2, [r2]
	ldr r0, [r0]
	ldr r1, _0201F204 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201F220 ; =0x04001010
	str r1, [r0]
_0201F106:
	ldrh r1, [r4, #4]
	mov r0, #0x20
	tst r0, r1
	beq _0201F12A
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xf0
	add r2, #0xf4
	ldr r2, [r2]
	ldr r0, [r0]
	ldr r1, _0201F204 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201F224 ; =0x04001014
	str r1, [r0]
_0201F12A:
	ldrh r0, [r4, #4]
	mov r3, #0x40
	tst r0, r3
	beq _0201F192
	add r0, r3, #0
	add r0, #0xe4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0201F158
	ldr r1, _0201F204 ; =0x000001FF
	add r3, #0xdc
	add r2, r1, #0
	sub r2, #0xdf
	ldr r0, [r4, r3]
	ldr r2, [r4, r2]
	and r0, r1
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201F228 ; =0x04001018
	str r1, [r0]
	b _0201F192
_0201F158:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xe8
	add r2, #0xec
	add r3, #0xf0
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #0x18
	bl sub_0201FECC
	mov r3, #0x47
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #4]
	add r3, #0x1c
	ldr r0, _0201F22C ; =0x04001020
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #0x18
	bl sub_020CF0AC
_0201F192:
	ldrh r0, [r4, #4]
	mov r3, #0x80
	tst r0, r3
	beq _0201F200
	add r0, r3, #0
	add r0, #0xd0
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0201F1C6
	add r3, #0xc8
	ldr r1, [r4, r3]
	ldr r0, _0201F204 ; =0x000001FF
	add r2, r1, #0
	add r1, r0, #0
	sub r1, #0xb3
	ldr r1, [r4, r1]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201F230 ; =0x0400101C
	add sp, #0x48
	str r1, [r0]
	pop {r4, pc}
_0201F1C6:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xd4
	add r2, #0xd8
	add r3, #0xdc
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #8
	bl sub_0201FECC
	mov r3, #0x52
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #4]
	add r3, #0x1c
	ldr r0, _0201F234 ; =0x04001030
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #8
	bl sub_020CF0AC
_0201F200:
	add sp, #0x48
	pop {r4, pc}
	.balign 4, 0
_0201F204: .word 0x000001FF
_0201F208: .word 0x04000010
_0201F20C: .word 0x04000014
_0201F210: .word 0x04000018
_0201F214: .word 0x04000020
_0201F218: .word 0x0400001C
_0201F21C: .word 0x04000030
_0201F220: .word 0x04001010
_0201F224: .word 0x04001014
_0201F228: .word 0x04001018
_0201F22C: .word 0x04001020
_0201F230: .word 0x0400101C
_0201F234: .word 0x04001030
	thumb_func_end sub_0201EFCC

	thumb_func_start sub_0201F238
sub_0201F238: ; 0x0201F238
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201BE38
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201F238

	thumb_func_start sub_0201F25C
sub_0201F25C: ; 0x0201F25C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201F280
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201F25C

	thumb_func_start sub_0201F280
sub_0201F280: ; 0x0201F280
	cmp r1, #8
	bhi _0201F2C8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201F290: ; jump table
	.short _0201F2C8 - _0201F290 - 2 ; case 0
	.short _0201F2C8 - _0201F290 - 2 ; case 1
	.short _0201F2C8 - _0201F290 - 2 ; case 2
	.short _0201F2A2 - _0201F290 - 2 ; case 3
	.short _0201F2A6 - _0201F290 - 2 ; case 4
	.short _0201F2AE - _0201F290 - 2 ; case 5
	.short _0201F2B6 - _0201F290 - 2 ; case 6
	.short _0201F2BA - _0201F290 - 2 ; case 7
	.short _0201F2C2 - _0201F290 - 2 ; case 8
_0201F2A2:
	str r2, [r0, #0x1c]
	bx lr
_0201F2A6:
	ldr r1, [r0, #0x1c]
	add r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_0201F2AE:
	ldr r1, [r0, #0x1c]
	sub r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_0201F2B6:
	str r2, [r0, #0x20]
	bx lr
_0201F2BA:
	ldr r1, [r0, #0x20]
	add r1, r1, r2
	str r1, [r0, #0x20]
	bx lr
_0201F2C2:
	ldr r1, [r0, #0x20]
	sub r1, r1, r2
	str r1, [r0, #0x20]
_0201F2C8:
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201F280

	thumb_func_start sub_0201F2CC
sub_0201F2CC: ; 0x0201F2CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp]
	add r6, r0, #0
	str r2, [sp, #4]
	ldr r0, [sp, #0x38]
	str r3, [sp, #8]
	str r0, [sp, #0x38]
	ldr r0, [sp]
	add r4, r6, #0
	mov r1, #0x2c
	add r5, r0, #0
	mul r5, r1
	add r4, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _0201F2F4
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F2F4:
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x1c
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, r5
	lsl r0, r0, #0x15
	lsl r1, r1, #0x15
	ldrb r2, [r2, #0x1d]
	ldrb r3, [r3, r5]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C2F0
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_0201CB4C
	str r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	mov r0, #7
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r0, r6, r5
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0201F3B2
	ldr r0, [r4, r5]
	mov r1, #0x40
	str r0, [sp, #0xc]
	ldr r0, [r6]
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	lsl r0, r7, #1
	ldr r1, [sp, #0xc]
	mov ip, r0
	ldrh r0, [r1, r0]
	mov r3, #0
	mov r7, #0xf
	lsl r0, r0, #0x16
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x1c]
	add r2, r0, r1
_0201F35E:
	ldrb r5, [r2, r3]
	lsl r0, r3, #1
	add r1, r4, r0
	and r5, r7
	strb r5, [r4, r0]
	ldrb r0, [r2, r3]
	asr r0, r0, #4
	strb r0, [r1, #1]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x20
	blo _0201F35E
	ldr r2, [sp, #0xc]
	mov r1, ip
	ldrh r1, [r2, r1]
	add r0, r6, #0
	asr r2, r1, #0xa
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl sub_0201F434
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r5, [r4, r0]
	add r0, r4, #0
	bl FreeToHeap
	ldr r0, [sp, #0x38]
	ldrh r2, [r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r5
	tst r1, r2
	beq _0201F42A
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0201F3B2:
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r5]
	cmp r0, #1
	beq _0201F3FE
	ldr r0, [r6]
	ldr r4, [r4, r5]
	mov r1, #0x40
	bl AllocFromHeapAtEnd
	lsl r7, r7, #1
	ldrh r1, [r4, r7]
	add r5, r0, #0
	lsl r1, r1, #0x16
	lsr r2, r1, #0x10
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	mov r2, #0x40
	bl memcpy
	ldrh r1, [r4, r7]
	add r0, r6, #0
	asr r2, r1, #0xa
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl sub_0201F434
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r4, [r5, r0]
	add r0, r5, #0
	bl FreeToHeap
	b _0201F412
_0201F3FE:
	ldr r1, [r4, r5]
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r7]
	lsl r0, r0, #3
	lsl r2, r1, #6
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r4, [r0, r1]
_0201F412:
	ldr r0, [sp, #0x38]
	ldrh r2, [r0]
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0201F430 ; =0x0000FFFF
_0201F41C:
	cmp r2, r0
	beq _0201F42A
	cmp r4, r1
	bne _0201F41C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0201F42A:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0201F430: .word 0x0000FFFF
	thumb_func_end sub_0201F2CC

	thumb_func_start sub_0201F434
sub_0201F434: ; 0x0201F434
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	ldr r1, [sp]
	add r7, r2, #0
	cmp r1, #0
	beq _0201F4C0
	ldr r0, [r0]
	mov r1, #0x40
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #1
	tst r0, r1
	beq _0201F482
	mov r0, #0
	mov r5, #7
_0201F456:
	lsl r3, r0, #3
	add r2, r7, r3
	mov r1, #0
	add r3, r4, r3
_0201F45E:
	sub r6, r5, r1
	ldrb r6, [r2, r6]
	strb r6, [r3, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0201F45E
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	blo _0201F456
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	bl memcpy
_0201F482:
	ldr r0, [sp]
	mov r1, #2
	tst r0, r1
	beq _0201F4BA
	mov r5, #0
	mov r6, #7
_0201F48E:
	lsl r0, r5, #3
	add r3, r4, r0
	sub r0, r6, r5
	lsl r0, r0, #3
	add r2, r7, r0
	mov r1, #8
_0201F49A:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0201F49A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0201F48E
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	bl memcpy
_0201F4BA:
	add r0, r4, #0
	bl FreeToHeap
_0201F4C0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0201F434

	thumb_func_start sub_0201F4C4
sub_0201F4C4: ; 0x0201F4C4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_020C3B50
	cmp r0, #0
	beq _0201F4EA
	bl sub_0201F53C
	cmp r0, #0
	bne _0201F4EA
	ldr r0, [r5]
	ldr r1, [r0, #8]
	bl DC_FlushRange
	ldr r0, [r5]
	bl sub_020C26C0
_0201F4EA:
	ldr r0, [r5]
	bl sub_020C3B40
	cmp r0, #0
	beq _0201F514
	add r2, r0, #0
	add r2, #8
	beq _0201F508
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0201F508
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0201F50A
_0201F508:
	mov r1, #0
_0201F50A:
	cmp r1, #0
	beq _0201F514
	ldr r1, [r1]
	add r0, r0, r1
	b _0201F516
_0201F514:
	mov r0, #0
_0201F516:
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201F4C4

	thumb_func_start sub_0201F51C
sub_0201F51C: ; 0x0201F51C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	bl sub_0201F4C4
	cmp r4, #0
	bne _0201F532
	bl GF_AssertFail
_0201F532:
	ldr r1, [r4]
	add r0, r5, #0
	bl sub_020BE120
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201F51C

	thumb_func_start sub_0201F53C
sub_0201F53C: ; 0x0201F53C
	ldrh r2, [r0, #0x10]
	mov r1, #1
	tst r2, r1
	bne _0201F54A
	ldrh r0, [r0, #0x20]
	tst r0, r1
	beq _0201F54E
_0201F54A:
	mov r0, #1
	bx lr
_0201F54E:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201F53C

	thumb_func_start sub_0201F554
sub_0201F554: ; 0x0201F554
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020BEFD4
	ldr r1, _0201F588 ; =0x021DA558
	add r0, r4, #0
	bl sub_020D4928
	ldr r1, _0201F58C ; =0x021DA51C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r6, #0
	str r2, [r1, #0x7c]
	bl sub_020BF004
	bl sub_020BEF98
	add r0, r5, #0
	bl sub_020BFCC8
	pop {r4, r5, r6, pc}
	nop
_0201F588: .word 0x021DA558
_0201F58C: .word 0x021DA51C
	thumb_func_end sub_0201F554

	thumb_func_start sub_0201F590
sub_0201F590: ; 0x0201F590
	push {r3, lr}
	sub sp, #8
	mov r1, #4
	str r1, [sp]
	ldr r1, _0201F5B0 ; =sub_0201F5B8
	mov r2, #2
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02026EB4
	ldr r1, _0201F5B4 ; =0x021D15A0
	str r0, [r1]
	add sp, #8
	pop {r3, pc}
	nop
_0201F5B0: .word sub_0201F5B8
_0201F5B4: .word 0x021D15A0
	thumb_func_end sub_0201F590

	thumb_func_start sub_0201F5B8
sub_0201F5B8: ; 0x0201F5B8
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_02022C60
	ldr r0, _0201F624 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0201F628 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0201F62C ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020CF82C
	mov r0, #0
	ldr r2, _0201F630 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020CF910
	ldr r1, _0201F634 ; =0xBFFF0000
	ldr r0, _0201F638 ; =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_0201F624: .word 0x04000008
_0201F628: .word 0xFFFFCFFD
_0201F62C: .word 0x0000CFFB
_0201F630: .word 0x00007FFF
_0201F634: .word 0xBFFF0000
_0201F638: .word 0x04000580
	thumb_func_end sub_0201F5B8

	thumb_func_start sub_0201F63C
sub_0201F63C: ; 0x0201F63C
	ldr r0, _0201F644 ; =0x021D15A0
	ldr r3, _0201F648 ; =sub_02026F54
	ldr r0, [r0]
	bx r3
	.balign 4, 0
_0201F644: .word 0x021D15A0
_0201F648: .word sub_02026F54
	thumb_func_end sub_0201F63C

	thumb_func_start sub_0201F64C
sub_0201F64C: ; 0x0201F64C
	push {r4, lr}
	add r4, r1, #0
	bl sub_020C3B40
	cmp r4, #0
	beq _0201F662
	add r1, r4, #0
	bl sub_020BED00
	mov r0, #1
	pop {r4, pc}
_0201F662:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201F64C

	thumb_func_start sub_0201F668
sub_0201F668: ; 0x0201F668
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bne _0201F676
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F676:
	mov r1, #0
	str r1, [r5, #8]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #4]
	str r1, [sp]
	cmp r5, #0
	beq _0201F774
	bl sub_020BE3DC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020BE3F0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020BE51C
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _0201F6B6
	ldr r3, _0201F77C ; =0x02110924
	mov r1, #0
	ldr r3, [r3]
	add r0, r6, #0
	add r2, r1, #0
	blx r3
	add r7, r0, #0
	bne _0201F6B8
	mov r0, #0
	str r0, [sp, #8]
	b _0201F6B8
_0201F6B6:
	mov r7, #0
_0201F6B8:
	cmp r4, #0
	beq _0201F6D2
	ldr r3, _0201F77C ; =0x02110924
	add r0, r4, #0
	ldr r3, [r3]
	mov r1, #1
	mov r2, #0
	blx r3
	add r6, r0, #0
	bne _0201F6D4
	mov r0, #0
	str r0, [sp, #4]
	b _0201F6D4
_0201F6D2:
	mov r6, #0
_0201F6D4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0201F6F4
	ldr r3, _0201F780 ; =0x0211092C
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3]
	and r1, r2
	mov r2, #0
	blx r3
	add r4, r0, #0
	bne _0201F6F6
	mov r0, #0
	str r0, [sp]
	b _0201F6F6
_0201F6F4:
	mov r4, #0
_0201F6F6:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0201F712
	ldr r1, _0201F784 ; =0x02110928
	add r0, r7, #0
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	beq _0201F70C
	bl GF_AssertFail
_0201F70C:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F712:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0201F72E
	ldr r1, _0201F784 ; =0x02110928
	add r0, r6, #0
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	beq _0201F728
	bl GF_AssertFail
_0201F728:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F72E:
	ldr r0, [sp]
	cmp r0, #0
	bne _0201F74A
	ldr r1, _0201F788 ; =0x02110930
	add r0, r4, #0
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	beq _0201F744
	bl GF_AssertFail
_0201F744:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F74A:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020BE404
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020BE530
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl DC_FlushRange
	add r0, r5, #0
	mov r1, #1
	bl sub_0201F78C
	add r0, r5, #0
	mov r1, #1
	bl sub_0201F794
_0201F774:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201F77C: .word 0x02110924
_0201F780: .word 0x0211092C
_0201F784: .word 0x02110928
_0201F788: .word 0x02110930
	thumb_func_end sub_0201F668

	thumb_func_start sub_0201F78C
sub_0201F78C: ; 0x0201F78C
	ldr r3, _0201F790 ; =sub_020BE418
	bx r3
	.balign 4, 0
_0201F790: .word sub_020BE418
	thumb_func_end sub_0201F78C

	thumb_func_start sub_0201F794
sub_0201F794: ; 0x0201F794
	ldr r3, _0201F798 ; =sub_020BE538
	bx r3
	.balign 4, 0
_0201F798: .word sub_020BE538
	thumb_func_end sub_0201F794

	thumb_func_start sub_0201F79C
sub_0201F79C: ; 0x0201F79C
	str r0, [r1]
	add r0, r0, #4
	str r0, [r1, #8]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201F79C

	thumb_func_start sub_0201F7B0
sub_0201F7B0: ; 0x0201F7B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r7, #0
	cmp r0, #0
	ble _0201F7DE
	add r4, r7, #0
	add r6, r7, #0
_0201F7C0:
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	add r1, r1, r4
	bl sub_0201F79C
	ldr r0, [r5, #0x24]
	add r7, r7, #1
	add r1, r0, r4
	ldr r0, [r5, #0x20]
	add r4, #0x1c
	str r1, [r0, r6]
	ldrh r0, [r5]
	add r6, r6, #4
	cmp r7, r0
	blt _0201F7C0
_0201F7DE:
	mov r0, #0
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201F7B0

	thumb_func_start sub_0201F7E4
sub_0201F7E4: ; 0x0201F7E4
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	cmp r3, r1
	bne _0201F7F0
	mov r0, #0
	bx lr
_0201F7F0:
	ldr r2, [r0, #0x20]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	strh r1, [r0, #2]
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201F7E4

	thumb_func_start sub_0201F800
sub_0201F800: ; 0x0201F800
	ldrh r2, [r0, #2]
	cmp r2, #0
	bne _0201F80A
	mov r0, #0
	bx lr
_0201F80A:
	str r0, [r1]
	add r2, r0, #4
	str r2, [r1, #8]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #2]
	sub r2, r2, #1
	strh r2, [r0, #2]
	ldr r2, [r0, #0x20]
	ldrh r0, [r0, #2]
	lsl r0, r0, #2
	str r1, [r2, r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0201F800

	thumb_func_start sub_0201F82C
sub_0201F82C: ; 0x0201F82C
	lsl r0, r0, #5
	add r0, #0x34
	bx lr
	.balign 4, 0
	thumb_func_end sub_0201F82C

	thumb_func_start sub_0201F834
sub_0201F834: ; 0x0201F834
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0201F840
	bl GF_AssertFail
_0201F840:
	add r1, r4, #0
	add r1, #0x34
	lsl r0, r5, #2
	str r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x24]
	strh r5, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl sub_0201F860
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201F834

	thumb_func_start sub_0201F860
sub_0201F860: ; 0x0201F860
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201F7B0
	str r4, [r4, #4]
	add r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0201F860

	thumb_func_start sub_0201F880
sub_0201F880: ; 0x0201F880
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _0201F8BC
	ldr r1, [r5, #0xc]
	add r4, r5, #4
	str r1, [r5, #0x2c]
	cmp r1, r4
	beq _0201F8B8
	mov r6, #0
_0201F896:
	ldr r0, [r1, #8]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0201F8AE
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0201F8B0
	ldr r1, [r0, #0x10]
	blx r2
	b _0201F8B0
_0201F8AE:
	str r6, [r0, #0x18]
_0201F8B0:
	ldr r1, [r5, #0x30]
	str r1, [r5, #0x2c]
	cmp r1, r4
	bne _0201F896
_0201F8B8:
	mov r0, #0
	str r0, [r1, #0x14]
_0201F8BC:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0201F880

	thumb_func_start sub_0201F8C0
sub_0201F8C0: ; 0x0201F8C0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	str r5, [r4, #0x28]
	bl sub_0201F8D4
	mov r1, #0
	str r1, [r4, #0x28]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201F8C0

	thumb_func_start sub_0201F8D4
sub_0201F8D4: ; 0x0201F8D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201F7E4
	cmp r0, #0
	bne _0201F8EA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201F8EA:
	str r4, [r0, #0xc]
	str r7, [r0, #0x10]
	str r6, [r0, #0x14]
	ldr r2, [r5, #0x2c]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0201F90A
	ldr r1, [r2, #0xc]
	cmp r1, r4
	bhi _0201F904
	mov r1, #1
	str r1, [r0, #0x18]
	b _0201F90E
_0201F904:
	mov r1, #0
	str r1, [r0, #0x18]
	b _0201F90E
_0201F90A:
	mov r1, #0
	str r1, [r0, #0x18]
_0201F90E:
	ldr r3, [r5, #0xc]
	add r2, r5, #4
	cmp r3, r2
	beq _0201F93A
	ldr r4, [r0, #0xc]
_0201F918:
	ldr r1, [r3, #0xc]
	cmp r1, r4
	bls _0201F934
	ldr r1, [r3, #4]
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r3, #4]
	str r0, [r1, #8]
	str r0, [r3, #4]
	ldr r1, [r5, #0x30]
	cmp r3, r1
	bne _0201F952
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_0201F934:
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0201F918
_0201F93A:
	ldr r2, [r5, #0x30]
	add r1, r5, #4
	cmp r2, r1
	bne _0201F944
	str r0, [r5, #0x30]
_0201F944:
	ldr r1, [r5, #8]
	str r1, [r0, #4]
	add r1, r5, #4
	str r1, [r0, #8]
	ldr r1, [r5, #8]
	str r0, [r1, #8]
	str r0, [r5, #8]
_0201F952:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201F8D4

	thumb_func_start sub_0201F954
sub_0201F954: ; 0x0201F954
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0201F962
	bl GF_AssertFail
_0201F962:
	ldr r1, [r4]
	ldr r0, [r1, #0x30]
	cmp r0, r4
	bne _0201F96E
	ldr r0, [r4, #8]
	str r0, [r1, #0x30]
_0201F96E:
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r1, [r0, #4]
	ldr r0, [r4]
	add r1, r4, #0
	bl sub_0201F800
	pop {r4, pc}
	thumb_func_end sub_0201F954

	thumb_func_start sub_0201F984
sub_0201F984: ; 0x0201F984
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0201F984

	thumb_func_start sub_0201F988
sub_0201F988: ; 0x0201F988
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0201F988

	thumb_func_start sub_0201F98C
sub_0201F98C: ; 0x0201F98C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0201F98C

	thumb_func_start sub_0201F990
sub_0201F990: ; 0x0201F990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	add r7, r3, #0
	str r0, [r2]
	cmp r4, #0
	beq _0201F9AE
	add r4, #0x14
	b _0201F9B0
_0201F9AE:
	mov r4, #0
_0201F9B0:
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	mov r1, #0x1a
	mov r2, #0x1c
	str r0, [sp]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r3, #0x1e
	str r0, [sp, #4]
	add r0, sp, #0x28
	str r0, [sp, #8]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl sub_0201FAA4
	add r0, sp, #0x1c
	bl sub_020BEFD4
	ldr r1, _0201FA2C ; =0x021DA558
	add r0, r5, #0
	bl sub_020D4928
	ldr r1, _0201FA30 ; =0x021DA51C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r7, #0
	str r2, [r1, #0x7c]
	bl sub_020BF004
	bl sub_020BEF98
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020C2528
	ldr r0, [r4, #0x24]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x1b
	mov r2, #3
	bl sub_020C2528
	add r0, sp, #0x28
	bl sub_0201FAC8
	add r4, r0, #0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	bl sub_020C2528
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0201FA2C: .word 0x021DA558
_0201FA30: .word 0x021DA51C
	thumb_func_end sub_0201F990

	thumb_func_start sub_0201FA34
sub_0201FA34: ; 0x0201FA34
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #2
	ldrsh r0, [r4, r0]
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r4, r0]
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	mov r0, #0
	ldrsh r3, [r4, r0]
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0201FAA4
	add r0, r5, #0
	bl sub_020BEFD4
	bl sub_020BEF98
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020C2528
	ldr r0, [r4, #0x10]
	lsl r2, r0, #0xc
	ldr r0, [r4, #0xc]
	lsl r1, r0, #0xc
	ldr r0, [r4, #8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	mov r0, #0x1b
	add r1, sp, #0x10
	mov r2, #3
	bl sub_020C2528
	add r0, sp, #0x1c
	bl sub_0201FAC8
	add r4, r0, #0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	bl sub_020C2528
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0201FA34

	thumb_func_start sub_0201FAA4
sub_0201FAA4: ; 0x0201FAA4
	push {r3, r4}
	ldr r4, [sp, #0x10]
	strh r0, [r4]
	strh r1, [r4, #2]
	ldr r1, _0201FAC4 ; =0xFFFFFFF8
	strh r2, [r4, #4]
	strh r3, [r4, #6]
	add r1, sp
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	strh r0, [r4, #8]
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	strh r0, [r4, #0xa]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0201FAC4: .word 0xFFFFFFF8
	thumb_func_end sub_0201FAA4

	thumb_func_start sub_0201FAC8
sub_0201FAC8: ; 0x0201FAC8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0201FB18 ; =0x000030C1
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x29
	add r1, sp, #4
	str r2, [sp, #8]
	bl sub_020C2528
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	add r1, sp, #0
	mov r2, #1
	bl sub_020C2528
	mov r1, #0
	mov r0, #0x41
	add r2, r1, #0
	bl sub_020C2528
	mov r0, #0x70
	add r1, r4, #0
	mov r2, #3
	bl sub_020C2528
	bl sub_020C23F4
	add r4, sp, #8
_0201FB06:
	add r0, r4, #0
	bl sub_020CFA38
	cmp r0, #0
	bne _0201FB06
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0201FB18: .word 0x000030C1
	thumb_func_end sub_0201FAC8

	thumb_func_start sub_0201FB1C
sub_0201FB1C: ; 0x0201FB1C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0201FB40 ; =0x0000FFFE
	cmp r1, r0
	beq _0201FB2C
	bl GF_AssertFail
_0201FB2C:
	ldrh r1, [r4]
	ldr r0, _0201FB40 ; =0x0000FFFE
	cmp r1, r0
	bne _0201FB3C
	ldrh r0, [r4, #4]
	add r1, r4, #6
	lsl r0, r0, #1
	add r4, r1, r0
_0201FB3C:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_0201FB40: .word 0x0000FFFE
	thumb_func_end sub_0201FB1C

	thumb_func_start MsgArray_GetControlCode
MsgArray_GetControlCode: ; 0x0201FB44
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0201FB58 ; =0x0000FFFE
	cmp r1, r0
	beq _0201FB54
	bl GF_AssertFail
_0201FB54:
	ldrh r0, [r4, #2]
	pop {r4, pc}
	.balign 4, 0
_0201FB58: .word 0x0000FFFE
	thumb_func_end MsgArray_GetControlCode

	thumb_func_start sub_0201FB5C
sub_0201FB5C: ; 0x0201FB5C
	push {r3, lr}
	bl MsgArray_GetControlCode
	mov r1, #0xff
	lsl r1, r1, #8
	add r2, r0, #0
	and r2, r1
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	beq _0201FB88
	mov r0, #3
	lsl r0, r0, #8
	cmp r2, r0
	beq _0201FB88
	lsl r0, r1, #2
	cmp r2, r0
	beq _0201FB88
	mov r0, #0xd
	lsl r0, r0, #0xa
	cmp r2, r0
	bne _0201FB8C
_0201FB88:
	mov r0, #1
	pop {r3, pc}
_0201FB8C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0201FB5C

	thumb_func_start sub_0201FB90
sub_0201FB90: ; 0x0201FB90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	ldr r0, _0201FBB4 ; =0x0000FFFE
	cmp r1, r0
	beq _0201FBA2
	bl GF_AssertFail
_0201FBA2:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blo _0201FBAC
	bl GF_AssertFail
_0201FBAC:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0201FBB4: .word 0x0000FFFE
	thumb_func_end sub_0201FB90

	thumb_func_start sub_0201FBB8
sub_0201FBB8: ; 0x0201FBB8
	push {r4, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201FBC6
	mov r0, #0
	pop {r4, pc}
_0201FBC6:
	bl sub_0201FCD4
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0201FC28 ; =0x021094DC
	ldrsh r4, [r0, r1]
	add r0, r4, #0
	bl _itof
	ldr r1, _0201FC2C ; =0x45800000
	bl _fdiv
	mov r1, #0
	bl _fgr
	bls _0201FC06
	add r0, r4, #0
	bl _itof
	ldr r1, _0201FC2C ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _0201FC2C ; =0x45800000
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0201FC22
_0201FC06:
	add r0, r4, #0
	bl _itof
	ldr r1, _0201FC2C ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _0201FC2C ; =0x45800000
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0201FC22:
	bl _ftoi
	pop {r4, pc}
	.balign 4, 0
_0201FC28: .word 0x021094DC
_0201FC2C: .word 0x45800000
	thumb_func_end sub_0201FBB8

	thumb_func_start sub_0201FC30
sub_0201FC30: ; 0x0201FC30
	push {r4, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201FC3E
	mov r0, #0
	pop {r4, pc}
_0201FC3E:
	bl sub_0201FCD4
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0201FCA4 ; =0x021094DC
	ldrsh r4, [r0, r1]
	add r0, r4, #0
	bl _itof
	ldr r1, _0201FCA8 ; =0x45800000
	bl _fdiv
	mov r1, #0
	bl _fgr
	bls _0201FC82
	add r0, r4, #0
	bl _itof
	ldr r1, _0201FCA8 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _0201FCA8 ; =0x45800000
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0201FC9E
_0201FC82:
	add r0, r4, #0
	bl _itof
	ldr r1, _0201FCA8 ; =0x45800000
	bl _fdiv
	add r1, r0, #0
	ldr r0, _0201FCA8 ; =0x45800000
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0201FC9E:
	bl _ftoi
	pop {r4, pc}
	.balign 4, 0
_0201FCA4: .word 0x021094DC
_0201FCA8: .word 0x45800000
	thumb_func_end sub_0201FC30

	thumb_func_start sub_0201FCAC
sub_0201FCAC: ; 0x0201FCAC
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201FBB8
	pop {r3, pc}
	thumb_func_end sub_0201FCAC

	thumb_func_start sub_0201FCC0
sub_0201FCC0: ; 0x0201FCC0
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201FC30
	pop {r3, pc}
	thumb_func_end sub_0201FCC0

	thumb_func_start sub_0201FCD4
sub_0201FCD4: ; 0x0201FCD4
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201FCE2
	mov r0, #0
	pop {r3, pc}
_0201FCE2:
	lsl r0, r0, #0xc
	ldr r2, _0201FCF8 ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	bl _ll_mul
	ldr r0, _0201FCFC ; =0x00000800
	adc r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	pop {r3, pc}
	.balign 4, 0
_0201FCF8: .word 0x0B60B60B
_0201FCFC: .word 0x00000800
	thumb_func_end sub_0201FCD4

	thumb_func_start sub_0201FD00
sub_0201FD00: ; 0x0201FD00
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201FCD4
	pop {r3, pc}
	thumb_func_end sub_0201FD00

	thumb_func_start sub_0201FD14
sub_0201FD14: ; 0x0201FD14
	ldr r3, _0201FD1C ; =sub_0201FCAC
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bx r3
	.balign 4, 0
_0201FD1C: .word sub_0201FCAC
	thumb_func_end sub_0201FD14

	thumb_func_start sub_0201FD20
sub_0201FD20: ; 0x0201FD20
	ldr r3, _0201FD28 ; =sub_0201FCC0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bx r3
	.balign 4, 0
_0201FD28: .word sub_0201FCC0
	thumb_func_end sub_0201FD20

	thumb_func_start sub_0201FD2C
sub_0201FD2C: ; 0x0201FD2C
	ldr r0, _0201FD34 ; =0x021D15A4
	ldr r0, [r0, #4]
	bx lr
	nop
_0201FD34: .word 0x021D15A4
	thumb_func_end sub_0201FD2C

	thumb_func_start SetLCRNGSeed
SetLCRNGSeed: ; 0x0201FD38
	ldr r1, _0201FD40 ; =0x021D15A4
	str r0, [r1, #4]
	bx lr
	nop
_0201FD40: .word 0x021D15A4
	thumb_func_end SetLCRNGSeed

	thumb_func_start sub_0201FD44
sub_0201FD44: ; 0x0201FD44
	ldr r1, _0201FD5C ; =0x021D15A4
	ldr r0, _0201FD60 ; =0x41C64E6D
	ldr r2, [r1, #4]
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0201FD64 ; =0x00006073
	add r0, r3, r0
	str r0, [r1, #4]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.balign 4, 0
_0201FD5C: .word 0x021D15A4
_0201FD60: .word 0x41C64E6D
_0201FD64: .word 0x00006073
	thumb_func_end sub_0201FD44

	thumb_func_start sub_0201FD68
sub_0201FD68: ; 0x0201FD68
	ldr r1, _0201FD70 ; =0x6C078965
	mul r1, r0
	add r0, r1, #1
	bx lr
	.balign 4, 0
_0201FD70: .word 0x6C078965
	thumb_func_end sub_0201FD68

	thumb_func_start SetMTRNGSeed
SetMTRNGSeed: ; 0x0201FD74
	push {r4, r5}
	ldr r1, _0201FDA8 ; =0x021D15A4
	mov r4, #0x27
	str r0, [r1, #8]
	ldr r1, _0201FDAC ; =0x0210F6CC
	mov r0, #1
	str r0, [r1]
	ldr r1, _0201FDB0 ; =0x021D15B0
	ldr r3, _0201FDB4 ; =0x6C078965
	lsl r4, r4, #4
_0201FD88:
	sub r2, r1, #4
	ldr r5, [r2]
	lsr r2, r5, #0x1e
	eor r2, r5
	add r5, r2, #0
	mul r5, r3
	add r2, r0, r5
	add r0, r0, #1
	stmia r1!, {r2}
	cmp r0, r4
	blt _0201FD88
	ldr r1, _0201FDAC ; =0x0210F6CC
	str r0, [r1]
	pop {r4, r5}
	bx lr
	nop
_0201FDA8: .word 0x021D15A4
_0201FDAC: .word 0x0210F6CC
_0201FDB0: .word 0x021D15B0
_0201FDB4: .word 0x6C078965
	thumb_func_end SetMTRNGSeed

	thumb_func_start sub_0201FDB8
sub_0201FDB8: ; 0x0201FDB8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0201FE9C ; =0x0210F6CC
	ldr r1, [r0]
	mov r0, #0x27
	lsl r0, r0, #4
	cmp r1, r0
	blt _0201FE70
	add r0, r0, #1
	cmp r1, r0
	bne _0201FDD2
	ldr r0, _0201FEA0 ; =0x00001571
	bl SetMTRNGSeed
_0201FDD2:
	ldr r4, _0201FEA4 ; =0x021D15AC
	ldr r1, _0201FEA8 ; =0x0210F6D0
	ldr r5, _0201FEAC ; =0x7FFFFFFF
	ldr r6, _0201FEB0 ; =0x00000634
	mov r0, #0
_0201FDDC:
	mov r2, #2
	ldr r3, [r4]
	lsl r2, r2, #0x1e
	and r3, r2
	ldr r2, [r4, #4]
	add r0, r0, #1
	and r2, r5
	orr r3, r2
	lsr r7, r3, #1
	lsl r3, r3, #0x1f
	ldr r2, [r4, r6]
	lsr r3, r3, #0x1d
	ldr r3, [r1, r3]
	eor r2, r7
	eor r2, r3
	stmia r4!, {r2}
	cmp r0, #0xe3
	blt _0201FDDC
	ldr r1, _0201FEB4 ; =0x0000026F
	cmp r0, r1
	bge _0201FE3C
	ldr r2, _0201FEA4 ; =0x021D15AC
	lsl r1, r0, #2
	add r1, r2, r1
	mov r2, #0xe3
	ldr r4, _0201FEA8 ; =0x0210F6D0
	ldr r3, _0201FEB4 ; =0x0000026F
	lsl r2, r2, #2
_0201FE14:
	mov r5, #2
	ldr r6, [r1]
	lsl r5, r5, #0x1e
	and r5, r6
	ldr r7, [r1, #4]
	ldr r6, _0201FEAC ; =0x7FFFFFFF
	add r0, r0, #1
	and r6, r7
	orr r6, r5
	lsr r5, r6, #1
	sub r7, r1, r2
	lsl r6, r6, #0x1f
	ldr r7, [r7]
	lsr r6, r6, #0x1d
	ldr r6, [r4, r6]
	eor r5, r7
	eor r5, r6
	stmia r1!, {r5}
	cmp r0, r3
	blt _0201FE14
_0201FE3C:
	ldr r2, _0201FEB8 ; =0x021D1F24
	mov r0, #2
	ldr r1, [r2, #0x44]
	lsl r0, r0, #0x1e
	add r3, r1, #0
	ldr r1, _0201FEBC ; =0x021D15A4
	and r3, r0
	ldr r1, [r1, #8]
	sub r0, r0, #1
	and r0, r1
	add r4, r3, #0
	orr r4, r0
	ldr r0, _0201FEC0 ; =0x021D1BA4
	ldr r1, [r0, #0x38]
	lsr r0, r4, #1
	add r3, r1, #0
	eor r3, r0
	lsl r0, r4, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0201FEA8 ; =0x0210F6D0
	ldr r0, [r0, r1]
	mov r1, #0
	eor r0, r3
	str r0, [r2, #0x44]
	ldr r0, _0201FE9C ; =0x0210F6CC
	str r1, [r0]
_0201FE70:
	ldr r0, _0201FE9C ; =0x0210F6CC
	ldr r2, [r0]
	add r1, r2, #1
	str r1, [r0]
	ldr r0, _0201FEA4 ; =0x021D15AC
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	lsr r0, r1, #0xb
	add r2, r1, #0
	eor r2, r0
	ldr r0, _0201FEC4 ; =0x9D2C5680
	lsl r1, r2, #7
	and r0, r1
	eor r2, r0
	ldr r0, _0201FEC8 ; =0xEFC60000
	lsl r1, r2, #0xf
	and r0, r1
	add r1, r2, #0
	eor r1, r0
	lsr r0, r1, #0x12
	eor r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0201FE9C: .word 0x0210F6CC
_0201FEA0: .word 0x00001571
_0201FEA4: .word 0x021D15AC
_0201FEA8: .word 0x0210F6D0
_0201FEAC: .word 0x7FFFFFFF
_0201FEB0: .word 0x00000634
_0201FEB4: .word 0x0000026F
_0201FEB8: .word 0x021D1F24
_0201FEBC: .word 0x021D15A4
_0201FEC0: .word 0x021D1BA4
_0201FEC4: .word 0x9D2C5680
_0201FEC8: .word 0xEFC60000
	thumb_func_end sub_0201FDB8

	thumb_func_start sub_0201FECC
sub_0201FECC: ; 0x0201FECC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, sp, #0
	ldrb r0, [r0, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _0201FEE6
	ldr r0, _0201FF20 ; =0x0000FFFF
	mul r0, r1
	lsl r0, r0, #8
	lsr r1, r0, #0x10
	b _0201FEFA
_0201FEE6:
	cmp r0, #2
	bne _0201FEFA
	ldr r0, _0201FF20 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _u32_div_f
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0201FEFA:
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _0201FF24 ; =0x021094DC
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r5, #0
	bl sub_020CAF88
	add r0, r5, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020CAF94
	pop {r4, r5, r6, pc}
	nop
_0201FF20: .word 0x0000FFFF
_0201FF24: .word 0x021094DC
	thumb_func_end sub_0201FECC

	thumb_func_start sub_0201FF28
sub_0201FF28: ; 0x0201FF28
	push {r3, r4}
	mov r3, #0
	add r4, r3, #0
	cmp r1, #0
	bls _0201FF3E
_0201FF32:
	ldrb r2, [r0]
	add r4, r4, #1
	add r0, r0, #1
	add r3, r3, r2
	cmp r4, r1
	blo _0201FF32
_0201FF3E:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0201FF28

	thumb_func_start sub_0201FF44
sub_0201FF44: ; 0x0201FF44
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	lsr r6, r1, #1
	beq _0201FF66
	add r7, sp, #0x20
_0201FF52:
	add r0, r7, #0
	bl sub_0201FF78
	ldrh r1, [r5]
	add r4, r4, #1
	eor r0, r1
	strh r0, [r5]
	add r5, r5, #2
	cmp r4, r6
	blo _0201FF52
_0201FF66:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
	thumb_func_end sub_0201FF44

	thumb_func_start sub_0201FF70
sub_0201FF70: ; 0x0201FF70
	ldr r3, _0201FF74 ; =sub_0201FF44
	bx r3
	.balign 4, 0
_0201FF74: .word sub_0201FF44
	thumb_func_end sub_0201FF70

	thumb_func_start sub_0201FF78
sub_0201FF78: ; 0x0201FF78
	ldr r2, [r0]
	ldr r1, _0201FF90 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0201FF94 ; =0x00006073
	add r1, r3, r1
	str r1, [r0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0201FF90: .word 0x41C64E6D
_0201FF94: .word 0x00006073
	thumb_func_end sub_0201FF78

	thumb_func_start sub_0201FF98
sub_0201FF98: ; 0x0201FF98
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, _0201FFA8 ; =0x021D15A4
	add r1, r3, #0
	ldr r3, _0201FFAC ; =sub_020E3A2C
	ldr r0, [r0]
	bx r3
	nop
_0201FFA8: .word 0x021D15A4
_0201FFAC: .word sub_020E3A2C
	thumb_func_end sub_0201FF98

	thumb_func_start sub_0201FFB0
sub_0201FFB0: ; 0x0201FFB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201FFD8 ; =0x021D15A4
	ldr r0, [r0]
	cmp r0, #0
	beq _0201FFC0
	bl GF_AssertFail
_0201FFC0:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	bl AllocFromHeap
	ldr r1, _0201FFD8 ; =0x021D15A4
	str r0, [r1]
	ldr r1, _0201FFDC ; =0x00001021
	bl sub_020E3850
	pop {r4, pc}
	nop
_0201FFD8: .word 0x021D15A4
_0201FFDC: .word 0x00001021
	thumb_func_end sub_0201FFB0

	thumb_func_start sub_0201FFE0
sub_0201FFE0: ; 0x0201FFE0
	ldr r1, _0201FFE8 ; =0x0210F6D8
	str r0, [r1]
	bx lr
	nop
_0201FFE8: .word 0x0210F6D8
	thumb_func_end sub_0201FFE0

	thumb_func_start sub_0201FFEC
sub_0201FFEC: ; 0x0201FFEC
	push {r4, r5, r6, lr}
	ldr r4, _0202001C ; =0x021D1F74
	mov r5, #0
_0201FFF2:
	ldr r3, [r4]
	cmp r3, #0
	bne _0202000C
	ldr r6, _0202001C ; =0x021D1F74
	lsl r4, r5, #2
	bl sub_0200E358
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _02020014
	mov r5, #8
	b _02020014
_0202000C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0201FFF2
_02020014:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	nop
_0202001C: .word 0x021D1F74
	thumb_func_end sub_0201FFEC

	thumb_func_start sub_02020020
sub_02020020: ; 0x02020020
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #8
	blo _0202002C
	bl GF_AssertFail
_0202002C:
	ldr r6, _02020064 ; =0x021D1F74
	lsl r4, r5, #2
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0202003A
	bl GF_AssertFail
_0202003A:
	cmp r5, #8
	bhs _02020060
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _02020060
	bl sub_0201F988
	add r5, r0, #0
	beq _02020056
	bl sub_02020548
	add r0, r5, #0
	bl FreeToHeap
_02020056:
	ldr r0, [r6, r4]
	bl sub_0200E390
	mov r0, #0
	str r0, [r6, r4]
_02020060:
	pop {r4, r5, r6, pc}
	nop
_02020064: .word 0x021D1F74
	thumb_func_end sub_02020020

	thumb_func_start sub_02020068
sub_02020068: ; 0x02020068
	lsl r1, r0, #2
	ldr r0, _0202007C ; =0x021D1F74
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02020076
	mov r0, #1
	bx lr
_02020076:
	mov r0, #0
	bx lr
	nop
_0202007C: .word 0x021D1F74
	thumb_func_end sub_02020068

	thumb_func_start sub_02020080
sub_02020080: ; 0x02020080
	mov r1, #0
	ldr r2, _02020090 ; =0x021D1F74
	add r0, r1, #0
_02020086:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #8
	blt _02020086
	bx lr
	.balign 4, 0
_02020090: .word 0x021D1F74
	thumb_func_end sub_02020080

	thumb_func_start sub_02020094
sub_02020094: ; 0x02020094
	push {r3, lr}
	bl sub_02020068
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end sub_02020094

	thumb_func_start sub_020200A0
sub_020200A0: ; 0x020200A0
	ldr r3, _020200A4 ; =sub_02020020
	bx r3
	.balign 4, 0
_020200A4: .word sub_02020020
	thumb_func_end sub_020200A0

	thumb_func_start AddTextPrinterParameterized
AddTextPrinterParameterized: ; 0x020200A8
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, _020200F8 ; =0x0210F6D8
	lsl r1, r1, #3
	ldr r0, [r0]
	add r1, r0, r1
	ldrb r0, [r1, #2]
	strh r0, [r2, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r2, #0x12]
	ldrb r0, [r1, #4]
	strb r0, [r2, #0x14]
	ldrb r0, [r1, #5]
	strb r0, [r2, #0x15]
	ldrb r0, [r1, #6]
	strb r0, [r2, #0x16]
	ldrb r0, [r1, #7]
	ldr r1, [sp, #0x24]
	strb r0, [r2, #0x17]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r2, [sp, #0x28]
	add r0, sp, #0
	bl sub_020201A4
	add sp, #0x1c
	pop {pc}
	nop
_020200F8: .word 0x0210F6D8
	thumb_func_end AddTextPrinterParameterized

	thumb_func_start sub_020200FC
sub_020200FC: ; 0x020200FC
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, _0202014C ; =0x0210F6D8
	lsl r1, r1, #3
	ldr r0, [r0]
	add r1, r0, r1
	ldrb r0, [r1, #2]
	strh r0, [r2, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r2, #0x12]
	ldrb r0, [r1, #4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x14]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x15]
	lsr r0, r1, #8
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x16]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x2c]
	add r0, sp, #0
	bl sub_020201A4
	add sp, #0x1c
	pop {pc}
	nop
_0202014C: .word 0x0210F6D8
	thumb_func_end sub_020200FC

	thumb_func_start AddTextPrinterParameterized3
AddTextPrinterParameterized3: ; 0x02020150
	push {lr}
	sub sp, #0x1c
	str r2, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r1, [r2, #9]
	ldr r0, [sp, #0x20]
	strb r3, [r2, #0xa]
	strb r0, [r2, #0xb]
	strh r3, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, [sp, #0x2c]
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x30]
	strh r0, [r2, #0x12]
	ldr r0, _020201A0 ; =0x0210F6D8
	ldr r3, [r0]
	lsl r0, r1, #3
	add r0, r3, r0
	ldrb r0, [r0, #4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x14]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x15]
	lsr r0, r1, #8
	strb r0, [r2, #0x17]
	strb r1, [r2, #0x16]
	mov r0, #0
	strh r0, [r2, #0x18]
	strb r0, [r2, #0x1a]
	mov r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x34]
	add r0, sp, #0
	bl sub_020201A4
	add sp, #0x1c
	pop {pc}
	nop
_020201A0: .word 0x0210F6D8
	thumb_func_end AddTextPrinterParameterized3

	thumb_func_start sub_020201A4
sub_020201A4: ; 0x020201A4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _020202E0 ; =0x0210F6D8
	add r6, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	cmp r0, #0
	bne _020201B8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_020201B8:
	mov r0, #0
	mov r1, #0x34
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #1
	add r0, #0x27
	strb r1, [r0]
	add r0, r4, #0
	mov r3, #0
	add r0, #0x28
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	mov r0, #0x7f
	bic r2, r0
	lsl r0, r6, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x7f
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x2b
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x2d
	strb r3, [r0]
	add r1, r3, #0
_02020200:
	add r0, r4, r3
	add r0, #0x20
	add r3, r3, #1
	strb r1, [r0]
	cmp r3, #7
	blt _02020200
	add r3, r7, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4]
	bl sub_02026AA4
	str r0, [r4]
	ldr r0, _020202E4 ; =0x021D1F6C
	str r5, [r4, #0x1c]
	mov r1, #0
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020204B8
	cmp r6, #0xff
	beq _02020286
	cmp r6, #0
	beq _02020286
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	mov r1, #0x7f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, #0xff
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x80
	mov r2, #1
	orr r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r0, _020202E8 ; =sub_020202EC
	add r1, r4, #0
	bl sub_0201FFEC
	add r1, r4, #0
	add r1, #0x2c
	strb r0, [r1]
	add r4, #0x2c
	ldrb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02020286:
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x7f
	mov r5, #0
	bic r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldrb r0, [r7, #0x15]
	ldrb r1, [r7, #0x16]
	ldrb r2, [r7, #0x17]
	bl sub_0202036C
	mov r7, #1
	lsl r7, r7, #0xa
_020202B6:
	add r0, r4, #0
	bl sub_02020358
	cmp r0, #1
	beq _020202C6
	add r5, r5, #1
	cmp r5, r7
	blo _020202B6
_020202C6:
	cmp r6, #0xff
	beq _020202D0
	ldr r0, [r4, #4]
	bl CopyWindowToVram
_020202D0:
	add r0, r4, #0
	bl sub_02020548
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020202E0: .word 0x0210F6D8
_020202E4: .word 0x021D1F6C
_020202E8: .word sub_020202EC
	thumb_func_end sub_020201A4

	thumb_func_start sub_020202EC
sub_020202EC: ; 0x020202EC
	push {r4, lr}
	ldr r0, _02020354 ; =0x021D1F6C
	add r4, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _02020352
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _02020346
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x16]
	ldrb r2, [r4, #0x17]
	bl sub_0202036C
	add r0, r4, #0
	bl sub_02020358
	cmp r0, #0
	beq _02020324
	cmp r0, #1
	beq _0202033C
	cmp r0, #3
	beq _0202032A
	pop {r4, pc}
_02020324:
	ldr r0, [r4, #4]
	bl CopyWindowToVram
_0202032A:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _02020352
	ldrh r1, [r4, #0x2e]
	add r0, r4, #0
	blx r2
	add r4, #0x2d
	strb r0, [r4]
	pop {r4, pc}
_0202033C:
	add r4, #0x2c
	ldrb r0, [r4]
	bl sub_02020020
	pop {r4, pc}
_02020346:
	ldrh r1, [r4, #0x2e]
	ldr r2, [r4, #0x1c]
	add r0, r4, #0
	blx r2
	add r4, #0x2d
	strb r0, [r4]
_02020352:
	pop {r4, pc}
	.balign 4, 0
_02020354: .word 0x021D1F6C
	thumb_func_end sub_020202EC

	thumb_func_start sub_02020358
sub_02020358: ; 0x02020358
	push {r4, lr}
	add r4, r0, #0
_0202035C:
	ldrb r0, [r4, #9]
	add r1, r4, #0
	bl sub_02002E98
	cmp r0, #2
	beq _0202035C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02020358

	thumb_func_start sub_0202036C
sub_0202036C: ; 0x0202036C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _02020408 ; =0x021D1F6C
	mov r5, #0
	str r5, [sp, #0x20]
	str r0, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	strh r1, [r3, #6]
	strh r0, [r3, #2]
	add r0, sp, #0x20
	strh r2, [r3, #4]
	str r5, [sp, #0x14]
	str r0, [sp, #8]
	mov ip, r0
	mov lr, r0
	str r0, [sp, #0x18]
_0202038E:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	str r0, [sp, #0x1c]
_0202039C:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, lr
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	lsl r7, r0, #4
_020203AA:
	ldr r0, [sp]
	mov r3, #0
	ldr r0, [r0]
	mov r4, ip
	lsl r6, r0, #8
_020203B4:
	ldr r0, [r4]
	add r1, r7, #0
	lsl r0, r0, #0xc
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x1c]
	add r3, r3, #1
	add r2, r0, #0
	orr r2, r1
	lsl r1, r5, #1
	ldr r0, _0202040C ; =0x021D1F94
	add r5, r5, #1
	add r4, r4, #4
	strh r2, [r0, r1]
	cmp r3, #4
	blt _020203B4
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _020203AA
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0202039C
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0202038E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02020408: .word 0x021D1F6C
_0202040C: .word 0x021D1F94
	thumb_func_end sub_0202036C

	thumb_func_start sub_02020410
sub_02020410: ; 0x02020410
	ldrh r2, [r0]
	lsr r2, r2, #8
	lsl r3, r2, #1
	ldr r2, _020204B4 ; =0x021D1F94
	ldrh r3, [r2, r3]
	strh r3, [r1]
	ldrh r3, [r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #2]
	ldrh r3, [r0, #2]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #4]
	ldrh r3, [r0, #2]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #6]
	ldrh r3, [r0, #4]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #8]
	ldrh r3, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xa]
	ldrh r3, [r0, #6]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xc]
	ldrh r3, [r0, #6]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xe]
	ldrh r3, [r0, #8]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0xa]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x14]
	ldrh r3, [r0, #0xa]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x16]
	ldrh r3, [r0, #0xc]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x18]
	ldrh r3, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1a]
	ldrh r3, [r0, #0xe]
	lsr r3, r3, #8
	lsl r3, r3, #1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1c]
	ldrh r0, [r0, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x17
	ldrh r0, [r2, r0]
	strh r0, [r1, #0x1e]
	bx lr
	.balign 4, 0
_020204B4: .word 0x021D1F94
	thumb_func_end sub_02020410

	thumb_func_start sub_020204B8
sub_020204B8: ; 0x020204B8
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020204B8

	thumb_func_start sub_020204C0
sub_020204C0: ; 0x020204C0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #8
	bl AllocFromHeap
	mov r2, #0
	add r5, r0, #0
	str r2, [sp]
	mov r0, #0x10
	mov r1, #6
	add r3, sp, #4
	bl GfGfxLoader_GetCharData
	add r4, r0, #0
	ldr r0, [sp, #4]
	mov r2, #6
	ldr r0, [r0, #0x14]
	add r1, r5, #0
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020204C0

	thumb_func_start sub_020204FC
sub_020204FC: ; 0x020204FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	add r7, r3, #0
	ldr r5, [r4, #4]
	cmp r0, #0
	bne _02020512
	bl sub_020204C0
	str r0, [r4, #0x30]
_02020512:
	mov r0, #6
	lsl r0, r0, #6
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	ldr r4, [r4, #0x30]
	bl GetWindowWidth
	sub r0, r0, #3
	lsl r0, r0, #0x13
	mov r1, #0x18
	lsr r2, r0, #0x10
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, r6
	add r3, r2, #0
	bl BlitBitmapRectToWindow
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020204FC

	thumb_func_start sub_02020548
sub_02020548: ; 0x02020548
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0202055A
	bl FreeToHeap
	mov r0, #0
	str r0, [r4, #0x30]
_0202055A:
	pop {r4, pc}
	thumb_func_end sub_02020548

	thumb_func_start sub_0202055C
sub_0202055C: ; 0x0202055C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020205A8 ; =0x021D2194
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0202056E
	bl GF_AssertFail
_0202056E:
	add r0, r4, #0
	mov r1, #0xc
	bl AllocFromHeap
	ldr r1, _020205A8 ; =0x021D2194
	cmp r0, #0
	str r0, [r1]
	bne _02020582
	bl GF_AssertFail
_02020582:
	add r0, r4, #0
	lsl r1, r5, #4
	bl AllocFromHeap
	ldr r1, _020205A8 ; =0x021D2194
	ldr r2, [r1]
	str r0, [r2, #8]
	ldr r0, [r1]
	mov r2, #0
	str r5, [r0]
	ldr r0, [r1]
	str r2, [r0, #4]
	ldr r1, [r1]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	bl sub_020B62C8
	pop {r3, r4, r5, pc}
	nop
_020205A8: .word 0x021D2194
	thumb_func_end sub_0202055C

	thumb_func_start sub_020205AC
sub_020205AC: ; 0x020205AC
	push {r3, lr}
	ldr r0, _020205D4 ; =0x021D2194
	ldr r0, [r0]
	cmp r0, #0
	bne _020205BA
	bl GF_AssertFail
_020205BA:
	ldr r0, _020205D4 ; =0x021D2194
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl FreeToHeap
	ldr r0, _020205D4 ; =0x021D2194
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _020205D4 ; =0x021D2194
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_020205D4: .word 0x021D2194
	thumb_func_end sub_020205AC

	thumb_func_start sub_020205D8
sub_020205D8: ; 0x020205D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02020618 ; =0x021D2194
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _020205EE
	bl GF_AssertFail
_020205EE:
	ldr r1, _02020618 ; =0x021D2194
	ldr r0, [r1]
	ldr r2, [r0, #4]
	add r2, r2, #1
	str r2, [r0, #4]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, r0
	blo _0202060A
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202060A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020B634C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02020618: .word 0x021D2194
	thumb_func_end sub_020205D8

	thumb_func_start sub_0202061C
sub_0202061C: ; 0x0202061C
	push {r3, lr}
	ldr r0, _02020634 ; =0x021D2194
	ldr r0, [r0]
	cmp r0, #0
	beq _02020632
	bl sub_020B62EC
	ldr r0, _02020634 ; =0x021D2194
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #4]
_02020632:
	pop {r3, pc}
	.balign 4, 0
_02020634: .word 0x021D2194
	thumb_func_end sub_0202061C

	thumb_func_start sub_02020638
sub_02020638: ; 0x02020638
	push {r3, lr}
	ldr r0, _02020650 ; =0x021D2194
	ldr r0, [r0]
	cmp r0, #0
	bne _02020646
	bl GF_AssertFail
_02020646:
	ldr r0, _02020650 ; =0x021D2194
	ldr r0, [r0]
	ldr r0, [r0, #4]
	pop {r3, pc}
	nop
_02020650: .word 0x021D2194
	thumb_func_end sub_02020638

	thumb_func_start sub_02020654
sub_02020654: ; 0x02020654
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x30
	mul r1, r4
	bl AllocFromHeap
	ldr r2, _02020670 ; =sub_02020684
	add r1, r4, #0
	add r5, r0, #0
	bl sub_020BAD38
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02020670: .word sub_02020684
	thumb_func_end sub_02020654

	thumb_func_start sub_02020674
sub_02020674: ; 0x02020674
	ldr r3, _02020678 ; =sub_020BAD9C
	bx r3
	.balign 4, 0
_02020678: .word sub_020BAD9C
	thumb_func_end sub_02020674

	thumb_func_start sub_0202067C
sub_0202067C: ; 0x0202067C
	ldr r3, _02020680 ; =FreeToHeap
	bx r3
	.balign 4, 0
_02020680: .word FreeToHeap
	thumb_func_end sub_0202067C

	thumb_func_start sub_02020684
sub_02020684: ; 0x02020684
	push {r3, lr}
	bl sub_020205D8
	pop {r3, pc}
	thumb_func_end sub_02020684

	thumb_func_start sub_0202068C
sub_0202068C: ; 0x0202068C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl AllocFromHeap
	mov r1, #0x14
	add r4, r0, #0
	add r0, r6, #0
	mul r1, r5
	bl AllocFromHeap
	str r0, [r4]
	mov r6, #0
	str r5, [r4, #4]
	cmp r5, #0
	ble _020206C4
	add r5, r6, #0
_020206B2:
	ldr r0, [r4]
	add r0, r0, r5
	bl sub_02020770
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, #0x14
	cmp r6, r0
	blt _020206B2
_020206C4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202068C

	thumb_func_start sub_020206C8
sub_020206C8: ; 0x020206C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02020740
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020206C8

	thumb_func_start sub_020206E0
sub_020206E0: ; 0x020206E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	add r7, r2, #0
	mov ip, r1
	add r6, r3, #0
	add r2, r4, #0
	cmp r0, #0
	ble _0202070E
	ldr r5, [r5]
	add r3, r5, #0
_020206F8:
	ldr r1, [r3]
	cmp r1, #0
	bne _02020706
	mov r0, #0x14
	mul r0, r2
	add r4, r5, r0
	b _0202070E
_02020706:
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r0
	blt _020206F8
_0202070E:
	cmp r4, #0
	bne _02020716
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02020716:
	mov r0, ip
	str r0, [r4]
	str r7, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0xff
	strb r0, [r4, #0x10]
	lsl r1, r1, #4
	strb r0, [r4, #0x11]
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02020780
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020206E0

	thumb_func_start sub_02020738
sub_02020738: ; 0x02020738
	ldr r3, _0202073C ; =sub_02020770
	bx r3
	.balign 4, 0
_0202073C: .word sub_02020770
	thumb_func_end sub_02020738

	thumb_func_start sub_02020740
sub_02020740: ; 0x02020740
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02020760
	add r4, r6, #0
_0202074E:
	ldr r0, [r5]
	add r0, r0, r4
	bl sub_02020770
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _0202074E
_02020760:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02020740

	thumb_func_start sub_02020764
sub_02020764: ; 0x02020764
	ldr r3, _0202076C ; =sub_02020780
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bx r3
	.balign 4, 0
_0202076C: .word sub_02020780
	thumb_func_end sub_02020764

	thumb_func_start sub_02020770
sub_02020770: ; 0x02020770
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	bx lr
	thumb_func_end sub_02020770

	thumb_func_start sub_02020780
sub_02020780: ; 0x02020780
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02026DE0
	add r2, sp, #0
	strb r0, [r2]
	lsr r0, r0, #8
	strb r0, [r2, #1]
	ldrb r0, [r2]
	add r1, sp, #0
	add r1, #2
	strb r0, [r2, #2]
	ldrb r0, [r2, #1]
	strb r0, [r2, #3]
	ldrb r3, [r4, #0x10]
	ldrb r0, [r2, #2]
	cmp r3, r0
	beq _020207AE
	add r0, r4, #0
	bl sub_020207C8
_020207AE:
	add r0, sp, #0
	ldrb r1, [r4, #0x11]
	ldrb r0, [r0, #3]
	cmp r1, r0
	beq _020207C2
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	bl sub_020207F4
_020207C2:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02020780

	thumb_func_start sub_020207C8
sub_020207C8: ; 0x020207C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02020820
	ldr r3, [r5, #8]
	add r2, r0, #0
	lsl r1, r3, #0x10
	ldr r6, _020207F0 ; =0x7FFF0000
	mov r0, #0
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #4
	bl sub_020205D8
	ldrb r0, [r4]
	strb r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_020207F0: .word 0x7FFF0000
	thumb_func_end sub_020207C8

	thumb_func_start sub_020207F4
sub_020207F4: ; 0x020207F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202082C
	ldr r3, [r5, #0xc]
	add r2, r0, #0
	lsl r1, r3, #0x10
	ldr r6, _0202081C ; =0xFFFF0000
	mov r0, #1
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #3
	bl sub_020205D8
	ldrb r0, [r4, #1]
	strb r0, [r5, #0x11]
	pop {r4, r5, r6, pc}
	nop
_0202081C: .word 0xFFFF0000
	thumb_func_end sub_020207F4

	thumb_func_start sub_02020820
sub_02020820: ; 0x02020820
	ldr r3, _02020828 ; =sub_02020838
	ldr r0, [r0, #4]
	ldrb r1, [r1]
	bx r3
	.balign 4, 0
_02020828: .word sub_02020838
	thumb_func_end sub_02020820

	thumb_func_start sub_0202082C
sub_0202082C: ; 0x0202082C
	ldr r3, _02020834 ; =sub_02020888
	ldr r0, [r0, #4]
	ldrb r1, [r1, #1]
	bx r3
	.balign 4, 0
_02020834: .word sub_02020888
	thumb_func_end sub_0202082C

	thumb_func_start sub_02020838
sub_02020838: ; 0x02020838
	push {r3, r4}
	cmp r0, #0
	beq _02020864
	add r2, r0, #0
	add r2, #0x3c
	beq _02020860
	add r3, r0, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r1, r3
	bhs _02020860
	add r3, r0, #0
	add r3, #0x42
	ldrh r4, [r3]
	add r3, r2, r4
	ldrh r2, [r2, r4]
	add r3, r3, #4
	mul r1, r2
	add r3, r3, r1
	b _02020866
_02020860:
	mov r3, #0
	b _02020866
_02020864:
	mov r3, #0
_02020866:
	cmp r3, #0
	bne _02020870
	mov r0, #0
	pop {r3, r4}
	bx lr
_02020870:
	ldr r1, [r0, #0x14]
	add r2, r0, r1
	ldr r1, [r3]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02020838

	thumb_func_start sub_02020888
sub_02020888: ; 0x02020888
	push {r3, r4}
	cmp r0, #0
	beq _020208B0
	ldrh r2, [r0, #0x34]
	cmp r2, #0
	beq _020208B0
	add r4, r0, r2
	beq _020208AC
	ldrb r2, [r4, #1]
	cmp r1, r2
	bhs _020208AC
	ldrh r2, [r4, #6]
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #4
	mul r1, r2
	add r2, r3, r1
	b _020208B2
_020208AC:
	mov r2, #0
	b _020208B2
_020208B0:
	mov r2, #0
_020208B2:
	cmp r2, #0
	bne _020208BC
	mov r0, #0
	pop {r3, r4}
	bx lr
_020208BC:
	ldr r1, [r0, #0x38]
	add r1, r0, r1
	ldrh r0, [r2]
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02020888

	thumb_func_start sub_020208CC
sub_020208CC: ; 0x020208CC
	ldr r1, [r1]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0xd
	lsr r0, r0, #0xd
	add r0, r1, r0
	bx lr
	thumb_func_end sub_020208CC

	thumb_func_start sub_020208DC
sub_020208DC: ; 0x020208DC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02020B3C
	cmp r4, #0
	beq _020208FA
	add r0, r4, #0
	add r0, #0x3c
	add r1, sp, #0
	bl sub_020C3818
	add r1, r0, #0
	b _020208FC
_020208FA:
	mov r1, #0
_020208FC:
	cmp r1, #0
	bne _02020906
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_02020906:
	add r0, r4, #0
	bl sub_020208CC
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_020208DC

	thumb_func_start sub_02020910
sub_02020910: ; 0x02020910
	push {r4, lr}
	cmp r0, #0
	beq _0202093C
	add r2, r0, #0
	add r2, #0x3c
	beq _02020938
	add r3, r0, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r1, r3
	bhs _02020938
	add r3, r0, #0
	add r3, #0x42
	ldrh r4, [r3]
	add r3, r2, r4
	ldrh r2, [r2, r4]
	add r3, r3, #4
	mul r1, r2
	add r1, r3, r1
	b _0202093E
_02020938:
	mov r1, #0
	b _0202093E
_0202093C:
	mov r1, #0
_0202093E:
	cmp r1, #0
	bne _02020946
	mov r0, #0
	pop {r4, pc}
_02020946:
	bl sub_020208CC
	pop {r4, pc}
	thumb_func_end sub_02020910

	thumb_func_start sub_0202094C
sub_0202094C: ; 0x0202094C
	push {r3, lr}
	ldr r0, [r1]
	mov r1, #7
	lsl r1, r1, #0x1a
	and r1, r0
	lsr r1, r1, #0x1a
	cmp r1, #6
	bhi _0202098A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02020968: ; jump table
	.short _0202098A - _02020968 - 2 ; case 0
	.short _02020982 - _02020968 - 2 ; case 1
	.short _02020976 - _02020968 - 2 ; case 2
	.short _0202097A - _02020968 - 2 ; case 3
	.short _0202097E - _02020968 - 2 ; case 4
	.short _0202098A - _02020968 - 2 ; case 5
	.short _02020986 - _02020968 - 2 ; case 6
_02020976:
	mov r1, #4
	b _0202098E
_0202097A:
	mov r1, #2
	b _0202098E
_0202097E:
	mov r1, #1
	b _0202098E
_02020982:
	mov r1, #1
	b _0202098E
_02020986:
	mov r1, #1
	b _0202098E
_0202098A:
	mov r0, #0
	pop {r3, pc}
_0202098E:
	mov r3, #7
	lsl r3, r3, #0x14
	add r2, r0, #0
	and r2, r3
	lsl r3, r3, #3
	and r0, r3
	lsr r2, r2, #0x14
	lsr r0, r0, #0x17
	lsl r2, r2, #4
	lsl r0, r0, #4
	mul r0, r2
	bl _u32_div_f
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_0202094C

	thumb_func_start sub_020209AC
sub_020209AC: ; 0x020209AC
	push {r4, lr}
	cmp r0, #0
	beq _020209D8
	add r2, r0, #0
	add r2, #0x3c
	beq _020209D4
	add r3, r0, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r1, r3
	bhs _020209D4
	add r3, r0, #0
	add r3, #0x42
	ldrh r4, [r3]
	add r3, r2, r4
	ldrh r2, [r2, r4]
	add r3, r3, #4
	mul r1, r2
	add r1, r3, r1
	b _020209DA
_020209D4:
	mov r1, #0
	b _020209DA
_020209D8:
	mov r1, #0
_020209DA:
	bl sub_0202094C
	pop {r4, pc}
	thumb_func_end sub_020209AC

	thumb_func_start sub_020209E0
sub_020209E0: ; 0x020209E0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02020B3C
	cmp r4, #0
	beq _020209FE
	add r0, r4, #0
	add r0, #0x3c
	add r1, sp, #0
	bl sub_020C3818
	add r1, r0, #0
	b _02020A00
_020209FE:
	mov r1, #0
_02020A00:
	add r0, r4, #0
	bl sub_0202094C
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020209E0

	thumb_func_start sub_02020A0C
sub_02020A0C: ; 0x02020A0C
	ldrb r3, [r0]
	strb r3, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r2]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02020A0C

	thumb_func_start sub_02020A18
sub_02020A18: ; 0x02020A18
	ldrb r3, [r0, #2]
	strb r3, [r1]
	ldrb r0, [r0, #3]
	strb r0, [r2]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02020A18

	thumb_func_start sub_02020A24
sub_02020A24: ; 0x02020A24
	push {r4, r5}
	ldr r5, _02020A9C ; =0xFFFFFFF8
	ldr r4, [sp, #0xc]
	add r5, sp
	ldrb r5, [r5, #0x18]
	cmp r5, #3
	bhi _02020A64
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02020A3E: ; jump table
	.short _02020A46 - _02020A3E - 2 ; case 0
	.short _02020A4E - _02020A3E - 2 ; case 1
	.short _02020A56 - _02020A3E - 2 ; case 2
	.short _02020A5E - _02020A3E - 2 ; case 3
_02020A46:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #4]
	b _02020A64
_02020A4E:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #5]
	b _02020A64
_02020A56:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #6]
	b _02020A64
_02020A5E:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #7]
_02020A64:
	cmp r1, #0
	beq _02020A6E
	lsl r5, r4, #3
	ldrb r5, [r0, r5]
	strb r5, [r1]
_02020A6E:
	cmp r2, #0
	beq _02020A7A
	lsl r1, r4, #3
	add r1, r0, r1
	ldrb r1, [r1, #1]
	strb r1, [r2]
_02020A7A:
	cmp r3, #0
	beq _02020A86
	lsl r1, r4, #3
	add r1, r0, r1
	ldrb r1, [r1, #2]
	strb r1, [r3]
_02020A86:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _02020A94
	lsl r1, r4, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	strb r0, [r2]
_02020A94:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	nop
_02020A9C: .word 0xFFFFFFF8
	thumb_func_end sub_02020A24

	thumb_func_start sub_02020AA0
sub_02020AA0: ; 0x02020AA0
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0
	beq _02020AB0
_02020AA8:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _02020AA8
_02020AB0:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_02020AA0

	thumb_func_start sub_02020AB4
sub_02020AB4: ; 0x02020AB4
	push {r4, r5}
	mov r4, #1
	mov r3, #0
	lsl r4, r4, #8
_02020ABC:
	ldrsb r5, [r0, r3]
	strb r5, [r1, r3]
	ldrsb r5, [r0, r3]
	cmp r2, r5
	beq _02020ACA
	cmp r5, #0
	bne _02020AEA
_02020ACA:
	mov r4, #0
	strb r4, [r1, r3]
	cmp r2, #0xd
	bne _02020AE2
	add r1, r3, #1
	ldrsb r1, [r0, r1]
	cmp r1, #0xa
	bne _02020AE2
	add r1, r3, #2
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_02020AE2:
	add r1, r3, #1
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_02020AEA:
	add r3, r3, #1
	cmp r3, r4
	blt _02020ABC
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02020AB4

	thumb_func_start sub_02020AF8
sub_02020AF8: ; 0x02020AF8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02020AA0
	mov r5, #1
	mov r6, #0
	sub r3, r0, #1
	bmi _02020B36
	sub r1, r6, #1
	mov r0, #0xa
_02020B0C:
	ldrsb r2, [r4, r3]
	cmp r2, #0x30
	blt _02020B1E
	cmp r2, #0x39
	bgt _02020B1E
	sub r2, #0x30
	mul r2, r5
	add r6, r6, r2
	b _02020B30
_02020B1E:
	cmp r3, #0
	bne _02020B2A
	cmp r2, #0x2d
	bne _02020B30
	mul r6, r1
	b _02020B30
_02020B2A:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02020B30:
	mul r5, r0
	sub r3, r3, #1
	bpl _02020B0C
_02020B36:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02020AF8

	thumb_func_start sub_02020B3C
sub_02020B3C: ; 0x02020B3C
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
_02020B46:
	lsl r0, r2, #2
	str r1, [r5, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _02020B46
	add r0, r4, #0
	bl sub_02020AA0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r2, _02020B74 ; =0x00000000
	beq _02020B70
_02020B62:
	ldrsb r0, [r4, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r1
	blo _02020B62
_02020B70:
	pop {r3, r4, r5, pc}
	nop
_02020B74: .word 0x00000000
	thumb_func_end sub_02020B3C

	thumb_func_start sub_02020B78
sub_02020B78: ; 0x02020B78
	ldr r1, _02020B88 ; =0x00000121
	cmp r0, r1
	bhs _02020B82
	mov r0, #1
	bx lr
_02020B82:
	mov r0, #0
	bx lr
	nop
_02020B88: .word 0x00000121
	thumb_func_end sub_02020B78

	thumb_func_start sub_02020B8C
sub_02020B8C: ; 0x02020B8C
	cmp r0, r1
	blt _02020B92
	add r0, r1, #0
_02020B92:
	bx lr
	thumb_func_end sub_02020B8C

	thumb_func_start sub_02020B94
sub_02020B94: ; 0x02020B94
	cmp r0, r1
	bgt _02020B9A
	add r0, r1, #0
_02020B9A:
	bx lr
	thumb_func_end sub_02020B94

	thumb_func_start sub_02020B9C
sub_02020B9C: ; 0x02020B9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	add r3, sp, #0x14
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	add r0, r2, #0
	add r4, r1, #0
	add r2, sp, #0x44
	bl sub_020CCDAC
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x38
	bl sub_020CCDAC
	ldr r0, [sp, #0x48]
	ldr r5, [sp, #0x4c]
	str r0, [sp]
	asr r0, r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	asr r4, r5, #0x1f
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	add r0, sp, #0x44
	add r1, sp, #0x38
	bl sub_020CCE14
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r5, #0
	add r3, r4, #0
	bl _ll_mul
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r4, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl _ll_mul
	str r0, [sp, #0xc]
	add r5, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	add r3, r1, #0
	bl _ll_mul
	mov r2, #2
	add r3, r1, #0
	add r7, r0, #0
	mov r1, #0
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r4, r1
	lsl r4, r4, #0x14
	lsr r2, r2, #0xc
	orr r2, r4
	mov r4, #2
	ldr r6, [sp, #0xc]
	lsl r4, r4, #0xa
	add r4, r6, r4
	adc r5, r1
	lsl r5, r5, #0x14
	lsr r4, r4, #0xc
	orr r4, r5
	mov r5, #2
	lsl r5, r5, #0xa
	add r5, r7, r5
	adc r3, r1
	lsl r1, r3, #0x14
	lsr r3, r5, #0xc
	orr r3, r1
	add r1, r4, r3
	ldr r0, [sp, #8]
	add r1, r2, r1
	bl sub_020CCBA0
	add r1, sp, #0x44
	add r2, sp, #0x14
	add r3, sp, #0x20
	bl sub_020CD224
	add r0, sp, #0x20
	add r1, sp, #0x38
	add r2, sp, #0x2c
	bl sub_020CCDAC
	add r0, sp, #0x2c
	bl sub_020CCF80
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02020B9C

	thumb_func_start sub_02020C64
sub_02020C64: ; 0x02020C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r1, sp, #0x24
	bl sub_020CCFE0
	add r0, r4, #0
	add r1, sp, #0x18
	bl sub_020CCFE0
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x18]
	str r0, [sp]
	asr r0, r0, #0x1f
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	asr r6, r4, #0x1f
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #8]
	asr r7, r0, #0x1f
	ldr r3, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl _ll_mul
	str r0, [sp, #0x14]
	add r5, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	add r3, r6, #0
	bl _ll_mul
	mov r2, #2
	ldr r3, [sp, #0x14]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _02020D28 ; =0x00000000
	adc r5, r2
	lsl r2, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02020D28 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r5, r3, r0
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl _ll_mul
	add r6, r0, #0
	add r4, r1, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r6, r2
	adc r4, r3
	lsl r4, r4, #0x14
	lsr r6, r6, #0xc
	orr r6, r4
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	sub r0, r6, r1
	cmp r5, #0
	bne _02020D1E
	cmp r0, #0
	ble _02020D16
	add sp, #0x30
	lsl r0, r2, #3
	pop {r3, r4, r5, r6, r7, pc}
_02020D16:
	mov r0, #3
	add sp, #0x30
	lsl r0, r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_02020D1E:
	add r1, r5, #0
	bl sub_020CD5DC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02020D28: .word 0x00000000
	thumb_func_end sub_02020C64

	thumb_func_start sub_02020D2C
sub_02020D2C: ; 0x02020D2C
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, [r4]
	ldr r3, _02020DA0 ; =0x021094DC
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #4
	lsl r2, r1, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r5, r0, #0
	bl sub_020CB0D0
	ldr r0, [r4, #4]
	ldr r3, _02020DA0 ; =0x021094DC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB0EC
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl sub_020CB410
	ldr r0, [r4, #8]
	ldr r3, _02020DA0 ; =0x021094DC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020CB108
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl sub_020CB410
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02020DA0: .word 0x021094DC
	thumb_func_end sub_02020D2C

	thumb_func_start sub_02020DA4
sub_02020DA4: ; 0x02020DA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201FC30
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201FBB8
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r7, #0
	bl sub_020CB0D0
	add r0, r4, #0
	bl sub_0201FC30
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201FBB8
	add r1, r0, #0
	add r0, sp, #4
	add r2, r5, #0
	bl sub_020CB0EC
	ldr r0, [sp]
	add r1, sp, #4
	add r2, r0, #0
	bl sub_020CB410
	add r0, r6, #0
	bl sub_0201FC30
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201FBB8
	add r1, r0, #0
	add r0, sp, #4
	add r2, r4, #0
	bl sub_020CB108
	ldr r0, [sp]
	add r1, sp, #4
	add r2, r0, #0
	bl sub_020CB410
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02020DA4

	thumb_func_start sub_02020E10
sub_02020E10: ; 0x02020E10
	push {r3, r4, r5, r6, r7, lr}
	asr r0, r0, #4
	add r7, r2, #0
	lsl r2, r0, #1
	add r6, r1, #0
	lsl r0, r2, #1
	ldr r1, _02020E7C ; =0x021094DC
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	add r5, r3, #0
	ldr r4, [sp, #0x18]
	bl sub_020CCBA0
	add r2, r0, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r6, #2
	mov r2, #0
	lsl r6, r6, #0xa
	add r0, r0, r6
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r3, r0, #0x1f
	lsr r1, r0, #0x13
	lsl r3, r3, #0xd
	orr r3, r1
	lsl r0, r0, #0xd
	add r0, r0, r6
	adc r3, r2
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	str r0, [r4]
	bl _ll_mul
	mov r3, #0
	add r2, r6, #0
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02020E7C: .word 0x021094DC
	thumb_func_end sub_02020E10

	thumb_func_start sub_02020E80
sub_02020E80: ; 0x02020E80
	push {r4, r5, r6, r7}
	ldr r6, [r2, #4]
	ldr r7, [r1]
	ldr r4, [r0, #4]
	ldr r5, [r1, #4]
	sub r1, r6, r4
	add r3, r7, #0
	mul r3, r1
	ldr r2, [r2]
	sub r1, r4, r5
	mul r1, r2
	ldr r2, [r0]
	sub r0, r5, r6
	mul r0, r2
	add r0, r1, r0
	add r0, r3, r0
	bmi _02020EA8
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02020EA8:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02020E80

	thumb_func_start sub_02020EB0
sub_02020EB0: ; 0x02020EB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp]
	bl sub_02020E80
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02020E80
	eor r0, r6
	cmp r0, #1
	bne _02020EF0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02020E80
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02020E80
	eor r0, r5
	cmp r0, #1
	bne _02020EF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02020EF0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02020EB0

	thumb_func_start sub_02020EF4
sub_02020EF4: ; 0x02020EF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	sub r1, r3, r4
	ldr r0, [sp, #0x18]
	add r6, r2, #0
	sub r0, r0, r6
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	beq _02020F1A
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl sub_020CCBA0
	str r0, [sp]
	b _02020F20
_02020F1A:
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp]
_02020F20:
	ldr r0, [sp]
	lsl r2, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r3, #2
	mov r4, #0
	lsl r3, r3, #0xa
	lsl r2, r6, #0xc
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	ldr r0, [sp]
	sub r1, r2, r1
	str r0, [r5]
	str r1, [sp, #4]
	str r1, [r5, #4]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02020EF4

	thumb_func_start sub_02020F4C
sub_02020F4C: ; 0x02020F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, [sp, #0x48]
	add r7, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	str r2, [sp, #4]
	cmp r4, #0
	beq _02020F64
	ldr r0, _0202109C ; =0x0000FFFF
	str r0, [r4]
	str r0, [r4, #4]
_02020F64:
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02020EB0
	cmp r0, #0
	bne _02020F7A
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02020F7A:
	ldr r0, [r5, #4]
	str r0, [sp]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	ldr r3, [r5]
	add r0, sp, #0x24
	bl sub_02020EF4
	ldr r0, [r6, #4]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	ldr r3, [r6]
	add r0, sp, #0x1c
	bl sub_02020EF4
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x24]
	cmp r3, r1
	bne _02020FAC
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02020FAC:
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x28]
	sub r1, r3, r1
	sub r0, r2, r0
	bl sub_020CCBA0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	mov r3, #0
	str r0, [sp, #0x10]
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x14]
	orr r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x30
	bl sub_020CD788
	mov r1, #2
	lsl r1, r1, #0xa
	cmp r0, r1
	blt _02020FF8
	ldr r2, [sp, #0x30]
	lsl r0, r1, #1
	add r0, r2, r0
	str r0, [sp, #0x30]
_02020FF8:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x10]
	asr r0, r0, #0xc
	str r0, [r4]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	add r1, sp, #0x2c
	bl sub_020CD788
	mov r1, #2
	lsl r1, r1, #0xa
	cmp r0, r1
	blt _0202101A
	ldr r2, [sp, #0x2c]
	lsl r0, r1, #1
	add r0, r2, r0
	str r0, [sp, #0x2c]
_0202101A:
	ldr r0, [sp, #0x2c]
	asr r0, r0, #0xc
	str r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, [r7]
	cmp r0, r1
	blt _0202102C
	mov ip, r0
	b _02021030
_0202102C:
	mov ip, r1
	add r1, r0, #0
_02021030:
	ldr r2, [r5, #4]
	ldr r0, [r7, #4]
	cmp r0, r2
	blt _0202103C
	str r0, [sp, #8]
	b _02021040
_0202103C:
	str r2, [sp, #8]
	add r2, r0, #0
_02021040:
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0]
	cmp r0, r3
	blt _0202104E
	str r0, [sp, #0x18]
	b _02021052
_0202104E:
	str r3, [sp, #0x18]
	add r3, r0, #0
_02021052:
	ldr r0, [sp, #4]
	ldr r5, [r6, #4]
	ldr r0, [r0, #4]
	cmp r0, r5
	blt _02021060
	add r7, r0, #0
	b _02021064
_02021060:
	add r7, r5, #0
	add r5, r0, #0
_02021064:
	ldr r0, [r4]
	mov r6, ip
	cmp r6, r0
	blt _02021094
	cmp r1, r0
	bgt _02021094
	ldr r1, [r4, #4]
	ldr r4, [sp, #8]
	cmp r4, r1
	blt _02021094
	cmp r2, r1
	bgt _02021094
	ldr r2, [sp, #0x18]
	cmp r2, r0
	blt _02021094
	cmp r3, r0
	bgt _02021094
	cmp r7, r1
	blt _02021094
	cmp r5, r1
	bgt _02021094
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02021094:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0202109C: .word 0x0000FFFF
	thumb_func_end sub_02020F4C

	thumb_func_start sub_020210A0
sub_020210A0: ; 0x020210A0
	mov r0, #0
	ldr r3, _020210B8 ; =0x021D2198
	add r1, r0, #0
	mov r2, #5
_020210A8:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020210A8
	stmia r3!, {r0, r1}
	str r0, [r3]
	bx lr
	nop
_020210B8: .word 0x021D2198
	thumb_func_end sub_020210A0

	thumb_func_start sub_020210BC
sub_020210BC: ; 0x020210BC
	push {r3, lr}
	ldr r0, _020210D4 ; =0x021D21D8
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _020210CA
	bl GF_AssertFail
_020210CA:
	ldr r0, _020210D4 ; =0x021D21D8
	mov r1, #0
	strh r1, [r0, #0x18]
	pop {r3, pc}
	nop
_020210D4: .word 0x021D21D8
	thumb_func_end sub_020210BC

	thumb_func_start sub_020210D8
sub_020210D8: ; 0x020210D8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02021144 ; =0x021D21D8
	add r6, r1, #0
	ldrh r1, [r0, #0x1a]
	add r4, r2, #0
	cmp r1, #0
	beq _02021104
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020211AC
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02021104:
	cmp r4, #5
	bhs _0202110C
	cmp r4, #0
	bne _02021112
_0202110C:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02021112:
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0202111E
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202111E:
	add r0, r4, #0
	bl sub_02021384
	cmp r0, #1
	bne _0202113E
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020211AC
	mov r0, #1
_0202113E:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02021144: .word 0x021D21D8
	thumb_func_end sub_020210D8

	thumb_func_start sub_02021148
sub_02021148: ; 0x02021148
	push {r4, lr}
	sub sp, #8
	ldr r1, _020211A8 ; =0x021D21D8
	add r4, r0, #0
	ldrh r2, [r1, #0x1a]
	cmp r2, #0
	beq _0202116E
	mov r2, #0
	str r2, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #1
	add r3, r2, #0
	bl sub_020211AC
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0202116E:
	cmp r4, #5
	bhs _02021176
	cmp r4, #0
	bne _0202117C
_02021176:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0202117C:
	ldrh r1, [r1, #0x18]
	cmp r1, #0
	beq _02021188
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02021188:
	bl sub_02021384
	cmp r0, #1
	bne _020211A4
	mov r2, #0
	str r2, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #1
	add r3, r2, #0
	bl sub_020211AC
	mov r0, #1
_020211A4:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_020211A8: .word 0x021D21D8
	thumb_func_end sub_02021148

	thumb_func_start sub_020211AC
sub_020211AC: ; 0x020211AC
	push {r4, lr}
	ldr r4, _020211D0 ; =0x021D21D8
	strh r0, [r4, #0x18]
	ldr r0, _020211D4 ; =0x021D116C
	strb r1, [r0, #8]
	ldr r0, _020211D8 ; =0x021D2198
	ldr r1, [sp, #0xc]
	str r2, [r0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #8]
	str r1, [r0, #0x54]
	ldr r0, _020211DC ; =0x021D21A4
	mov r1, #9
	bl sub_020211E0
	pop {r4, pc}
	nop
_020211D0: .word 0x021D21D8
_020211D4: .word 0x021D116C
_020211D8: .word 0x021D2198
_020211DC: .word 0x021D21A4
	thumb_func_end sub_020211AC

	thumb_func_start sub_020211E0
sub_020211E0: ; 0x020211E0
	mov r3, #0
	cmp r1, #0
	ble _020211F2
	add r2, r3, #0
_020211E8:
	add r3, r3, #1
	strh r2, [r0, #4]
	add r0, #8
	cmp r3, r1
	blt _020211E8
_020211F2:
	bx lr
	thumb_func_end sub_020211E0

	thumb_func_start sub_020211F4
sub_020211F4: ; 0x020211F4
	push {r4, r5, r6, lr}
	ldr r0, _02021234 ; =0x021D21D8
	mov r5, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _02021204
	mov r0, #1
	pop {r4, r5, r6, pc}
_02021204:
	mov r4, #4
	add r6, r4, #0
_02021208:
	bl sub_020DA308
	add r0, r4, #0
	bl sub_020DA804
	add r0, r6, #0
	bl sub_020DA81C
	cmp r0, #0
	beq _0202121E
	add r5, r5, #1
_0202121E:
	cmp r0, #0
	beq _02021226
	cmp r5, #5
	bls _02021208
_02021226:
	cmp r5, #5
	bls _0202122E
	mov r0, #2
	pop {r4, r5, r6, pc}
_0202122E:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02021234: .word 0x021D21D8
	thumb_func_end sub_020211F4

	thumb_func_start sub_02021238
sub_02021238: ; 0x02021238
	push {r4, lr}
	sub sp, #8
	ldr r0, _0202127C ; =0x021D21D8
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0202125A
	mov r0, #0
	str r0, [sp]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020211AC
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0202125A:
	bl sub_020211F4
	add r4, r0, #0
	cmp r4, #1
	bne _02021274
	mov r0, #0
	str r0, [sp]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020211AC
_02021274:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0202127C: .word 0x021D21D8
	thumb_func_end sub_02021238

	thumb_func_start sub_02021280
sub_02021280: ; 0x02021280
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _020212E4 ; =0x021D21D8
	add r4, r1, #0
	ldrh r3, [r2, #0x1a]
	add r5, r0, #0
	mov r1, #3
	cmp r3, #0
	beq _020212A6
	cmp r5, #0
	beq _0202129A
	bl sub_02021528
_0202129A:
	cmp r4, #2
	bne _020212A2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020212A2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020212A6:
	ldrh r0, [r2, #0x18]
	cmp r0, #0
	beq _020212DE
	bl sub_020DA4E4
	add r6, r0, #0
	ldr r0, _020212E8 ; =0x021D21A4
	mov r1, #9
	bl sub_020212EC
	cmp r5, #0
	beq _020212C6
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02021540
_020212C6:
	ldr r0, _020212E4 ; =0x021D21D8
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	bne _020212DC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020213C8
	add r1, r0, #0
	b _020212DE
_020212DC:
	mov r1, #1
_020212DE:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020212E4: .word 0x021D21D8
_020212E8: .word 0x021D21A4
	thumb_func_end sub_02021280

	thumb_func_start sub_020212EC
sub_020212EC: ; 0x020212EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0
	str r1, [sp]
	add r0, r1, #0
	beq _02021322
	add r4, r5, #0
	add r6, sp, #4
_020212FE:
	add r0, sp, #4
	add r1, r5, #0
	bl sub_020DA6E0
	ldrh r0, [r6]
	add r7, r7, #1
	add r5, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldrh r0, [r6, #6]
	strh r0, [r4, #6]
	ldr r0, [sp]
	add r4, #8
	cmp r7, r0
	blo _020212FE
_02021322:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020212EC

	thumb_func_start sub_02021328
sub_02021328: ; 0x02021328
	push {r3, lr}
	ldr r0, _02021354 ; =0x021D21D8
	ldrh r1, [r0, #0x1a]
	cmp r1, #0
	beq _02021350
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _02021350
	ldr r0, _02021358 ; =0x021D2198
	ldr r0, [r0, #8]
	lsr r0, r0, #1
	bl sub_02021384
	cmp r0, #1
	beq _0202134A
	bl GF_AssertFail
_0202134A:
	ldr r0, _02021354 ; =0x021D21D8
	mov r1, #0
	strh r1, [r0, #0x1a]
_02021350:
	pop {r3, pc}
	nop
_02021354: .word 0x021D21D8
_02021358: .word 0x021D2198
	thumb_func_end sub_02021328

	thumb_func_start sub_0202135C
sub_0202135C: ; 0x0202135C
	push {r3, lr}
	ldr r0, _02021380 ; =0x021D21D8
	ldrh r1, [r0, #0x1a]
	cmp r1, #1
	beq _0202137E
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0202137E
	bl sub_020211F4
	cmp r0, #1
	beq _02021378
	bl GF_AssertFail
_02021378:
	ldr r0, _02021380 ; =0x021D21D8
	mov r1, #1
	strh r1, [r0, #0x1a]
_0202137E:
	pop {r3, pc}
	.balign 4, 0
_02021380: .word 0x021D21D8
	thumb_func_end sub_0202135C

	thumb_func_start sub_02021384
sub_02021384: ; 0x02021384
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	lsl r0, r0, #0x10
	ldr r7, _020213C4 ; =0x021D21A4
	add r6, r5, #0
	lsr r4, r0, #0x10
_02021390:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #9
	bl sub_020DA208
	mov r0, #2
	bl sub_020DA804
	mov r0, #2
	bl sub_020DA81C
	cmp r0, #0
	beq _020213AE
	add r5, r5, #1
_020213AE:
	cmp r0, #0
	beq _020213B6
	cmp r5, #5
	ble _02021390
_020213B6:
	cmp r5, #5
	ble _020213BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020213BE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020213C4: .word 0x021D21A4
	thumb_func_end sub_02021384

	thumb_func_start sub_020213C8
sub_020213C8: ; 0x020213C8
	push {r3, lr}
	cmp r0, #5
	bhi _020213F2
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_020213DA: ; jump table
	.short _020213F2 - _020213DA - 2 ; case 0
	.short _020213E6 - _020213DA - 2 ; case 1
	.short _020213F2 - _020213DA - 2 ; case 2
	.short _020213E6 - _020213DA - 2 ; case 3
	.short _020213EC - _020213DA - 2 ; case 4
	.short _020213EC - _020213DA - 2 ; case 5
_020213E6:
	bl sub_020213F8
	pop {r3, pc}
_020213EC:
	bl sub_020214B0
	pop {r3, pc}
_020213F2:
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020213C8

	thumb_func_start sub_020213F8
sub_020213F8: ; 0x020213F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _020214A8 ; =0x021D2198
	str r1, [sp, #4]
	ldr r1, [r5, #8]
	str r0, [sp]
	add r7, r2, #0
	mov r4, #0
	cmp r1, #0
	bls _0202149E
_0202140C:
	ldr r0, [sp, #4]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bpl _02021420
	add r0, #9
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_02021420:
	lsl r1, r0, #3
	ldr r0, _020214AC ; =0x021D2198
	add r1, r0, r1
	ldrh r0, [r1, #0x10]
	cmp r0, #1
	bne _02021496
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _02021496
	ldr r2, [r5, #0x54]
	ldr r0, [r5]
	lsl r2, r2, #3
	add r2, r0, r2
	add r0, r2, #0
	sub r0, #8
	ldrh r3, [r1, #0xc]
	ldrh r0, [r0]
	cmp r0, r3
	blt _0202144A
	sub r3, r0, r3
	b _0202144C
_0202144A:
	sub r3, r3, r0
_0202144C:
	sub r6, r2, #6
	ldrh r0, [r1, #0xe]
	ldrh r6, [r6]
	cmp r6, r0
	blt _0202145A
	sub r0, r6, r0
	b _0202145C
_0202145A:
	sub r0, r0, r6
_0202145C:
	cmp r3, r7
	bhs _02021464
	cmp r0, r7
	blo _02021496
_02021464:
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #2]
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #4]
	ldrh r0, [r1, #0x12]
	strh r0, [r2, #6]
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
	ldr r1, [r5, #4]
	cmp r0, r1
	blo _02021496
	ldr r2, [sp]
	cmp r2, #1
	bne _0202148E
	bl _u32_div_f
	str r1, [r5, #0x54]
	b _02021496
_0202148E:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02021496:
	ldr r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blo _0202140C
_0202149E:
	ldr r0, _020214A8 ; =0x021D2198
	ldr r0, [r0, #0x54]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020214A8: .word 0x021D2198
_020214AC: .word 0x021D2198
	thumb_func_end sub_020213F8

	thumb_func_start sub_020214B0
sub_020214B0: ; 0x020214B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _02021520 ; =0x021D2198
	str r1, [sp]
	ldr r1, [r5, #8]
	add r7, r0, #0
	mov r4, #0
	cmp r1, #0
	bls _02021518
_020214C0:
	ldr r0, [sp]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	bpl _020214D4
	add r1, #9
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
_020214D4:
	ldr r0, [r5, #0x54]
	lsl r1, r1, #3
	lsl r3, r0, #3
	ldr r0, _02021524 ; =0x021D2198
	ldr r6, [r5]
	add r2, r0, r1
	ldrh r0, [r2, #0xc]
	add r1, r6, r3
	strh r0, [r6, r3]
	ldrh r0, [r2, #0xe]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #4]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #6]
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
	ldr r1, [r5, #4]
	cmp r0, r1
	blo _02021510
	cmp r7, #4
	bne _0202150A
	bl _u32_div_f
	str r1, [r5, #0x54]
	b _02021510
_0202150A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02021510:
	ldr r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blo _020214C0
_02021518:
	ldr r0, _02021520 ; =0x021D2198
	ldr r0, [r0, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02021520: .word 0x021D2198
_02021524: .word 0x021D2198
	thumb_func_end sub_020214B0

	thumb_func_start sub_02021528
sub_02021528: ; 0x02021528
	mov r2, #0
	strh r2, [r0]
	add r1, r2, #0
_0202152E:
	strh r1, [r0, #8]
	strh r1, [r0, #6]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r2, r2, #1
	add r0, #8
	cmp r2, #8
	blt _0202152E
	bx lr
	thumb_func_end sub_02021528

	thumb_func_start sub_02021540
sub_02021540: ; 0x02021540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021528
	ldr r0, _02021598 ; =0x021D2198
	mov r6, #0
	ldr r1, [r0, #8]
	cmp r1, #0
	bls _02021596
	ldr r2, _0202159C ; =0x021D2198
_02021556:
	sub r1, r4, r1
	add r1, r6, r1
	add r1, r1, #1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bpl _02021568
	add r1, #9
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
_02021568:
	lsl r1, r1, #3
	add r3, r2, r1
	ldrh r1, [r3, #0x12]
	cmp r1, #0
	bne _0202158E
	ldrh r1, [r5]
	ldrh r7, [r3, #0xc]
	lsl r1, r1, #3
	add r1, r5, r1
	strh r7, [r1, #2]
	ldrh r7, [r3, #0xe]
	strh r7, [r1, #4]
	ldrh r7, [r3, #0x10]
	strh r7, [r1, #6]
	ldrh r3, [r3, #0x12]
	strh r3, [r1, #8]
	ldrh r1, [r5]
	add r1, r1, #1
	strh r1, [r5]
_0202158E:
	ldr r1, [r0, #8]
	add r6, r6, #1
	cmp r6, r1
	blo _02021556
_02021596:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02021598: .word 0x021D2198
_0202159C: .word 0x021D2198
	thumb_func_end sub_02021540

	thumb_func_start sub_020215A0
sub_020215A0: ; 0x020215A0
	ldr r1, _020215B4 ; =0x04001000
	ldr r2, [r1]
	ldr r1, _020215B8 ; =0x00300010
	lsl r3, r1, #0x16
	ldr r3, [r3]
	and r2, r1
	and r1, r3
	ldr r3, _020215BC ; =sub_020215C0
	bx r3
	nop
_020215B4: .word 0x04001000
_020215B8: .word 0x00300010
_020215BC: .word sub_020215C0
	thumb_func_end sub_020215A0

	thumb_func_start sub_020215C0
sub_020215C0: ; 0x020215C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02021680 ; =0x021D21F4
	str r1, [sp]
	ldr r0, [r0]
	str r2, [sp, #4]
	cmp r0, #0
	bne _0202167A
	ldr r0, [r5, #0xc]
	mov r1, #0x3c
	bl AllocFromHeap
	add r1, r0, #0
	ldr r0, _02021680 ; =0x021D21F4
	mov r2, #0x3c
	str r1, [r0]
	mov r0, #0
	bl sub_020D47EC
	ldr r1, _02021680 ; =0x021D21F4
	ldr r2, [r5]
	ldr r0, [r1]
	str r2, [r0, #4]
	ldr r1, [r1]
	ldr r0, [r5, #0xc]
	ldr r2, [r1, #4]
	mov r1, #0x54
	mul r1, r2
	bl AllocFromHeap
	ldr r7, _02021680 ; =0x021D21F4
	mov r6, #0
	ldr r1, [r7]
	str r0, [r1]
	ldr r0, [r5]
	cmp r0, #0
	ble _02021622
	add r4, r6, #0
_0202160E:
	ldr r0, [r7]
	ldr r0, [r0]
	add r0, r0, r4
	bl sub_02021C08
	ldr r0, [r5]
	add r6, r6, #1
	add r4, #0x54
	cmp r6, r0
	blt _0202160E
_02021622:
	ldr r0, [sp]
	bl sub_02022448
	ldr r1, _02021680 ; =0x021D21F4
	ldr r1, [r1]
	str r0, [r1, #0x2c]
	ldr r0, [sp, #4]
	bl sub_02022448
	ldr r2, _02021680 ; =0x021D21F4
	mov r3, #1
	ldr r1, [r2]
	lsl r3, r3, #0x1a
	str r0, [r1, #0x30]
	ldr r0, [r3]
	ldr r1, _02021684 ; =0xFFCFFFEF
	add r4, r0, #0
	ldr r0, [sp]
	and r4, r1
	orr r0, r4
	str r0, [r3]
	ldr r3, _02021688 ; =0x04001000
	ldr r0, [r3]
	and r1, r0
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r3]
	ldr r1, [r2]
	ldr r0, [r5, #4]
	ldr r1, [r1, #0x2c]
	bl sub_020224A8
	ldr r1, _02021680 ; =0x021D21F4
	add r4, r0, #0
	ldr r1, [r1]
	ldr r0, [r5, #8]
	ldr r1, [r1, #0x30]
	bl sub_020224A8
	add r1, r0, #0
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_020221D0
_0202167A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02021680: .word 0x021D21F4
_02021684: .word 0xFFCFFFEF
_02021688: .word 0x04001000
	thumb_func_end sub_020215C0

	thumb_func_start sub_0202168C
sub_0202168C: ; 0x0202168C
	push {r3, lr}
	ldr r0, _020216C4 ; =0x021D21F4
	ldr r0, [r0]
	cmp r0, #0
	beq _020216C2
	ldr r0, [r0, #0x34]
	bl sub_02022238
	ldr r0, _020216C4 ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_02022238
	bl sub_020218D4
	ldr r0, _020216C4 ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _020216C4 ; =0x021D21F4
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _020216C4 ; =0x021D21F4
	mov r1, #0
	str r1, [r0]
_020216C2:
	pop {r3, pc}
	.balign 4, 0
_020216C4: .word 0x021D21F4
	thumb_func_end sub_0202168C

	thumb_func_start sub_020216C8
sub_020216C8: ; 0x020216C8
	push {r3, lr}
	ldr r0, _020216F0 ; =0x021D21F4
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0xc]
	ldr r1, [r0]
	str r2, [r1, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bl sub_02022278
	ldr r0, _020216F0 ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_02022278
	bl sub_02022060
	pop {r3, pc}
	nop
_020216F0: .word 0x021D21F4
	thumb_func_end sub_020216C8

	thumb_func_start sub_020216F4
sub_020216F4: ; 0x020216F4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r3, r1, #0
	cmp r2, #1
	add r0, sp, #4
	bne _0202172A
	str r0, [sp]
	ldr r0, _02021754 ; =0x021D21F4
	add r2, r3, #0
	ldr r0, [r0]
	add r1, r4, #0
	ldr r0, [r0, #0x1c]
	add r3, sp, #8
	bl sub_0202256C
	ldr r3, [sp, #4]
	cmp r3, #0
	ble _02021750
	mov r2, #0
	str r2, [sp]
	ldr r1, [sp, #8]
	mov r0, #1
	bl sub_02021EC0
	add sp, #0xc
	pop {r3, r4, pc}
_0202172A:
	str r0, [sp]
	ldr r0, _02021754 ; =0x021D21F4
	add r2, r3, #0
	ldr r0, [r0]
	add r1, r4, #0
	ldr r0, [r0, #0x20]
	add r3, sp, #8
	bl sub_0202256C
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _02021750
	str r0, [sp]
	mov r1, #0
	ldr r2, [sp, #8]
	mov r0, #2
	add r3, r1, #0
	bl sub_02021EC0
_02021750:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_02021754: .word 0x021D21F4
	thumb_func_end sub_020216F4

	thumb_func_start sub_02021758
sub_02021758: ; 0x02021758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0202180C
	cmp r0, #1
	bne _0202176A
	bl GF_AssertFail
_0202176A:
	bl sub_02022024
	add r4, r0, #0
	bne _0202177A
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202177A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021C2C
	cmp r0, #0
	bne _0202178A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202178A:
	add r0, r4, #0
	bl sub_02021C9C
	cmp r0, #0
	bne _0202179E
	ldr r0, [r4, #0xc]
	bl sub_02021884
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202179E:
	ldr r0, _020217AC ; =0x021D21F4
	ldr r1, [r0]
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_020217AC: .word 0x021D21F4
	thumb_func_end sub_02021758

	thumb_func_start sub_020217B0
sub_020217B0: ; 0x020217B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0202180C
	cmp r0, #1
	bne _020217C2
	bl GF_AssertFail
_020217C2:
	bl sub_02022024
	add r4, r0, #0
	bne _020217D2
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_020217D2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021C2C
	cmp r0, #0
	bne _020217E2
	mov r0, #0
	pop {r3, r4, r5, pc}
_020217E2:
	mov r0, #1
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl sub_02021C9C
	cmp r0, #0
	bne _020217FA
	ldr r0, [r4, #0xc]
	bl sub_02021884
	mov r0, #0
	pop {r3, r4, r5, pc}
_020217FA:
	ldr r0, _02021808 ; =0x021D21F4
	ldr r1, [r0]
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02021808: .word 0x021D21F4
	thumb_func_end sub_020217B0

	thumb_func_start sub_0202180C
sub_0202180C: ; 0x0202180C
	push {r3, r4}
	ldr r1, _02021838 ; =0x021D21F4
	mov r2, #0
	ldr r4, [r1]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _02021832
	ldr r3, [r4]
_0202181C:
	ldr r1, [r3, #0xc]
	cmp r0, r1
	bne _02021828
	mov r0, #1
	pop {r3, r4}
	bx lr
_02021828:
	ldr r1, [r4, #4]
	add r2, r2, #1
	add r3, #0x54
	cmp r2, r1
	blt _0202181C
_02021832:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02021838: .word 0x021D21F4
	thumb_func_end sub_0202180C

	thumb_func_start sub_0202183C
sub_0202183C: ; 0x0202183C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bne _02021848
	bl GF_AssertFail
_02021848:
	add r0, r4, #0
	bl sub_02021D70
	add r4, r0, #0
	bne _02021856
	bl GF_AssertFail
_02021856:
	str r5, [r4]
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0202186C
	ldr r1, [r4, #0x34]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x10]
	mov r0, #0x13
	bl sub_020205D8
_0202186C:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _02021880
	ldr r1, [r4, #0x38]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x10]
	mov r0, #0x23
	bl sub_020205D8
_02021880:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0202183C

	thumb_func_start sub_02021884
sub_02021884: ; 0x02021884
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r5, #1
	mov r7, #0
_0202188C:
	add r0, r6, #0
	bl sub_02021D70
	add r4, r0, #0
	bne _0202189A
	bl GF_AssertFail
_0202189A:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #4
	bne _020218AE
	add r0, r4, #0
	add r0, #0x10
	bl sub_02021A50
	b _020218B0
_020218AE:
	add r5, r7, #0
_020218B0:
	cmp r5, #0
	bne _0202188C
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _020218CE
	add r0, r4, #0
	bl sub_02021D58
	ldr r0, _020218D0 ; =0x021D21F4
	ldr r1, [r0]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	str r0, [r1, #8]
_020218CE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020218D0: .word 0x021D21F4
	thumb_func_end sub_02021884

	thumb_func_start sub_020218D4
sub_020218D4: ; 0x020218D4
	push {r4, r5, r6, lr}
	ldr r6, _0202190C ; =0x021D21F4
	mov r4, #0
	ldr r1, [r6]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0202190A
	add r5, r4, #0
_020218E4:
	ldr r1, [r1]
	add r0, r1, r5
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _020218FE
	add r0, r1, r5
	bl sub_02021D58
	ldr r1, [r6]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	str r0, [r1, #8]
_020218FE:
	ldr r1, [r6]
	add r4, r4, #1
	ldr r0, [r1, #4]
	add r5, #0x54
	cmp r4, r0
	blt _020218E4
_0202190A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0202190C: .word 0x021D21F4
	thumb_func_end sub_020218D4

	thumb_func_start sub_02021910
sub_02021910: ; 0x02021910
	push {r4, lr}
	bl sub_02021D70
	add r4, r0, #0
	bne _0202191E
	bl GF_AssertFail
_0202191E:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0202192C
	mov r0, #0
	pop {r4, pc}
_0202192C:
	add r4, #0x10
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02021910

	thumb_func_start sub_02021934
sub_02021934: ; 0x02021934
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r1, #0
	bl sub_02021D70
	add r4, r0, #0
	bne _02021946
	bl GF_AssertFail
_02021946:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02021956
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_02021956:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, r5, #0
	bl sub_02021DE4
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #3
	bne _0202197A
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202197A:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x3c
	strb r1, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02021E90
	mov r0, #1
	str r0, [r4, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl sub_02021FB0
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl sub_02021EC0
	add r4, #0x10
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02021934

	thumb_func_start sub_020219B8
sub_020219B8: ; 0x020219B8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	bl sub_02021C50
	add r4, r0, #0
	bne _020219C8
	bl GF_AssertFail
_020219C8:
	bl sub_02022024
	add r5, r0, #0
	bne _020219D4
	bl GF_AssertFail
_020219D4:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #3
	beq _020219E4
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_020219E4:
	add r3, r5, #0
	mov r2, #0xa
_020219E8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020219E8
	ldr r0, [r4]
	mov r1, #4
	str r0, [r3]
	add r0, r5, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [r5, #4]
	mov r1, #1
	tst r1, r0
	beq _02021A08
	ldr r3, [r5, #0x4c]
	b _02021A0A
_02021A08:
	ldr r3, [r5, #0x50]
_02021A0A:
	add r1, sp, #0xc
	str r1, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl sub_02021DE4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	bl sub_02021E90
	mov r0, #1
	str r0, [r5, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r5, #0x50]
	add r0, r5, #0
	bl sub_02021FB0
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl sub_02021EC0
	add r5, #0x10
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020219B8

	thumb_func_start sub_02021A50
sub_02021A50: ; 0x02021A50
	push {r4, r5, r6, lr}
	ldr r2, _02021AC4 ; =0x021D21F4
	mov r1, #0
	ldr r5, [r2]
	ldr r4, [r5, #4]
	cmp r4, #0
	ble _02021A8E
	ldr r2, [r5]
	add r3, r1, #0
_02021A62:
	add r6, r2, #0
	add r6, #0x3c
	ldrb r6, [r6]
	cmp r6, #3
	beq _02021A78
	ldr r6, [r5]
	add r6, r6, r3
	add r6, #0x3c
	ldrb r6, [r6]
	cmp r6, #4
	bne _02021A82
_02021A78:
	ldr r6, [r5]
	add r6, r6, r3
	add r6, #0x10
	cmp r6, r0
	beq _02021A8E
_02021A82:
	ldr r6, [r5, #4]
	add r1, r1, #1
	add r2, #0x54
	add r3, #0x54
	cmp r1, r6
	blt _02021A62
_02021A8E:
	cmp r1, r4
	bge _02021AC2
	mov r0, #0x54
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5]
	add r0, r0, r4
	bl sub_020223C4
	ldr r0, _02021AC4 ; =0x021D21F4
	ldr r1, [r0]
	ldr r2, [r1]
	add r2, #0x3c
	ldrb r1, [r2, r4]
	cmp r1, #3
	bne _02021AB4
	mov r0, #2
	strb r0, [r2, r4]
	pop {r4, r5, r6, pc}
_02021AB4:
	mov r1, #0
	strb r1, [r2, r4]
	ldr r0, [r0]
	ldr r0, [r0]
	add r0, r0, r4
	bl sub_02021C08
_02021AC2:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02021AC4: .word 0x021D21F4
	thumb_func_end sub_02021A50

	thumb_func_start sub_02021AC8
sub_02021AC8: ; 0x02021AC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r1, #0
	bne _02021B02
	add r1, r5, #0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_020224C0
	add r7, r0, #0
	beq _02021B52
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02022510
	strh r5, [r4, #8]
	str r6, [r4]
	cmp r5, #1
	bne _02021AF8
	ldr r0, [sp, #0x14]
	b _02021AFA
_02021AF8:
	ldr r0, [sp, #0x10]
_02021AFA:
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0xa]
	b _02021B52
_02021B02:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, r6, #0
	bl sub_02021DE4
	add r7, r0, #0
	beq _02021B52
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_02021EC0
	strh r5, [r4, #8]
	cmp r5, #1
	bne _02021B3E
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r0, _02021B58 ; =0x021D21F4
	ldr r1, [sp, #0x14]
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	b _02021B4A
_02021B3E:
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r0, _02021B58 ; =0x021D21F4
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
_02021B4A:
	add r0, r1, r0
	str r0, [r4, #4]
	mov r0, #1
	strh r0, [r4, #0xa]
_02021B52:
	add r0, r7, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02021B58: .word 0x021D21F4
	thumb_func_end sub_02021AC8

	thumb_func_start sub_02021B5C
sub_02021B5C: ; 0x02021B5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02021BCA
	ldrh r1, [r4, #8]
	mov r0, #1
	tst r0, r1
	beq _02021B98
	ldr r1, _02021BCC ; =0x021D21F4
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r1, [r1, #0x2c]
	bl sub_020224A8
	add r5, r0, #0
	ldr r0, _02021BCC ; =0x021D21F4
	ldr r1, [r4, #4]
	ldr r2, [r0]
	ldr r0, [r2, #0x1c]
	sub r0, r1, r0
	ldr r1, [r2, #0x2c]
	bl sub_020224A8
	ldr r2, _02021BCC ; =0x021D21F4
	add r1, r5, #0
	ldr r2, [r2]
	ldr r2, [r2, #0x34]
	bl sub_02022374
_02021B98:
	ldrh r1, [r4, #8]
	mov r0, #2
	tst r0, r1
	beq _02021BCA
	ldr r1, _02021BCC ; =0x021D21F4
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r1, [r1, #0x30]
	bl sub_020224A8
	add r5, r0, #0
	ldr r0, _02021BCC ; =0x021D21F4
	ldr r1, [r4, #4]
	ldr r2, [r0]
	ldr r0, [r2, #0x20]
	sub r0, r1, r0
	ldr r1, [r2, #0x30]
	bl sub_020224A8
	ldr r2, _02021BCC ; =0x021D21F4
	add r1, r5, #0
	ldr r2, [r2]
	ldr r2, [r2, #0x38]
	bl sub_02022374
_02021BCA:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02021BCC: .word 0x021D21F4
	thumb_func_end sub_02021B5C

	thumb_func_start sub_02021BD0
sub_02021BD0: ; 0x02021BD0
	push {r3, lr}
	ldr r0, _02021BE8 ; =0x021D21F4
	ldr r0, [r0]
	cmp r0, #0
	bne _02021BDE
	bl GF_AssertFail
_02021BDE:
	ldr r1, _02021BE8 ; =0x021D21F4
	mov r2, #0
	ldr r0, [r1]
	str r2, [r1]
	pop {r3, pc}
	.balign 4, 0
_02021BE8: .word 0x021D21F4
	thumb_func_end sub_02021BD0

	thumb_func_start sub_02021BEC
sub_02021BEC: ; 0x02021BEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02021C04 ; =0x021D21F4
	ldr r0, [r0]
	cmp r0, #0
	beq _02021BFC
	bl GF_AssertFail
_02021BFC:
	ldr r0, _02021C04 ; =0x021D21F4
	str r4, [r0]
	pop {r4, pc}
	nop
_02021C04: .word 0x021D21F4
	thumb_func_end sub_02021BEC

	thumb_func_start sub_02021C08
sub_02021C08: ; 0x02021C08
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	strb r2, [r0, #8]
	sub r1, r2, #1
	str r1, [r0, #0xc]
	str r2, [r0, #0x34]
	add r1, r0, #0
	str r2, [r0, #0x38]
	add r1, #0x3c
	strb r2, [r1]
	str r2, [r0, #0x40]
	ldr r3, _02021C28 ; =sub_020B8008
	add r0, #0x10
	bx r3
	nop
_02021C28: .word sub_020B8008
	thumb_func_end sub_02021C08

	thumb_func_start sub_02021C2C
sub_02021C2C: ; 0x02021C2C
	ldr r2, [r0]
	str r2, [r1]
	ldr r2, [r0, #8]
	str r2, [r1, #0xc]
	ldr r2, [r0, #4]
	str r2, [r1, #4]
	ldr r2, [r1]
	ldr r2, [r2, #0xc]
	lsr r2, r2, #8
	strb r2, [r1, #8]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0x44]
	mov r0, #0
	str r0, [r1, #0x48]
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	mov r0, #1
	bx lr
	thumb_func_end sub_02021C2C

	thumb_func_start sub_02021C50
sub_02021C50: ; 0x02021C50
	push {r3, r4, r5, r6}
	ldr r2, _02021C98 ; =0x021D21F4
	mov r1, #0
	ldr r5, [r2]
	ldr r4, [r5, #4]
	cmp r4, #0
	ble _02021C82
	ldr r2, [r5]
	add r3, r1, #0
_02021C62:
	add r6, r2, #0
	add r6, #0x3c
	ldrb r6, [r6]
	cmp r6, #0
	beq _02021C76
	ldr r6, [r5]
	add r6, r6, r3
	add r6, #0x10
	cmp r6, r0
	beq _02021C82
_02021C76:
	ldr r6, [r5, #4]
	add r1, r1, #1
	add r2, #0x54
	add r3, #0x54
	cmp r1, r6
	blt _02021C62
_02021C82:
	cmp r1, r4
	blt _02021C8C
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02021C8C:
	mov r0, #0x54
	ldr r2, [r5]
	mul r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
_02021C98: .word 0x021D21F4
	thumb_func_end sub_02021C50

	thumb_func_start sub_02021C9C
sub_02021C9C: ; 0x02021C9C
	push {r3, lr}
	ldrb r1, [r0, #8]
	mov r2, #1
	cmp r1, #0
	beq _02021CAE
	mov r1, #2
	add r0, #0x3c
	strb r1, [r0]
	b _02021CC8
_02021CAE:
	add r1, r0, #0
	add r1, #0x3c
	strb r2, [r1]
	ldr r1, [r0, #0x44]
	cmp r1, #0
	bne _02021CC2
	bl sub_02021CCC
	add r2, r0, #0
	b _02021CC8
_02021CC2:
	bl sub_02021D00
	add r2, r0, #0
_02021CC8:
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end sub_02021C9C

	thumb_func_start sub_02021CCC
sub_02021CCC: ; 0x02021CCC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r0, [r0, #0x10]
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020224C0
	add r4, r0, #0
	beq _02021CF8
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02021DD0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r0, [r0, #0x10]
	bl sub_02022510
_02021CF8:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02021CCC

	thumb_func_start sub_02021D00
sub_02021D00: ; 0x02021D00
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r3, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r3, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl sub_02021DE4
	cmp r0, #0
	bne _02021D26
	add sp, #0x18
	mov r0, #0
	pop {r4, pc}
_02021D26:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02021E90
	mov r0, #1
	str r0, [r4, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl sub_02021F28
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl sub_02021EC0
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end sub_02021D00

	thumb_func_start sub_02021D58
sub_02021D58: ; 0x02021D58
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _02021D66
	bl sub_020223C4
_02021D66:
	add r0, r4, #0
	bl sub_02021C08
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02021D58

	thumb_func_start sub_02021D70
sub_02021D70: ; 0x02021D70
	push {r4, r5}
	ldr r2, _02021DA4 ; =0x021D21F4
	mov r1, #0
	ldr r5, [r2]
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _02021D9C
	ldr r2, [r5]
	add r4, r2, #0
_02021D82:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _02021D92
	mov r0, #0x54
	mul r0, r1
	add r0, r2, r0
	pop {r4, r5}
	bx lr
_02021D92:
	ldr r3, [r5, #4]
	add r1, r1, #1
	add r4, #0x54
	cmp r1, r3
	blt _02021D82
_02021D9C:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_02021DA4: .word 0x021D21F4
	thumb_func_end sub_02021D70

	thumb_func_start sub_02021DA8
sub_02021DA8: ; 0x02021DA8
	cmp r1, #1
	bne _02021DB4
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r2, [r1]
	b _02021DB8
_02021DB4:
	ldr r1, _02021DC8 ; =0x04001000
	ldr r2, [r1]
_02021DB8:
	ldr r1, _02021DCC ; =0x00300010
	and r2, r1
	ldr r1, [r0]
	str r2, [r1, #8]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx lr
	nop
_02021DC8: .word 0x04001000
_02021DCC: .word 0x00300010
	thumb_func_end sub_02021DA8

	thumb_func_start sub_02021DD0
sub_02021DD0: ; 0x02021DD0
	push {r3, lr}
	str r1, [r0, #0x34]
	str r2, [r0, #0x38]
	ldrb r1, [r0, #8]
	cmp r1, #0
	bne _02021DE0
	bl sub_02021F28
_02021DE0:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02021DD0

	thumb_func_start sub_02021DE4
sub_02021DE4: ; 0x02021DE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r6, r2, #0
	str r0, [sp, #0x1c]
	mov r2, #1
	add r0, r5, #0
	add r4, r1, #0
	str r3, [sp]
	ldr r7, [sp, #0x18]
	tst r0, r2
	beq _02021E3C
	ldr r1, _02021E8C ; =0x021D21F4
	add r0, r3, #0
	ldr r1, [r1]
	ldr r1, [r1, #0x2c]
	bl sub_02022488
	ldr r1, _02021E8C ; =0x021D21F4
	str r0, [r7]
	ldr r1, [r1]
	ldr r1, [r1, #0x2c]
	bl sub_020224A8
	ldr r1, _02021E8C ; =0x021D21F4
	ldr r1, [r1]
	ldr r1, [r1, #0x34]
	bl sub_020222EC
	mov r1, #0
	mvn r1, r1
	str r0, [r4]
	cmp r0, r1
	bne _02021E30
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02021E30:
	ldr r1, _02021E8C ; =0x021D21F4
	ldr r1, [r1]
	ldr r1, [r1, #0x2c]
	bl sub_020224B8
	str r0, [r4]
_02021E3C:
	mov r0, #2
	tst r0, r5
	beq _02021E86
	ldr r1, _02021E8C ; =0x021D21F4
	ldr r0, [sp]
	ldr r1, [r1]
	mov r2, #1
	ldr r1, [r1, #0x30]
	bl sub_02022488
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r1, _02021E8C ; =0x021D21F4
	ldr r1, [r1]
	ldr r1, [r1, #0x30]
	bl sub_020224A8
	ldr r1, _02021E8C ; =0x021D21F4
	ldr r1, [r1]
	ldr r1, [r1, #0x38]
	bl sub_020222EC
	mov r1, #0
	mvn r1, r1
	str r0, [r6]
	cmp r0, r1
	bne _02021E7A
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02021E7A:
	ldr r1, _02021E8C ; =0x021D21F4
	ldr r1, [r1]
	ldr r1, [r1, #0x30]
	bl sub_020224B8
	str r0, [r6]
_02021E86:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02021E8C: .word 0x021D21F4
	thumb_func_end sub_02021DE4

	thumb_func_start sub_02021E90
sub_02021E90: ; 0x02021E90
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r3, #1
	tst r3, r4
	beq _02021EA4
	ldr r3, _02021EBC ; =0x021D21F4
	ldr r3, [r3]
	ldr r3, [r3, #0x1c]
	add r1, r1, r3
	str r1, [r0, #0x34]
_02021EA4:
	ldr r3, [r0, #4]
	mov r1, #2
	tst r1, r3
	beq _02021EB6
	ldr r1, _02021EBC ; =0x021D21F4
	ldr r1, [r1]
	ldr r1, [r1, #0x20]
	add r1, r2, r1
	str r1, [r0, #0x38]
_02021EB6:
	pop {r3, r4}
	bx lr
	nop
_02021EBC: .word 0x021D21F4
	thumb_func_end sub_02021E90

	thumb_func_start sub_02021EC0
sub_02021EC0: ; 0x02021EC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	tst r0, r5
	beq _02021EF4
	ldr r1, _02021F24 ; =0x021D21F4
	add r0, r3, #0
	ldr r1, [r1]
	ldr r1, [r1, #0x2c]
	bl sub_020224A8
	ldr r1, _02021F24 ; =0x021D21F4
	add r7, r0, #0
	ldr r1, [r1]
	add r0, r4, #0
	ldr r1, [r1, #0x2c]
	bl sub_020224A8
	ldr r2, _02021F24 ; =0x021D21F4
	add r1, r7, #0
	ldr r2, [r2]
	ldr r2, [r2, #0x34]
	bl sub_02022290
_02021EF4:
	mov r0, #2
	tst r0, r5
	beq _02021F20
	ldr r1, _02021F24 ; =0x021D21F4
	ldr r0, [sp, #0x18]
	ldr r1, [r1]
	ldr r1, [r1, #0x30]
	bl sub_020224A8
	ldr r1, _02021F24 ; =0x021D21F4
	add r4, r0, #0
	ldr r1, [r1]
	add r0, r6, #0
	ldr r1, [r1, #0x30]
	bl sub_020224A8
	ldr r2, _02021F24 ; =0x021D21F4
	add r1, r4, #0
	ldr r2, [r2]
	ldr r2, [r2, #0x38]
	bl sub_02022290
_02021F20:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02021F24: .word 0x021D21F4
	thumb_func_end sub_02021EC0

	thumb_func_start sub_02021F28
sub_02021F28: ; 0x02021F28
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl sub_020B8008
	ldr r1, [r4, #4]
	cmp r1, #3
	beq _02021F40
	add r0, r4, #0
	bl sub_02021F54
	pop {r4, pc}
_02021F40:
	add r0, r4, #0
	mov r1, #1
	bl sub_02021F54
	add r0, r4, #0
	mov r1, #2
	bl sub_02021F54
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02021F28

	thumb_func_start sub_02021F54
sub_02021F54: ; 0x02021F54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x40]
	add r4, r1, #0
	cmp r2, #0
	beq _02021F66
	bl sub_02021DA8
	b _02021F68
_02021F66:
	add r0, r4, #0
_02021F68:
	cmp r4, #1
	bne _02021F76
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r5, #0x34]
	ldr r2, [r2]
	b _02021F7C
_02021F76:
	ldr r2, _02021FAC ; =0x04001000
	ldr r1, [r5, #0x38]
	ldr r2, [r2]
_02021F7C:
	cmp r0, #0
	ldr r0, [r5]
	bne _02021F8E
	add r5, #0x10
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020B82CC
	b _02021F98
_02021F8E:
	add r5, #0x10
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020B80A0
_02021F98:
	cmp r4, #1
	bne _02021FA4
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
_02021FA4:
	ldr r0, _02021FAC ; =0x04001000
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
	nop
_02021FAC: .word 0x04001000
	thumb_func_end sub_02021F54

	thumb_func_start sub_02021FB0
sub_02021FB0: ; 0x02021FB0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl sub_020B8008
	ldr r1, [r4, #4]
	cmp r1, #3
	beq _02021FC8
	add r0, r4, #0
	bl sub_02021FDC
	pop {r4, pc}
_02021FC8:
	add r0, r4, #0
	mov r1, #1
	bl sub_02021FDC
	add r0, r4, #0
	mov r1, #2
	bl sub_02021FDC
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02021FB0

	thumb_func_start sub_02021FDC
sub_02021FDC: ; 0x02021FDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x40]
	add r4, r1, #0
	cmp r2, #0
	beq _02021FEC
	bl sub_02021DA8
_02021FEC:
	cmp r4, #1
	bne _02021FFA
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r5, #0x34]
	ldr r0, [r0]
	b _02022000
_02021FFA:
	ldr r0, _02022020 ; =0x04001000
	ldr r1, [r5, #0x38]
	ldr r0, [r0]
_02022000:
	ldr r0, [r5]
	add r5, #0x10
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020B84F8
	cmp r4, #1
	bne _02022018
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
_02022018:
	ldr r0, _02022020 ; =0x04001000
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
	nop
_02022020: .word 0x04001000
	thumb_func_end sub_02021FDC

	thumb_func_start sub_02022024
sub_02022024: ; 0x02022024
	push {r3, r4}
	ldr r1, _0202205C ; =0x021D21F4
	mov r0, #0
	ldr r4, [r1]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _02022054
	ldr r1, [r4]
	add r3, r1, #0
_02022036:
	add r2, r3, #0
	add r2, #0x3c
	ldrb r2, [r2]
	cmp r2, #0
	bne _0202204A
	mov r2, #0x54
	mul r2, r0
	add r0, r1, r2
	pop {r3, r4}
	bx lr
_0202204A:
	ldr r2, [r4, #4]
	add r0, r0, #1
	add r3, #0x54
	cmp r0, r2
	blt _02022036
_02022054:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0202205C: .word 0x021D21F4
	thumb_func_end sub_02022024

	thumb_func_start sub_02022060
sub_02022060: ; 0x02022060
	push {r3, lr}
	bl sub_020CEBEC
	cmp r0, #0x30
	bgt _02022090
	bge _020220D8
	cmp r0, #0x10
	bgt _0202208A
	bge _020220CC
	cmp r0, #3
	bhi _02022108
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02022082: ; jump table
	.short _020220AA - _02022082 - 2 ; case 0
	.short _020220F0 - _02022082 - 2 ; case 1
	.short _020220F0 - _02022082 - 2 ; case 2
	.short _020220FC - _02022082 - 2 ; case 3
_0202208A:
	cmp r0, #0x20
	beq _020220B4
	b _02022108
_02022090:
	cmp r0, #0x50
	bgt _0202209C
	bge _020220D8
	cmp r0, #0x40
	beq _020220B4
	b _02022108
_0202209C:
	cmp r0, #0x60
	bgt _020220A4
	beq _020220C0
	b _02022108
_020220A4:
	cmp r0, #0x70
	beq _020220E4
	b _02022108
_020220AA:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x14]
	b _02022110
_020220B4:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _02022110
_020220C0:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _02022110
_020220CC:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x14]
	b _02022110
_020220D8:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #5
	ldr r0, [r0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _02022110
_020220E4:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #6
	ldr r0, [r0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _02022110
_020220F0:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x14]
	b _02022110
_020220FC:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0x12
	str r1, [r0, #0x14]
	b _02022110
_02022108:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x14]
_02022110:
	bl sub_020CEC1C
	cmp r0, #0
	beq _02022126
	cmp r0, #8
	beq _0202213A
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	beq _02022130
	b _02022146
_02022126:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x18]
	b _0202214E
_02022130:
	ldr r0, _020221B0 ; =0x021D21F4
	lsl r1, r1, #6
	ldr r0, [r0]
	str r1, [r0, #0x18]
	b _0202214E
_0202213A:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x18]
	b _0202214E
_02022146:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x18]
_0202214E:
	ldr r0, _020221B0 ; =0x021D21F4
	ldr r1, [r0]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x2c]
	bl sub_020224B8
	ldr r1, _020221B0 ; =0x021D21F4
	ldr r3, [r1]
	ldr r2, [r3, #0x14]
	sub r0, r2, r0
	str r0, [r3, #0x1c]
	ldr r1, [r1]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl sub_020224B8
	ldr r1, _020221B0 ; =0x021D21F4
	ldr r3, [r1]
	ldr r2, [r3, #0x18]
	sub r0, r2, r0
	str r0, [r3, #0x20]
	ldr r1, [r1]
	mov r2, #0
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	blt _0202218A
	ldr r0, [r1, #0x20]
	cmp r0, #0
	blt _0202218A
	mov r2, #1
_0202218A:
	cmp r2, #0
	bne _02022192
	bl GF_AssertFail
_02022192:
	ldr r0, _020221B0 ; =0x021D21F4
	mov r2, #0
	ldr r1, [r0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	blt _020221A6
	ldr r0, [r1, #0x20]
	cmp r0, #0
	blt _020221A6
	mov r2, #1
_020221A6:
	cmp r2, #0
	bne _020221AE
	bl GF_AssertFail
_020221AE:
	pop {r3, pc}
	.balign 4, 0
_020221B0: .word 0x021D21F4
	thumb_func_end sub_02022060

	thumb_func_start sub_020221B4
sub_020221B4: ; 0x020221B4
	push {r3, lr}
	ldr r0, _020221CC ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bl sub_02022278
	ldr r0, _020221CC ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_02022278
	pop {r3, pc}
	.balign 4, 0
_020221CC: .word 0x021D21F4
	thumb_func_end sub_020221B4

	thumb_func_start sub_020221D0
sub_020221D0: ; 0x020221D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02022234 ; =0x021D21F4
	add r4, r1, #0
	ldr r1, [r0]
	add r6, r2, #0
	str r5, [r1, #0x24]
	ldr r1, [r0]
	str r4, [r1, #0x28]
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _020221EE
	bl FreeToHeap
_020221EE:
	ldr r0, _02022234 ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _020221FC
	bl FreeToHeap
_020221FC:
	ldr r0, _02022234 ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02022214
	add r0, r6, #0
	lsr r1, r5, #3
	bl AllocFromHeap
	ldr r1, _02022234 ; =0x021D21F4
	ldr r1, [r1]
	str r0, [r1, #0x34]
_02022214:
	ldr r0, _02022234 ; =0x021D21F4
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0202222C
	add r0, r6, #0
	lsr r1, r4, #3
	bl AllocFromHeap
	ldr r1, _02022234 ; =0x021D21F4
	ldr r1, [r1]
	str r0, [r1, #0x38]
_0202222C:
	bl sub_020221B4
	pop {r4, r5, r6, pc}
	nop
_02022234: .word 0x021D21F4
	thumb_func_end sub_020221D0

	thumb_func_start sub_02022238
sub_02022238: ; 0x02022238
	push {r3, lr}
	cmp r0, #0
	beq _0202225A
	ldr r1, _0202225C ; =0x021D21F4
	ldr r2, [r1]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bne _02022252
	mov r1, #0
	str r1, [r2, #0x24]
	bl FreeToHeap
	pop {r3, pc}
_02022252:
	mov r1, #0
	str r1, [r2, #0x28]
	bl FreeToHeap
_0202225A:
	pop {r3, pc}
	.balign 4, 0
_0202225C: .word 0x021D21F4
	thumb_func_end sub_02022238

	thumb_func_start sub_02022260
sub_02022260: ; 0x02022260
	ldr r1, _02022274 ; =0x021D21F4
	ldr r2, [r1]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bne _0202226E
	ldr r0, [r2, #0x24]
	bx lr
_0202226E:
	ldr r0, [r2, #0x28]
	bx lr
	nop
_02022274: .word 0x021D21F4
	thumb_func_end sub_02022260

	thumb_func_start sub_02022278
sub_02022278: ; 0x02022278
	push {r4, lr}
	add r4, r0, #0
	beq _0202228E
	bl sub_02022260
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #3
	bl memset
_0202228E:
	pop {r4, pc}
	thumb_func_end sub_02022278

	thumb_func_start sub_02022290
sub_02022290: ; 0x02022290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	beq _020222E6
	add r0, r4, #0
	bl sub_02022260
	add r6, r5, r6
	add r7, r0, #0
	cmp r5, r6
	bhs _020222E6
_020222AA:
	cmp r5, r7
	bhs _020222E6
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02022560
	add r0, sp, #0
	ldrb r1, [r0]
	mov r0, #1
	lsl r0, r1
	ldr r1, [sp, #4]
	ldrb r1, [r4, r1]
	tst r0, r1
	beq _020222CC
	bl GF_AssertFail
_020222CC:
	add r2, sp, #0
	ldrb r3, [r2]
	ldr r1, [sp, #4]
	mov r2, #1
	lsl r2, r3
	lsl r2, r2, #0x18
	ldrb r0, [r4, r1]
	lsr r2, r2, #0x18
	add r5, r5, #1
	orr r0, r2
	strb r0, [r4, r1]
	cmp r5, r6
	blo _020222AA
_020222E6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02022290

	thumb_func_start sub_020222EC
sub_020222EC: ; 0x020222EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r1, [sp]
	cmp r1, #0
	beq _0202236A
	add r0, r1, #0
	bl sub_02022260
	mov r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	bls _0202236A
_02022306:
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_02022560
	add r0, sp, #8
	ldrb r1, [r0]
	mov r0, #1
	mov r4, #0
	lsl r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	b _02022348
_02022320:
	add r5, r6, r4
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_02022560
	add r0, sp, #8
	ldrb r1, [r0]
	mov r0, #1
	lsl r0, r1
	lsl r0, r0, #0x18
	ldr r1, [sp, #4]
	lsr r0, r0, #0x18
	cmp r5, r1
	blo _02022346
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02022346:
	add r4, r4, #1
_02022348:
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _02022356
	cmp r4, r7
	bls _02022320
_02022356:
	cmp r4, r7
	bls _02022360
	add sp, #0x10
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02022360:
	add r0, r6, r4
	add r6, r0, #1
	ldr r0, [sp, #4]
	cmp r6, r0
	blo _02022306
_0202236A:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020222EC

	thumb_func_start sub_02022374
sub_02022374: ; 0x02022374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	beq _020223BE
	add r6, r5, r1
	cmp r5, r6
	bhs _020223BE
	add r7, sp, #0
_02022386:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02022560
	ldrb r1, [r7]
	mov r0, #1
	lsl r0, r1
	ldr r1, [sp, #4]
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _020223A2
	bl GF_AssertFail
_020223A2:
	ldrb r0, [r7]
	mov r1, #1
	ldr r3, [sp, #4]
	lsl r1, r0
	mov r0, #0xff
	eor r0, r1
	lsl r0, r0, #0x18
	ldrb r2, [r4, r3]
	lsr r0, r0, #0x18
	add r5, r5, #1
	and r0, r2
	strb r0, [r4, r3]
	cmp r5, r6
	blo _02022386
_020223BE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02022374

	thumb_func_start sub_020223C4
sub_020223C4: ; 0x020223C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	tst r0, r1
	beq _02022402
	add r0, r4, #0
	add r0, #0x10
	bl sub_020B802C
	ldr r1, _02022444 ; =0x021D21F4
	ldr r2, [r1]
	ldr r1, [r2, #0x1c]
	sub r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl sub_020224A8
	ldr r1, _02022444 ; =0x021D21F4
	add r5, r0, #0
	ldr r1, [r1]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #0x2c]
	bl sub_020224A8
	ldr r2, _02022444 ; =0x021D21F4
	add r1, r0, #0
	ldr r2, [r2]
	add r0, r5, #0
	ldr r2, [r2, #0x34]
	bl sub_02022374
_02022402:
	ldr r0, [r4, #4]
	mov r1, #2
	tst r0, r1
	beq _0202243C
	add r0, r4, #0
	add r0, #0x10
	bl sub_020B802C
	ldr r1, _02022444 ; =0x021D21F4
	ldr r2, [r1]
	ldr r1, [r2, #0x20]
	sub r0, r0, r1
	ldr r1, [r2, #0x30]
	bl sub_020224A8
	ldr r1, _02022444 ; =0x021D21F4
	add r5, r0, #0
	ldr r1, [r1]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #0x30]
	bl sub_020224A8
	ldr r2, _02022444 ; =0x021D21F4
	add r1, r0, #0
	ldr r2, [r2]
	add r0, r5, #0
	ldr r2, [r2, #0x38]
	bl sub_02022374
_0202243C:
	mov r0, #0
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
	nop
_02022444: .word 0x021D21F4
	thumb_func_end sub_020223C4

	thumb_func_start sub_02022448
sub_02022448: ; 0x02022448
	ldr r1, _0202247C ; =0x00100010
	cmp r0, r1
	bgt _02022456
	bge _0202246C
	cmp r0, #0x10
	beq _02022468
	b _02022478
_02022456:
	ldr r1, _02022480 ; =0x00200010
	cmp r0, r1
	bgt _02022460
	beq _02022470
	b _02022478
_02022460:
	ldr r1, _02022484 ; =0x00300010
	cmp r0, r1
	beq _02022474
	b _02022478
_02022468:
	mov r0, #1
	bx lr
_0202246C:
	mov r0, #2
	bx lr
_02022470:
	mov r0, #4
	bx lr
_02022474:
	mov r0, #8
	bx lr
_02022478:
	mov r0, #1
	bx lr
	.balign 4, 0
_0202247C: .word 0x00100010
_02022480: .word 0x00200010
_02022484: .word 0x00300010
	thumb_func_end sub_02022448

	thumb_func_start sub_02022488
sub_02022488: ; 0x02022488
	push {r4, r5, r6, lr}
	add r4, r1, #0
	lsl r4, r4, #5
	add r1, r4, #0
	add r5, r0, #0
	add r6, r2, #0
	bl _s32_div_f
	cmp r1, #0
	beq _020224A4
	sub r5, r5, r1
	cmp r6, #1
	bne _020224A4
	add r5, r5, r4
_020224A4:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02022488

	thumb_func_start sub_020224A8
sub_020224A8: ; 0x020224A8
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	ldr r3, _020224B4 ; =_s32_div_f
	asr r0, r2, #5
	bx r3
	.balign 4, 0
_020224B4: .word _s32_div_f
	thumb_func_end sub_020224A8

	thumb_func_start sub_020224B8
sub_020224B8: ; 0x020224B8
	mul r1, r0
	lsl r0, r1, #5
	bx lr
	.balign 4, 0
	thumb_func_end sub_020224B8

	thumb_func_start sub_020224C0
sub_020224C0: ; 0x020224C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	mov r0, #1
	add r2, r4, #0
	add r7, r3, #0
	tst r2, r0
	beq _020224EA
	ldr r2, _0202250C ; =0x021D21F4
	ldr r2, [r2]
	ldr r6, [r2, #0xc]
	ldr r2, [r2, #0x1c]
	add r3, r6, r5
	cmp r3, r2
	bls _020224E8
	bl GF_AssertFail
	mov r0, #0
	b _020224EA
_020224E8:
	str r6, [r1]
_020224EA:
	mov r1, #2
	tst r1, r4
	beq _02022508
	ldr r1, _0202250C ; =0x021D21F4
	ldr r1, [r1]
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #0x20]
	add r2, r3, r5
	cmp r2, r1
	bls _02022506
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02022506:
	str r3, [r7]
_02022508:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202250C: .word 0x021D21F4
	thumb_func_end sub_020224C0

	thumb_func_start sub_02022510
sub_02022510: ; 0x02022510
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r2, #1
	add r0, r4, #0
	tst r0, r2
	beq _02022538
	ldr r0, _0202255C ; =0x021D21F4
	ldr r3, [r0]
	ldr r1, [r3, #0xc]
	add r1, r1, r5
	str r1, [r3, #0xc]
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x2c]
	bl sub_02022488
	ldr r1, _0202255C ; =0x021D21F4
	ldr r1, [r1]
	str r0, [r1, #0xc]
_02022538:
	mov r0, #2
	tst r0, r4
	beq _0202255A
	ldr r0, _0202255C ; =0x021D21F4
	ldr r2, [r0]
	ldr r1, [r2, #0x10]
	add r1, r1, r5
	str r1, [r2, #0x10]
	ldr r1, [r0]
	mov r2, #1
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x30]
	bl sub_02022488
	ldr r1, _0202255C ; =0x021D21F4
	ldr r1, [r1]
	str r0, [r1, #0x10]
_0202255A:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0202255C: .word 0x021D21F4
	thumb_func_end sub_02022510

	thumb_func_start sub_02022560
sub_02022560: ; 0x02022560
	asr r3, r0, #3
	str r3, [r1]
	mov r1, #7
	and r0, r1
	strb r0, [r2]
	bx lr
	thumb_func_end sub_02022560

	thumb_func_start sub_0202256C
sub_0202256C: ; 0x0202256C
	push {r3, r4}
	sub r0, r1, r0
	ldr r4, [sp, #8]
	str r0, [r3]
	bpl _02022582
	add r0, r2, r0
	str r0, [r4]
	mov r0, #0
	str r0, [r3]
	pop {r3, r4}
	bx lr
_02022582:
	str r2, [r4]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0202256C

	thumb_func_start sub_02022588
sub_02022588: ; 0x02022588
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _020225E0 ; =0x021D21F8
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _020225DC
	add r0, r4, #0
	mov r1, #0x28
	bl AllocFromHeap
	add r1, r0, #0
	ldr r0, _020225E0 ; =0x021D21F8
	mov r2, #0x28
	str r1, [r0]
	mov r0, #0
	bl sub_020D47EC
	ldr r0, _020225E0 ; =0x021D21F8
	mov r1, #0x30
	ldr r0, [r0]
	mul r1, r6
	str r6, [r0, #4]
	add r0, r4, #0
	bl AllocFromHeap
	ldr r7, _020225E0 ; =0x021D21F8
	mov r4, #0
	ldr r1, [r7]
	cmp r6, #0
	str r0, [r1]
	ble _020225DC
	add r5, r4, #0
_020225CA:
	ldr r0, [r7]
	ldr r0, [r0]
	add r0, r0, r5
	bl sub_02022874
	add r4, r4, #1
	add r5, #0x30
	cmp r4, r6
	blt _020225CA
_020225DC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020225E0: .word 0x021D21F8
	thumb_func_end sub_02022588

	thumb_func_start sub_020225E4
sub_020225E4: ; 0x020225E4
	cmp r1, #1
	bne _020225F4
	ldr r1, _02022604 ; =0x021D21F8
	ldr r2, [r1]
	ldrh r1, [r2, #0x24]
	orr r0, r1
	strh r0, [r2, #0x24]
	bx lr
_020225F4:
	cmp r1, #2
	bne _02022602
	ldr r1, _02022604 ; =0x021D21F8
	ldr r2, [r1]
	ldrh r1, [r2, #0x26]
	orr r0, r1
	strh r0, [r2, #0x26]
_02022602:
	bx lr
	.balign 4, 0
_02022604: .word 0x021D21F8
	thumb_func_end sub_020225E4

	thumb_func_start sub_02022608
sub_02022608: ; 0x02022608
	push {r3, lr}
	ldr r0, _02022630 ; =0x021D21F8
	ldr r0, [r0]
	cmp r0, #0
	beq _0202262E
	bl sub_0202276C
	ldr r0, _02022630 ; =0x021D21F8
	ldr r0, [r0]
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _02022630 ; =0x021D21F8
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _02022630 ; =0x021D21F8
	mov r1, #0
	str r1, [r0]
_0202262E:
	pop {r3, pc}
	.balign 4, 0
_02022630: .word 0x021D21F8
	thumb_func_end sub_02022608

	thumb_func_start sub_02022634
sub_02022634: ; 0x02022634
	bx lr
	.balign 4, 0
	thumb_func_end sub_02022634

	thumb_func_start sub_02022638
sub_02022638: ; 0x02022638
	push {r3, lr}
	ldr r0, _0202265C ; =0x021D21F8
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0xc]
	ldr r1, [r0]
	str r2, [r1, #0x10]
	ldr r1, [r0]
	str r2, [r1, #0x14]
	ldr r0, [r0]
	str r2, [r0, #0x18]
	bl sub_020229E0
	ldr r0, _0202265C ; =0x021D21F8
	ldr r0, [r0]
	bl sub_02022AF0
	pop {r3, pc}
	.balign 4, 0
_0202265C: .word 0x021D21F8
	thumb_func_end sub_02022638

	thumb_func_start sub_02022660
sub_02022660: ; 0x02022660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020229A4
	add r4, r0, #0
	bne _02022674
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_02022674:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022840
	cmp r0, #0
	bne _02022684
	mov r0, #0
	pop {r3, r4, r5, pc}
_02022684:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022890
	cmp r0, #0
	bne _0202269A
	ldr r0, [r5, #0xc]
	bl sub_02022744
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202269A:
	add r0, r4, #0
	bl sub_02022AF8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022660

	thumb_func_start sub_020226A4
sub_020226A4: ; 0x020226A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020229A4
	add r4, r0, #0
	bne _020226B8
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_020226B8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022840
	cmp r0, #0
	bne _020226C8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020226C8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020228E8
	cmp r0, #0
	bne _020226DE
	ldr r0, [r5, #0xc]
	bl sub_02022744
	mov r0, #0
	pop {r3, r4, r5, pc}
_020226DE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020226A4

	thumb_func_start sub_020226E4
sub_020226E4: ; 0x020226E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bne _020226F0
	bl GF_AssertFail
_020226F0:
	add r0, r4, #0
	bl sub_0202296C
	add r4, r0, #0
	bne _020226FE
	bl GF_AssertFail
_020226FE:
	str r5, [r4]
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _02022716
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0xc]
	mov r0, #0xe
	lsl r3, r3, #5
	bl sub_020205D8
_02022716:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0202272C
	ldr r3, [r4, #8]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0xc]
	mov r0, #0x1e
	lsl r3, r3, #5
	bl sub_020205D8
_0202272C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020226E4

	thumb_func_start sub_02022730
sub_02022730: ; 0x02022730
	push {r3, lr}
	bl sub_0202296C
	cmp r0, #0
	beq _0202273E
	mov r0, #1
	pop {r3, pc}
_0202273E:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02022730

	thumb_func_start sub_02022744
sub_02022744: ; 0x02022744
	push {r4, lr}
	bl sub_0202296C
	add r4, r0, #0
	bne _02022752
	bl GF_AssertFail
_02022752:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _02022768
	add r0, r4, #0
	bl sub_02022B34
	add r0, r4, #0
	bl sub_02022838
_02022768:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02022744

	thumb_func_start sub_0202276C
sub_0202276C: ; 0x0202276C
	push {r4, r5, r6, lr}
	ldr r6, _020227A8 ; =0x021D21F8
	mov r4, #0
	ldr r1, [r6]
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _020227A4
	add r5, r4, #0
_0202277C:
	ldr r1, [r1]
	add r0, r1, r5
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _02022798
	add r0, r1, r5
	bl sub_02022B34
	ldr r0, [r6]
	ldr r0, [r0]
	add r0, r0, r5
	bl sub_02022838
_02022798:
	ldr r1, [r6]
	add r4, r4, #1
	ldr r0, [r1, #4]
	add r5, #0x30
	cmp r4, r0
	blt _0202277C
_020227A4:
	pop {r4, r5, r6, pc}
	nop
_020227A8: .word 0x021D21F8
	thumb_func_end sub_0202276C

	thumb_func_start sub_020227AC
sub_020227AC: ; 0x020227AC
	push {r3, lr}
	bl sub_0202296C
	cmp r0, #0
	bne _020227C0
	bne _020227BC
	bl GF_AssertFail
_020227BC:
	mov r0, #0
	pop {r3, pc}
_020227C0:
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #1
	bne _020227CE
	add r0, #0x10
	pop {r3, pc}
_020227CE:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020227AC

	thumb_func_start sub_020227D4
sub_020227D4: ; 0x020227D4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202296C
	cmp r0, #0
	bne _020227EA
	bne _020227E6
	bl GF_AssertFail
_020227E6:
	mov r0, #0
	pop {r4, pc}
_020227EA:
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #1
	beq _020227F8
	mov r0, #0
	pop {r4, pc}
_020227F8:
	ldr r1, [r0]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02022804
	mov r1, #1
	str r1, [r4, #0x18]
_02022804:
	add r0, #0x10
	pop {r4, pc}
	thumb_func_end sub_020227D4

	thumb_func_start sub_02022808
sub_02022808: ; 0x02022808
	push {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02022816
	mov r4, #2
	lsl r4, r4, #8
	b _02022822
_02022816:
	ldr r2, [r0]
	cmp r2, #4
	bne _02022820
	mov r4, #0
	b _02022822
_02022820:
	mov r4, #0x20
_02022822:
	cmp r4, #0
	beq _02022832
	bl sub_020B8078
	add r1, r4, #0
	bl _u32_div_f
	pop {r4, pc}
_02022832:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02022808

	thumb_func_start sub_02022838
sub_02022838: ; 0x02022838
	ldr r3, _0202283C ; =sub_02022874
	bx r3
	.balign 4, 0
_0202283C: .word sub_02022874
	thumb_func_end sub_02022838

	thumb_func_start sub_02022840
sub_02022840: ; 0x02022840
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [r4]
	ldr r0, [r5, #0xc]
	bl sub_02022730
	cmp r0, #1
	bne _0202285C
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202285C:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	add r1, #0x2c
	str r0, [r4, #4]
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r5, #8]
	str r1, [r4, #8]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02022840

	thumb_func_start sub_02022874
sub_02022874: ; 0x02022874
	push {r4, lr}
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	add r4, #0x10
	add r0, r4, #0
	bl sub_020B804C
	pop {r4, pc}
	thumb_func_end sub_02022874

	thumb_func_start sub_02022890
sub_02022890: ; 0x02022890
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020228B0
	ldr r0, _020228E4 ; =0x021D21F8
	ldr r0, [r0]
	add r4, r0, #0
	add r5, r0, #0
	ldr r3, [r0, #0x1c]
	add r4, #0x14
	add r5, #0x18
	ldr r0, [r0, #0x20]
	b _020228C0
_020228B0:
	ldr r0, _020228E4 ; =0x021D21F8
	mov r3, #2
	ldr r5, [r0]
	lsl r3, r3, #8
	add r4, r5, #0
	add r4, #0xc
	add r5, #0x10
	add r0, r3, #0
_020228C0:
	str r0, [sp]
	ldr r1, [r4]
	ldr r2, [r5]
	add r0, r6, #0
	bl sub_02022B70
	add r0, r6, #0
	bl sub_02022A28
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02022BBC
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020228E4: .word 0x021D21F8
	thumb_func_end sub_02022890

	thumb_func_start sub_020228E8
sub_020228E8: ; 0x020228E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020228F8
	bl GF_AssertFail
_020228F8:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0202291A
	ldr r0, _02022968 ; =0x021D21F8
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldrh r0, [r0, #0x24]
	bl sub_02022AB0
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0202291A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202291A:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _0202293C
	ldr r0, _02022968 ; =0x021D21F8
	ldr r1, [r5, #8]
	ldr r0, [r0]
	ldrh r0, [r0, #0x26]
	bl sub_02022AB0
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0202293C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202293C:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _02022946
	str r6, [r5, #0x24]
_02022946:
	ldr r1, [r5, #4]
	mov r0, #2
	tst r0, r1
	beq _02022950
	str r4, [r5, #0x28]
_02022950:
	ldr r0, [r5, #8]
	lsl r1, r0, #5
	ldr r0, [r5]
	str r1, [r0, #8]
	add r0, r5, #0
	bl sub_02022A38
	add r0, r5, #0
	bl sub_02022AF8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02022968: .word 0x021D21F8
	thumb_func_end sub_020228E8

	thumb_func_start sub_0202296C
sub_0202296C: ; 0x0202296C
	push {r4, r5}
	ldr r2, _020229A0 ; =0x021D21F8
	mov r1, #0
	ldr r5, [r2]
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _02022998
	ldr r2, [r5]
	add r4, r2, #0
_0202297E:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _0202298E
	mov r0, #0x30
	mul r0, r1
	add r0, r2, r0
	pop {r4, r5}
	bx lr
_0202298E:
	ldr r3, [r5, #4]
	add r1, r1, #1
	add r4, #0x30
	cmp r1, r3
	blt _0202297E
_02022998:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_020229A0: .word 0x021D21F8
	thumb_func_end sub_0202296C

	thumb_func_start sub_020229A4
sub_020229A4: ; 0x020229A4
	push {r3, r4}
	ldr r1, _020229DC ; =0x021D21F8
	mov r0, #0
	ldr r4, [r1]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _020229D4
	ldr r1, [r4]
	add r3, r1, #0
_020229B6:
	add r2, r3, #0
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _020229CA
	mov r2, #0x30
	mul r2, r0
	add r0, r1, r2
	pop {r3, r4}
	bx lr
_020229CA:
	ldr r2, [r4, #4]
	add r0, r0, #1
	add r3, #0x30
	cmp r0, r2
	blt _020229B6
_020229D4:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_020229DC: .word 0x021D21F8
	thumb_func_end sub_020229A4

	thumb_func_start sub_020229E0
sub_020229E0: ; 0x020229E0
	push {r3, lr}
	bl sub_020CEBFC
	cmp r0, #0x20
	beq _020229EE
	cmp r0, #0x40
	bne _020229FA
_020229EE:
	ldr r0, _02022A24 ; =0x021D21F8
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	b _02022A02
_020229FA:
	ldr r0, _02022A24 ; =0x021D21F8
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x1c]
_02022A02:
	bl sub_020CEC2C
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _02022A18
	ldr r0, _02022A24 ; =0x021D21F8
	lsl r1, r1, #5
	ldr r0, [r0]
	str r1, [r0, #0x20]
	pop {r3, pc}
_02022A18:
	ldr r0, _02022A24 ; =0x021D21F8
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x20]
	pop {r3, pc}
	nop
_02022A24: .word 0x021D21F8
	thumb_func_end sub_020229E0

	thumb_func_start sub_02022A28
sub_02022A28: ; 0x02022A28
	ldr r1, [r0, #8]
	ldr r3, _02022A34 ; =sub_02022A38
	lsl r2, r1, #5
	ldr r1, [r0]
	str r2, [r1, #8]
	bx r3
	.balign 4, 0
_02022A34: .word sub_02022A38
	thumb_func_end sub_02022A28

	thumb_func_start sub_02022A38
sub_02022A38: ; 0x02022A38
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	bl sub_020B804C
	ldr r0, [r4, #4]
	mov r2, #1
	tst r0, r2
	beq _02022A56
	add r3, r4, #0
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	add r3, #0x10
	bl NNS_G2dLoadPalette
_02022A56:
	ldr r0, [r4, #4]
	mov r2, #2
	tst r0, r2
	beq _02022A6A
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	add r4, #0x10
	add r3, r4, #0
	bl NNS_G2dLoadPalette
_02022A6A:
	pop {r4, pc}
	thumb_func_end sub_02022A38

	thumb_func_start sub_02022A6C
sub_02022A6C: ; 0x02022A6C
	push {r4, r5, r6, r7}
	mov r3, #0
	cmp r1, #0
	ble _02022A8A
	mov r5, #1
_02022A76:
	ldrh r7, [r0]
	add r4, r2, r3
	add r6, r5, #0
	lsl r6, r4
	add r4, r7, #0
	orr r4, r6
	add r3, r3, #1
	strh r4, [r0]
	cmp r3, r1
	blt _02022A76
_02022A8A:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02022A6C

	thumb_func_start sub_02022A90
sub_02022A90: ; 0x02022A90
	push {r4, r5, r6, r7}
	mov r4, #0
	cmp r1, #0
	ble _02022AAC
	mov r6, #1
_02022A9A:
	add r5, r2, r4
	add r7, r6, #0
	ldrh r3, [r0]
	lsl r7, r5
	bic r3, r7
	add r4, r4, #1
	strh r3, [r0]
	cmp r4, r1
	blt _02022A9A
_02022AAC:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_02022A90

	thumb_func_start sub_02022AB0
sub_02022AB0: ; 0x02022AB0
	push {r4, r5, r6, r7}
	mov r3, #0
	mov r6, #1
	add r2, r3, #0
_02022AB8:
	add r4, r2, #0
	b _02022AC2
_02022ABC:
	cmp r5, #0x10
	bge _02022AD0
	add r4, r4, #1
_02022AC2:
	add r5, r3, r4
	add r7, r6, #0
	lsl r7, r5
	tst r7, r0
	bne _02022AD0
	cmp r4, r1
	blt _02022ABC
_02022AD0:
	cmp r4, r1
	bge _02022ADC
	add r3, r3, r4
	add r3, r3, #1
	cmp r3, #0x10
	blt _02022AB8
_02022ADC:
	cmp r3, #0x10
	blt _02022AE8
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
_02022AE8:
	lsl r0, r3, #5
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02022AB0

	thumb_func_start sub_02022AF0
sub_02022AF0: ; 0x02022AF0
	mov r1, #0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr
	thumb_func_end sub_02022AF0

	thumb_func_start sub_02022AF8
sub_02022AF8: ; 0x02022AF8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _02022B14
	ldr r0, _02022B30 ; =0x021D21F8
	ldr r2, [r4, #0x24]
	ldr r0, [r0]
	ldr r1, [r4, #8]
	add r0, #0x24
	lsr r2, r2, #5
	bl sub_02022A6C
_02022B14:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _02022B2C
	ldr r0, _02022B30 ; =0x021D21F8
	ldr r2, [r4, #0x28]
	ldr r0, [r0]
	ldr r1, [r4, #8]
	add r0, #0x26
	lsr r2, r2, #5
	bl sub_02022A6C
_02022B2C:
	pop {r4, pc}
	nop
_02022B30: .word 0x021D21F8
	thumb_func_end sub_02022AF8

	thumb_func_start sub_02022B34
sub_02022B34: ; 0x02022B34
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _02022B50
	ldr r0, _02022B6C ; =0x021D21F8
	ldr r2, [r4, #0x24]
	ldr r0, [r0]
	ldr r1, [r4, #8]
	add r0, #0x24
	lsr r2, r2, #5
	bl sub_02022A90
_02022B50:
	ldr r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _02022B68
	ldr r0, _02022B6C ; =0x021D21F8
	ldr r2, [r4, #0x28]
	ldr r0, [r0]
	ldr r1, [r4, #8]
	add r0, #0x26
	lsr r2, r2, #5
	bl sub_02022A90
_02022B68:
	pop {r4, pc}
	nop
_02022B6C: .word 0x021D21F8
	thumb_func_end sub_02022B34

	thumb_func_start sub_02022B70
sub_02022B70: ; 0x02022B70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, #4]
	mov r0, #1
	tst r2, r0
	beq _02022B96
	ldr r2, [r5, #8]
	lsl r2, r2, #5
	add r2, r1, r2
	cmp r2, r3
	bls _02022B94
	bl GF_AssertFail
	bl sub_02022634
	mov r0, #0
	b _02022B96
_02022B94:
	str r1, [r5, #0x24]
_02022B96:
	ldr r2, [r5, #4]
	mov r1, #2
	tst r1, r2
	beq _02022BB8
	ldr r1, [r5, #8]
	lsl r1, r1, #5
	add r2, r4, r1
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bls _02022BB6
	bl GF_AssertFail
	bl sub_02022634
	mov r0, #0
	pop {r3, r4, r5, pc}
_02022BB6:
	str r4, [r5, #0x28]
_02022BB8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02022B70

	thumb_func_start sub_02022BBC
sub_02022BBC: ; 0x02022BBC
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r3, #1
	tst r3, r4
	beq _02022BD0
	ldr r3, [r0, #8]
	ldr r4, [r1]
	lsl r3, r3, #5
	add r3, r4, r3
	str r3, [r1]
_02022BD0:
	ldr r3, [r0, #4]
	mov r1, #2
	tst r1, r3
	beq _02022BE2
	ldr r0, [r0, #8]
	ldr r1, [r2]
	lsl r0, r0, #5
	add r0, r1, r0
	str r0, [r2]
_02022BE2:
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02022BBC

	thumb_func_start sub_02022BE8
sub_02022BE8: ; 0x02022BE8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020CE89C
	bl sub_020CE8C4
	bl sub_020CE948
	bl sub_020CE970
	bl sub_020CE8B0
	bl sub_020CE8E8
	bl sub_020CE95C
	bl sub_020CE998
	bl sub_020CE90C
	bl sub_020CE920
	ldr r0, [r4]
	bl sub_020CDC04
	ldr r0, [r4, #4]
	bl sub_020CDFE4
	ldr r0, [r4, #8]
	bl sub_020CE650
	ldr r0, [r4, #0xc]
	bl sub_020CE768
	ldr r0, [r4, #0x10]
	bl sub_020CDE94
	ldr r0, [r4, #0x14]
	bl sub_020CE0E4
	ldr r0, [r4, #0x18]
	bl sub_020CE6F8
	ldr r0, [r4, #0x1c]
	bl sub_020CE7E8
	ldr r0, [r4, #0x20]
	bl sub_020CE190
	ldr r0, [r4, #0x24]
	bl sub_020CE368
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02022BE8

	thumb_func_start sub_02022C54
sub_02022C54: ; 0x02022C54
	ldr r0, _02022C5C ; =0x021D21FC
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.balign 4, 0
_02022C5C: .word 0x021D21FC
	thumb_func_end sub_02022C54

	thumb_func_start sub_02022C60
sub_02022C60: ; 0x02022C60
	cmp r1, #1
	bne _02022C6E
	ldr r1, _02022C94 ; =0x021D21FC
	ldr r1, [r1, #4]
	tst r1, r0
	beq _02022C76
	bx lr
_02022C6E:
	ldr r1, _02022C94 ; =0x021D21FC
	ldr r1, [r1, #4]
	tst r1, r0
	beq _02022C90
_02022C76:
	ldr r1, _02022C94 ; =0x021D21FC
	ldr r2, [r1, #4]
	add r3, r2, #0
	eor r3, r0
	mov r2, #1
	lsl r2, r2, #0x1a
	str r3, [r1, #4]
	ldr r1, [r2]
	ldr r0, _02022C98 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2]
_02022C90:
	bx lr
	nop
_02022C94: .word 0x021D21FC
_02022C98: .word 0xFFFFE0FF
	thumb_func_end sub_02022C60

	thumb_func_start sub_02022C9C
sub_02022C9C: ; 0x02022C9C
	ldr r1, _02022CB4 ; =0x021D21FC
	mov r3, #1
	str r0, [r1, #4]
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _02022CB8 ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	nop
_02022CB4: .word 0x021D21FC
_02022CB8: .word 0xFFFFE0FF
	thumb_func_end sub_02022C9C

	thumb_func_start sub_02022CBC
sub_02022CBC: ; 0x02022CBC
	ldr r0, _02022CC4 ; =0x021D21FC
	mov r1, #0
	str r1, [r0]
	bx lr
	.balign 4, 0
_02022CC4: .word 0x021D21FC
	thumb_func_end sub_02022CBC

	thumb_func_start sub_02022CC8
sub_02022CC8: ; 0x02022CC8
	cmp r1, #1
	bne _02022CD6
	ldr r1, _02022CF8 ; =0x021D21FC
	ldr r1, [r1]
	tst r1, r0
	beq _02022CDE
	bx lr
_02022CD6:
	ldr r1, _02022CF8 ; =0x021D21FC
	ldr r1, [r1]
	tst r1, r0
	beq _02022CF6
_02022CDE:
	ldr r1, _02022CF8 ; =0x021D21FC
	ldr r2, [r1]
	add r3, r2, #0
	eor r3, r0
	ldr r2, _02022CFC ; =0x04001000
	str r3, [r1]
	ldr r1, [r2]
	ldr r0, _02022D00 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2]
_02022CF6:
	bx lr
	.balign 4, 0
_02022CF8: .word 0x021D21FC
_02022CFC: .word 0x04001000
_02022D00: .word 0xFFFFE0FF
	thumb_func_end sub_02022CC8

	thumb_func_start sub_02022D04
sub_02022D04: ; 0x02022D04
	ldr r1, _02022D18 ; =0x021D21FC
	ldr r3, _02022D1C ; =0x04001000
	str r0, [r1]
	ldr r2, [r3]
	ldr r1, _02022D20 ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.balign 4, 0
_02022D18: .word 0x021D21FC
_02022D1C: .word 0x04001000
_02022D20: .word 0xFFFFE0FF
	thumb_func_end sub_02022D04

	thumb_func_start sub_02022D24
sub_02022D24: ; 0x02022D24
	push {r3, lr}
	bl sub_020CD9B4
	ldr r2, _02022D38 ; =0x04001000
	mov r0, #1
	ldr r1, [r2]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	pop {r3, pc}
	.balign 4, 0
_02022D38: .word 0x04001000
	thumb_func_end sub_02022D24

	thumb_func_start sub_02022D3C
sub_02022D3C: ; 0x02022D3C
	ldr r0, _02022D5C ; =0x021D116C
	ldr r2, _02022D60 ; =0x04000304
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _02022D50
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bx lr
_02022D50:
	ldrh r1, [r2]
	ldr r0, _02022D64 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	bx lr
	nop
_02022D5C: .word 0x021D116C
_02022D60: .word 0x04000304
_02022D64: .word 0xFFFF7FFF
	thumb_func_end sub_02022D3C

	thumb_func_start sub_02022D68
sub_02022D68: ; 0x02022D68
	ldr r0, _02022D70 ; =0x021D21FC
	ldr r0, [r0, #4]
	bx lr
	nop
_02022D70: .word 0x021D21FC
	thumb_func_end sub_02022D68

	thumb_func_start sub_02022D74
sub_02022D74: ; 0x02022D74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02022E50 ; =0x021094DC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _02022E50 ; =0x021094DC
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02022E50 ; =0x021094DC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _02022E50 ; =0x021094DC
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x1c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02022E50 ; =0x021094DC
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	str r1, [r5, #0x18]
	add r0, #0x14
	add r5, #0x20
	add r1, r5, #0
	add r2, r0, #0
	bl sub_020CCD78
	pop {r3, r4, r5, pc}
	nop
_02022E50: .word 0x021094DC
	thumb_func_end sub_02022D74

	thumb_func_start sub_02022E54
sub_02022E54: ; 0x02022E54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02022F34 ; =0x021094DC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _02022F34 ; =0x021094DC
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x20]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02022F34 ; =0x021094DC
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _02022F34 ; =0x021094DC
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x28]
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02022F34 ; =0x021094DC
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x24]
	add r0, r5, #0
	add r0, #0x20
	add r5, #0x14
	add r1, r5, #0
	add r2, r0, #0
	bl sub_020CCD78
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02022F34: .word 0x021094DC
	thumb_func_end sub_02022E54

	thumb_func_start sub_02022F38
sub_02022F38: ; 0x02022F38
	add r2, r1, #0
	add r2, #0x46
	strh r0, [r2]
	asr r0, r0, #4
	lsl r3, r0, #1
	ldr r2, _02022F7C ; =0x021094DC
	lsl r0, r3, #1
	ldrsh r0, [r2, r0]
	str r0, [r1]
	add r0, r3, #1
	lsl r0, r0, #1
	ldrsh r0, [r2, r0]
	mov r2, #0
	str r0, [r1, #4]
	ldr r0, _02022F80 ; =0x00001555
	str r0, [r1, #8]
	mov r0, #0x96
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	mov r0, #0xe1
	lsl r0, r0, #0xe
	str r0, [r1, #0x10]
	mov r0, #1
	str r2, [r1, #0x2c]
	lsl r0, r0, #0xc
	str r0, [r1, #0x30]
	str r2, [r1, #0x34]
	str r2, [r1, #0x54]
	str r2, [r1, #0x58]
	str r2, [r1, #0x5c]
	str r2, [r1, #0x60]
	str r2, [r1, #0x64]
	bx lr
	nop
_02022F7C: .word 0x021094DC
_02022F80: .word 0x00001555
	thumb_func_end sub_02022F38

	thumb_func_start sub_02022F84
sub_02022F84: ; 0x02022F84
	ldr r2, [r0, #0x58]
	cmp r2, #0
	bne _02022F8E
	mov r2, #0
	str r2, [r1]
_02022F8E:
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	bne _02022F98
	mov r2, #0
	str r2, [r1, #4]
_02022F98:
	ldr r0, [r0, #0x60]
	cmp r0, #0
	bne _02022FA2
	mov r0, #0
	str r0, [r1, #8]
_02022FA2:
	bx lr
	thumb_func_end sub_02022F84

	thumb_func_start sub_02022FA4
sub_02022FA4: ; 0x02022FA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, [r6, #0x64]
	add r5, r1, #0
	add r4, r2, #0
	cmp r7, #0
	bne _02022FBC
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02022FBC:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	bne _02022FCC
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02022FCC:
	add r0, r7, #0
	str r0, [sp]
	add r0, #8
	str r0, [sp]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02022FF6
	add r2, r5, #0
	ldmia r2!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r6, #0x64]
	ldr r2, [r7, #4]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bne _0202300A
	mov r1, #1
	str r1, [r0, #0x10]
	b _0202300A
_02022FF6:
	ldr r2, [r7, #4]
	mov r1, #0xc
	ldr r0, [r7, #0x20]
	mul r1, r2
	add r2, r0, r1
	ldmia r2!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_0202300A:
	ldr r1, [r6, #0x64]
	ldr r0, [r7, #4]
	ldr r1, [r1]
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r7, #4]
	ldr r1, [sp]
	ldr r0, [r6, #0x64]
	ldr r2, [r1]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	mul r1, r2
	add r3, r5, #0
	add r2, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	ldr r1, [r6, #0x64]
	ldr r0, [r0]
	ldr r1, [r1]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, [sp]
	str r1, [r0]
	ldr r0, [r6, #0x64]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0202304E
	ldr r0, [r5]
	str r0, [r4]
_0202304E:
	ldr r0, [r6, #0x64]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0202305A
	ldr r0, [r5, #4]
	str r0, [r4, #4]
_0202305A:
	ldr r0, [r6, #0x64]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _02023066
	ldr r0, [r5, #8]
	str r0, [r4, #8]
_02023066:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022FA4

	thumb_func_start sub_02023068
sub_02023068: ; 0x02023068
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r0, #0x54]
	add r6, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _020230F6
	add r0, r7, #1
	cmp r0, r5
	ble _02023086
	bl GF_AssertFail
_02023086:
	ldr r0, [sp]
	mov r1, #0x28
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0xc
	ldr r0, [sp]
	mul r1, r5
	bl AllocFromHeap
	mov r1, #0
	str r0, [r4, #0x20]
	cmp r5, #0
	ble _020230BE
	add r2, r1, #0
	add r0, r1, #0
_020230A6:
	ldr r3, [r4, #0x20]
	add r1, r1, #1
	str r0, [r3, r2]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #4]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #8]
	add r2, #0xc
	cmp r1, r5
	blt _020230A6
_020230BE:
	str r5, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _020230DA
	str r0, [r4, #0x14]
_020230DA:
	mov r0, #2
	tst r0, r6
	beq _020230E4
	mov r0, #1
	str r0, [r4, #0x18]
_020230E4:
	mov r0, #4
	tst r0, r6
	beq _020230EE
	mov r0, #1
	str r0, [r4, #0x1c]
_020230EE:
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x18]
	str r4, [r0, #0x64]
_020230F6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02023068

	thumb_func_start sub_020230F8
sub_020230F8: ; 0x020230F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _02023112
	ldr r0, [r0, #0x20]
	bl FreeToHeap
	ldr r0, [r4, #0x64]
	bl FreeToHeap
	mov r0, #0
	str r0, [r4, #0x64]
_02023112:
	pop {r4, pc}
	thumb_func_end sub_020230F8

	thumb_func_start sub_02023114
sub_02023114: ; 0x02023114
	ldr r3, _0202311C ; =AllocFromHeap
	mov r1, #0x68
	bx r3
	nop
_0202311C: .word AllocFromHeap
	thumb_func_end sub_02023114

	thumb_func_start sub_02023120
sub_02023120: ; 0x02023120
	ldr r3, _02023124 ; =FreeToHeap
	bx r3
	.balign 4, 0
_02023124: .word FreeToHeap
	thumb_func_end sub_02023120

	thumb_func_start sub_02023128
sub_02023128: ; 0x02023128
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0xd
_02023130:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02023130
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02023128

	thumb_func_start sub_0202313C
sub_0202313C: ; 0x0202313C
	ldr r1, _02023144 ; =0x021D2204
	str r0, [r1]
	bx lr
	nop
_02023144: .word 0x021D2204
	thumb_func_end sub_0202313C

	thumb_func_start sub_02023148
sub_02023148: ; 0x02023148
	ldr r0, _02023150 ; =0x021D2204
	mov r1, #0
	str r1, [r0]
	bx lr
	.balign 4, 0
_02023150: .word 0x021D2204
	thumb_func_end sub_02023148

	thumb_func_start sub_02023154
sub_02023154: ; 0x02023154
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _020231EC ; =0x021D2204
	ldr r1, [r0]
	cmp r1, #0
	beq _020231E6
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _0202319E
	add r1, #0x48
	add r2, sp, #0xc
	bl sub_020CCDAC
	ldr r0, _020231EC ; =0x021D2204
	add r1, sp, #0xc
	ldr r0, [r0]
	bl sub_02022F84
	ldr r0, _020231EC ; =0x021D2204
	add r1, sp, #0xc
	ldr r0, [r0]
	add r2, sp, #0
	bl sub_02022FA4
	ldr r1, _020231EC ; =0x021D2204
	add r0, sp, #0
	ldr r1, [r1]
	bl sub_02023514
	ldr r0, _020231EC ; =0x021D2204
	ldr r3, [r0]
	ldr r2, [r3, #0x54]
	add r3, #0x48
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
_0202319E:
	ldr r0, _020231EC ; =0x021D2204
	ldr r5, _020231F0 ; =0x021DA6DC
	ldr r4, [r0]
	add r3, r4, #0
	add r2, r4, #0
	add r4, #0x14
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r2, #0x2c
	str r0, [r5]
	add r6, r2, #0
	ldr r5, _020231F4 ; =0x021DA6E8
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r3, #0x20
	str r0, [r5]
	add r6, r3, #0
	ldr r5, _020231F8 ; =0x021DA6F4
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [r5]
	ldr r3, _020231FC ; =0x021DA4E8
	add r0, r4, #0
	bl sub_020CBF3C
	ldr r1, _02023200 ; =0x021DA51C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
_020231E6:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_020231EC: .word 0x021D2204
_020231F0: .word 0x021DA6DC
_020231F4: .word 0x021DA6E8
_020231F8: .word 0x021DA6F4
_020231FC: .word 0x021DA4E8
_02023200: .word 0x021DA51C
	thumb_func_end sub_02023154

	thumb_func_start sub_02023204
sub_02023204: ; 0x02023204
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_02023204

	thumb_func_start sub_02023214
sub_02023214: ; 0x02023214
	push {r3, r4}
	add r3, r1, #0
	add r4, r0, #0
	str r4, [r3, #0x54]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	mov r0, #1
	str r0, [r3, #0x58]
	str r0, [r3, #0x5c]
	str r0, [r3, #0x60]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02023214

	thumb_func_start sub_02023234
sub_02023234: ; 0x02023234
	mov r1, #0
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x60]
	bx lr
	thumb_func_end sub_02023234

	thumb_func_start sub_02023240
sub_02023240: ; 0x02023240
	str r0, [r2, #0xc]
	add r0, r2, #0
	str r1, [r2, #0x10]
	add r0, #0x44
	ldr r3, _02023250 ; =sub_020233D8
	ldrb r0, [r0]
	add r1, r2, #0
	bx r3
	.balign 4, 0
_02023250: .word sub_020233D8
	thumb_func_end sub_02023240

	thumb_func_start sub_02023254
sub_02023254: ; 0x02023254
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x20]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	add r5, r2, #0
	bl sub_02022F38
	add r3, r6, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	str r7, [r4, #0x38]
	ldrh r0, [r5]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	bl sub_02022D74
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_020233D8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _020232BA
	str r6, [r4, #0x54]
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	mov r0, #1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_020232BA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02023254

	thumb_func_start sub_020232BC
sub_020232BC: ; 0x020232BC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x1c]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	add r5, r2, #0
	bl sub_02022F38
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	str r7, [r4, #0x38]
	ldrh r0, [r5]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	bl sub_02022E54
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_020233D8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020232BC

	thumb_func_start sub_02023308
sub_02023308: ; 0x02023308
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, [sp, #0x54]
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_02022F38
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r6, #0
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	add r0, r6, #0
	add r2, sp, #0x30
	bl sub_020CCDAC
	add r0, sp, #0x30
	bl sub_020CCF80
	str r0, [r4, #0x38]
	mov r6, #0
	add r0, sp, #0x24
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	add r0, sp, #0x18
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	add r0, sp, #0xc
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	add r3, sp, #0x30
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r6, [sp]
	str r0, [r2]
	str r6, [sp, #4]
	str r6, [sp, #0x10]
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_02020C64
	strh r0, [r4, #0x3e]
	add r1, r6, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_02020C64
	strh r0, [r4, #0x3c]
	add r0, r4, #0
	add r1, r6, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020233D8
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _020233D2
	str r5, [r4, #0x54]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	mov r0, #1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_020233D2:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02023308

	thumb_func_start sub_020233D8
sub_020233D8: ; 0x020233D8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	cmp r0, #0
	bne _02023414
	ldr r0, [r5, #0x10]
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02023488 ; =0x021DA4A4
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl sub_020CC84C
	ldr r1, _0202348C ; =0x021DA51C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r1, #0
	ldr r0, _02023490 ; =0x0210F6DC
	strb r1, [r5]
	str r1, [r0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02023414:
	ldr r4, [r5, #0x38]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_020CCBA0
	asr r1, r0, #0x1f
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	orr r4, r0
	ldr r2, [r5, #8]
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r6, #0xc
	orr r3, r0
	ldr r0, [r5, #0xc]
	neg r1, r4
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	lsl r0, r2, #1
	str r0, [sp, #8]
	ldr r0, _02023488 ; =0x021DA4A4
	neg r2, r3
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_020CC998
	ldr r1, _0202348C ; =0x021DA51C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r0, #1
	strb r0, [r5]
	ldr r0, _02023490 ; =0x0210F6DC
	mov r1, #0
	str r1, [r0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02023488: .word 0x021DA4A4
_0202348C: .word 0x021DA51C
_02023490: .word 0x0210F6DC
	thumb_func_end sub_020233D8

	thumb_func_start sub_02023494
sub_02023494: ; 0x02023494
	add r2, r1, #0
	add r2, #0x46
	strh r0, [r2]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	ldr r3, _020234C8 ; =sub_020233D8
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _020234CC ; =0x021094DC
	ldrsh r2, [r0, r2]
	str r2, [r1]
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	bx r3
	nop
_020234C8: .word sub_020233D8
_020234CC: .word 0x021094DC
	thumb_func_end sub_02023494

	thumb_func_start sub_020234D0
sub_020234D0: ; 0x020234D0
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	ldr r3, _0202350C ; =sub_020233D8
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x46
	strh r2, [r0]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02023510 ; =0x021094DC
	ldrsh r2, [r0, r2]
	str r2, [r1]
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	bx r3
	nop
_0202350C: .word sub_020233D8
_02023510: .word 0x021094DC
	thumb_func_end sub_020234D0

	thumb_func_start sub_02023514
sub_02023514: ; 0x02023514
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	add r2, r0, #0
	bl sub_020CCD78
	add r4, #0x20
	add r0, r4, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020CCD78
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023514

	thumb_func_start sub_02023534
sub_02023534: ; 0x02023534
	ldrh r2, [r0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x40
	strh r3, [r2]
	ldrh r2, [r0, #6]
	add r0, r1, #0
	add r0, #0x42
	strh r2, [r0]
	ldr r3, _02023554 ; =sub_02022E54
	add r0, r1, #0
	bx r3
	nop
_02023554: .word sub_02022E54
	thumb_func_end sub_02023534

	thumb_func_start sub_02023558
sub_02023558: ; 0x02023558
	ldrh r2, [r0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x40
	strh r3, [r2]
	ldrh r2, [r0, #6]
	add r0, r1, #0
	add r0, #0x42
	strh r2, [r0]
	ldr r3, _02023578 ; =sub_02022D74
	add r0, r1, #0
	bx r3
	nop
_02023578: .word sub_02022D74
	thumb_func_end sub_02023558

	thumb_func_start sub_0202357C
sub_0202357C: ; 0x0202357C
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r0, [r0, #4]
	ldr r3, _020235A4 ; =sub_02022E54
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x40
	strh r2, [r0]
	add r0, r1, #0
	bx r3
	nop
_020235A4: .word sub_02022E54
	thumb_func_end sub_0202357C

	thumb_func_start sub_020235A8
sub_020235A8: ; 0x020235A8
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r0, [r0, #4]
	ldr r3, _020235D0 ; =sub_02022D74
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x40
	strh r2, [r0]
	add r0, r1, #0
	bx r3
	nop
_020235D0: .word sub_02022D74
	thumb_func_end sub_020235A8

	thumb_func_start sub_020235D4
sub_020235D4: ; 0x020235D4
	ldr r3, _020235DC ; =sub_02022D74
	str r0, [r1, #0x38]
	add r0, r1, #0
	bx r3
	.balign 4, 0
_020235DC: .word sub_02022D74
	thumb_func_end sub_020235D4

	thumb_func_start sub_020235E0
sub_020235E0: ; 0x020235E0
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	add r0, r3, #0
	bl sub_02022D74
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020235E0

	thumb_func_start sub_020235FC
sub_020235FC: ; 0x020235FC
	ldr r2, [r1, #0x38]
	ldr r3, _02023608 ; =sub_02022D74
	add r0, r2, r0
	str r0, [r1, #0x38]
	add r0, r1, #0
	bx r3
	.balign 4, 0
_02023608: .word sub_02022D74
	thumb_func_end sub_020235FC

	thumb_func_start sub_0202360C
sub_0202360C: ; 0x0202360C
	add r0, #0x46
	ldrh r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_0202360C

	thumb_func_start sub_02023614
sub_02023614: ; 0x02023614
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_02023614

	thumb_func_start sub_02023618
sub_02023618: ; 0x02023618
	ldrh r2, [r1, #0x3c]
	strh r2, [r0]
	ldrh r2, [r1, #0x3e]
	strh r2, [r0, #2]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	add r1, #0x42
	strh r2, [r0, #4]
	ldrh r1, [r1]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_02023618

	thumb_func_start sub_02023630
sub_02023630: ; 0x02023630
	add r2, r1, #0
	add r2, #0x20
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_02023630

	thumb_func_start sub_02023640
sub_02023640: ; 0x02023640
	add r2, r1, #0
	add r2, #0x14
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_02023640

	thumb_func_start sub_02023650
sub_02023650: ; 0x02023650
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_02023650

	thumb_func_start sub_02023654
sub_02023654: ; 0x02023654
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02023654

	thumb_func_start sub_02023658
sub_02023658: ; 0x02023658
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_02023658

	thumb_func_start sub_0202365C
sub_0202365C: ; 0x0202365C
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0202365C

	thumb_func_start sub_0202366C
sub_0202366C: ; 0x0202366C
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0202366C

	thumb_func_start sub_0202367C
sub_0202367C: ; 0x0202367C
	ldr r2, [r0, #0x64]
	cmp r2, #0
	beq _02023690
	cmp r1, #0
	beq _0202368C
	mov r0, #1
	str r0, [r2, #0x24]
	bx lr
_0202368C:
	mov r0, #0
	str r0, [r2, #0x24]
_02023690:
	bx lr
	.balign 4, 0
	thumb_func_end sub_0202367C

	thumb_func_start sub_02023694
sub_02023694: ; 0x02023694
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	str r2, [r0, #4]
	add r1, r0, #0
	str r2, [r0, #8]
	add r1, #0xd0
	str r2, [r1]
	add r1, r0, #0
	add r1, #0xd4
	str r2, [r1]
	add r1, r0, #0
	add r1, #0xd8
	str r2, [r1]
	add r1, r0, #0
	add r1, #0xdc
	str r2, [r1]
	strb r2, [r0, #3]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02023694

	thumb_func_start sub_020236BC
sub_020236BC: ; 0x020236BC
	mov r3, #0
	str r3, [r0, #0x28]
	add r1, r0, #0
	str r3, [r0, #0x2c]
	add r1, #0x84
	str r3, [r1]
	add r1, r0, #0
	add r1, #0x88
	str r3, [r1]
	add r1, r0, #0
	add r1, #0x8c
	str r3, [r1]
	add r1, r0, #0
	add r1, #0x90
	add r2, r0, #0
	str r3, [r1]
	add r2, #0xa0
	mov r1, #0x10
_020236E0:
	strb r3, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020236E0
	add r2, r0, #0
	mov r1, #0
	add r2, #0x94
	str r1, [r2]
	add r2, r0, #0
	add r2, #0x98
	str r1, [r2]
	add r2, r0, #0
	add r2, #0x9c
	str r1, [r2]
	add r2, r0, #0
	add r2, #0xb0
	str r1, [r2]
	str r1, [r0]
	str r1, [r0, #4]
	mov r2, #1
	str r1, [r0, #8]
	lsl r2, r2, #0xc
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	add r2, r0, #0
	str r1, [r0, #0x18]
	add r2, #0xb6
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0xb4
	strb r1, [r2]
	add r2, r0, #0
	add r2, #0xbc
	str r1, [r2]
	add r2, r0, #0
	add r2, #0xc0
	str r1, [r2]
	add r2, r0, #0
	add r2, #0x24
	strb r1, [r2]
	str r1, [r0, #0x20]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020236BC

	thumb_func_start sub_02023738
sub_02023738: ; 0x02023738
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02023774 ; =0x021D2208
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0202374A
	bl GF_AssertFail
_0202374A:
	mov r1, #0xe0
	add r0, r4, #0
	mul r1, r6
	bl AllocFromHeap
	ldr r7, _02023774 ; =0x021D2208
	mov r4, #0
	str r0, [r7]
	str r6, [r7, #4]
	cmp r6, #0
	ble _02023772
	add r5, r4, #0
_02023762:
	ldr r0, [r7]
	add r0, r0, r5
	bl sub_02023694
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r6
	blt _02023762
_02023772:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02023774: .word 0x021D2208
	thumb_func_end sub_02023738

	thumb_func_start sub_02023778
sub_02023778: ; 0x02023778
	push {r4, r5, r6, lr}
	ldr r6, _020237AC ; =0x021D2208
	mov r4, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _02023798
	add r5, r4, #0
_02023786:
	ldr r0, [r6]
	add r0, r0, r5
	bl sub_02023874
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r0
	blt _02023786
_02023798:
	ldr r0, _020237AC ; =0x021D2208
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _020237AC ; =0x021D2208
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	pop {r4, r5, r6, pc}
	nop
_020237AC: .word 0x021D2208
	thumb_func_end sub_02023778

	thumb_func_start sub_020237B0
sub_020237B0: ; 0x020237B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _020237E8 ; =0x021D2208
	mov r4, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _020237E4
	add r5, r4, #0
	mov r7, #2
_020237C0:
	ldr r0, [r6]
	add r0, r0, r5
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _020237CE
	bl sub_02023950
_020237CE:
	ldr r0, [r6]
	add r1, r0, r5
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _020237DA
	strb r7, [r1, #3]
_020237DA:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, #0xe0
	cmp r4, r0
	blt _020237C0
_020237E4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020237E8: .word 0x021D2208
	thumb_func_end sub_020237B0

	thumb_func_start sub_020237EC
sub_020237EC: ; 0x020237EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202391C
	add r4, r0, #0
	bne _02023800
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_02023800:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r4, #1]
	ldr r2, [r5]
	mov r1, #0xc4
	ldr r0, [r5, #4]
	mul r1, r2
	bl AllocFromHeap
	str r0, [r4, #4]
	ldr r0, [r5]
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xc
	bl sub_020236BC
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc
	add r0, #0xc8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xcc
	str r1, [r0]
	ldr r1, [r5]
	ldr r0, [r5, #4]
	lsl r1, r1, #2
	bl AllocFromHeap
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1]
	add r0, r4, #0
	bl sub_02024248
	ldr r0, [r5, #4]
	mov r1, #0x10
	bl AllocFromHeap
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, [r5, #4]
	mov r2, #4
	bl sub_0201AC14
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_0202068C
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020237EC

	thumb_func_start sub_02023874
sub_02023874: ; 0x02023874
	push {r4, lr}
	add r4, r0, #0
	bne _02023882
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
_02023882:
	ldrb r1, [r4]
	cmp r1, #0
	beq _020238B6
	bl sub_020238BC
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl FreeToHeap
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl FreeToHeap
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl sub_020206C8
	add r0, r4, #0
	bl sub_02023694
_020238B6:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02023874

	thumb_func_start sub_020238BC
sub_020238BC: ; 0x020238BC
	push {r3, r4, r5, lr}
	cmp r0, #0
	bne _020238CC
	bne _020238C8
	bl GF_AssertFail
_020238C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
_020238CC:
	ldrb r1, [r0]
	cmp r1, #0
	beq _020238F2
	add r1, r0, #0
	add r1, #0xc8
	add r4, r0, #0
	ldr r1, [r1]
	add r4, #0xc
	cmp r1, r4
	beq _020238F2
_020238E0:
	add r0, r1, #0
	add r0, #0xbc
	ldr r5, [r0]
	add r0, r1, #0
	bl sub_02023DA4
	add r1, r5, #0
	cmp r5, r4
	bne _020238E0
_020238F2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020238BC

	thumb_func_start sub_020238F8
sub_020238F8: ; 0x020238F8
	push {r4, lr}
	add r4, r0, #0
	bne _02023902
	bl GF_AssertFail
_02023902:
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0202390C
	mov r0, #0
	pop {r4, pc}
_0202390C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020238F8

	thumb_func_start sub_02023910
sub_02023910: ; 0x02023910
	ldrb r1, [r0, #3]
	cmp r1, #2
	bne _0202391A
	mov r1, #0
	strb r1, [r0, #3]
_0202391A:
	bx lr
	thumb_func_end sub_02023910

	thumb_func_start sub_0202391C
sub_0202391C: ; 0x0202391C
	push {r3, r4}
	ldr r0, _0202394C ; =0x021D2208
	mov r1, #0
	ldr r3, [r0, #4]
	cmp r3, #0
	ble _02023944
	ldr r4, [r0]
	add r2, r4, #0
_0202392C:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0202393C
	mov r0, #0xe0
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4}
	bx lr
_0202393C:
	add r1, r1, #1
	add r2, #0xe0
	cmp r1, r3
	blt _0202392C
_02023944:
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_0202394C: .word 0x021D2208
	thumb_func_end sub_0202391C

	thumb_func_start sub_02023950
sub_02023950: ; 0x02023950
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bne _0202395C
	bl GF_AssertFail
_0202395C:
	add r0, sp, #0
	bl sub_020CAFEC
	add r0, r5, #0
	add r0, #0xc8
	ldr r4, [r0]
	add r5, #0xc
	cmp r4, r5
	beq _020239CC
	add r6, sp, #0
_02023970:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #1
	bne _020239C4
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02023986
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	blx r2
_02023986:
	add r0, r4, #0
	bl sub_020243FC
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #3
	bne _0202399E
	add r0, r4, #0
	bl sub_02023FEC
	b _020239A8
_0202399E:
	cmp r0, #2
	bne _020239A8
	add r0, r4, #0
	bl sub_02023FC0
_020239A8:
	ldr r2, [r4, #0x18]
	cmp r2, #0
	bne _020239B0
	add r2, r6, #0
_020239B0:
	add r0, r4, #0
	add r3, r4, #0
	add r0, #0x30
	add r1, r4, #0
	add r3, #0xc
	bl sub_0201F554
	add r0, r4, #0
	bl sub_0202441C
_020239C4:
	add r4, #0xbc
	ldr r4, [r4]
	cmp r4, r5
	bne _02023970
_020239CC:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02023950

	thumb_func_start sub_020239D0
sub_020239D0: ; 0x020239D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x28]
	add r4, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02023C04
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023C20
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02023C9C
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02023A06
	add r6, #0xc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020242E4
_02023A06:
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb4
	strb r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0xb6
	strh r1, [r0]
	add r5, #0xb8
	str r1, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020239D0

	thumb_func_start sub_02023A20
sub_02023A20: ; 0x02023A20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x28]
	add r4, r1, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02023C04
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02023A4A
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02023B70
_02023A4A:
	add r0, r5, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x94
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	add r0, #0x98
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0x24]
	add r0, #0x9c
	str r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023CF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023D24
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02023A86
	add r6, #0xc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020242E4
_02023A86:
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	strb r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0xb6
	strh r1, [r0]
	add r5, #0xb8
	str r1, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02023A20

	thumb_func_start sub_02023AA0
sub_02023AA0: ; 0x02023AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_020BE3DC
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020BE3F0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020BE51C
	str r0, [sp]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02023ADE
	ldr r3, _02023B30 ; =0x02110924
	mov r1, #0
	ldr r3, [r3]
	add r2, r1, #0
	blx r3
	str r0, [r4]
	cmp r0, #0
	bne _02023AE2
	bl GF_AssertFail
	b _02023AE2
_02023ADE:
	mov r0, #0
	str r0, [r4]
_02023AE2:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02023AFE
	ldr r3, _02023B30 ; =0x02110924
	mov r1, #1
	ldr r3, [r3]
	mov r2, #0
	blx r3
	str r0, [r6]
	cmp r0, #0
	bne _02023B02
	bl GF_AssertFail
	b _02023B02
_02023AFE:
	mov r0, #0
	str r0, [r6]
_02023B02:
	ldr r0, [sp]
	cmp r0, #0
	beq _02023B26
	ldr r3, _02023B34 ; =0x0211092C
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3]
	and r1, r2
	mov r2, #0
	blx r3
	str r0, [r7]
	cmp r0, #0
	bne _02023B2A
	bl GF_AssertFail
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02023B26:
	mov r0, #0
	str r0, [r7]
_02023B2A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02023B30: .word 0x02110924
_02023B34: .word 0x0211092C
	thumb_func_end sub_02023AA0

	thumb_func_start sub_02023B38
sub_02023B38: ; 0x02023B38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_020BE4D0
	add r0, r5, #0
	bl sub_020BE588
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023B38

	thumb_func_start sub_02023B4C
sub_02023B4C: ; 0x02023B4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r2]
	ldr r2, [r3]
	add r5, r0, #0
	bl sub_020BE404
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r1, [r1]
	bl sub_020BE530
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020BED00
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02023B4C

	thumb_func_start sub_02023B70
sub_02023B70: ; 0x02023B70
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _02023B82
	ldr r1, _02023B9C ; =0x02110928
	ldr r1, [r1]
	blx r1
_02023B82:
	ldr r0, [r5]
	cmp r0, #0
	beq _02023B8E
	ldr r1, _02023B9C ; =0x02110928
	ldr r1, [r1]
	blx r1
_02023B8E:
	ldr r0, [r4]
	cmp r0, #0
	beq _02023B9A
	ldr r1, _02023BA0 ; =0x02110930
	ldr r1, [r1]
	blx r1
_02023B9A:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02023B9C: .word 0x02110928
_02023BA0: .word 0x02110930
	thumb_func_end sub_02023B70

	thumb_func_start sub_02023BA4
sub_02023BA4: ; 0x02023BA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	beq _02023BB4
	cmp r5, #0
	bne _02023BBA
_02023BB4:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02023BBA:
	bl sub_020BE3DC
	str r0, [sp]
	add r0, r4, #0
	bl sub_020BE3F0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020BE51C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020BE3DC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020BE3F0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020BE51C
	ldr r1, [sp]
	cmp r1, r6
	bne _02023BF6
	ldr r1, [sp, #4]
	cmp r1, r7
	bne _02023BF6
	cmp r4, r0
	beq _02023BFC
_02023BF6:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02023BFC:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02023BA4

	thumb_func_start sub_02023C04
sub_02023C04: ; 0x02023C04
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _02023C1C
	bl sub_02020738
	mov r0, #0
	add r4, #0xb0
	str r0, [r4]
_02023C1C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02023C04

	thumb_func_start sub_02023C20
sub_02023C20: ; 0x02023C20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r4, [r0]
	add r0, r1, #0
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x88
	add r2, #0x8c
	bl sub_02024328
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1]
	add r0, #0x30
	bl sub_020BE120
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #3
	beq _02023C62
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_02023BA4
	b _02023C64
_02023C62:
	mov r0, #0
_02023C64:
	cmp r0, #0
	bne _02023C98
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02023C82
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02023B70
_02023C82:
	add r0, r5, #0
	add r0, #0x8c
	add r1, r5, #0
	add r2, r5, #0
	add r5, #0x9c
	ldr r0, [r0]
	add r1, #0x94
	add r2, #0x98
	add r3, r5, #0
	bl sub_02023AA0
_02023C98:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02023C20

	thumb_func_start sub_02023C9C
sub_02023C9C: ; 0x02023C9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl sub_02024374
	add r1, r5, #0
	add r1, #0x90
	add r3, r5, #0
	add r3, #0xa0
	str r0, [r1]
	add r4, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp, #4]
	add r6, #0xdc
	add r2, #0x90
	add r3, #0x94
	ldr r0, [r6]
	ldr r2, [r2]
	ldr r3, [r3]
	bl sub_020206E0
	add r5, #0xb0
	str r0, [r5]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02023C9C

	thumb_func_start sub_02023CF0
sub_02023CF0: ; 0x02023CF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, r4, #0
	add r1, #0x88
	add r2, #0x8c
	bl sub_02024328
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1]
	add r0, #0x30
	bl sub_020BE120
	add r0, r4, #0
	bl sub_02024374
	add r5, #0x90
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023CF0

	thumb_func_start sub_02023D24
sub_02023D24: ; 0x02023D24
	push {r3, r4}
	add r4, r0, #0
	add r2, r4, #0
	add r3, r1, #0
	add r3, #0xc
	add r2, #0xa0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r4, #0xb0
	str r0, [r4]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02023D24

	thumb_func_start sub_02023D44
sub_02023D44: ; 0x02023D44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5]
	cmp r6, #0
	bne _02023D52
	mov r0, #0
	pop {r4, r5, r6, pc}
_02023D52:
	add r0, r6, #0
	bl sub_02024280
	add r4, r0, #0
	bne _02023D60
	mov r0, #0
	pop {r4, r5, r6, pc}
_02023D60:
	add r3, r5, #0
	str r6, [r4, #0x28]
	add r3, #8
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r5, #0
	str r0, [r2]
	add r3, #0x14
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xb6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_02024380
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02023D44

	thumb_func_start sub_02023DA4
sub_02023DA4: ; 0x02023DA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _02023DAE
	bl GF_AssertFail
_02023DAE:
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02023DBC
	bl GF_AssertFail
_02023DBC:
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	ldr r4, [r5, #0x28]
	cmp r0, #0
	bne _02023DCC
	mov r0, #0
	pop {r3, r4, r5, pc}
_02023DCC:
	add r0, r5, #0
	bl sub_02024308
	add r0, r5, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02023DEC
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0x94
	add r1, #0x98
	add r2, #0x9c
	bl sub_02023B70
_02023DEC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02023C04
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020242AC
	mov r0, #1
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02023DA4

	thumb_func_start sub_02023E04
sub_02023E04: ; 0x02023E04
	push {r3, r4}
	add r4, r0, #0
	str r1, [r4]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r3, [sp, #8]
	add r2, r4, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02023E04

	thumb_func_start sub_02023E2C
sub_02023E2C: ; 0x02023E2C
	push {r3, r4}
	add r4, r0, #0
	str r1, [r4]
	str r2, [r4, #4]
	str r3, [r4, #8]
	ldr r3, [sp, #8]
	add r2, r4, #0
	add r2, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02023E2C

	thumb_func_start sub_02023E50
sub_02023E50: ; 0x02023E50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02023E5E
	bl GF_AssertFail
_02023E5E:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023E50

	thumb_func_start sub_02023E68
sub_02023E68: ; 0x02023E68
	push {r4, lr}
	add r4, r0, #0
	bne _02023E72
	bl GF_AssertFail
_02023E72:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02023E68

	thumb_func_start sub_02023E78
sub_02023E78: ; 0x02023E78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02023E86
	bl GF_AssertFail
_02023E86:
	ldmia r5!, {r0, r1}
	add r4, #0xc
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02023E78

	thumb_func_start sub_02023E94
sub_02023E94: ; 0x02023E94
	push {r4, lr}
	add r4, r0, #0
	bne _02023E9E
	bl GF_AssertFail
_02023E9E:
	add r4, #0xc
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02023E94

	thumb_func_start sub_02023EA4
sub_02023EA4: ; 0x02023EA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023EB2
	bl GF_AssertFail
_02023EB2:
	add r5, #0x24
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023EA4

	thumb_func_start sub_02023EB8
sub_02023EB8: ; 0x02023EB8
	push {r4, lr}
	add r4, r0, #0
	bne _02023EC2
	bl GF_AssertFail
_02023EC2:
	add r4, #0x24
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02023EB8

	thumb_func_start sub_02023EC8
sub_02023EC8: ; 0x02023EC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023ED6
	bl GF_AssertFail
_02023ED6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02024380
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023EC8

	thumb_func_start sub_02023EE0
sub_02023EE0: ; 0x02023EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023EEE
	bl GF_AssertFail
_02023EEE:
	add r5, #0xb6
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023EE0

	thumb_func_start sub_02023EF4
sub_02023EF4: ; 0x02023EF4
	push {r4, lr}
	add r4, r0, #0
	bne _02023EFE
	bl GF_AssertFail
_02023EFE:
	add r4, #0xb6
	ldrh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02023EF4

	thumb_func_start sub_02023F04
sub_02023F04: ; 0x02023F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023F12
	bl GF_AssertFail
_02023F12:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020243A4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023F04

	thumb_func_start sub_02023F1C
sub_02023F1C: ; 0x02023F1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023F2A
	bl GF_AssertFail
_02023F2A:
	add r5, #0xb8
	str r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023F1C

	thumb_func_start sub_02023F30
sub_02023F30: ; 0x02023F30
	push {r4, lr}
	add r4, r0, #0
	bne _02023F3A
	bl GF_AssertFail
_02023F3A:
	add r4, #0xb8
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02023F30

	thumb_func_start sub_02023F40
sub_02023F40: ; 0x02023F40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02023F4E
	bl GF_AssertFail
_02023F4E:
	add r1, r5, #0
	add r1, #0xb6
	ldrh r1, [r1]
	add r0, r5, #0
	bl sub_02024394
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r5, #0xb8
	add r0, r0, r4
	str r0, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02023F40

	thumb_func_start sub_02023F70
sub_02023F70: ; 0x02023F70
	push {r4, lr}
	add r4, r0, #0
	bne _02023F7A
	bl GF_AssertFail
_02023F7A:
	add r1, r4, #0
	add r1, #0xb6
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_02024394
	add r4, #0xb8
	ldr r1, [r4]
	sub r0, r1, r0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02023F70

	thumb_func_start sub_02023F90
sub_02023F90: ; 0x02023F90
	push {r4, lr}
	add r4, r0, #0
	bne _02023F9A
	bl GF_AssertFail
_02023F9A:
	add r4, #0x88
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02023F90

	thumb_func_start sub_02023FA0
sub_02023FA0: ; 0x02023FA0
	push {r4, lr}
	add r4, r0, #0
	bne _02023FAA
	bl GF_AssertFail
_02023FAA:
	add r4, #0x94
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02023FA0

	thumb_func_start sub_02023FB0
sub_02023FB0: ; 0x02023FB0
	push {r4, lr}
	add r4, r0, #0
	bne _02023FBA
	bl GF_AssertFail
_02023FBA:
	add r4, #0x9c
	ldr r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02023FB0

	thumb_func_start sub_02023FC0
sub_02023FC0: ; 0x02023FC0
	push {r3, lr}
	add r1, r0, #0
	add r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #2
	bne _02023FDA
	add r0, r1, #0
	add r0, #0xb0
	add r1, #0xb8
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_02020764
_02023FDA:
	pop {r3, pc}
	thumb_func_end sub_02023FC0

	thumb_func_start sub_02023FDC
sub_02023FDC: ; 0x02023FDC
	add r0, #0x88
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02023FDC

	thumb_func_start sub_02023FE4
sub_02023FE4: ; 0x02023FE4
	str r2, [r0, #0x1c]
	str r1, [r0, #0x20]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02023FE4

	thumb_func_start sub_02023FEC
sub_02023FEC: ; 0x02023FEC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, #0xa0
	lsl r1, r1, #4
	lsr r1, r1, #0x10
	bl sub_02026DE0
	add r2, sp, #0
	strb r0, [r2]
	lsr r0, r0, #8
	strb r0, [r2, #1]
	ldrb r0, [r2]
	add r1, r4, #0
	add r1, #0x90
	strb r0, [r2, #2]
	ldrb r0, [r2, #1]
	strb r0, [r2, #3]
	add r0, r4, #0
	add r0, #0x88
	ldrb r2, [r2, #2]
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_0202403C
	add r0, r4, #0
	add r2, sp, #0
	add r0, #0x88
	add r4, #0x90
	ldrb r2, [r2, #3]
	ldr r0, [r0]
	ldr r1, [r4]
	bl sub_02024140
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02023FEC

	thumb_func_start sub_0202403C
sub_0202403C: ; 0x0202403C
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _0202404C
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0202404C
	add r6, r0, r3
	b _0202404E
_0202404C:
	mov r6, #0
_0202404E:
	ldrh r0, [r6]
	add r4, r6, r0
	cmp r1, #0
	beq _0202407C
	add r0, r1, #0
	add r0, #0x3c
	beq _02024078
	add r3, r1, #0
	add r3, #0x3d
	ldrb r3, [r3]
	cmp r2, r3
	bhs _02024078
	add r1, #0x42
	ldrh r1, [r1]
	add r3, r0, r1
	ldrh r0, [r0, r1]
	add r3, r3, #4
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	b _0202407E
_02024078:
	mov r0, #0
	b _0202407E
_0202407C:
	mov r0, #0
_0202407E:
	ldr r0, [r0]
	mov r5, #0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrb r0, [r4, #1]
	cmp r0, #0
	ble _020240C0
_0202408C:
	cmp r4, #0
	beq _020240A6
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _020240A6
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _020240A8
_020240A6:
	mov r1, #0
_020240A8:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	beq _020240B8
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020240C4
_020240B8:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blt _0202408C
_020240C0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0202403C

	thumb_func_start sub_020240C4
sub_020240C4: ; 0x020240C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrb r0, [r0, #2]
	mov r6, #0
	cmp r0, #0
	ble _02024136
	add r7, r5, #4
_020240E2:
	ldr r0, [sp, #8]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _0202410E
	cmp r7, #0
	beq _02024102
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _02024102
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _02024104
_02024102:
	mov r0, #0
_02024104:
	cmp r0, #0
	beq _0202410E
	ldr r0, [r0]
	add r4, r5, r0
	b _02024110
_0202410E:
	mov r4, #0
_02024110:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, _0202413C ; =0x0000FFFF
	cmp r1, r0
	bls _02024124
	bl GF_AssertFail
_02024124:
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	cmp r6, r0
	blt _020240E2
_02024136:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202413C: .word 0x0000FFFF
	thumb_func_end sub_020240C4

	thumb_func_start sub_02024140
sub_02024140: ; 0x02024140
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _02024150
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02024150
	add r6, r0, r3
	b _02024152
_02024150:
	mov r6, #0
_02024152:
	ldrh r0, [r6, #2]
	add r4, r6, r0
	cmp r1, #0
	beq _0202417E
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	beq _0202417E
	add r0, r1, r0
	beq _0202417A
	ldrb r1, [r0, #1]
	cmp r2, r1
	bhs _0202417A
	ldrh r1, [r0, #6]
	add r3, r0, r1
	ldrh r0, [r0, r1]
	add r3, r3, #4
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	b _02024180
_0202417A:
	mov r0, #0
	b _02024180
_0202417E:
	mov r0, #0
_02024180:
	ldrh r1, [r0, #2]
	ldrh r7, [r0]
	mov r0, #1
	tst r0, r1
	bne _0202418C
	lsr r7, r7, #1
_0202418C:
	ldrb r0, [r4, #1]
	mov r5, #0
	cmp r0, #0
	bls _020241C8
_02024194:
	cmp r4, #0
	beq _020241AE
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _020241AE
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #4
	add r1, r0, #0
	mul r1, r5
	add r1, r2, r1
	b _020241B0
_020241AE:
	mov r1, #0
_020241B0:
	ldrb r2, [r1, #3]
	mov r0, #1
	tst r0, r2
	beq _020241C0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020241CC
_020241C0:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blo _02024194
_020241C8:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02024140

	thumb_func_start sub_020241CC
sub_020241CC: ; 0x020241CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	ldrh r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrb r0, [r0, #2]
	mov r6, #0
	cmp r0, #0
	bls _0202423E
	add r7, r5, #4
_020241EA:
	ldr r0, [sp, #8]
	cmp r5, #0
	ldrb r0, [r0, r6]
	beq _02024216
	cmp r7, #0
	beq _0202420A
	ldrb r1, [r5, #5]
	cmp r0, r1
	bhs _0202420A
	ldrh r1, [r5, #0xa]
	add r2, r7, r1
	ldrh r1, [r7, r1]
	add r2, r2, #4
	mul r0, r1
	add r0, r2, r0
	b _0202420C
_0202420A:
	mov r0, #0
_0202420C:
	cmp r0, #0
	beq _02024216
	ldr r0, [r0]
	add r4, r5, r0
	b _02024218
_02024216:
	mov r4, #0
_02024218:
	ldrh r1, [r4, #0x1c]
	ldr r0, _02024244 ; =0x00001FFF
	and r1, r0
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, _02024244 ; =0x00001FFF
	cmp r1, r0
	bls _0202422C
	bl GF_AssertFail
_0202422C:
	ldrh r1, [r4, #0x1c]
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r1, r0
	strh r0, [r4, #0x1c]
	ldr r0, [sp]
	ldrb r0, [r0, #2]
	cmp r6, r0
	blo _020241EA
_0202423E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02024244: .word 0x00001FFF
	thumb_func_end sub_020241CC

	thumb_func_start sub_02024248
sub_02024248: ; 0x02024248
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r7, #0
	cmp r0, #0
	ble _02024278
	add r4, r7, #0
	add r6, r7, #0
_02024258:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl sub_020236BC
	ldr r0, [r5, #4]
	add r7, r7, #1
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	add r4, #0xc4
	str r1, [r0, r6]
	ldr r0, [r5, #8]
	add r6, r6, #4
	cmp r7, r0
	blt _02024258
_02024278:
	mov r0, #0
	add r5, #0xd4
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02024248

	thumb_func_start sub_02024280
sub_02024280: ; 0x02024280
	add r1, r0, #0
	add r1, #0xd4
	ldr r3, [r1]
	ldr r1, [r0, #8]
	cmp r3, r1
	blt _02024290
	mov r0, #0
	bx lr
_02024290:
	add r1, r0, #0
	add r1, #0xd0
	ldr r2, [r1]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1]
	add r0, #0xd4
	add r1, r1, #1
	str r1, [r0]
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024280

	thumb_func_start sub_020242AC
sub_020242AC: ; 0x020242AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xd4
	ldr r0, [r0]
	add r4, r1, #0
	cmp r0, #0
	bgt _020242BE
	mov r0, #0
	pop {r3, r4, r5, pc}
_020242BE:
	add r0, r4, #0
	bl sub_020236BC
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xd4
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xd0
	add r5, #0xd4
	ldr r1, [r0]
	ldr r0, [r5]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020242AC

	thumb_func_start sub_020242E4
sub_020242E4: ; 0x020242E4
	add r2, r0, #0
	add r2, #0xc0
	ldr r3, [r2]
	add r2, r1, #0
	add r2, #0xc0
	str r3, [r2]
	add r2, r0, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r2, #0xbc
	str r1, [r2]
	add r2, r1, #0
	add r2, #0xbc
	str r0, [r2]
	add r0, #0xc0
	str r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020242E4

	thumb_func_start sub_02024308
sub_02024308: ; 0x02024308
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	add r1, r0, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r1, #0xbc
	str r2, [r1]
	add r1, r0, #0
	add r0, #0xbc
	add r1, #0xc0
	ldr r0, [r0]
	ldr r1, [r1]
	add r0, #0xc0
	str r1, [r0]
	bx lr
	thumb_func_end sub_02024308

	thumb_func_start sub_02024328
sub_02024328: ; 0x02024328
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	bl sub_0202443C
	add r7, r0, #0
	bl sub_020C3B40
	add r4, r0, #0
	beq _0202435E
	add r1, r4, #0
	add r1, #8
	beq _02024352
	ldrb r0, [r4, #9]
	cmp r0, #0
	bls _02024352
	ldrh r0, [r4, #0xe]
	add r0, r1, r0
	add r0, r0, #4
	b _02024354
_02024352:
	mov r0, #0
_02024354:
	cmp r0, #0
	beq _0202435E
	ldr r0, [r0]
	add r0, r4, r0
	b _02024360
_0202435E:
	mov r0, #0
_02024360:
	str r0, [r6]
	cmp r5, #0
	beq _0202436E
	add r0, r7, #0
	bl sub_020C3B50
	str r0, [r5]
_0202436E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02024328

	thumb_func_start sub_02024374
sub_02024374: ; 0x02024374
	ldr r3, _0202437C ; =sub_0202443C
	mov r1, #1
	bx r3
	nop
_0202437C: .word sub_0202443C
	thumb_func_end sub_02024374

	thumb_func_start sub_02024380
sub_02024380: ; 0x02024380
	push {r3, lr}
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	bne _0202438E
	bl sub_020239D0
	pop {r3, pc}
_0202438E:
	bl sub_02023A20
	pop {r3, pc}
	thumb_func_end sub_02024380

	thumb_func_start sub_02024394
sub_02024394: ; 0x02024394
	push {r3, lr}
	ldr r0, [r0, #0x2c]
	bl sub_02024454
	ldr r0, [r0]
	lsl r0, r0, #0xc
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02024394

	thumb_func_start sub_020243A4
sub_020243A4: ; 0x020243A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xb6
	ldrh r1, [r1]
	ldr r0, [r5, #0x2c]
	bl sub_02024454
	add r5, #0xb8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020243C4
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020243A4

	thumb_func_start sub_020243C4
sub_020243C4: ; 0x020243C4
	push {r3, r4, r5, r6}
	ldr r4, [r0]
	ldr r6, [r1]
	lsl r4, r4, #0xc
	mov r3, #0
	cmp r4, r6
	bgt _020243DA
	ldr r5, [r0, #4]
	lsl r5, r5, #0xc
	cmp r5, r6
	bge _020243DE
_020243DA:
	str r4, [r1]
	b _020243F6
_020243DE:
	add r2, r6, r2
	cmp r5, r2
	bge _020243F4
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020243EE
	str r4, [r1]
	b _020243F6
_020243EE:
	mov r3, #1
	str r5, [r1]
	b _020243F6
_020243F4:
	str r2, [r1]
_020243F6:
	add r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_020243C4

	thumb_func_start sub_020243FC
sub_020243FC: ; 0x020243FC
	push {r3, lr}
	add r3, r0, #0
	add r0, #0x9c
	str r0, [sp]
	add r0, r3, #0
	add r1, r3, #0
	add r2, r3, #0
	add r0, #0x8c
	add r1, #0x84
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, #0x94
	add r3, #0x98
	bl sub_02023B4C
	pop {r3, pc}
	thumb_func_end sub_020243FC

	thumb_func_start sub_0202441C
sub_0202441C: ; 0x0202441C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_020BEDB0
	add r4, #0x8c
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0
	bl sub_02023B38
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0202441C

	thumb_func_start sub_0202443C
sub_0202443C: ; 0x0202443C
	cmp r1, #0
	beq _02024446
	cmp r1, #1
	beq _0202444A
	b _0202444E
_02024446:
	ldr r0, [r0]
	bx lr
_0202444A:
	ldr r0, [r0, #4]
	bx lr
_0202444E:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0202443C

	thumb_func_start sub_02024454
sub_02024454: ; 0x02024454
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_02024454

	thumb_func_start sub_0202445C
sub_0202445C: ; 0x0202445C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _02024466
	bl GF_AssertFail
_02024466:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02024470
	bl GF_AssertFail
_02024470:
	mov r1, #0x49
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	bl AllocFromHeap
	add r4, r0, #0
	bne _02024482
	bl GF_AssertFail
_02024482:
	add r0, r4, #0
	bl sub_020245D4
	ldr r2, [r5]
	ldr r0, [r5, #8]
	lsl r1, r2, #6
	add r1, r2, r1
	lsl r1, r1, #2
	bl AllocFromHeap
	str r0, [r4]
	cmp r0, #0
	bne _020244A0
	bl GF_AssertFail
_020244A0:
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, [r5, #8]
	lsl r1, r1, #2
	bl AllocFromHeap
	str r0, [r4, #8]
	cmp r0, #0
	bne _020244B8
	bl GF_AssertFail
_020244B8:
	add r0, r4, #0
	bl sub_020250D8
	add r0, r4, #0
	add r0, #0x10
	bl sub_020245FC
	add r2, r4, #0
	mov r1, #0x43
	lsl r1, r1, #2
	add r2, #0x10
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #4]
	add r1, #8
	str r0, [r4, r1]
	ldr r0, [r5, #8]
	ldr r1, _02024500 ; =0x0210F6E0
	bl sub_0201A3A4
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r1, r4, r1
	bl NNS_G2dGetUnpackedAnimBank
	mov r0, #0x12
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02024500: .word 0x0210F6E0
	thumb_func_end sub_0202445C

	thumb_func_start sub_02024504
sub_02024504: ; 0x02024504
	push {r4, lr}
	add r4, r0, #0
	bne _0202450E
	mov r0, #0
	pop {r4, pc}
_0202450E:
	ldr r1, [r4]
	cmp r1, #0
	bne _02024518
	mov r0, #1
	pop {r4, pc}
_02024518:
	bl sub_02024544
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl FreeToHeap
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r4, #0
	bl sub_020245D4
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02024504

	thumb_func_start sub_02024544
sub_02024544: ; 0x02024544
	push {r4, r5, r6, lr}
	cmp r0, #0
	bne _0202454E
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202454E:
	ldr r1, [r0]
	cmp r1, #0
	bne _02024558
	mov r0, #1
	pop {r4, r5, r6, pc}
_02024558:
	mov r1, #0x11
	lsl r1, r1, #4
	add r4, r0, #0
	ldr r1, [r0, r1]
	add r4, #0x10
	cmp r1, r4
	beq _02024578
	mov r6, #1
	lsl r6, r6, #8
_0202456A:
	ldr r5, [r1, r6]
	add r0, r1, #0
	bl sub_02024758
	add r1, r5, #0
	cmp r5, r4
	bne _0202456A
_02024578:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02024544

	thumb_func_start sub_0202457C
sub_0202457C: ; 0x0202457C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02024586
	bl GF_AssertFail
_02024586:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _020245C8
	sub r0, #0x10
	add r6, r5, #0
	ldr r4, [r5, r0]
	add r6, #0x10
	cmp r4, r6
	beq _020245C8
	ldr r7, _020245CC ; =0x020F6314
_0202459E:
	add r2, r4, #0
	add r2, #0x34
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	add r1, r4, #0
	add r1, #0x35
	ldrb r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _020245D0 ; =0x020F631C
	ldr r1, [r1, r2]
	blx r1
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r4, r0]
	cmp r4, r6
	bne _0202459E
_020245C8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020245CC: .word 0x020F6314
_020245D0: .word 0x020F631C
	thumb_func_end sub_0202457C

	thumb_func_start sub_020245D4
sub_020245D4: ; 0x020245D4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #0x45
	str r1, [r4, #0xc]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x10
	bl sub_020245FC
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020245D4

	thumb_func_start sub_020245FC
sub_020245FC: ; 0x020245FC
	push {r4, lr}
	mov r2, #0x41
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	str r1, [r4, #0x3c]
	bl memset
	add r0, r4, #0
	add r0, #0xb4
	bl sub_020B8008
	add r0, r4, #0
	add r0, #0xd8
	bl sub_020B804C
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020245FC

	thumb_func_start sub_02024624
sub_02024624: ; 0x02024624
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02025110
	add r4, r0, #0
	bne _02024636
	mov r0, #0
	pop {r4, r5, r6, pc}
_02024636:
	ldr r0, [r5]
	add r6, r5, #0
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	add r0, #0xf0
	add r6, #8
	strh r2, [r0]
	ldmia r6!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r6, r5, #0
	str r0, [r3]
	add r6, #0x14
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldrh r0, [r5, #0x20]
	strh r0, [r4, #0x24]
	add r0, r4, #0
	ldr r1, [r5, #0x28]
	add r0, #0xf8
	str r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0x24]
	add r0, #0xf4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x26
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x27
	strb r2, [r0]
	str r2, [r4, #0x2c]
	add r0, r4, #0
	str r2, [r4, #0x30]
	mov r1, #0x11
	add r0, #0x28
	strb r1, [r0]
	mov r0, #0x45
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x26
	ldrb r1, [r1]
	bl sub_020BBEC4
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #0x45
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	mov r3, #2
	and r1, r2
	and r2, r3
	bl sub_020BBF84
	add r0, r4, #0
	mov r2, #1
	add r0, #0x34
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	lsl r0, r2, #0xd
	str r0, [r4, #0x38]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r3, [r5, #0x2c]
	add r2, r4, #0
	bl sub_02024CD0
	cmp r0, #0
	bne _020246E6
	add r0, r4, #0
	bl sub_02024758
	mov r0, #0
	pop {r4, r5, r6, pc}
_020246E6:
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xd8
	bl sub_02024E84
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_02025024
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02024624

	thumb_func_start sub_02024714
sub_02024714: ; 0x02024714
	push {r4, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldr r0, [r2]
	add r4, r2, #0
	str r0, [sp]
	ldr r0, [r2, #4]
	add r4, #8
	str r0, [sp, #4]
	ldmia r4!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0
	str r0, [r3]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	strh r1, [r0, #0x20]
	ldr r0, [r2, #0x14]
	str r0, [sp, #0x24]
	ldr r0, [r2, #0x18]
	str r0, [sp, #0x28]
	ldr r0, [r2, #0x1c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_02024624
	add sp, #0x30
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02024714

	thumb_func_start sub_02024758
sub_02024758: ; 0x02024758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xec
	ldr r1, [r1]
	cmp r1, #0
	beq _020247D0
	add r1, r5, #0
	add r1, #0xfc
	ldr r1, [r1]
	cmp r1, #0
	beq _02024774
	bl sub_020250BC
_02024774:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #3
	bne _0202479E
	add r1, r5, #0
	add r1, #0xf8
	add r0, r5, #0
	add r4, r5, #0
	ldr r1, [r1]
	add r0, #0xb4
	add r4, #0x40
	bl sub_020B802C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0202479E
	ldr r0, [r4, #0x60]
	bl sub_020BAF3C
_0202479E:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #2
	bne _020247C0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _020247B6
	bl FreeToHeap
_020247B6:
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _020247C0
	bl FreeToHeap
_020247C0:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0]
	ldr r0, [r5, #0x3c]
	add r1, r5, #0
	bl sub_0202512C
_020247D0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02024758

	thumb_func_start sub_020247D4
sub_020247D4: ; 0x020247D4
	add r2, r1, #0
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020247D4

	thumb_func_start sub_020247E4
sub_020247E4: ; 0x020247E4
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_020247E4

	thumb_func_start sub_020247F4
sub_020247F4: ; 0x020247F4
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_020247F4

	thumb_func_start sub_02024804
sub_02024804: ; 0x02024804
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_020247F4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202487C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024804

	thumb_func_start sub_02024818
sub_02024818: ; 0x02024818
	strh r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_02024818

	thumb_func_start sub_0202481C
sub_0202481C: ; 0x0202481C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02024818
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202487C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202481C

	thumb_func_start sub_02024830
sub_02024830: ; 0x02024830
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202483E
	bl GF_AssertFail
_0202483E:
	cmp r4, #2
	blt _02024846
	bl GF_AssertFail
_02024846:
	add r5, #0x34
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024830

	thumb_func_start sub_0202484C
sub_0202484C: ; 0x0202484C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202485A
	bl GF_AssertFail
_0202485A:
	cmp r4, #2
	blt _02024862
	bl GF_AssertFail
_02024862:
	add r5, #0x35
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202484C

	thumb_func_start sub_02024868
sub_02024868: ; 0x02024868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02024876
	bl GF_AssertFail
_02024876:
	str r4, [r5, #0x38]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02024868

	thumb_func_start sub_0202487C
sub_0202487C: ; 0x0202487C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202488A
	bl GF_AssertFail
_0202488A:
	add r5, #0x26
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202487C

	thumb_func_start sub_02024890
sub_02024890: ; 0x02024890
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202489E
	bl GF_AssertFail
_0202489E:
	add r0, r5, #0
	add r0, #0x27
	strb r4, [r0]
	mov r0, #0
	add r5, #0x26
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024890

	thumb_func_start sub_020248AC
sub_020248AC: ; 0x020248AC
	bx lr
	.balign 4, 0
	thumb_func_end sub_020248AC

	thumb_func_start sub_020248B0
sub_020248B0: ; 0x020248B0
	add r0, #0x18
	bx lr
	thumb_func_end sub_020248B0

	thumb_func_start sub_020248B4
sub_020248B4: ; 0x020248B4
	ldrh r0, [r0, #0x24]
	bx lr
	thumb_func_end sub_020248B4

	thumb_func_start sub_020248B8
sub_020248B8: ; 0x020248B8
	add r0, #0x34
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020248B8

	thumb_func_start sub_020248C0
sub_020248C0: ; 0x020248C0
	add r0, #0x35
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020248C0

	thumb_func_start sub_020248C8
sub_020248C8: ; 0x020248C8
	push {r4, lr}
	add r4, r0, #0
	bne _020248D2
	bl GF_AssertFail
_020248D2:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	beq _020248E0
	cmp r0, #3
	bne _020248E6
_020248E0:
	ldr r0, [r4, #0x44]
	ldrh r0, [r0]
	pop {r4, pc}
_020248E6:
	add r4, #0xb0
	ldr r0, [r4]
	ldrh r0, [r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020248C8

	thumb_func_start sub_020248F0
sub_020248F0: ; 0x020248F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020248C8
	cmp r0, r4
	bhi _02024902
	bl GF_AssertFail
_02024902:
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	add r0, #0xf0
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	beq _0202491A
	cmp r0, #3
	bne _02024936
_0202491A:
	add r5, #0x40
	lsl r1, r4, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl sub_020B6E80
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl sub_020B8BC4
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_02024936:
	add r5, #0x40
	ldr r0, [r5, #0x70]
	bl sub_020B6E80
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl sub_020B8E98
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_020248F0

	thumb_func_start sub_02024950
sub_02024950: ; 0x02024950
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xf0
	ldrh r2, [r2]
	cmp r2, r1
	beq _02024960
	bl sub_020248F0
_02024960:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02024950

	thumb_func_start sub_02024964
sub_02024964: ; 0x02024964
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	beq _02024974
	cmp r0, #3
	bne _0202498E
_02024974:
	add r5, r4, #0
	add r5, #0x40
	add r0, r5, #0
	add r0, #8
	bl sub_020B781C
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_020249D4
	pop {r3, r4, r5, pc}
_0202498E:
	add r5, r4, #0
	add r5, #0x40
	add r0, r5, #0
	add r0, #8
	bl sub_020B781C
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl sub_020249D4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024964

	thumb_func_start sub_020249A8
sub_020249A8: ; 0x020249A8
	add r0, #0xf0
	ldrh r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_020249A8

	thumb_func_start sub_020249B0
sub_020249B0: ; 0x020249B0
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xec
	ldr r2, [r2]
	cmp r2, #1
	beq _020249C0
	cmp r2, #3
	bne _020249CA
_020249C0:
	add r0, #0x40
	add r0, #8
	bl sub_020B8BDC
	pop {r3, pc}
_020249CA:
	add r0, #0x40
	add r0, #8
	bl sub_020B9044
	pop {r3, pc}
	thumb_func_end sub_020249B0

	thumb_func_start sub_020249D4
sub_020249D4: ; 0x020249D4
	push {r3, lr}
	add r2, r0, #0
	add r2, #0xec
	ldr r2, [r2]
	cmp r2, #1
	beq _020249E4
	cmp r2, #3
	bne _020249EE
_020249E4:
	add r0, #0x40
	add r0, #8
	bl sub_020B8BFC
	pop {r3, pc}
_020249EE:
	add r0, #0x40
	add r0, #8
	bl sub_020B9124
	pop {r3, pc}
	thumb_func_end sub_020249D4

	thumb_func_start sub_020249F8
sub_020249F8: ; 0x020249F8
	ldr r3, _02024A00 ; =sub_020B77A8
	add r0, #0x40
	add r0, #8
	bx r3
	.balign 4, 0
_02024A00: .word sub_020B77A8
	thumb_func_end sub_020249F8

	thumb_func_start sub_02024A04
sub_02024A04: ; 0x02024A04
	add r0, #0xf2
	strb r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024A04

	thumb_func_start sub_02024A0C
sub_02024A0C: ; 0x02024A0C
	add r0, #0xf2
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024A0C

	thumb_func_start sub_02024A14
sub_02024A14: ; 0x02024A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02024A22
	bl GF_AssertFail
_02024A22:
	add r0, r5, #0
	add r0, #0x29
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x10
	add r5, #0x28
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024A14

	thumb_func_start sub_02024A48
sub_02024A48: ; 0x02024A48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02024A14
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xd8
	bl sub_02024E84
	add r1, r4, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r4, #0x29
	add r0, r1, r0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02024A48

	thumb_func_start sub_02024A6C
sub_02024A6C: ; 0x02024A6C
	add r0, #0x29
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024A6C

	thumb_func_start sub_02024A74
sub_02024A74: ; 0x02024A74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02024A82
	bl GF_AssertFail
_02024A82:
	add r0, r5, #0
	add r0, #0x2a
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #0x10
	orr r1, r0
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #2
	add r5, #0x28
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024A74

	thumb_func_start sub_02024AA8
sub_02024AA8: ; 0x02024AA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02024A74
	add r1, r4, #0
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xd8
	bl sub_02024E84
	add r1, r4, #0
	add r1, #0x2a
	ldrb r1, [r1]
	add r4, #0x2a
	add r0, r1, r0
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02024AA8

	thumb_func_start sub_02024ACC
sub_02024ACC: ; 0x02024ACC
	push {r4, lr}
	add r4, r0, #0
	bne _02024AD6
	bl GF_AssertFail
_02024AD6:
	add r4, #0x2a
	ldrb r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02024ACC

	thumb_func_start sub_02024ADC
sub_02024ADC: ; 0x02024ADC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, r5, #0
	ldr r4, [r5, #0x3c]
	add r2, #0xf4
	strh r1, [r2]
	bl sub_020250BC
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02025024
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02024ADC

	thumb_func_start sub_02024AF8
sub_02024AF8: ; 0x02024AF8
	add r0, #0xf4
	ldrh r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024AF8

	thumb_func_start sub_02024B00
sub_02024B00: ; 0x02024B00
	push {r3, r4}
	add r3, r0, #0
	add r4, r1, #0
	add r3, #0xb4
	mov r2, #4
_02024B0A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02024B0A
	ldr r0, [r4]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024B00

	thumb_func_start sub_02024B1C
sub_02024B1C: ; 0x02024B1C
	add r0, #0xb4
	bx lr
	thumb_func_end sub_02024B1C

	thumb_func_start sub_02024B20
sub_02024B20: ; 0x02024B20
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0xd8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_02024B20

	thumb_func_start sub_02024B34
sub_02024B34: ; 0x02024B34
	add r0, #0xd8
	bx lr
	thumb_func_end sub_02024B34

	thumb_func_start sub_02024B38
sub_02024B38: ; 0x02024B38
	str r1, [r0, #0x2c]
	cmp r1, #1
	bne _02024B4E
	add r1, r0, #0
	add r1, #0x28
	ldrb r2, [r1]
	mov r1, #4
	add r0, #0x28
	orr r1, r2
	strb r1, [r0]
	bx lr
_02024B4E:
	add r1, r0, #0
	add r1, #0x28
	ldrb r2, [r1]
	mov r1, #4
	eor r1, r2
	add r0, #0x28
	strb r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024B38

	thumb_func_start sub_02024B60
sub_02024B60: ; 0x02024B60
	add r0, #0xf8
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024B60

	thumb_func_start sub_02024B68
sub_02024B68: ; 0x02024B68
	push {r4, lr}
	add r4, r0, #0
	bne _02024B72
	bl GF_AssertFail
_02024B72:
	ldr r0, [r4, #0x54]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02024B68

	thumb_func_start sub_02024B78
sub_02024B78: ; 0x02024B78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02024B86
	bl GF_AssertFail
_02024B86:
	str r5, [r4, #0x30]
	cmp r5, #0
	bne _02024B9C
	add r0, r4, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #8
	add r4, #0x28
	eor r0, r1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02024B9C:
	add r0, r4, #0
	add r0, #0x28
	ldrb r1, [r0]
	mov r0, #8
	orr r0, r1
	add r4, #0x28
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024B78

	thumb_func_start sub_02024BAC
sub_02024BAC: ; 0x02024BAC
	push {r4, lr}
	add r4, r0, #0
	bne _02024BB6
	bl GF_AssertFail
_02024BB6:
	ldr r0, [r4, #0x30]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02024BAC

	thumb_func_start sub_02024BBC
sub_02024BBC: ; 0x02024BBC
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xa
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0xb
	mov r2, #1
	lsl r0, r0, #6
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_020D4790
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl DC_FlushRange
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020CFDC8
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end sub_02024BBC

	thumb_func_start sub_02024BF4
sub_02024BF4: ; 0x02024BF4
	push {r4, lr}
	mov r1, #1
	lsl r1, r1, #0xa
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0xb
	mov r2, #1
	lsl r0, r0, #6
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_020D4790
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020CFE1C
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02024BF4

	thumb_func_start sub_02024C24
sub_02024C24: ; 0x02024C24
	push {r3, r4}
	add r3, r0, #0
	add r3, #0xec
	ldr r3, [r3]
	cmp r3, #1
	beq _02024C34
	cmp r3, #3
	bne _02024C38
_02024C34:
	ldr r0, [r0, #0x44]
	b _02024C3C
_02024C38:
	add r0, #0xb0
	ldr r0, [r0]
_02024C3C:
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _02024C4A
	ldr r3, [r4]
	ldr r0, _02024C98 ; =0x55414154
	cmp r3, r0
	beq _02024C4C
_02024C4A:
	mov r4, #0
_02024C4C:
	cmp r4, #0
	beq _02024C54
	add r4, #8
	b _02024C56
_02024C54:
	mov r4, #0
_02024C56:
	cmp r4, #0
	beq _02024C92
	lsl r0, r1, #0x10
	lsr r3, r0, #0x10
	ldrh r0, [r4]
	cmp r3, r0
	bhs _02024C6E
	mov r0, #0xc
	ldr r1, [r4, #4]
	mul r0, r3
	add r1, r1, r0
	b _02024C70
_02024C6E:
	mov r1, #0
_02024C70:
	cmp r1, #0
	beq _02024C92
	ldrh r0, [r1]
	cmp r0, #0
	beq _02024C84
	lsl r0, r2, #0x10
	ldr r1, [r1, #8]
	lsr r0, r0, #0xe
	add r0, r1, r0
	b _02024C86
_02024C84:
	mov r0, #0
_02024C86:
	cmp r0, #0
	beq _02024C92
	ldr r0, [r0]
	ldr r0, [r0]
	pop {r3, r4}
	bx lr
_02024C92:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02024C98: .word 0x55414154
	thumb_func_end sub_02024C24

	thumb_func_start sub_02024C9C
sub_02024C9C: ; 0x02024C9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020249A8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020249F8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02024C24
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02024C9C

	thumb_func_start sub_02024CB8
sub_02024CB8: ; 0x02024CB8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #2
	bne _02024CC8
	bl GF_AssertFail
_02024CC8:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02024CB8

	thumb_func_start sub_02024CD0
sub_02024CD0: ; 0x02024CD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r0, r5, #0
	add r7, r3, #0
	bl sub_02024D78
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	add r3, r4, #0
	ldr r6, [r5]
	add r3, #0xb4
	mov r2, #4
_02024CEE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02024CEE
	ldr r0, [r6]
	add r2, r4, #0
	str r0, [r3]
	ldr r3, [r5, #8]
	add r2, #0xd8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	ldr r0, [r5, #0xc]
	bl sub_02024D90
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02024D22
	add r1, r4, #0
	bl sub_02024D94
	b _02024D30
_02024D22:
	mov r1, #0x47
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r4, #0
	bl sub_02024D94
_02024D30:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #2
	bne _02024D54
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_02024D98
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_02024DA0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02024E24
	b _02024D6C
_02024D54:
	cmp r0, #3
	bne _02024D64
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02024DC8
	b _02024D6C
_02024D64:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02024DA8
_02024D6C:
	add r5, #0x20
	ldrb r0, [r5]
	add r4, #0xf2
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02024CD0

	thumb_func_start sub_02024D78
sub_02024D78: ; 0x02024D78
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _02024D82
	mov r0, #2
	bx lr
_02024D82:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _02024D8C
	mov r0, #3
	bx lr
_02024D8C:
	mov r0, #1
	bx lr
	thumb_func_end sub_02024D78

	thumb_func_start sub_02024D90
sub_02024D90: ; 0x02024D90
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_02024D90

	thumb_func_start sub_02024D94
sub_02024D94: ; 0x02024D94
	str r0, [r1, #0x44]
	bx lr
	thumb_func_end sub_02024D94

	thumb_func_start sub_02024D98
sub_02024D98: ; 0x02024D98
	add r1, #0xac
	str r0, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024D98

	thumb_func_start sub_02024DA0
sub_02024DA0: ; 0x02024DA0
	add r1, #0xb0
	str r0, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end sub_02024DA0

	thumb_func_start sub_02024DA8
sub_02024DA8: ; 0x02024DA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_020B6E80
	add r4, #8
	add r1, r0, #0
	ldr r2, [r5, #0x40]
	add r0, r4, #0
	bl sub_020B8B04
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02024DA8

	thumb_func_start sub_02024DC8
sub_02024DC8: ; 0x02024DC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x40
	add r5, r0, #0
	bl sub_020BAEE4
	str r0, [r4, #0x60]
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r5, [r5, #4]
	bl sub_020B6E80
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #1
	bl sub_020B802C
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xb4
	mov r1, #2
	bl sub_020B802C
	mov r1, #0
	mvn r1, r1
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r2, [r6, #0x40]
	ldr r3, [r4, #0x60]
	add r0, #8
	bl sub_020B8B40
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02024DC8

	thumb_func_start sub_02024E24
sub_02024E24: ; 0x02024E24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x40
	ldr r0, [r4, #0x70]
	add r7, r1, #0
	mov r1, #0
	bl sub_020B6E80
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	bl sub_020B8F50
	add r6, r0, #0
	mov r1, #0x28
	add r0, r7, #0
	mul r1, r6
	bl AllocFromHeap
	mov r1, #0x58
	str r0, [r4, #0x74]
	add r0, r7, #0
	mul r1, r6
	bl AllocFromHeap
	str r0, [r4, #0x78]
	ldr r0, [r4, #4]
	add r3, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x40]
	str r0, [sp, #4]
	ldr r0, [r4, #0x6c]
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, [r4, #0x74]
	ldr r2, [r4, #0x78]
	add r0, #8
	bl sub_020B91D8
	add r4, #8
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_020B8E98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02024E24

	thumb_func_start sub_02024E84
sub_02024E84: ; 0x02024E84
	push {r4, lr}
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02024E92
	mov r4, #2
	lsl r4, r4, #8
	b _02024E9E
_02024E92:
	ldr r2, [r0]
	cmp r2, #4
	bne _02024E9C
	mov r4, #0
	b _02024E9E
_02024E9C:
	mov r4, #0x20
_02024E9E:
	cmp r4, #0
	beq _02024EAE
	bl sub_020B8078
	add r1, r4, #0
	bl _u32_div_f
	pop {r4, pc}
_02024EAE:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02024E84

	thumb_func_start sub_02024EB4
sub_02024EB4: ; 0x02024EB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r3, r4, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	mov r0, #0x45
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xb4
	add r2, #0xd8
	bl sub_020BAB4C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020BA034
	bl sub_020BA560
	add r1, r4, #0
	mov r0, #0x45
	add r1, #0x26
	lsl r0, r0, #2
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl sub_020BBEC4
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _02024F1C
	add r0, r4, #0
	add r0, #0x27
	ldrb r2, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r5, r0]
	mov r3, #2
	and r1, r2
	and r2, r3
	bl sub_020BBF84
	b _02024F2A
_02024F1C:
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_020BBF84
_02024F2A:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_020BA7D4
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _02024F78
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl sub_020BA7D4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	bl sub_020BA8D0
	ldrh r0, [r4, #0x24]
	ldr r2, _0202500C ; =0x021094DC
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl sub_020BAA24
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	neg r0, r0
	neg r1, r1
	neg r2, r2
	bl sub_020BA7D4
_02024F78:
	add r0, r4, #0
	add r0, #0x28
	ldrb r3, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r2, #0
	add r1, #0x84
	ldr r1, [r1]
	add r2, #0x84
	orr r1, r3
	str r1, [r2]
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	mvn r6, r1
	ldr r1, [r5, r0]
	add r2, r1, #0
	add r2, #0x84
	ldr r3, [r2]
	mvn r2, r6
	and r2, r3
	add r1, #0x84
	str r2, [r1]
	add r1, r4, #0
	add r1, #0x29
	ldrb r2, [r1]
	ldr r1, [r5, r0]
	add r1, #0x8a
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x2a
	ldrb r2, [r1]
	ldr r1, [r5, r0]
	add r1, #0x94
	strh r2, [r1]
	ldr r1, [r5, r0]
	ldr r2, [r4, #0x2c]
	add r1, #0x90
	str r2, [r1]
	ldr r1, [r5, r0]
	ldr r2, [r4, #0x30]
	add r1, #0x8c
	str r2, [r1]
	add r1, r4, #0
	add r1, #0xf2
	ldr r0, [r5, r0]
	ldrb r1, [r1]
	add r0, #0x88
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	beq _02024FEA
	cmp r0, #3
	bne _02024FF6
_02024FEA:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	bl sub_020BA148
	b _02025000
_02024FF6:
	add r4, #0x40
	add r4, #8
	add r0, r4, #0
	bl sub_020BA484
_02025000:
	bl sub_020BA784
	bl sub_020BA0DC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0202500C: .word 0x021094DC
	thumb_func_end sub_02024EB4

	thumb_func_start sub_02025010
sub_02025010: ; 0x02025010
	bx lr
	.balign 4, 0
	thumb_func_end sub_02025010

	thumb_func_start sub_02025014
sub_02025014: ; 0x02025014
	ldr r3, _0202501C ; =sub_020249B0
	ldr r1, [r0, #0x38]
	bx r3
	nop
_0202501C: .word sub_020249B0
	thumb_func_end sub_02025014

	thumb_func_start sub_02025020
sub_02025020: ; 0x02025020
	bx lr
	.balign 4, 0
	thumb_func_end sub_02025020

	thumb_func_start sub_02025024
sub_02025024: ; 0x02025024
	push {r4, r5, r6, r7}
	mov r2, #0x11
	lsl r2, r2, #4
	add r4, r0, #0
	ldr r5, [r0, r2]
	add r4, #0x10
	cmp r5, r4
	bne _02025048
	str r1, [r0, r2]
	sub r3, r2, #4
	str r1, [r0, r3]
	add r0, r1, #0
	add r0, #0xfc
	str r4, [r0]
	sub r2, #0x10
	str r4, [r1, r2]
	pop {r4, r5, r6, r7}
	bx lr
_02025048:
	add r3, r1, #0
	add r3, #0xf4
	ldrh r6, [r3]
	sub r3, r2, #4
	ldr r3, [r0, r3]
	add r7, r3, #0
	add r7, #0xf4
	ldrh r7, [r7]
	cmp r7, r6
	bhi _0202507A
	add r5, r1, #0
	add r5, #0xfc
	str r3, [r5]
	sub r3, r2, #4
	ldr r5, [r0, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r1, [r5, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r4, [r1, r3]
	sub r2, r2, #4
	str r1, [r0, r2]
	pop {r4, r5, r6, r7}
	bx lr
_0202507A:
	cmp r5, r4
	beq _020250B6
	add r0, r2, #0
	sub r0, #0x10
_02025082:
	add r2, r5, #0
	add r2, #0xf4
	ldrh r2, [r2]
	cmp r2, r6
	bls _020250B0
	add r0, r5, #0
	add r0, #0xfc
	mov r2, #1
	ldr r0, [r0]
	lsl r2, r2, #8
	str r1, [r0, r2]
	add r0, r5, #0
	add r0, #0xfc
	ldr r3, [r0]
	add r0, r1, #0
	add r0, #0xfc
	str r3, [r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0]
	str r5, [r1, r2]
	pop {r4, r5, r6, r7}
	bx lr
_020250B0:
	ldr r5, [r5, r0]
	cmp r5, r4
	bne _02025082
_020250B6:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02025024

	thumb_func_start sub_020250BC
sub_020250BC: ; 0x020250BC
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #8
	add r1, #0xfc
	ldr r3, [r0, r2]
	ldr r1, [r1]
	str r3, [r1, r2]
	add r1, r0, #0
	add r1, #0xfc
	ldr r0, [r0, r2]
	ldr r1, [r1]
	add r0, #0xfc
	str r1, [r0]
	bx lr
	thumb_func_end sub_020250BC

	thumb_func_start sub_020250D8
sub_020250D8: ; 0x020250D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r7, #0
	cmp r0, #0
	ble _02025108
	add r4, r7, #0
	add r6, r7, #0
_020250E8:
	ldr r0, [r5]
	add r0, r0, r4
	bl sub_020245FC
	ldr r0, [r5]
	add r7, r7, #1
	add r1, r0, r4
	ldr r0, [r5, #8]
	str r1, [r0, r6]
	mov r0, #0x41
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [r5, #4]
	add r6, r6, #4
	cmp r7, r0
	blt _020250E8
_02025108:
	mov r0, #0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_020250D8

	thumb_func_start sub_02025110
sub_02025110: ; 0x02025110
	ldr r3, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r3, r1
	blt _0202511C
	mov r0, #0
	bx lr
_0202511C:
	ldr r2, [r0, #8]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	str r1, [r0, #0xc]
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_02025110

	thumb_func_start sub_0202512C
sub_0202512C: ; 0x0202512C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0
	bgt _0202513C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202513C:
	add r0, r4, #0
	bl sub_020245FC
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	str r4, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0202512C

	thumb_func_start sub_02025154
sub_02025154: ; 0x02025154
	push {r4, r5, r6, r7}
	ldrb r3, [r0]
	mov r4, #0
	cmp r3, #0xff
	beq _02025196
_0202515E:
	ldrb r7, [r0, #2]
	ldrb r3, [r0, #3]
	ldrb r5, [r0]
	sub r6, r1, r7
	sub r3, r3, r7
	cmp r6, r3
	bhs _02025170
	mov r6, #1
	b _02025172
_02025170:
	mov r6, #0
_02025172:
	ldrb r7, [r0, #1]
	sub r3, r2, r5
	sub r5, r7, r5
	cmp r3, r5
	bhs _02025180
	mov r3, #1
	b _02025182
_02025180:
	mov r3, #0
_02025182:
	tst r3, r6
	beq _0202518C
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
_0202518C:
	add r0, r0, #4
	ldrb r3, [r0]
	add r4, r4, #1
	cmp r3, #0xff
	bne _0202515E
_02025196:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02025154

	thumb_func_start sub_020251A0
sub_020251A0: ; 0x020251A0
	push {r3, r4}
	ldrb r3, [r0, #1]
	sub r4, r3, r1
	ldrb r1, [r0, #2]
	sub r3, r1, r2
	ldrb r2, [r0, #3]
	add r1, r4, #0
	add r0, r3, #0
	mul r1, r4
	mul r0, r3
	add r1, r1, r0
	add r0, r2, #0
	mul r0, r2
	cmp r1, r0
	bhs _020251C4
	mov r0, #1
	pop {r3, r4}
	bx lr
_020251C4:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_020251A0

	thumb_func_start sub_020251CC
sub_020251CC: ; 0x020251CC
	push {r4, r5}
	ldrb r5, [r0, #2]
	ldrb r3, [r0]
	sub r4, r1, r5
	ldrb r1, [r0, #3]
	sub r1, r1, r5
	cmp r4, r1
	bhs _020251E0
	mov r4, #1
	b _020251E2
_020251E0:
	mov r4, #0
_020251E2:
	ldrb r0, [r0, #1]
	sub r1, r2, r3
	sub r0, r0, r3
	cmp r1, r0
	bhs _020251F0
	mov r0, #1
	b _020251F2
_020251F0:
	mov r0, #0
_020251F2:
	tst r0, r4
	beq _020251FC
	mov r0, #1
	pop {r4, r5}
	bx lr
_020251FC:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end sub_020251CC

	thumb_func_start sub_02025204
sub_02025204: ; 0x02025204
	push {r3, lr}
	ldr r2, _02025220 ; =0x021D114C
	ldrh r1, [r2, #0x26]
	cmp r1, #0
	beq _02025218
	ldrh r1, [r2, #0x20]
	ldrh r2, [r2, #0x22]
	bl sub_02025154
	pop {r3, pc}
_02025218:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_02025220: .word 0x021D114C
	thumb_func_end sub_02025204

	thumb_func_start sub_02025224
sub_02025224: ; 0x02025224
	push {r3, lr}
	ldr r2, _02025240 ; =0x021D114C
	ldrh r1, [r2, #0x24]
	cmp r1, #0
	beq _02025238
	ldrh r1, [r2, #0x20]
	ldrh r2, [r2, #0x22]
	bl sub_02025154
	pop {r3, pc}
_02025238:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	nop
_02025240: .word 0x021D114C
	thumb_func_end sub_02025224

	thumb_func_start sub_02025244
sub_02025244: ; 0x02025244
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02025298 ; =0x021D114C
	add r5, r0, #0
	ldrh r0, [r7, #0x26]
	cmp r0, #0
	beq _02025290
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0xff
	beq _02025290
	add r4, r5, #0
_0202525A:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _02025272
	ldrh r1, [r7, #0x20]
	ldrh r2, [r7, #0x22]
	add r0, r4, #0
	bl sub_020251A0
	cmp r0, #0
	beq _02025284
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025272:
	ldrh r1, [r7, #0x20]
	ldrh r2, [r7, #0x22]
	add r0, r4, #0
	bl sub_020251CC
	cmp r0, #0
	beq _02025284
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02025284:
	add r5, r5, #4
	ldrb r0, [r5]
	add r4, r4, #4
	add r6, r6, #1
	cmp r0, #0xff
	bne _0202525A
_02025290:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02025298: .word 0x021D114C
	thumb_func_end sub_02025244

	thumb_func_start sub_0202529C
sub_0202529C: ; 0x0202529C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _020252F0 ; =0x021D114C
	add r5, r0, #0
	ldrh r0, [r7, #0x24]
	cmp r0, #0
	beq _020252E8
	ldrb r0, [r5]
	mov r6, #0
	cmp r0, #0xff
	beq _020252E8
	add r4, r5, #0
_020252B2:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _020252CA
	ldrh r1, [r7, #0x20]
	ldrh r2, [r7, #0x22]
	add r0, r4, #0
	bl sub_020251A0
	cmp r0, #0
	beq _020252DC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020252CA:
	ldrh r1, [r7, #0x20]
	ldrh r2, [r7, #0x22]
	add r0, r4, #0
	bl sub_020251CC
	cmp r0, #0
	beq _020252DC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020252DC:
	add r5, r5, #4
	ldrb r0, [r5]
	add r4, r4, #4
	add r6, r6, #1
	cmp r0, #0xff
	bne _020252B2
_020252E8:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020252F0: .word 0x021D114C
	thumb_func_end sub_0202529C

	thumb_func_start sub_020252F4
sub_020252F4: ; 0x020252F4
	push {r3, lr}
	ldr r2, _0202531C ; =0x021D114C
	ldrh r1, [r2, #0x26]
	cmp r1, #0
	beq _02025316
	ldrb r1, [r0]
	cmp r1, #0xfe
	ldrh r1, [r2, #0x20]
	bne _0202530E
	ldrh r2, [r2, #0x22]
	bl sub_020251A0
	pop {r3, pc}
_0202530E:
	ldrh r2, [r2, #0x22]
	bl sub_020251CC
	pop {r3, pc}
_02025316:
	mov r0, #0
	pop {r3, pc}
	nop
_0202531C: .word 0x021D114C
	thumb_func_end sub_020252F4

	thumb_func_start sub_02025320
sub_02025320: ; 0x02025320
	push {r3, lr}
	ldr r2, _02025348 ; =0x021D114C
	ldrh r1, [r2, #0x24]
	cmp r1, #0
	beq _02025342
	ldrb r1, [r0]
	cmp r1, #0xfe
	ldrh r1, [r2, #0x20]
	bne _0202533A
	ldrh r2, [r2, #0x22]
	bl sub_020251A0
	pop {r3, pc}
_0202533A:
	ldrh r2, [r2, #0x22]
	bl sub_020251CC
	pop {r3, pc}
_02025342:
	mov r0, #0
	pop {r3, pc}
	nop
_02025348: .word 0x021D114C
	thumb_func_end sub_02025320

	thumb_func_start sub_0202534C
sub_0202534C: ; 0x0202534C
	ldr r0, _02025354 ; =0x021D114C
	ldrh r0, [r0, #0x26]
	bx lr
	nop
_02025354: .word 0x021D114C
	thumb_func_end sub_0202534C

	thumb_func_start sub_02025358
sub_02025358: ; 0x02025358
	ldr r0, _02025360 ; =0x021D114C
	ldrh r0, [r0, #0x24]
	bx lr
	nop
_02025360: .word 0x021D114C
	thumb_func_end sub_02025358

	thumb_func_start sub_02025364
sub_02025364: ; 0x02025364
	ldr r2, _0202537C ; =0x021D114C
	ldrh r3, [r2, #0x26]
	cmp r3, #0
	beq _02025378
	ldrh r3, [r2, #0x20]
	str r3, [r0]
	ldrh r0, [r2, #0x22]
	str r0, [r1]
	mov r0, #1
	bx lr
_02025378:
	mov r0, #0
	bx lr
	.balign 4, 0
_0202537C: .word 0x021D114C
	thumb_func_end sub_02025364

	thumb_func_start sub_02025380
sub_02025380: ; 0x02025380
	ldr r2, _02025398 ; =0x021D114C
	ldrh r3, [r2, #0x24]
	cmp r3, #0
	beq _02025394
	ldrh r3, [r2, #0x20]
	str r3, [r0]
	ldrh r0, [r2, #0x22]
	str r0, [r1]
	mov r0, #1
	bx lr
_02025394:
	mov r0, #0
	bx lr
	.balign 4, 0
_02025398: .word 0x021D114C
	thumb_func_end sub_02025380

	thumb_func_start sub_0202539C
sub_0202539C: ; 0x0202539C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0xff
	beq _020253EA
	add r4, r5, #0
_020253B0:
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _020253C8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020251A0
	cmp r0, #0
	beq _020253DA
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_020253C8:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020251CC
	cmp r0, #0
	beq _020253DA
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_020253DA:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp]
	ldrb r0, [r5]
	add r4, r4, #4
	cmp r0, #0xff
	bne _020253B0
_020253EA:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202539C

	thumb_func_start sub_020253F0
sub_020253F0: ; 0x020253F0
	push {r3, lr}
	ldrb r3, [r0]
	cmp r3, #0xfe
	bne _020253FE
	bl sub_020251A0
	pop {r3, pc}
_020253FE:
	bl sub_020251CC
	pop {r3, pc}
	thumb_func_end sub_020253F0

	thumb_func_start Init_Timer3
Init_Timer3: ; 0x02025404
	push {r3, lr}
	ldr r0, _0202542C ; =0x021D2210
	mov r2, #0
	str r2, [r0, #4]
	str r2, [r0, #8]
	ldr r1, _02025430 ; =0x0400010E
	str r2, [r0]
	strh r2, [r1]
	sub r0, r1, #2
	strh r2, [r0]
	mov r0, #0xc1
	strh r0, [r1]
	ldr r1, _02025434 ; =sub_02025438
	mov r0, #0x40
	bl sub_020D1004
	mov r0, #0x40
	bl sub_020D11D4
	pop {r3, pc}
	.balign 4, 0
_0202542C: .word 0x021D2210
_02025430: .word 0x0400010E
_02025434: .word sub_02025438
	thumb_func_end Init_Timer3

	thumb_func_start sub_02025438
sub_02025438: ; 0x02025438
	ldr r0, _02025470 ; =0x021D2210
	mov r3, #0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	add r1, r1, #1
	adc r2, r3
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0]
	cmp r1, #0
	beq _0202545C
	ldr r2, _02025474 ; =0x0400010E
	strh r3, [r2]
	sub r1, r2, #2
	strh r3, [r1]
	mov r1, #0xc1
	strh r1, [r2]
	str r3, [r0]
_0202545C:
	ldr r3, _02025478 ; =OSi_IntrTable
	ldr r1, _0202547C ; =0x00003FF8
	mov r0, #0x40
	ldr r2, [r3, r1]
	orr r2, r0
	str r2, [r3, r1]
	ldr r3, _02025480 ; =sub_020D1004
	ldr r1, _02025484 ; =sub_02025438
	bx r3
	nop
_02025470: .word 0x021D2210
_02025474: .word 0x0400010E
_02025478: .word OSi_IntrTable
_0202547C: .word 0x00003FF8
_02025480: .word sub_020D1004
_02025484: .word sub_02025438
	thumb_func_end sub_02025438

	thumb_func_start sub_02025488
sub_02025488: ; 0x02025488
	push {r4, r5, lr}
	sub sp, #0xc
	bl sub_020D3A38
	ldr r1, _020254EC ; =0x0400010C
	add r3, sp, #0
	ldrh r1, [r1]
	ldr r2, _020254F0 ; =0x0000FFFF
	strh r1, [r3]
	ldr r1, _020254F4 ; =0x021D2210
	ldr r5, [r1, #4]
	ldr r4, [r1, #8]
	mov r1, #0
	mvn r1, r1
	and r1, r5
	str r1, [sp, #4]
	and r2, r4
	ldr r1, _020254F8 ; =0x04000214
	str r2, [sp, #8]
	ldr r2, [r1]
	mov r1, #0x40
	tst r2, r1
	beq _020254CC
	ldrh r2, [r3]
	lsl r1, r1, #9
	tst r1, r2
	bne _020254CC
	ldr r2, [sp, #4]
	mov r1, #0
	ldr r3, [sp, #8]
	add r2, r2, #1
	adc r3, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
_020254CC:
	bl sub_020D3A4C
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	lsr r0, r2, #0x10
	lsl r1, r1, #0x10
	orr r1, r0
	add r0, sp, #0
	lsl r3, r2, #0x10
	ldrh r2, [r0]
	asr r0, r2, #0x1f
	orr r1, r0
	add r0, r3, #0
	orr r0, r2
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_020254EC: .word 0x0400010C
_020254F0: .word 0x0000FFFF
_020254F4: .word 0x021D2210
_020254F8: .word 0x04000214
	thumb_func_end sub_02025488

	thumb_func_start sub_020254FC
sub_020254FC: ; 0x020254FC
	ldr r3, _02025500 ; =sub_02025488
	bx r3
	.balign 4, 0
_02025500: .word sub_02025488
	thumb_func_end sub_020254FC

	thumb_func_start sub_02025504
sub_02025504: ; 0x02025504
	push {r3, lr}
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _02025518 ; =0x01FF6210
	lsl r0, r0, #6
	mov r3, #0
	bl _ll_udiv
	pop {r3, pc}
	.balign 4, 0
_02025518: .word 0x01FF6210
	thumb_func_end sub_02025504
