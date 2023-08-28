	.include "asm/macros.inc"
	.include "unk_0200CF18.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0200D734
sub_0200D734: ; 0x0200D734
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0x12
	bl sub_0200D748
	pop {r3, pc}
	thumb_func_end sub_0200D734

	thumb_func_start sub_0200D740
sub_0200D740: ; 0x0200D740
	push {r3, lr}
	bl sub_0200D748
	pop {r3, pc}
	thumb_func_end sub_0200D740

	thumb_func_start sub_0200D748
sub_0200D748: ; 0x0200D748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r7, r0, #0
	ldr r0, [r7]
	add r6, r1, #0
	mov r1, #0x10
	add r5, r2, #0
	str r3, [sp, #0x2c]
	bl AllocFromHeap
	add r4, r0, #0
	bne _0200D766
	add sp, #0x78
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200D766:
	ldr r0, [r7]
	mov r1, #8
	bl AllocFromHeap
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200D77A
	add sp, #0x78
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200D77A:
	ldr r0, [r7]
	mov r1, #0x24
	bl AllocFromHeap
	ldr r1, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	cmp r1, #0
	bne _0200D7A2
	cmp r0, #0
	beq _0200D79C
	bl FreeToHeap
_0200D79C:
	add sp, #0x78
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200D7A2:
	mov r1, #0
	add r2, r5, #0
	add r3, sp, #0x30
_0200D7A8:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _0200D7A8
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0200D7C0
	ldr r1, [r6, #0x20]
	cmp r1, #0
	bne _0200D7CA
_0200D7C0:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	b _0200D7FC
_0200D7CA:
	mov r2, #0
	ldr r1, [sp, #0x40]
	mvn r2, r2
	cmp r1, r2
	beq _0200D7E2
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200D7E2
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_0200D7E2:
	mov r0, #0
	ldr r1, [sp, #0x44]
	mvn r0, r0
	cmp r1, r0
	beq _0200D7FC
	ldr r0, [r6, #0x20]
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200D7FC
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x44]
_0200D7FC:
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	bl CreateSpriteResourcesHeader
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r0, [r4, #4]
	str r0, [sp, #0x4c]
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200D856
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0200D864
_0200D856:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0200D864:
	bl _ffix
	str r0, [sp, #0x50]
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200D884
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0200D892
_0200D884:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0200D892:
	bl _ffix
	str r0, [sp, #0x54]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200D8B2
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0200D8C0
_0200D8B2:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0200D8C0:
	bl _ffix
	str r0, [sp, #0x58]
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _0200D8D4
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0x54]
_0200D8D4:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	mov r1, #0
	add r0, sp, #0x30
	strh r1, [r0, #0x38]
	ldr r0, [r5, #8]
	str r0, [sp, #0x6c]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x70]
	ldr r0, [r7]
	str r0, [sp, #0x74]
	add r0, sp, #0x48
	bl CreateSprite
	str r0, [r4]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0xc]
	ldr r0, [r4]
	cmp r0, #0
	beq _0200D924
	ldrh r1, [r5, #6]
	bl Set2dSpriteAnimSeqNo
	ldr r1, [r5, #0xc]
	ldr r0, _0200D930 ; =0x0000FFFF
	cmp r1, r0
	beq _0200D928
	ldr r0, [r4]
	bl sub_02024A6C
	add r2, r0, #0
	ldr r1, [r5, #0xc]
	ldr r0, [r4]
	add r1, r2, r1
	bl sub_02024A14
	b _0200D928
_0200D924:
	bl GF_AssertFail
_0200D928:
	add r0, r4, #0
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200D930: .word 0x0000FFFF
	thumb_func_end sub_0200D748

	thumb_func_start sub_0200D934
sub_0200D934: ; 0x0200D934
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl Get2DGfxResObjById
	mov r1, #0
	bl sub_0200B0F8
	pop {r3, pc}
	thumb_func_end sub_0200D934

	thumb_func_start sub_0200D944
sub_0200D944: ; 0x0200D944
	push {r4, lr}
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	bl Get2DGfxResObjById
	add r1, r4, #0
	bl sub_0200B12C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0200D944

	thumb_func_start sub_0200D958
sub_0200D958: ; 0x0200D958
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x24]
	ldr r3, _0200D964 ; =sub_0200DB64
	bx r3
	.balign 4, 0
_0200D964: .word sub_0200DB64
	thumb_func_end sub_0200D958

	thumb_func_start sub_0200D968
sub_0200D968: ; 0x0200D968
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x28]
	ldr r3, _0200D974 ; =sub_0200DBB8
	bx r3
	.balign 4, 0
_0200D974: .word sub_0200DBB8
	thumb_func_end sub_0200D968

	thumb_func_start sub_0200D978
sub_0200D978: ; 0x0200D978
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x2c]
	ldr r3, _0200D984 ; =sub_0200DB18
	bx r3
	.balign 4, 0
_0200D984: .word sub_0200DB18
	thumb_func_end sub_0200D978

	thumb_func_start sub_0200D988
sub_0200D988: ; 0x0200D988
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x30]
	ldr r3, _0200D994 ; =sub_0200DB18
	bx r3
	.balign 4, 0
_0200D994: .word sub_0200DB18
	thumb_func_end sub_0200D988

	thumb_func_start sub_0200D998
sub_0200D998: ; 0x0200D998
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0200D044
	ldr r0, [r6, #0x24]
	bl sub_0200AED4
	ldr r0, [r6, #0x28]
	bl sub_0200B0CC
	ldr r0, [r6, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200D9D0
	add r5, r6, #0
_0200D9BA:
	ldr r0, [r5, #0x24]
	bl Delete2DGfxResObjList
	ldr r0, [r5, #0xc]
	bl Destroy2DGfxResObjMan
	ldr r0, [r6, #0x54]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0200D9BA
_0200D9D0:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200D0D4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0200D998

	thumb_func_start sub_0200D9DC
sub_0200D9DC: ; 0x0200D9DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200D9EE
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_0200AF80
_0200D9EE:
	ldr r0, [r4]
	bl Sprite_Delete
	ldr r0, [r4, #8]
	bl sub_02009F24
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0200D9DC

	thumb_func_start sub_0200DA04
sub_0200DA04: ; 0x0200DA04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200DA2A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200DA2A:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl AddCellOrAnimResObjFromNarc
	add r5, r0, #0
	beq _0200DA60
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add r4, r0, #0
	cmp r4, #1
	beq _0200DA5A
	bl GF_AssertFail
_0200DA5A:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200DA60:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200DA6E
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200DA6E:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DA04

	thumb_func_start sub_0200DA74
sub_0200DA74: ; 0x0200DA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200DA9A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200DA9A:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl AddCellOrAnimResObjFromOpenNarc
	add r5, r0, #0
	beq _0200DAD0
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add r4, r0, #0
	cmp r4, #1
	beq _0200DACA
	bl GF_AssertFail
_0200DACA:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200DAD0:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200DADE
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200DADE:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DA74

	thumb_func_start sub_0200DAE4
sub_0200DAE4: ; 0x0200DAE4
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _0200DB10
	ldr r5, [r0]
	add r4, r5, #0
_0200DAF2:
	ldr r2, [r4]
	cmp r2, #0
	bne _0200DB08
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0200DB08:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _0200DAF2
_0200DB10:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end sub_0200DAE4

	thumb_func_start sub_0200DB18
sub_0200DB18: ; 0x0200DB18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200DB60
	add r4, r6, #0
_0200DB2A:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200DB56
	bl sub_0200A7FC
	cmp r0, r7
	bne _0200DB56
	ldr r1, [r5]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl DestroySingle2DGfxResObj
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200DB56:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200DB2A
_0200DB60:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DB18

	thumb_func_start sub_0200DB64
sub_0200DB64: ; 0x0200DB64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200DBB2
	add r4, r6, #0
_0200DB76:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200DBA8
	bl sub_0200A7FC
	cmp r0, r7
	bne _0200DBA8
	add r0, r7, #0
	bl sub_02021884
	ldr r1, [r5]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl DestroySingle2DGfxResObj
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200DBA8:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200DB76
_0200DBB2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0200DB64

	thumb_func_start sub_0200DBB8
sub_0200DBB8: ; 0x0200DBB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200DC06
	add r4, r6, #0
_0200DBCA:
	ldr r0, [r5]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200DBFC
	bl sub_0200A7FC
	cmp r0, r7
	bne _0200DBFC
	add r0, r7, #0
	bl sub_02022744
	ldr r1, [r5]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl DestroySingle2DGfxResObj
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200DBFC:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200DBCA
_0200DC06:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0200DBB8

	thumb_func_start sub_0200DC0C
sub_0200DC0C: ; 0x0200DC0C
	ldr r3, _0200DC14 ; =sub_020249B0
	mov r1, #1
	lsl r1, r1, #0xc
	bx r3
	.balign 4, 0
_0200DC14: .word sub_020249B0
	thumb_func_end sub_0200DC0C

	thumb_func_start sub_0200DC18
sub_0200DC18: ; 0x0200DC18
	ldr r3, _0200DC20 ; =sub_0200DC0C
	ldr r0, [r0]
	bx r3
	nop
_0200DC20: .word sub_0200DC0C
	thumb_func_end sub_0200DC18

	thumb_func_start sub_0200DC24
sub_0200DC24: ; 0x0200DC24
	ldr r3, _0200DC30 ; =sub_020249B0
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bx r3
	nop
_0200DC30: .word sub_020249B0
	thumb_func_end sub_0200DC24

	thumb_func_start sub_0200DC34
sub_0200DC34: ; 0x0200DC34
	ldr r3, _0200DC3C ; =sub_020249B0
	ldr r0, [r0]
	bx r3
	nop
_0200DC3C: .word sub_020249B0
	thumb_func_end sub_0200DC34

	thumb_func_start sub_0200DC40
sub_0200DC40: ; 0x0200DC40
	ldr r3, _0200DC48 ; =sub_020248C8
	ldr r0, [r0]
	bx r3
	nop
_0200DC48: .word sub_020248C8
	thumb_func_end sub_0200DC40

	thumb_func_start sub_0200DC4C
sub_0200DC4C: ; 0x0200DC4C
	ldr r3, _0200DC54 ; =sub_020248F0
	ldr r0, [r0]
	bx r3
	nop
_0200DC54: .word Set2dSpriteAnimSeqNo
	thumb_func_end sub_0200DC4C

	thumb_func_start sub_0200DC58
sub_0200DC58: ; 0x0200DC58
	ldr r3, _0200DC60 ; =sub_02024950
	ldr r0, [r0]
	bx r3
	nop
_0200DC60: .word sub_02024950
	thumb_func_end sub_0200DC58

	thumb_func_start sub_0200DC64
sub_0200DC64: ; 0x0200DC64
	ldr r3, _0200DC6C ; =sub_020249A8
	ldr r0, [r0]
	bx r3
	nop
_0200DC6C: .word sub_020249A8
	thumb_func_end sub_0200DC64

	thumb_func_start sub_0200DC70
sub_0200DC70: ; 0x0200DC70
	ldr r3, _0200DC74 ; =sub_0202484C
	bx r3
	.balign 4, 0
_0200DC74: .word Set2dSpriteAnimActiveFlag
	thumb_func_end sub_0200DC70

	thumb_func_start sub_0200DC78
sub_0200DC78: ; 0x0200DC78
	ldr r3, _0200DC80 ; =sub_0200DC70
	ldr r0, [r0]
	bx r3
	nop
_0200DC80: .word sub_0200DC70
	thumb_func_end sub_0200DC78

	thumb_func_start sub_0200DC84
sub_0200DC84: ; 0x0200DC84
	ldr r3, _0200DC88 ; =sub_02024868
	bx r3
	.balign 4, 0
_0200DC88: .word sub_02024868
	thumb_func_end sub_0200DC84

	thumb_func_start sub_0200DC8C
sub_0200DC8C: ; 0x0200DC8C
	ldr r3, _0200DC94 ; =sub_0200DC84
	ldr r0, [r0]
	bx r3
	nop
_0200DC94: .word sub_0200DC84
	thumb_func_end sub_0200DC8C

	thumb_func_start sub_0200DC98
sub_0200DC98: ; 0x0200DC98
	ldr r3, _0200DC9C ; =sub_02024B68
	bx r3
	.balign 4, 0
_0200DC9C: .word sub_02024B68
	thumb_func_end sub_0200DC98

	thumb_func_start sub_0200DCA0
sub_0200DCA0: ; 0x0200DCA0
	ldr r3, _0200DCA8 ; =sub_0200DC98
	ldr r0, [r0]
	bx r3
	nop
_0200DCA8: .word sub_0200DC98
	thumb_func_end sub_0200DCA0

	thumb_func_start sub_0200DCAC
sub_0200DCAC: ; 0x0200DCAC
	ldr r3, _0200DCB4 ; =sub_02024964
	ldr r0, [r0]
	bx r3
	nop
_0200DCB4: .word sub_02024964
	thumb_func_end sub_0200DCAC

	thumb_func_start sub_0200DCB8
sub_0200DCB8: ; 0x0200DCB8
	ldr r3, _0200DCBC ; =sub_020249D4
	bx r3
	.balign 4, 0
_0200DCBC: .word sub_020249D4
	thumb_func_end sub_0200DCB8

	thumb_func_start sub_0200DCC0
sub_0200DCC0: ; 0x0200DCC0
	ldr r3, _0200DCC8 ; =sub_0200DCB8
	ldr r0, [r0]
	bx r3
	nop
_0200DCC8: .word sub_0200DCB8
	thumb_func_end sub_0200DCC0

	thumb_func_start sub_0200DCCC
sub_0200DCCC: ; 0x0200DCCC
	ldr r3, _0200DCD0 ; =sub_020249F8
	bx r3
	.balign 4, 0
_0200DCD0: .word sub_020249F8
	thumb_func_end sub_0200DCCC

	thumb_func_start sub_0200DCD4
sub_0200DCD4: ; 0x0200DCD4
	ldr r3, _0200DCDC ; =sub_0200DCCC
	ldr r0, [r0]
	bx r3
	nop
_0200DCDC: .word sub_0200DCCC
	thumb_func_end sub_0200DCD4

	thumb_func_start sub_0200DCE0
sub_0200DCE0: ; 0x0200DCE0
	ldr r3, _0200DCE4 ; =Set2dSpriteVisibleFlag
	bx r3
	.balign 4, 0
_0200DCE4: .word Set2dSpriteVisibleFlag
	thumb_func_end sub_0200DCE0

	thumb_func_start sub_0200DCE8
sub_0200DCE8: ; 0x0200DCE8
	ldr r3, _0200DCF0 ; =sub_0200DCE0
	ldr r0, [r0]
	bx r3
	nop
_0200DCF0: .word sub_0200DCE0
	thumb_func_end sub_0200DCE8

	thumb_func_start sub_0200DCF4
sub_0200DCF4: ; 0x0200DCF4
	ldr r3, _0200DCF8 ; =sub_020248B8
	bx r3
	.balign 4, 0
_0200DCF8: .word sub_020248B8
	thumb_func_end sub_0200DCF4

	thumb_func_start sub_0200DCFC
sub_0200DCFC: ; 0x0200DCFC
	ldr r3, _0200DD04 ; =sub_0200DCF4
	ldr r0, [r0]
	bx r3
	nop
_0200DD04: .word sub_0200DCF4
	thumb_func_end sub_0200DCFC

	thumb_func_start sub_0200DD08
sub_0200DD08: ; 0x0200DD08
	ldr r3, _0200DD0C ; =sub_02024A14
	bx r3
	.balign 4, 0
_0200DD0C: .word sub_02024A14
	thumb_func_end sub_0200DD08

	thumb_func_start sub_0200DD10
sub_0200DD10: ; 0x0200DD10
	ldr r3, _0200DD18 ; =sub_0200DD08
	ldr r0, [r0]
	bx r3
	nop
_0200DD18: .word sub_0200DD08
	thumb_func_end sub_0200DD10

	thumb_func_start sub_0200DD1C
sub_0200DD1C: ; 0x0200DD1C
	ldr r3, _0200DD20 ; =sub_02024A74
	bx r3
	.balign 4, 0
_0200DD20: .word sub_02024A74
	thumb_func_end sub_0200DD1C

	thumb_func_start sub_0200DD24
sub_0200DD24: ; 0x0200DD24
	ldr r3, _0200DD2C ; =sub_0200DD1C
	ldr r0, [r0]
	bx r3
	nop
_0200DD2C: .word sub_0200DD1C
	thumb_func_end sub_0200DD24

	thumb_func_start sub_0200DD30
sub_0200DD30: ; 0x0200DD30
	ldr r3, _0200DD38 ; =sub_02024ACC
	ldr r0, [r0]
	bx r3
	nop
_0200DD38: .word sub_02024ACC
	thumb_func_end sub_0200DD30

	thumb_func_start sub_0200DD3C
sub_0200DD3C: ; 0x0200DD3C
	ldr r3, _0200DD44 ; =sub_02024A04
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	.balign 4, 0
_0200DD44: .word sub_02024A04
	thumb_func_end sub_0200DD3C

	thumb_func_start sub_0200DD48
sub_0200DD48: ; 0x0200DD48
	ldr r3, _0200DD50 ; =sub_02024A0C
	ldr r0, [r0]
	bx r3
	nop
_0200DD50: .word sub_02024A0C
	thumb_func_end sub_0200DD48

	thumb_func_start sub_0200DD54
sub_0200DD54: ; 0x0200DD54
	ldr r3, _0200DD5C ; =sub_0200DD3C
	ldr r0, [r0]
	bx r3
	nop
_0200DD5C: .word sub_0200DD3C
	thumb_func_end sub_0200DD54

	thumb_func_start sub_0200DD60
sub_0200DD60: ; 0x0200DD60
	ldr r3, _0200DD64 ; =sub_02024ADC
	bx r3
	.balign 4, 0
_0200DD64: .word sub_02024ADC
	thumb_func_end sub_0200DD60

	thumb_func_start sub_0200DD68
sub_0200DD68: ; 0x0200DD68
	ldr r3, _0200DD70 ; =sub_0200DD60
	ldr r0, [r0]
	bx r3
	nop
_0200DD70: .word sub_0200DD60
	thumb_func_end sub_0200DD68

	thumb_func_start sub_0200DD74
sub_0200DD74: ; 0x0200DD74
	ldr r3, _0200DD78 ; =sub_02024AF8
	bx r3
	.balign 4, 0
_0200DD78: .word sub_02024AF8
	thumb_func_end sub_0200DD74

	thumb_func_start sub_0200DD7C
sub_0200DD7C: ; 0x0200DD7C
	ldr r3, _0200DD84 ; =sub_0200DD74
	ldr r0, [r0]
	bx r3
	nop
_0200DD84: .word sub_0200DD74
	thumb_func_end sub_0200DD7C

	thumb_func_start sub_0200DD88
sub_0200DD88: ; 0x0200DD88
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r4, r0, #0
	str r1, [sp, #4]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DDA8
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
_0200DDA8:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200DD88

	thumb_func_start sub_0200DDB8
sub_0200DDB8: ; 0x0200DDB8
	ldr r3, _0200DDC0 ; =sub_0200DD88
	ldr r0, [r0]
	bx r3
	nop
_0200DDC0: .word sub_0200DD88
	thumb_func_end sub_0200DDB8

	thumb_func_start sub_0200DDC4
sub_0200DDC4: ; 0x0200DDC4
	push {r4, r5, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r5, r0, #0
	add r4, r3, #0
	str r1, [sp, #4]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DDE2
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_0200DDE2:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020247D4
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200DDC4

	thumb_func_start sub_0200DDF4
sub_0200DDF4: ; 0x0200DDF4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0200DDC4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_0200DDF4

	thumb_func_start sub_0200DE00
sub_0200DE00: ; 0x0200DE00
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_020248AC
	add r4, r0, #0
	ldr r1, [r4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	add r0, r7, #0
	bl sub_02024B60
	cmp r0, #2
	ldr r1, [r4, #4]
	bne _0200DE38
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200DE38:
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DE00

	thumb_func_start sub_0200DE44
sub_0200DE44: ; 0x0200DE44
	ldr r3, _0200DE4C ; =sub_0200DE00
	ldr r0, [r0]
	bx r3
	nop
_0200DE4C: .word sub_0200DE00
	thumb_func_end sub_0200DE44

	thumb_func_start sub_0200DE50
sub_0200DE50: ; 0x0200DE50
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_020248AC
	add r4, r0, #0
	ldr r1, [r4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [sp]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DE86
	ldr r0, [r4, #4]
	sub r1, r0, r7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200DE86:
	ldr r1, [r4, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DE50

	thumb_func_start sub_0200DE94
sub_0200DE94: ; 0x0200DE94
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0200DE50
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_0200DE94

	thumb_func_start sub_0200DEA0
sub_0200DEA0: ; 0x0200DEA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020248AC
	ldr r2, [r0]
	lsl r1, r5, #0xc
	add r1, r2, r1
	str r1, [sp]
	ldr r2, [r0, #4]
	lsl r1, r4, #0xc
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0200DEA0

	thumb_func_start sub_0200DED0
sub_0200DED0: ; 0x0200DED0
	ldr r3, _0200DED8 ; =sub_0200DEA0
	ldr r0, [r0]
	bx r3
	nop
_0200DED8: .word sub_0200DEA0
	thumb_func_end sub_0200DED0

	thumb_func_start sub_0200DEDC
sub_0200DEDC: ; 0x0200DEDC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020248AC
	ldr r1, [r0]
	add r1, r1, r4
	str r1, [sp]
	ldr r1, [r0, #4]
	add r1, r1, r6
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200DEDC

	thumb_func_start sub_0200DF08
sub_0200DF08: ; 0x0200DF08
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020248AC
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	bl sub_020247D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200DF08

	thumb_func_start sub_0200DF2C
sub_0200DF2C: ; 0x0200DF2C
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020248AC
	ldr r1, [r0]
	str r1, [r5]
	ldr r0, [r0, #4]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0200DF2C

	thumb_func_start sub_0200DF44
sub_0200DF44: ; 0x0200DF44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02024B60
	cmp r0, #2
	bne _0200DF64
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r7
	bl sub_0200DF08
	pop {r3, r4, r5, r6, r7, pc}
_0200DF64:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200DF08
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DF44

	thumb_func_start sub_0200DF70
sub_0200DF70: ; 0x0200DF70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200DF2C
	ldr r0, [r5]
	bl sub_02024B60
	cmp r0, #2
	bne _0200DF8C
	ldr r0, [r4]
	sub r0, r0, r6
	str r0, [r4]
_0200DF8C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0200DF70

	thumb_func_start sub_0200DF90
sub_0200DF90: ; 0x0200DF90
	ldr r3, _0200DF94 ; =sub_0202487C
	bx r3
	.balign 4, 0
_0200DF94: .word sub_0202487C
	thumb_func_end sub_0200DF90

	thumb_func_start sub_0200DF98
sub_0200DF98: ; 0x0200DF98
	ldr r3, _0200DFA0 ; =sub_0200DF90
	ldr r0, [r0]
	bx r3
	nop
_0200DFA0: .word sub_0200DF90
	thumb_func_end sub_0200DF98

	thumb_func_start sub_0200DFA4
sub_0200DFA4: ; 0x0200DFA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	bl sub_020248B0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl _fgr
	ldr r0, _0200E020 ; =0x45800000
	bls _0200DFD0
	add r1, r5, #0
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0200DFDE
_0200DFD0:
	add r1, r5, #0
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0200DFDE:
	bl _ffix
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0
	bl _fgr
	ldr r0, _0200E020 ; =0x45800000
	bls _0200E002
	add r1, r6, #0
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0200E010
_0200E002:
	add r1, r6, #0
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0200E010:
	bl _ffix
	str r0, [r4, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020247F4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0200E020: .word 0x45800000
	thumb_func_end sub_0200DFA4

	thumb_func_start sub_0200E024
sub_0200E024: ; 0x0200E024
	ldr r3, _0200E02C ; =sub_0200DFA4
	ldr r0, [r0]
	bx r3
	nop
_0200E02C: .word sub_0200DFA4
	thumb_func_end sub_0200E024

	thumb_func_start sub_0200E030
sub_0200E030: ; 0x0200E030
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020248B0
	add r6, r0, #0
	ldr r0, [r6]
	bl _fflt
	ldr r1, _0200E05C ; =0x45800000
	bl _fdiv
	str r0, [r5]
	ldr r0, [r6, #4]
	bl _fflt
	ldr r1, _0200E05C ; =0x45800000
	bl _fdiv
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_0200E05C: .word 0x45800000
	thumb_func_end sub_0200E030

	thumb_func_start sub_0200E060
sub_0200E060: ; 0x0200E060
	ldr r3, _0200E068 ; =sub_0200E030
	ldr r0, [r0]
	bx r3
	nop
_0200E068: .word sub_0200E030
	thumb_func_end sub_0200E060

	thumb_func_start sub_0200E06C
sub_0200E06C: ; 0x0200E06C
	ldr r3, _0200E070 ; =sub_02024818
	bx r3
	.balign 4, 0
_0200E070: .word sub_02024818
	thumb_func_end sub_0200E06C

	thumb_func_start sub_0200E074
sub_0200E074: ; 0x0200E074
	ldr r3, _0200E07C ; =sub_0200E06C
	ldr r0, [r0]
	bx r3
	nop
_0200E07C: .word sub_0200E06C
	thumb_func_end sub_0200E074

	thumb_func_start sub_0200E080
sub_0200E080: ; 0x0200E080
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_020248B4
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	bl sub_02024818
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200E080

	thumb_func_start sub_0200E098
sub_0200E098: ; 0x0200E098
	ldr r3, _0200E0A0 ; =sub_0200E080
	ldr r0, [r0]
	bx r3
	nop
_0200E0A0: .word sub_0200E080
	thumb_func_end sub_0200E098

	thumb_func_start sub_0200E0A4
sub_0200E0A4: ; 0x0200E0A4
	ldr r3, _0200E0A8 ; =sub_020248B4
	bx r3
	.balign 4, 0
_0200E0A8: .word sub_020248B4
	thumb_func_end sub_0200E0A4

	thumb_func_start sub_0200E0AC
sub_0200E0AC: ; 0x0200E0AC
	ldr r3, _0200E0B4 ; =sub_0200E0A4
	ldr r0, [r0]
	bx r3
	nop
_0200E0B4: .word sub_0200E0A4
	thumb_func_end sub_0200E0AC

	thumb_func_start sub_0200E0B8
sub_0200E0B8: ; 0x0200E0B8
	ldr r3, _0200E0BC ; =sub_02024890
	bx r3
	.balign 4, 0
_0200E0BC: .word sub_02024890
	thumb_func_end sub_0200E0B8

	thumb_func_start sub_0200E0C0
sub_0200E0C0: ; 0x0200E0C0
	ldr r3, _0200E0C8 ; =sub_0200E0B8
	ldr r0, [r0]
	bx r3
	nop
_0200E0C8: .word sub_0200E0B8
	thumb_func_end sub_0200E0C0

	thumb_func_start sub_0200E0CC
sub_0200E0CC: ; 0x0200E0CC
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [r0]
	add r1, sp, #0
	bl sub_020247E4
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0200E0CC

	thumb_func_start sub_0200E0E8
sub_0200E0E8: ; 0x0200E0E8
	ldr r3, _0200E0F0 ; =sub_02024B38
	ldr r0, [r0]
	bx r3
	nop
_0200E0F0: .word sub_02024B38
	thumb_func_end sub_0200E0E8

	thumb_func_start sub_0200E0F4
sub_0200E0F4: ; 0x0200E0F4
	ldr r3, _0200E0F8 ; =sub_02024B78
	bx r3
	.balign 4, 0
_0200E0F8: .word sub_02024B78
	thumb_func_end sub_0200E0F4

	thumb_func_start sub_0200E0FC
sub_0200E0FC: ; 0x0200E0FC
	ldr r3, _0200E104 ; =sub_0200E0F4
	ldr r0, [r0]
	bx r3
	nop
_0200E104: .word sub_0200E0F4
	thumb_func_end sub_0200E0FC

	thumb_func_start sub_0200E108
sub_0200E108: ; 0x0200E108
	ldr r3, _0200E10C ; =sub_02024BAC
	bx r3
	.balign 4, 0
_0200E10C: .word sub_02024BAC
	thumb_func_end sub_0200E108

	thumb_func_start sub_0200E110
sub_0200E110: ; 0x0200E110
	ldr r3, _0200E118 ; =sub_0200E108
	ldr r0, [r0]
	bx r3
	nop
_0200E118: .word sub_0200E108
	thumb_func_end sub_0200E110

	thumb_func_start sub_0200E11C
sub_0200E11C: ; 0x0200E11C
	ldr r3, _0200E124 ; =sub_02024C9C
	ldr r0, [r0]
	bx r3
	nop
_0200E124: .word sub_02024C9C
	thumb_func_end sub_0200E11C

	thumb_func_start sub_0200E128
sub_0200E128: ; 0x0200E128
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200E146
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200E146:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl AddCharResObjFromNarc
	add r5, r0, #0
	beq _0200E174
	bl sub_0200AD64
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E174:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200E182
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E182:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E128

	thumb_func_start sub_0200E188
sub_0200E188: ; 0x0200E188
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200E1A6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200E1A6:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl AddCharResObjFromNarc
	add r5, r0, #0
	beq _0200E1D4
	bl sub_0200AE18
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E1D4:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200E1E2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E1E2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E188

	thumb_func_start sub_0200E1E8
sub_0200E1E8: ; 0x0200E1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl _2DGfxResObjExistsById
	cmp r0, #0
	bne _0200E206
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200E206:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl AddCharResObjFromOpenNarc
	add r5, r0, #0
	beq _0200E234
	bl sub_0200AE18
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200DAE4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E234:
	bl GF_AssertFail
	cmp r5, #0
	beq _0200E242
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200E242:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E1E8

	thumb_func_start sub_0200E248
sub_0200E248: ; 0x0200E248
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl Get2DGfxResObjById
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl ReplaceCharResObjFromNarc
	add r0, r6, #0
	bl sub_0200AE8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E248

	thumb_func_start sub_0200E27C
sub_0200E27C: ; 0x0200E27C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl Get2DGfxResObjById
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0
	bl ReplacePlttResObjFromNarc
	add r0, r6, #0
	bl sub_0200B084
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E27C

	thumb_func_start sub_0200E2B0
sub_0200E2B0: ; 0x0200E2B0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0200E2B0

	thumb_func_start sub_0200E2B4
sub_0200E2B4: ; 0x0200E2B4
	str r1, [r0]
	bx lr
	thumb_func_end sub_0200E2B4

	thumb_func_start sub_0200E2B8
sub_0200E2B8: ; 0x0200E2B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl Get2DGfxResObjById
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl ReplaceCharResObjFromOpenNarc
	add r0, r6, #0
	bl sub_0200AE8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E2B8

	thumb_func_start sub_0200E2EC
sub_0200E2EC: ; 0x0200E2EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl Get2DGfxResObjById
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0
	bl ReplacePlttResObjFromOpenNarc
	add r0, r6, #0
	bl sub_0200B084
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E2EC
