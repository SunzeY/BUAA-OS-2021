
user/mytest.b:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <_start>:
  400000:	8fa40000 	lw	a0,0(sp)
  400004:	8fa50004 	lw	a1,4(sp)
  400008:	0c1002d4 	jal	400b50 <libmain>
  40000c:	00000000 	nop
  400010:	00000000 	nop

00400014 <__asm_pgfault_handler>:
  400014:	00000000 	nop
  400018:	8fa4008c 	lw	a0,140(sp)
  40001c:	3c090040 	lui	t1,0x40
  400020:	8d295010 	lw	t1,20496(t1)
  400024:	0120f809 	jalr	t1
  400028:	00000000 	nop
  40002c:	8fa30088 	lw	v1,136(sp)
  400030:	00600013 	mtlo	v1
  400034:	8fa20084 	lw	v0,132(sp)
  400038:	8fa30094 	lw	v1,148(sp)
  40003c:	00400011 	mthi	v0
  400040:	40837000 	mtc0	v1,$14
  400044:	8fbf007c 	lw	ra,124(sp)
  400048:	8fbe0078 	lw	s8,120(sp)
  40004c:	8fbc0070 	lw	gp,112(sp)
  400050:	8fb90064 	lw	t9,100(sp)
  400054:	8fb80060 	lw	t8,96(sp)
  400058:	8fb7005c 	lw	s7,92(sp)
  40005c:	8fb60058 	lw	s6,88(sp)
  400060:	8fb50054 	lw	s5,84(sp)
  400064:	8fb40050 	lw	s4,80(sp)
  400068:	8fb3004c 	lw	s3,76(sp)
  40006c:	8fb20048 	lw	s2,72(sp)
  400070:	8fb10044 	lw	s1,68(sp)
  400074:	8fb00040 	lw	s0,64(sp)
  400078:	8faf003c 	lw	t7,60(sp)
  40007c:	8fae0038 	lw	t6,56(sp)
  400080:	8fad0034 	lw	t5,52(sp)
  400084:	8fac0030 	lw	t4,48(sp)
  400088:	8fab002c 	lw	t3,44(sp)
  40008c:	8faa0028 	lw	t2,40(sp)
  400090:	8fa90024 	lw	t1,36(sp)
  400094:	8fa80020 	lw	t0,32(sp)
  400098:	8fa7001c 	lw	a3,28(sp)
  40009c:	8fa60018 	lw	a2,24(sp)
  4000a0:	8fa50014 	lw	a1,20(sp)
  4000a4:	8fa40010 	lw	a0,16(sp)
  4000a8:	8fa3000c 	lw	v1,12(sp)
  4000ac:	8fa20008 	lw	v0,8(sp)
  4000b0:	8fa10004 	lw	at,4(sp)
  4000b4:	8fba0094 	lw	k0,148(sp)
  4000b8:	03400008 	jr	k0
  4000bc:	8fbd0074 	lw	sp,116(sp)

004000c0 <msyscall>:
  4000c0:	0000000c 	syscall
  4000c4:	03e00008 	jr	ra
  4000c8:	00000000 	nop
  4000cc:	00000000 	nop

004000d0 <umain>:
  4000d0:	27bdffe8 	addiu	sp,sp,-24
  4000d4:	afbf0010 	sw	ra,16(sp)
  4000d8:	0c1003bc 	jal	400ef0 <fork>
  4000dc:	00000000 	nop
  4000e0:	1000ffff 	b	4000e0 <umain+0x10>
  4000e4:	00000000 	nop
	...

004000f0 <user_myoutput>:
  4000f0:	27bdffe0 	addiu	sp,sp,-32
  4000f4:	afbf001c 	sw	ra,28(sp)
  4000f8:	afb20018 	sw	s2,24(sp)
  4000fc:	afb10014 	sw	s1,20(sp)
  400100:	afb00010 	sw	s0,16(sp)
  400104:	24020001 	li	v0,1
  400108:	14c20015 	bne	a2,v0,400160 <user_myoutput+0x70>
  40010c:	00c09021 	move	s2,a2
  400110:	80a20000 	lb	v0,0(a1)
  400114:	00000000 	nop
  400118:	14400013 	bnez	v0,400168 <user_myoutput+0x78>
  40011c:	00a08021 	move	s0,a1
  400120:	10000013 	b	400170 <user_myoutput+0x80>
  400124:	00000000 	nop
  400128:	82040000 	lb	a0,0(s0)
  40012c:	0c100450 	jal	401140 <syscall_putchar>
  400130:	00000000 	nop
  400134:	82030000 	lb	v1,0(s0)
  400138:	2402000a 	li	v0,10
  40013c:	14620003 	bne	v1,v0,40014c <user_myoutput+0x5c>
  400140:	00000000 	nop
  400144:	0c100450 	jal	401140 <syscall_putchar>
  400148:	2404000a 	li	a0,10
  40014c:	26310001 	addiu	s1,s1,1
  400150:	12510007 	beq	s2,s1,400170 <user_myoutput+0x80>
  400154:	26100001 	addiu	s0,s0,1
  400158:	1000fff3 	b	400128 <user_myoutput+0x38>
  40015c:	00000000 	nop
  400160:	18c00003 	blez	a2,400170 <user_myoutput+0x80>
  400164:	00a08021 	move	s0,a1
  400168:	1000ffef 	b	400128 <user_myoutput+0x38>
  40016c:	00008821 	move	s1,zero
  400170:	8fbf001c 	lw	ra,28(sp)
  400174:	8fb20018 	lw	s2,24(sp)
  400178:	8fb10014 	lw	s1,20(sp)
  40017c:	8fb00010 	lw	s0,16(sp)
  400180:	03e00008 	jr	ra
  400184:	27bd0020 	addiu	sp,sp,32

00400188 <writef>:
  400188:	27bdffe0 	addiu	sp,sp,-32
  40018c:	afbf0018 	sw	ra,24(sp)
  400190:	afa50024 	sw	a1,36(sp)
  400194:	afa60028 	sw	a2,40(sp)
  400198:	afa7002c 	sw	a3,44(sp)
  40019c:	00803021 	move	a2,a0
  4001a0:	27a70024 	addiu	a3,sp,36
  4001a4:	afa70010 	sw	a3,16(sp)
  4001a8:	3c040040 	lui	a0,0x40
  4001ac:	248400f0 	addiu	a0,a0,240
  4001b0:	0c10008c 	jal	400230 <user_lp_Print>
  4001b4:	00002821 	move	a1,zero
  4001b8:	8fbf0018 	lw	ra,24(sp)
  4001bc:	00000000 	nop
  4001c0:	03e00008 	jr	ra
  4001c4:	27bd0020 	addiu	sp,sp,32

004001c8 <_user_panic>:
  4001c8:	27bdffe0 	addiu	sp,sp,-32
  4001cc:	afbf001c 	sw	ra,28(sp)
  4001d0:	afb00018 	sw	s0,24(sp)
  4001d4:	00801821 	move	v1,a0
  4001d8:	00a04021 	move	t0,a1
  4001dc:	afa7002c 	sw	a3,44(sp)
  4001e0:	00c08021 	move	s0,a2
  4001e4:	27a2002c 	addiu	v0,sp,44
  4001e8:	afa20010 	sw	v0,16(sp)
  4001ec:	3c040040 	lui	a0,0x40
  4001f0:	24846210 	addiu	a0,a0,25104
  4001f4:	00602821 	move	a1,v1
  4001f8:	0c100062 	jal	400188 <writef>
  4001fc:	01003021 	move	a2,t0
  400200:	3c040040 	lui	a0,0x40
  400204:	248400f0 	addiu	a0,a0,240
  400208:	00002821 	move	a1,zero
  40020c:	8fa70010 	lw	a3,16(sp)
  400210:	0c10008c 	jal	400230 <user_lp_Print>
  400214:	02003021 	move	a2,s0
  400218:	3c040040 	lui	a0,0x40
  40021c:	0c100062 	jal	400188 <writef>
  400220:	248464e4 	addiu	a0,a0,25828
  400224:	1000ffff 	b	400224 <_user_panic+0x5c>
  400228:	00000000 	nop
  40022c:	00000000 	nop

00400230 <user_lp_Print>:
  400230:	27bdfbd8 	addiu	sp,sp,-1064
  400234:	afbf0420 	sw	ra,1056(sp)
  400238:	afb5041c 	sw	s5,1052(sp)
  40023c:	afb40418 	sw	s4,1048(sp)
  400240:	afb30414 	sw	s3,1044(sp)
  400244:	afb20410 	sw	s2,1040(sp)
  400248:	afb1040c 	sw	s1,1036(sp)
  40024c:	afb00408 	sw	s0,1032(sp)
  400250:	0080a821 	move	s5,a0
  400254:	00a09021 	move	s2,a1
  400258:	00c02821 	move	a1,a2
  40025c:	00e09821 	move	s3,a3
  400260:	80a30000 	lb	v1,0(a1)
  400264:	00000000 	nop
  400268:	1060000d 	beqz	v1,4002a0 <user_lp_Print+0x70>
  40026c:	00a08021 	move	s0,a1
  400270:	1000015e 	b	4007ec <user_lp_Print+0x5bc>
  400274:	24020025 	li	v0,37
  400278:	00a08021 	move	s0,a1
  40027c:	26100001 	addiu	s0,s0,1
  400280:	82020000 	lb	v0,0(s0)
  400284:	00000000 	nop
  400288:	10400006 	beqz	v0,4002a4 <user_lp_Print+0x74>
  40028c:	02058823 	subu	s1,s0,a1
  400290:	10430005 	beq	v0,v1,4002a8 <user_lp_Print+0x78>
  400294:	2e2203e9 	sltiu	v0,s1,1001
  400298:	1000fff9 	b	400280 <user_lp_Print+0x50>
  40029c:	26100001 	addiu	s0,s0,1
  4002a0:	02058823 	subu	s1,s0,a1
  4002a4:	2e2203e9 	sltiu	v0,s1,1001
  4002a8:	14400008 	bnez	v0,4002cc <user_lp_Print+0x9c>
  4002ac:	02203021 	move	a2,s1
  4002b0:	02402021 	move	a0,s2
  4002b4:	3c050040 	lui	a1,0x40
  4002b8:	24a56000 	addiu	a1,a1,24576
  4002bc:	02a0f809 	jalr	s5
  4002c0:	2406001d 	li	a2,29
  4002c4:	1000ffff 	b	4002c4 <user_lp_Print+0x94>
  4002c8:	00000000 	nop
  4002cc:	02a0f809 	jalr	s5
  4002d0:	02402021 	move	a0,s2
  4002d4:	82020000 	lb	v0,0(s0)
  4002d8:	00000000 	nop
  4002dc:	10400135 	beqz	v0,4007b4 <user_lp_Print+0x584>
  4002e0:	02519021 	addu	s2,s2,s1
  4002e4:	82030001 	lb	v1,1(s0)
  4002e8:	2402006c 	li	v0,108
  4002ec:	10620003 	beq	v1,v0,4002fc <user_lp_Print+0xcc>
  4002f0:	26110001 	addiu	s1,s0,1
  4002f4:	10000003 	b	400304 <user_lp_Print+0xd4>
  4002f8:	00002021 	move	a0,zero
  4002fc:	26110002 	addiu	s1,s0,2
  400300:	24040001 	li	a0,1
  400304:	82230000 	lb	v1,0(s1)
  400308:	2402002d 	li	v0,45
  40030c:	14620004 	bne	v1,v0,400320 <user_lp_Print+0xf0>
  400310:	00003821 	move	a3,zero
  400314:	26310001 	addiu	s1,s1,1
  400318:	24070001 	li	a3,1
  40031c:	82230000 	lb	v1,0(s1)
  400320:	24020030 	li	v0,48
  400324:	14620003 	bne	v1,v0,400334 <user_lp_Print+0x104>
  400328:	24090020 	li	t1,32
  40032c:	26310001 	addiu	s1,s1,1
  400330:	24090030 	li	t1,48
  400334:	82260000 	lb	a2,0(s1)
  400338:	00000000 	nop
  40033c:	24c2ffd0 	addiu	v0,a2,-48
  400340:	304200ff 	andi	v0,v0,0xff
  400344:	2c42000a 	sltiu	v0,v0,10
  400348:	1040000e 	beqz	v0,400384 <user_lp_Print+0x154>
  40034c:	00004021 	move	t0,zero
  400350:	00081040 	sll	v0,t0,0x1
  400354:	000818c0 	sll	v1,t0,0x3
  400358:	00431021 	addu	v0,v0,v1
  40035c:	00461021 	addu	v0,v0,a2
  400360:	2448ffd0 	addiu	t0,v0,-48
  400364:	26310001 	addiu	s1,s1,1
  400368:	82260000 	lb	a2,0(s1)
  40036c:	00000000 	nop
  400370:	24c2ffd0 	addiu	v0,a2,-48
  400374:	304200ff 	andi	v0,v0,0xff
  400378:	2c42000a 	sltiu	v0,v0,10
  40037c:	1440fff5 	bnez	v0,400354 <user_lp_Print+0x124>
  400380:	00081040 	sll	v0,t0,0x1
  400384:	82230000 	lb	v1,0(s1)
  400388:	2402002e 	li	v0,46
  40038c:	14620014 	bne	v1,v0,4003e0 <user_lp_Print+0x1b0>
  400390:	2c620079 	sltiu	v0,v1,121
  400394:	26310001 	addiu	s1,s1,1
  400398:	92220000 	lbu	v0,0(s1)
  40039c:	00000000 	nop
  4003a0:	2442ffd0 	addiu	v0,v0,-48
  4003a4:	304200ff 	andi	v0,v0,0xff
  4003a8:	2c42000a 	sltiu	v0,v0,10
  4003ac:	10400009 	beqz	v0,4003d4 <user_lp_Print+0x1a4>
  4003b0:	00000000 	nop
  4003b4:	26310001 	addiu	s1,s1,1
  4003b8:	92220000 	lbu	v0,0(s1)
  4003bc:	00000000 	nop
  4003c0:	2442ffd0 	addiu	v0,v0,-48
  4003c4:	304200ff 	andi	v0,v0,0xff
  4003c8:	2c42000a 	sltiu	v0,v0,10
  4003cc:	1440fff9 	bnez	v0,4003b4 <user_lp_Print+0x184>
  4003d0:	00000000 	nop
  4003d4:	82230000 	lb	v1,0(s1)
  4003d8:	00000000 	nop
  4003dc:	2c620079 	sltiu	v0,v1,121
  4003e0:	104000ed 	beqz	v0,400798 <user_lp_Print+0x568>
  4003e4:	00031080 	sll	v0,v1,0x2
  4003e8:	3c030040 	lui	v1,0x40
  4003ec:	24636024 	addiu	v1,v1,24612
  4003f0:	00431021 	addu	v0,v0,v1
  4003f4:	8c420000 	lw	v0,0(v0)
  4003f8:	00000000 	nop
  4003fc:	00400008 	jr	v0
  400400:	00000000 	nop
  400404:	10800004 	beqz	a0,400418 <user_lp_Print+0x1e8>
  400408:	00000000 	nop
  40040c:	8e650000 	lw	a1,0(s3)
  400410:	10000003 	b	400420 <user_lp_Print+0x1f0>
  400414:	26730004 	addiu	s3,s3,4
  400418:	8e650000 	lw	a1,0(s3)
  40041c:	26730004 	addiu	s3,s3,4
  400420:	afa80010 	sw	t0,16(sp)
  400424:	afa70014 	sw	a3,20(sp)
  400428:	afa90018 	sw	t1,24(sp)
  40042c:	afa0001c 	sw	zero,28(sp)
  400430:	27a40020 	addiu	a0,sp,32
  400434:	24060002 	li	a2,2
  400438:	0c100266 	jal	400998 <user_PrintNum>
  40043c:	00003821 	move	a3,zero
  400440:	00408021 	move	s0,v0
  400444:	00403021 	move	a2,v0
  400448:	2c4203e9 	sltiu	v0,v0,1001
  40044c:	14400007 	bnez	v0,40046c <user_lp_Print+0x23c>
  400450:	02402021 	move	a0,s2
  400454:	3c050040 	lui	a1,0x40
  400458:	24a56000 	addiu	a1,a1,24576
  40045c:	02a0f809 	jalr	s5
  400460:	2406001d 	li	a2,29
  400464:	1000ffff 	b	400464 <user_lp_Print+0x234>
  400468:	00000000 	nop
  40046c:	02a0f809 	jalr	s5
  400470:	27a50020 	addiu	a1,sp,32
  400474:	100000cd 	b	4007ac <user_lp_Print+0x57c>
  400478:	02509021 	addu	s2,s2,s0
  40047c:	10800004 	beqz	a0,400490 <user_lp_Print+0x260>
  400480:	00000000 	nop
  400484:	8e650000 	lw	a1,0(s3)
  400488:	10000003 	b	400498 <user_lp_Print+0x268>
  40048c:	26730004 	addiu	s3,s3,4
  400490:	8e650000 	lw	a1,0(s3)
  400494:	26730004 	addiu	s3,s3,4
  400498:	04a10003 	bgez	a1,4004a8 <user_lp_Print+0x278>
  40049c:	00001021 	move	v0,zero
  4004a0:	00052823 	negu	a1,a1
  4004a4:	24020001 	li	v0,1
  4004a8:	afa80010 	sw	t0,16(sp)
  4004ac:	afa70014 	sw	a3,20(sp)
  4004b0:	afa90018 	sw	t1,24(sp)
  4004b4:	afa0001c 	sw	zero,28(sp)
  4004b8:	27a40020 	addiu	a0,sp,32
  4004bc:	2406000a 	li	a2,10
  4004c0:	0c100266 	jal	400998 <user_PrintNum>
  4004c4:	00403821 	move	a3,v0
  4004c8:	00408021 	move	s0,v0
  4004cc:	00403021 	move	a2,v0
  4004d0:	2c4203e9 	sltiu	v0,v0,1001
  4004d4:	14400007 	bnez	v0,4004f4 <user_lp_Print+0x2c4>
  4004d8:	02402021 	move	a0,s2
  4004dc:	3c050040 	lui	a1,0x40
  4004e0:	24a56000 	addiu	a1,a1,24576
  4004e4:	02a0f809 	jalr	s5
  4004e8:	2406001d 	li	a2,29
  4004ec:	1000ffff 	b	4004ec <user_lp_Print+0x2bc>
  4004f0:	00000000 	nop
  4004f4:	02a0f809 	jalr	s5
  4004f8:	27a50020 	addiu	a1,sp,32
  4004fc:	100000ab 	b	4007ac <user_lp_Print+0x57c>
  400500:	02509021 	addu	s2,s2,s0
  400504:	10800004 	beqz	a0,400518 <user_lp_Print+0x2e8>
  400508:	00000000 	nop
  40050c:	8e650000 	lw	a1,0(s3)
  400510:	10000003 	b	400520 <user_lp_Print+0x2f0>
  400514:	26730004 	addiu	s3,s3,4
  400518:	8e650000 	lw	a1,0(s3)
  40051c:	26730004 	addiu	s3,s3,4
  400520:	afa80010 	sw	t0,16(sp)
  400524:	afa70014 	sw	a3,20(sp)
  400528:	afa90018 	sw	t1,24(sp)
  40052c:	afa0001c 	sw	zero,28(sp)
  400530:	27a40020 	addiu	a0,sp,32
  400534:	24060008 	li	a2,8
  400538:	0c100266 	jal	400998 <user_PrintNum>
  40053c:	00003821 	move	a3,zero
  400540:	00408021 	move	s0,v0
  400544:	00403021 	move	a2,v0
  400548:	2c4203e9 	sltiu	v0,v0,1001
  40054c:	14400007 	bnez	v0,40056c <user_lp_Print+0x33c>
  400550:	02402021 	move	a0,s2
  400554:	3c050040 	lui	a1,0x40
  400558:	24a56000 	addiu	a1,a1,24576
  40055c:	02a0f809 	jalr	s5
  400560:	2406001d 	li	a2,29
  400564:	1000ffff 	b	400564 <user_lp_Print+0x334>
  400568:	00000000 	nop
  40056c:	02a0f809 	jalr	s5
  400570:	27a50020 	addiu	a1,sp,32
  400574:	1000008d 	b	4007ac <user_lp_Print+0x57c>
  400578:	02509021 	addu	s2,s2,s0
  40057c:	10800004 	beqz	a0,400590 <user_lp_Print+0x360>
  400580:	00000000 	nop
  400584:	8e650000 	lw	a1,0(s3)
  400588:	10000003 	b	400598 <user_lp_Print+0x368>
  40058c:	26730004 	addiu	s3,s3,4
  400590:	8e650000 	lw	a1,0(s3)
  400594:	26730004 	addiu	s3,s3,4
  400598:	afa80010 	sw	t0,16(sp)
  40059c:	afa70014 	sw	a3,20(sp)
  4005a0:	afa90018 	sw	t1,24(sp)
  4005a4:	afa0001c 	sw	zero,28(sp)
  4005a8:	27a40020 	addiu	a0,sp,32
  4005ac:	2406000a 	li	a2,10
  4005b0:	0c100266 	jal	400998 <user_PrintNum>
  4005b4:	00003821 	move	a3,zero
  4005b8:	00408021 	move	s0,v0
  4005bc:	00403021 	move	a2,v0
  4005c0:	2c4203e9 	sltiu	v0,v0,1001
  4005c4:	14400007 	bnez	v0,4005e4 <user_lp_Print+0x3b4>
  4005c8:	02402021 	move	a0,s2
  4005cc:	3c050040 	lui	a1,0x40
  4005d0:	24a56000 	addiu	a1,a1,24576
  4005d4:	02a0f809 	jalr	s5
  4005d8:	2406001d 	li	a2,29
  4005dc:	1000ffff 	b	4005dc <user_lp_Print+0x3ac>
  4005e0:	00000000 	nop
  4005e4:	02a0f809 	jalr	s5
  4005e8:	27a50020 	addiu	a1,sp,32
  4005ec:	1000006f 	b	4007ac <user_lp_Print+0x57c>
  4005f0:	02509021 	addu	s2,s2,s0
  4005f4:	10800004 	beqz	a0,400608 <user_lp_Print+0x3d8>
  4005f8:	00000000 	nop
  4005fc:	8e650000 	lw	a1,0(s3)
  400600:	10000003 	b	400610 <user_lp_Print+0x3e0>
  400604:	26730004 	addiu	s3,s3,4
  400608:	8e650000 	lw	a1,0(s3)
  40060c:	26730004 	addiu	s3,s3,4
  400610:	afa80010 	sw	t0,16(sp)
  400614:	afa70014 	sw	a3,20(sp)
  400618:	afa90018 	sw	t1,24(sp)
  40061c:	afa0001c 	sw	zero,28(sp)
  400620:	27a40020 	addiu	a0,sp,32
  400624:	24060010 	li	a2,16
  400628:	0c100266 	jal	400998 <user_PrintNum>
  40062c:	00003821 	move	a3,zero
  400630:	00408021 	move	s0,v0
  400634:	00403021 	move	a2,v0
  400638:	2c4203e9 	sltiu	v0,v0,1001
  40063c:	14400007 	bnez	v0,40065c <user_lp_Print+0x42c>
  400640:	02402021 	move	a0,s2
  400644:	3c050040 	lui	a1,0x40
  400648:	24a56000 	addiu	a1,a1,24576
  40064c:	02a0f809 	jalr	s5
  400650:	2406001d 	li	a2,29
  400654:	1000ffff 	b	400654 <user_lp_Print+0x424>
  400658:	00000000 	nop
  40065c:	02a0f809 	jalr	s5
  400660:	27a50020 	addiu	a1,sp,32
  400664:	10000051 	b	4007ac <user_lp_Print+0x57c>
  400668:	02509021 	addu	s2,s2,s0
  40066c:	10800004 	beqz	a0,400680 <user_lp_Print+0x450>
  400670:	00000000 	nop
  400674:	8e650000 	lw	a1,0(s3)
  400678:	10000003 	b	400688 <user_lp_Print+0x458>
  40067c:	26730004 	addiu	s3,s3,4
  400680:	8e650000 	lw	a1,0(s3)
  400684:	26730004 	addiu	s3,s3,4
  400688:	afa80010 	sw	t0,16(sp)
  40068c:	afa70014 	sw	a3,20(sp)
  400690:	afa90018 	sw	t1,24(sp)
  400694:	24020001 	li	v0,1
  400698:	afa2001c 	sw	v0,28(sp)
  40069c:	27a40020 	addiu	a0,sp,32
  4006a0:	24060010 	li	a2,16
  4006a4:	0c100266 	jal	400998 <user_PrintNum>
  4006a8:	00003821 	move	a3,zero
  4006ac:	00408021 	move	s0,v0
  4006b0:	00403021 	move	a2,v0
  4006b4:	2c4203e9 	sltiu	v0,v0,1001
  4006b8:	14400007 	bnez	v0,4006d8 <user_lp_Print+0x4a8>
  4006bc:	02402021 	move	a0,s2
  4006c0:	3c050040 	lui	a1,0x40
  4006c4:	24a56000 	addiu	a1,a1,24576
  4006c8:	02a0f809 	jalr	s5
  4006cc:	2406001d 	li	a2,29
  4006d0:	1000ffff 	b	4006d0 <user_lp_Print+0x4a0>
  4006d4:	00000000 	nop
  4006d8:	02a0f809 	jalr	s5
  4006dc:	27a50020 	addiu	a1,sp,32
  4006e0:	10000032 	b	4007ac <user_lp_Print+0x57c>
  4006e4:	02509021 	addu	s2,s2,s0
  4006e8:	26740004 	addiu	s4,s3,4
  4006ec:	27a40020 	addiu	a0,sp,32
  4006f0:	82650003 	lb	a1,3(s3)
  4006f4:	0c1001ff 	jal	4007fc <user_PrintChar>
  4006f8:	01003021 	move	a2,t0
  4006fc:	00408021 	move	s0,v0
  400700:	00403021 	move	a2,v0
  400704:	2c4203e9 	sltiu	v0,v0,1001
  400708:	14400007 	bnez	v0,400728 <user_lp_Print+0x4f8>
  40070c:	02402021 	move	a0,s2
  400710:	3c050040 	lui	a1,0x40
  400714:	24a56000 	addiu	a1,a1,24576
  400718:	02a0f809 	jalr	s5
  40071c:	2406001d 	li	a2,29
  400720:	1000ffff 	b	400720 <user_lp_Print+0x4f0>
  400724:	00000000 	nop
  400728:	02a0f809 	jalr	s5
  40072c:	27a50020 	addiu	a1,sp,32
  400730:	02509021 	addu	s2,s2,s0
  400734:	1000001d 	b	4007ac <user_lp_Print+0x57c>
  400738:	02809821 	move	s3,s4
  40073c:	26740004 	addiu	s4,s3,4
  400740:	27a40020 	addiu	a0,sp,32
  400744:	8e650000 	lw	a1,0(s3)
  400748:	0c10021e 	jal	400878 <user_PrintString>
  40074c:	01003021 	move	a2,t0
  400750:	00408021 	move	s0,v0
  400754:	00403021 	move	a2,v0
  400758:	2c4203e9 	sltiu	v0,v0,1001
  40075c:	14400007 	bnez	v0,40077c <user_lp_Print+0x54c>
  400760:	02402021 	move	a0,s2
  400764:	3c050040 	lui	a1,0x40
  400768:	24a56000 	addiu	a1,a1,24576
  40076c:	02a0f809 	jalr	s5
  400770:	2406001d 	li	a2,29
  400774:	1000ffff 	b	400774 <user_lp_Print+0x544>
  400778:	00000000 	nop
  40077c:	02a0f809 	jalr	s5
  400780:	27a50020 	addiu	a1,sp,32
  400784:	02509021 	addu	s2,s2,s0
  400788:	10000008 	b	4007ac <user_lp_Print+0x57c>
  40078c:	02809821 	move	s3,s4
  400790:	10000006 	b	4007ac <user_lp_Print+0x57c>
  400794:	2631ffff 	addiu	s1,s1,-1
  400798:	02402021 	move	a0,s2
  40079c:	02202821 	move	a1,s1
  4007a0:	02a0f809 	jalr	s5
  4007a4:	24060001 	li	a2,1
  4007a8:	26520001 	addiu	s2,s2,1
  4007ac:	1000feac 	b	400260 <user_lp_Print+0x30>
  4007b0:	26250001 	addiu	a1,s1,1
  4007b4:	02402021 	move	a0,s2
  4007b8:	3c050040 	lui	a1,0x40
  4007bc:	24a56020 	addiu	a1,a1,24608
  4007c0:	02a0f809 	jalr	s5
  4007c4:	24060001 	li	a2,1
  4007c8:	8fbf0420 	lw	ra,1056(sp)
  4007cc:	8fb5041c 	lw	s5,1052(sp)
  4007d0:	8fb40418 	lw	s4,1048(sp)
  4007d4:	8fb30414 	lw	s3,1044(sp)
  4007d8:	8fb20410 	lw	s2,1040(sp)
  4007dc:	8fb1040c 	lw	s1,1036(sp)
  4007e0:	8fb00408 	lw	s0,1032(sp)
  4007e4:	03e00008 	jr	ra
  4007e8:	27bd0428 	addiu	sp,sp,1064
  4007ec:	1462fea2 	bne	v1,v0,400278 <user_lp_Print+0x48>
  4007f0:	24030025 	li	v1,37
  4007f4:	1000feaa 	b	4002a0 <user_lp_Print+0x70>
  4007f8:	00a08021 	move	s0,a1

004007fc <user_PrintChar>:
  4007fc:	00052e00 	sll	a1,a1,0x18
  400800:	1cc00002 	bgtz	a2,40080c <user_PrintChar+0x10>
  400804:	00052e03 	sra	a1,a1,0x18
  400808:	24060001 	li	a2,1
  40080c:	10e00014 	beqz	a3,400860 <user_PrintChar+0x64>
  400810:	28c20002 	slti	v0,a2,2
  400814:	14400016 	bnez	v0,400870 <user_PrintChar+0x74>
  400818:	a0850000 	sb	a1,0(a0)
  40081c:	24030001 	li	v1,1
  400820:	24050020 	li	a1,32
  400824:	00831021 	addu	v0,a0,v1
  400828:	24630001 	addiu	v1,v1,1
  40082c:	10c30010 	beq	a2,v1,400870 <user_PrintChar+0x74>
  400830:	a0450000 	sb	a1,0(v0)
  400834:	1000fffc 	b	400828 <user_PrintChar+0x2c>
  400838:	00831021 	addu	v0,a0,v1
  40083c:	00001821 	move	v1,zero
  400840:	24080020 	li	t0,32
  400844:	00641021 	addu	v0,v1,a0
  400848:	24630001 	addiu	v1,v1,1
  40084c:	1467fffd 	bne	v1,a3,400844 <user_PrintChar+0x48>
  400850:	a0480000 	sb	t0,0(v0)
  400854:	00c41021 	addu	v0,a2,a0
  400858:	10000005 	b	400870 <user_PrintChar+0x74>
  40085c:	a045ffff 	sb	a1,-1(v0)
  400860:	24c7ffff 	addiu	a3,a2,-1
  400864:	1ce0fff5 	bgtz	a3,40083c <user_PrintChar+0x40>
  400868:	00c41021 	addu	v0,a2,a0
  40086c:	a045ffff 	sb	a1,-1(v0)
  400870:	03e00008 	jr	ra
  400874:	00c01021 	move	v0,a2

00400878 <user_PrintString>:
  400878:	80a20000 	lb	v0,0(a1)
  40087c:	00000000 	nop
  400880:	14400003 	bnez	v0,400890 <user_PrintString+0x18>
  400884:	24a30001 	addiu	v1,a1,1
  400888:	10000007 	b	4008a8 <user_PrintString+0x30>
  40088c:	00004021 	move	t0,zero
  400890:	00004021 	move	t0,zero
  400894:	25080001 	addiu	t0,t0,1
  400898:	80620000 	lb	v0,0(v1)
  40089c:	00000000 	nop
  4008a0:	1440fffc 	bnez	v0,400894 <user_PrintString+0x1c>
  4008a4:	24630001 	addiu	v1,v1,1
  4008a8:	00c8102a 	slt	v0,a2,t0
  4008ac:	10400002 	beqz	v0,4008b8 <user_PrintString+0x40>
  4008b0:	00000000 	nop
  4008b4:	01003021 	move	a2,t0
  4008b8:	14e00031 	bnez	a3,400980 <user_PrintString+0x108>
  4008bc:	00c83823 	subu	a3,a2,t0
  4008c0:	1000002b 	b	400970 <user_PrintString+0xf8>
  4008c4:	00000000 	nop
  4008c8:	00003821 	move	a3,zero
  4008cc:	00871021 	addu	v0,a0,a3
  4008d0:	00a71821 	addu	v1,a1,a3
  4008d4:	90630000 	lbu	v1,0(v1)
  4008d8:	24e70001 	addiu	a3,a3,1
  4008dc:	1507fffb 	bne	t0,a3,4008cc <user_PrintString+0x54>
  4008e0:	a0430000 	sb	v1,0(v0)
  4008e4:	0106102a 	slt	v0,t0,a2
  4008e8:	10400029 	beqz	v0,400990 <user_PrintString+0x118>
  4008ec:	00001821 	move	v1,zero
  4008f0:	00881021 	addu	v0,a0,t0
  4008f4:	24050020 	li	a1,32
  4008f8:	00c82023 	subu	a0,a2,t0
  4008fc:	a0450000 	sb	a1,0(v0)
  400900:	24630001 	addiu	v1,v1,1
  400904:	10640022 	beq	v1,a0,400990 <user_PrintString+0x118>
  400908:	24420001 	addiu	v0,v0,1
  40090c:	1000fffc 	b	400900 <user_PrintString+0x88>
  400910:	a0450000 	sb	a1,0(v0)
  400914:	00001821 	move	v1,zero
  400918:	24090020 	li	t1,32
  40091c:	00831021 	addu	v0,a0,v1
  400920:	24630001 	addiu	v1,v1,1
  400924:	1467fffd 	bne	v1,a3,40091c <user_PrintString+0xa4>
  400928:	a0490000 	sb	t1,0(v0)
  40092c:	00e6102a 	slt	v0,a3,a2
  400930:	10400017 	beqz	v0,400990 <user_PrintString+0x118>
  400934:	00872021 	addu	a0,a0,a3
  400938:	00e61023 	subu	v0,a3,a2
  40093c:	01021021 	addu	v0,t0,v0
  400940:	00a21821 	addu	v1,a1,v0
  400944:	00002821 	move	a1,zero
  400948:	00c73823 	subu	a3,a2,a3
  40094c:	90620000 	lbu	v0,0(v1)
  400950:	00000000 	nop
  400954:	a0820000 	sb	v0,0(a0)
  400958:	24a50001 	addiu	a1,a1,1
  40095c:	24630001 	addiu	v1,v1,1
  400960:	10a7000b 	beq	a1,a3,400990 <user_PrintString+0x118>
  400964:	24840001 	addiu	a0,a0,1
  400968:	1000fff8 	b	40094c <user_PrintString+0xd4>
  40096c:	00000000 	nop
  400970:	1ce0ffe8 	bgtz	a3,400914 <user_PrintString+0x9c>
  400974:	00e6102a 	slt	v0,a3,a2
  400978:	1000ffed 	b	400930 <user_PrintString+0xb8>
  40097c:	00000000 	nop
  400980:	1d00ffd1 	bgtz	t0,4008c8 <user_PrintString+0x50>
  400984:	0106102a 	slt	v0,t0,a2
  400988:	1000ffd7 	b	4008e8 <user_PrintString+0x70>
  40098c:	00000000 	nop
  400990:	03e00008 	jr	ra
  400994:	00c01021 	move	v0,a2

00400998 <user_PrintNum>:
  400998:	8fa90010 	lw	t1,16(sp)
  40099c:	8fac0014 	lw	t4,20(sp)
  4009a0:	8fab001c 	lw	t3,28(sp)
  4009a4:	83aa001b 	lb	t2,27(sp)
  4009a8:	00804021 	move	t0,a0
  4009ac:	14c00002 	bnez	a2,4009b8 <user_PrintNum+0x20>
  4009b0:	00a6001b 	divu	zero,a1,a2
  4009b4:	0007000d 	break	0x7
  4009b8:	00001810 	mfhi	v1
  4009bc:	2862000a 	slti	v0,v1,10
  4009c0:	10400004 	beqz	v0,4009d4 <user_PrintNum+0x3c>
  4009c4:	24620030 	addiu	v0,v1,48
  4009c8:	a1020000 	sb	v0,0(t0)
  4009cc:	1000000c 	b	400a00 <user_PrintNum+0x68>
  4009d0:	25080001 	addiu	t0,t0,1
  4009d4:	11600005 	beqz	t3,4009ec <user_PrintNum+0x54>
  4009d8:	24620057 	addiu	v0,v1,87
  4009dc:	24620037 	addiu	v0,v1,55
  4009e0:	a1020000 	sb	v0,0(t0)
  4009e4:	10000003 	b	4009f4 <user_PrintNum+0x5c>
  4009e8:	25080001 	addiu	t0,t0,1
  4009ec:	a1020000 	sb	v0,0(t0)
  4009f0:	25080001 	addiu	t0,t0,1
  4009f4:	14c00002 	bnez	a2,400a00 <user_PrintNum+0x68>
  4009f8:	00a6001b 	divu	zero,a1,a2
  4009fc:	0007000d 	break	0x7
  400a00:	00002812 	mflo	a1
  400a04:	14a0ffe9 	bnez	a1,4009ac <user_PrintNum+0x14>
  400a08:	00000000 	nop
  400a0c:	10e00005 	beqz	a3,400a24 <user_PrintNum+0x8c>
  400a10:	01043023 	subu	a2,t0,a0
  400a14:	2402002d 	li	v0,45
  400a18:	a1020000 	sb	v0,0(t0)
  400a1c:	25080001 	addiu	t0,t0,1
  400a20:	01043023 	subu	a2,t0,a0
  400a24:	0126102a 	slt	v0,t1,a2
  400a28:	10400002 	beqz	v0,400a34 <user_PrintNum+0x9c>
  400a2c:	00000000 	nop
  400a30:	00c04821 	move	t1,a2
  400a34:	11800002 	beqz	t4,400a40 <user_PrintNum+0xa8>
  400a38:	00000000 	nop
  400a3c:	240a0020 	li	t2,32
  400a40:	10e00033 	beqz	a3,400b10 <user_PrintNum+0x178>
  400a44:	00c9102a 	slt	v0,a2,t1
  400a48:	15800031 	bnez	t4,400b10 <user_PrintNum+0x178>
  400a4c:	00000000 	nop
  400a50:	24020030 	li	v0,48
  400a54:	1542002e 	bne	t2,v0,400b10 <user_PrintNum+0x178>
  400a58:	00c9102a 	slt	v0,a2,t1
  400a5c:	24c6ffff 	addiu	a2,a2,-1
  400a60:	2528ffff 	addiu	t0,t1,-1
  400a64:	00c8102a 	slt	v0,a2,t0
  400a68:	10400008 	beqz	v0,400a8c <user_PrintNum+0xf4>
  400a6c:	01061023 	subu	v0,t0,a2
  400a70:	00861821 	addu	v1,a0,a2
  400a74:	00002821 	move	a1,zero
  400a78:	24070030 	li	a3,48
  400a7c:	a0670000 	sb	a3,0(v1)
  400a80:	24a50001 	addiu	a1,a1,1
  400a84:	14a2fffd 	bne	a1,v0,400a7c <user_PrintNum+0xe4>
  400a88:	24630001 	addiu	v1,v1,1
  400a8c:	00891821 	addu	v1,a0,t1
  400a90:	2402002d 	li	v0,45
  400a94:	1000000d 	b	400acc <user_PrintNum+0x134>
  400a98:	a062ffff 	sb	v0,-1(v1)
  400a9c:	a0aa0000 	sb	t2,0(a1)
  400aa0:	24630001 	addiu	v1,v1,1
  400aa4:	01261023 	subu	v0,t1,a2
  400aa8:	1462fffc 	bne	v1,v0,400a9c <user_PrintNum+0x104>
  400aac:	24a50001 	addiu	a1,a1,1
  400ab0:	11800006 	beqz	t4,400acc <user_PrintNum+0x134>
  400ab4:	00000000 	nop
  400ab8:	24c6ffff 	addiu	a2,a2,-1
  400abc:	1cc00005 	bgtz	a2,400ad4 <user_PrintNum+0x13c>
  400ac0:	00003821 	move	a3,zero
  400ac4:	03e00008 	jr	ra
  400ac8:	01201021 	move	v0,t1
  400acc:	1000fffb 	b	400abc <user_PrintNum+0x124>
  400ad0:	2526ffff 	addiu	a2,t1,-1
  400ad4:	00802821 	move	a1,a0
  400ad8:	00862021 	addu	a0,a0,a2
  400adc:	80a20000 	lb	v0,0(a1)
  400ae0:	90830000 	lbu	v1,0(a0)
  400ae4:	00000000 	nop
  400ae8:	a0a30000 	sb	v1,0(a1)
  400aec:	a0820000 	sb	v0,0(a0)
  400af0:	24e70001 	addiu	a3,a3,1
  400af4:	24c6ffff 	addiu	a2,a2,-1
  400af8:	24a50001 	addiu	a1,a1,1
  400afc:	00e6102a 	slt	v0,a3,a2
  400b00:	10400008 	beqz	v0,400b24 <user_PrintNum+0x18c>
  400b04:	2484ffff 	addiu	a0,a0,-1
  400b08:	1000fff4 	b	400adc <user_PrintNum+0x144>
  400b0c:	00000000 	nop
  400b10:	1040ffe7 	beqz	v0,400ab0 <user_PrintNum+0x118>
  400b14:	00000000 	nop
  400b18:	00862821 	addu	a1,a0,a2
  400b1c:	1000ffdf 	b	400a9c <user_PrintNum+0x104>
  400b20:	00001821 	move	v1,zero
  400b24:	01201021 	move	v0,t1
  400b28:	03e00008 	jr	ra
  400b2c:	00000000 	nop

00400b30 <exit>:
  400b30:	27bdffe8 	addiu	sp,sp,-24
  400b34:	afbf0010 	sw	ra,16(sp)
  400b38:	0c100478 	jal	4011e0 <syscall_env_destroy>
  400b3c:	00002021 	move	a0,zero
  400b40:	8fbf0010 	lw	ra,16(sp)
  400b44:	00000000 	nop
  400b48:	03e00008 	jr	ra
  400b4c:	27bd0018 	addiu	sp,sp,24

00400b50 <libmain>:
  400b50:	27bdffe0 	addiu	sp,sp,-32
  400b54:	afbf001c 	sw	ra,28(sp)
  400b58:	afb20018 	sw	s2,24(sp)
  400b5c:	afb10014 	sw	s1,20(sp)
  400b60:	afb00010 	sw	s0,16(sp)
  400b64:	00808821 	move	s1,a0
  400b68:	00a09021 	move	s2,a1
  400b6c:	3c100040 	lui	s0,0x40
  400b70:	0c10045e 	jal	401178 <syscall_getenvid>
  400b74:	ae007000 	sw	zero,28672(s0)
  400b78:	304203ff 	andi	v0,v0,0x3ff
  400b7c:	00022080 	sll	a0,v0,0x2
  400b80:	00021940 	sll	v1,v0,0x5
  400b84:	00641823 	subu	v1,v1,a0
  400b88:	00621821 	addu	v1,v1,v0
  400b8c:	000318c0 	sll	v1,v1,0x3
  400b90:	3c020040 	lui	v0,0x40
  400b94:	8c425000 	lw	v0,20480(v0)
  400b98:	00000000 	nop
  400b9c:	00621821 	addu	v1,v1,v0
  400ba0:	ae037000 	sw	v1,28672(s0)
  400ba4:	02202021 	move	a0,s1
  400ba8:	0c100034 	jal	4000d0 <umain>
  400bac:	02402821 	move	a1,s2
  400bb0:	0c1002cc 	jal	400b30 <exit>
  400bb4:	00000000 	nop
  400bb8:	8fbf001c 	lw	ra,28(sp)
  400bbc:	8fb20018 	lw	s2,24(sp)
  400bc0:	8fb10014 	lw	s1,20(sp)
  400bc4:	8fb00010 	lw	s0,16(sp)
  400bc8:	03e00008 	jr	ra
  400bcc:	27bd0020 	addiu	sp,sp,32

00400bd0 <user_bcopy>:
  400bd0:	30820003 	andi	v0,a0,0x3
  400bd4:	14400004 	bnez	v0,400be8 <user_bcopy+0x18>
  400bd8:	00c53021 	addu	a2,a2,a1
  400bdc:	30a20003 	andi	v0,a1,0x3
  400be0:	10400018 	beqz	v0,400c44 <user_bcopy+0x74>
  400be4:	24a20003 	addiu	v0,a1,3
  400be8:	00a6102b 	sltu	v0,a1,a2
  400bec:	1440000d 	bnez	v0,400c24 <user_bcopy+0x54>
  400bf0:	00a01821 	move	v1,a1
  400bf4:	03e00008 	jr	ra
  400bf8:	00000000 	nop
  400bfc:	8c820000 	lw	v0,0(a0)
  400c00:	00000000 	nop
  400c04:	aca20000 	sw	v0,0(a1)
  400c08:	24a50004 	addiu	a1,a1,4
  400c0c:	24630007 	addiu	v1,v1,7
  400c10:	0066182b 	sltu	v1,v1,a2
  400c14:	1060fff4 	beqz	v1,400be8 <user_bcopy+0x18>
  400c18:	24840004 	addiu	a0,a0,4
  400c1c:	1000fff7 	b	400bfc <user_bcopy+0x2c>
  400c20:	00a01821 	move	v1,a1
  400c24:	90820000 	lbu	v0,0(a0)
  400c28:	00000000 	nop
  400c2c:	a0620000 	sb	v0,0(v1)
  400c30:	24630001 	addiu	v1,v1,1
  400c34:	1066ffef 	beq	v1,a2,400bf4 <user_bcopy+0x24>
  400c38:	24840001 	addiu	a0,a0,1
  400c3c:	1000fff9 	b	400c24 <user_bcopy+0x54>
  400c40:	00000000 	nop
  400c44:	0046102b 	sltu	v0,v0,a2
  400c48:	1440ffec 	bnez	v0,400bfc <user_bcopy+0x2c>
  400c4c:	00a01821 	move	v1,a1
  400c50:	1000ffe6 	b	400bec <user_bcopy+0x1c>
  400c54:	00a6102b 	sltu	v0,a1,a2

00400c58 <user_bzero>:
  400c58:	24a2ffff 	addiu	v0,a1,-1
  400c5c:	04400007 	bltz	v0,400c7c <user_bzero+0x24>
  400c60:	00801821 	move	v1,a0
  400c64:	00821021 	addu	v0,a0,v0
  400c68:	24420001 	addiu	v0,v0,1
  400c6c:	a0600000 	sb	zero,0(v1)
  400c70:	24630001 	addiu	v1,v1,1
  400c74:	1462fffd 	bne	v1,v0,400c6c <user_bzero+0x14>
  400c78:	00000000 	nop
  400c7c:	03e00008 	jr	ra
  400c80:	00000000 	nop

00400c84 <pgfault>:
  400c84:	27bdffd8 	addiu	sp,sp,-40
  400c88:	afbf0020 	sw	ra,32(sp)
  400c8c:	afb1001c 	sw	s1,28(sp)
  400c90:	afb00018 	sw	s0,24(sp)
  400c94:	00041302 	srl	v0,a0,0xc
  400c98:	3c030040 	lui	v1,0x40
  400c9c:	8c635008 	lw	v1,20488(v1)
  400ca0:	00021080 	sll	v0,v0,0x2
  400ca4:	00431021 	addu	v0,v0,v1
  400ca8:	8c420000 	lw	v0,0(v0)
  400cac:	00000000 	nop
  400cb0:	38420001 	xori	v0,v0,0x1
  400cb4:	30420001 	andi	v0,v0,0x1
  400cb8:	10400007 	beqz	v0,400cd8 <pgfault+0x54>
  400cbc:	2402f000 	li	v0,-4096
  400cc0:	3c040040 	lui	a0,0x40
  400cc4:	24846224 	addiu	a0,a0,25124
  400cc8:	24050059 	li	a1,89
  400ccc:	3c060040 	lui	a2,0x40
  400cd0:	0c100072 	jal	4001c8 <_user_panic>
  400cd4:	24c6622c 	addiu	a2,a2,25132
  400cd8:	00828824 	and	s1,a0,v0
  400cdc:	00002021 	move	a0,zero
  400ce0:	3c057f3f 	lui	a1,0x7f3f
  400ce4:	34a5e000 	ori	a1,a1,0xe000
  400ce8:	0c100494 	jal	401250 <syscall_mem_alloc>
  400cec:	24060600 	li	a2,1536
  400cf0:	04410007 	bgez	v0,400d10 <pgfault+0x8c>
  400cf4:	02202021 	move	a0,s1
  400cf8:	3c040040 	lui	a0,0x40
  400cfc:	24846224 	addiu	a0,a0,25124
  400d00:	24050061 	li	a1,97
  400d04:	3c060040 	lui	a2,0x40
  400d08:	0c100072 	jal	4001c8 <_user_panic>
  400d0c:	24c66258 	addiu	a2,a2,25176
  400d10:	3c107f3f 	lui	s0,0x7f3f
  400d14:	3605e000 	ori	a1,s0,0xe000
  400d18:	0c1002f4 	jal	400bd0 <user_bcopy>
  400d1c:	24061000 	li	a2,4096
  400d20:	24020600 	li	v0,1536
  400d24:	afa20010 	sw	v0,16(sp)
  400d28:	00002021 	move	a0,zero
  400d2c:	3605e000 	ori	a1,s0,0xe000
  400d30:	00003021 	move	a2,zero
  400d34:	0c1004a3 	jal	40128c <syscall_mem_map>
  400d38:	02203821 	move	a3,s1
  400d3c:	04410007 	bgez	v0,400d5c <pgfault+0xd8>
  400d40:	00002021 	move	a0,zero
  400d44:	3c040040 	lui	a0,0x40
  400d48:	24846224 	addiu	a0,a0,25124
  400d4c:	24050069 	li	a1,105
  400d50:	3c060040 	lui	a2,0x40
  400d54:	0c100072 	jal	4001c8 <_user_panic>
  400d58:	24c66280 	addiu	a2,a2,25216
  400d5c:	3c057f3f 	lui	a1,0x7f3f
  400d60:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  400d64:	34a5e000 	ori	a1,a1,0xe000
  400d68:	04410006 	bgez	v0,400d84 <pgfault+0x100>
  400d6c:	3c040040 	lui	a0,0x40
  400d70:	24846224 	addiu	a0,a0,25124
  400d74:	2405006e 	li	a1,110
  400d78:	3c060040 	lui	a2,0x40
  400d7c:	0c100072 	jal	4001c8 <_user_panic>
  400d80:	24c662a4 	addiu	a2,a2,25252
  400d84:	8fbf0020 	lw	ra,32(sp)
  400d88:	8fb1001c 	lw	s1,28(sp)
  400d8c:	8fb00018 	lw	s0,24(sp)
  400d90:	03e00008 	jr	ra
  400d94:	27bd0028 	addiu	sp,sp,40

00400d98 <duppage>:
  400d98:	27bdffd8 	addiu	sp,sp,-40
  400d9c:	afbf0020 	sw	ra,32(sp)
  400da0:	afb1001c 	sw	s1,28(sp)
  400da4:	afb00018 	sw	s0,24(sp)
  400da8:	00803021 	move	a2,a0
  400dac:	00058300 	sll	s0,a1,0xc
  400db0:	3c020040 	lui	v0,0x40
  400db4:	8c425008 	lw	v0,20488(v0)
  400db8:	00052880 	sll	a1,a1,0x2
  400dbc:	00a22821 	addu	a1,a1,v0
  400dc0:	8ca50000 	lw	a1,0(a1)
  400dc4:	00000000 	nop
  400dc8:	30a20400 	andi	v0,a1,0x400
  400dcc:	1440000d 	bnez	v0,400e04 <duppage+0x6c>
  400dd0:	30a30fff 	andi	v1,a1,0xfff
  400dd4:	afa30010 	sw	v1,16(sp)
  400dd8:	00002021 	move	a0,zero
  400ddc:	02002821 	move	a1,s0
  400de0:	0c1004a3 	jal	40128c <syscall_mem_map>
  400de4:	02003821 	move	a3,s0
  400de8:	1040003c 	beqz	v0,400edc <duppage+0x144>
  400dec:	3c040040 	lui	a0,0x40
  400df0:	24846224 	addiu	a0,a0,25124
  400df4:	24050092 	li	a1,146
  400df8:	3c060040 	lui	a2,0x40
  400dfc:	0c100072 	jal	4001c8 <_user_panic>
  400e00:	24c662cc 	addiu	a2,a2,25292
  400e04:	30620004 	andi	v0,v1,0x4
  400e08:	1040000d 	beqz	v0,400e40 <duppage+0xa8>
  400e0c:	30a20001 	andi	v0,a1,0x1
  400e10:	afa30010 	sw	v1,16(sp)
  400e14:	00002021 	move	a0,zero
  400e18:	02002821 	move	a1,s0
  400e1c:	0c1004a3 	jal	40128c <syscall_mem_map>
  400e20:	02003821 	move	a3,s0
  400e24:	1040002d 	beqz	v0,400edc <duppage+0x144>
  400e28:	3c040040 	lui	a0,0x40
  400e2c:	24846224 	addiu	a0,a0,25124
  400e30:	24050097 	li	a1,151
  400e34:	3c060040 	lui	a2,0x40
  400e38:	0c100072 	jal	4001c8 <_user_panic>
  400e3c:	24c662ec 	addiu	a2,a2,25324
  400e40:	1040000d 	beqz	v0,400e78 <duppage+0xe0>
  400e44:	34710001 	ori	s1,v1,0x1
  400e48:	afa30010 	sw	v1,16(sp)
  400e4c:	00002021 	move	a0,zero
  400e50:	02002821 	move	a1,s0
  400e54:	0c1004a3 	jal	40128c <syscall_mem_map>
  400e58:	02003821 	move	a3,s0
  400e5c:	1040001f 	beqz	v0,400edc <duppage+0x144>
  400e60:	3c040040 	lui	a0,0x40
  400e64:	24846224 	addiu	a0,a0,25124
  400e68:	2405009c 	li	a1,156
  400e6c:	3c060040 	lui	a2,0x40
  400e70:	0c100072 	jal	4001c8 <_user_panic>
  400e74:	24c66308 	addiu	a2,a2,25352
  400e78:	afb10010 	sw	s1,16(sp)
  400e7c:	00002021 	move	a0,zero
  400e80:	02002821 	move	a1,s0
  400e84:	0c1004a3 	jal	40128c <syscall_mem_map>
  400e88:	02003821 	move	a3,s0
  400e8c:	10400007 	beqz	v0,400eac <duppage+0x114>
  400e90:	00002021 	move	a0,zero
  400e94:	3c040040 	lui	a0,0x40
  400e98:	24846224 	addiu	a0,a0,25124
  400e9c:	240500a5 	li	a1,165
  400ea0:	3c060040 	lui	a2,0x40
  400ea4:	0c100072 	jal	4001c8 <_user_panic>
  400ea8:	24c6633c 	addiu	a2,a2,25404
  400eac:	afb10010 	sw	s1,16(sp)
  400eb0:	02002821 	move	a1,s0
  400eb4:	00003021 	move	a2,zero
  400eb8:	0c1004a3 	jal	40128c <syscall_mem_map>
  400ebc:	02003821 	move	a3,s0
  400ec0:	10400006 	beqz	v0,400edc <duppage+0x144>
  400ec4:	3c040040 	lui	a0,0x40
  400ec8:	24846224 	addiu	a0,a0,25124
  400ecc:	240500a8 	li	a1,168
  400ed0:	3c060040 	lui	a2,0x40
  400ed4:	0c100072 	jal	4001c8 <_user_panic>
  400ed8:	24c66368 	addiu	a2,a2,25448
  400edc:	8fbf0020 	lw	ra,32(sp)
  400ee0:	8fb1001c 	lw	s1,28(sp)
  400ee4:	8fb00018 	lw	s0,24(sp)
  400ee8:	03e00008 	jr	ra
  400eec:	27bd0028 	addiu	sp,sp,40

00400ef0 <fork>:
  400ef0:	27bdffd0 	addiu	sp,sp,-48
  400ef4:	afbf002c 	sw	ra,44(sp)
  400ef8:	afb40028 	sw	s4,40(sp)
  400efc:	afb30024 	sw	s3,36(sp)
  400f00:	afb20020 	sw	s2,32(sp)
  400f04:	afb1001c 	sw	s1,28(sp)
  400f08:	afb00018 	sw	s0,24(sp)
  400f0c:	3c040040 	lui	a0,0x40
  400f10:	0c100430 	jal	4010c0 <set_pgfault_handler>
  400f14:	24840c84 	addiu	a0,a0,3204
  400f18:	afa00010 	sw	zero,16(sp)
  400f1c:	afa00014 	sw	zero,20(sp)
  400f20:	2404253f 	li	a0,9535
  400f24:	00002821 	move	a1,zero
  400f28:	00003021 	move	a2,zero
  400f2c:	0c100030 	jal	4000c0 <msyscall>
  400f30:	00003821 	move	a3,zero
  400f34:	14400011 	bnez	v0,400f7c <fork+0x8c>
  400f38:	0040a021 	move	s4,v0
  400f3c:	0c10045e 	jal	401178 <syscall_getenvid>
  400f40:	00000000 	nop
  400f44:	304203ff 	andi	v0,v0,0x3ff
  400f48:	00022080 	sll	a0,v0,0x2
  400f4c:	00021940 	sll	v1,v0,0x5
  400f50:	00641823 	subu	v1,v1,a0
  400f54:	00621821 	addu	v1,v1,v0
  400f58:	000318c0 	sll	v1,v1,0x3
  400f5c:	3c020040 	lui	v0,0x40
  400f60:	8c425000 	lw	v0,20480(v0)
  400f64:	00000000 	nop
  400f68:	00621821 	addu	v1,v1,v0
  400f6c:	3c020040 	lui	v0,0x40
  400f70:	ac437000 	sw	v1,28672(v0)
  400f74:	1000003f 	b	401074 <fork+0x184>
  400f78:	00001021 	move	v0,zero
  400f7c:	00008021 	move	s0,zero
  400f80:	3c120040 	lui	s2,0x40
  400f84:	3c130040 	lui	s3,0x40
  400f88:	3c027f3f 	lui	v0,0x7f3f
  400f8c:	3451e000 	ori	s1,v0,0xe000
  400f90:	00101582 	srl	v0,s0,0x16
  400f94:	8e43500c 	lw	v1,20492(s2)
  400f98:	00021080 	sll	v0,v0,0x2
  400f9c:	00431021 	addu	v0,v0,v1
  400fa0:	8c420000 	lw	v0,0(v0)
  400fa4:	00000000 	nop
  400fa8:	30420200 	andi	v0,v0,0x200
  400fac:	1040000b 	beqz	v0,400fdc <fork+0xec>
  400fb0:	00102b02 	srl	a1,s0,0xc
  400fb4:	8e625008 	lw	v0,20488(s3)
  400fb8:	00051880 	sll	v1,a1,0x2
  400fbc:	00621821 	addu	v1,v1,v0
  400fc0:	8c620000 	lw	v0,0(v1)
  400fc4:	00000000 	nop
  400fc8:	30420200 	andi	v0,v0,0x200
  400fcc:	10400003 	beqz	v0,400fdc <fork+0xec>
  400fd0:	00000000 	nop
  400fd4:	0c100366 	jal	400d98 <duppage>
  400fd8:	02802021 	move	a0,s4
  400fdc:	26101000 	addiu	s0,s0,4096
  400fe0:	1611ffec 	bne	s0,s1,400f94 <fork+0xa4>
  400fe4:	00101582 	srl	v0,s0,0x16
  400fe8:	02802021 	move	a0,s4
  400fec:	3c057f3f 	lui	a1,0x7f3f
  400ff0:	34a5f000 	ori	a1,a1,0xf000
  400ff4:	0c100494 	jal	401250 <syscall_mem_alloc>
  400ff8:	24060604 	li	a2,1540
  400ffc:	04410007 	bgez	v0,40101c <fork+0x12c>
  401000:	02802021 	move	a0,s4
  401004:	3c040040 	lui	a0,0x40
  401008:	24846224 	addiu	a0,a0,25124
  40100c:	240500db 	li	a1,219
  401010:	3c060040 	lui	a2,0x40
  401014:	0c100072 	jal	4001c8 <_user_panic>
  401018:	24c66394 	addiu	a2,a2,25492
  40101c:	3c050040 	lui	a1,0x40
  401020:	24a50014 	addiu	a1,a1,20
  401024:	0c100485 	jal	401214 <syscall_set_pgfault_handler>
  401028:	3c067f40 	lui	a2,0x7f40
  40102c:	04410007 	bgez	v0,40104c <fork+0x15c>
  401030:	02802021 	move	a0,s4
  401034:	3c040040 	lui	a0,0x40
  401038:	24846224 	addiu	a0,a0,25124
  40103c:	240500df 	li	a1,223
  401040:	3c060040 	lui	a2,0x40
  401044:	0c100072 	jal	4001c8 <_user_panic>
  401048:	24c663ac 	addiu	a2,a2,25516
  40104c:	0c1004c3 	jal	40130c <syscall_set_env_status>
  401050:	24050001 	li	a1,1
  401054:	04410007 	bgez	v0,401074 <fork+0x184>
  401058:	02801021 	move	v0,s4
  40105c:	3c040040 	lui	a0,0x40
  401060:	24846224 	addiu	a0,a0,25124
  401064:	240500e3 	li	a1,227
  401068:	3c060040 	lui	a2,0x40
  40106c:	0c100072 	jal	4001c8 <_user_panic>
  401070:	24c663d0 	addiu	a2,a2,25552
  401074:	8fbf002c 	lw	ra,44(sp)
  401078:	8fb40028 	lw	s4,40(sp)
  40107c:	8fb30024 	lw	s3,36(sp)
  401080:	8fb20020 	lw	s2,32(sp)
  401084:	8fb1001c 	lw	s1,28(sp)
  401088:	8fb00018 	lw	s0,24(sp)
  40108c:	03e00008 	jr	ra
  401090:	27bd0030 	addiu	sp,sp,48

00401094 <sfork>:
  401094:	27bdffe8 	addiu	sp,sp,-24
  401098:	afbf0010 	sw	ra,16(sp)
  40109c:	3c040040 	lui	a0,0x40
  4010a0:	24846224 	addiu	a0,a0,25124
  4010a4:	240500ec 	li	a1,236
  4010a8:	3c060040 	lui	a2,0x40
  4010ac:	0c100072 	jal	4001c8 <_user_panic>
  4010b0:	24c663e8 	addiu	a2,a2,25576
	...

004010c0 <set_pgfault_handler>:
  4010c0:	27bdffe8 	addiu	sp,sp,-24
  4010c4:	afbf0014 	sw	ra,20(sp)
  4010c8:	afb00010 	sw	s0,16(sp)
  4010cc:	3c020040 	lui	v0,0x40
  4010d0:	8c425010 	lw	v0,20496(v0)
  4010d4:	00000000 	nop
  4010d8:	14400013 	bnez	v0,401128 <set_pgfault_handler+0x68>
  4010dc:	00808021 	move	s0,a0
  4010e0:	00002021 	move	a0,zero
  4010e4:	3c057f3f 	lui	a1,0x7f3f
  4010e8:	34a5f000 	ori	a1,a1,0xf000
  4010ec:	0c100494 	jal	401250 <syscall_mem_alloc>
  4010f0:	24060600 	li	a2,1536
  4010f4:	04400007 	bltz	v0,401114 <set_pgfault_handler+0x54>
  4010f8:	3c050040 	lui	a1,0x40
  4010fc:	00002021 	move	a0,zero
  401100:	24a50014 	addiu	a1,a1,20
  401104:	0c100485 	jal	401214 <syscall_set_pgfault_handler>
  401108:	3c067f40 	lui	a2,0x7f40
  40110c:	04410007 	bgez	v0,40112c <set_pgfault_handler+0x6c>
  401110:	3c020040 	lui	v0,0x40
  401114:	3c040040 	lui	a0,0x40
  401118:	0c100062 	jal	400188 <writef>
  40111c:	24846400 	addiu	a0,a0,25600
  401120:	10000003 	b	401130 <set_pgfault_handler+0x70>
  401124:	00000000 	nop
  401128:	3c020040 	lui	v0,0x40
  40112c:	ac505010 	sw	s0,20496(v0)
  401130:	8fbf0014 	lw	ra,20(sp)
  401134:	8fb00010 	lw	s0,16(sp)
  401138:	03e00008 	jr	ra
  40113c:	27bd0018 	addiu	sp,sp,24

00401140 <syscall_putchar>:
  401140:	27bdffe0 	addiu	sp,sp,-32
  401144:	afbf0018 	sw	ra,24(sp)
  401148:	00042e00 	sll	a1,a0,0x18
  40114c:	00052e03 	sra	a1,a1,0x18
  401150:	afa00010 	sw	zero,16(sp)
  401154:	afa00014 	sw	zero,20(sp)
  401158:	24042537 	li	a0,9527
  40115c:	00003021 	move	a2,zero
  401160:	0c100030 	jal	4000c0 <msyscall>
  401164:	00003821 	move	a3,zero
  401168:	8fbf0018 	lw	ra,24(sp)
  40116c:	00000000 	nop
  401170:	03e00008 	jr	ra
  401174:	27bd0020 	addiu	sp,sp,32

00401178 <syscall_getenvid>:
  401178:	27bdffe0 	addiu	sp,sp,-32
  40117c:	afbf0018 	sw	ra,24(sp)
  401180:	afa00010 	sw	zero,16(sp)
  401184:	afa00014 	sw	zero,20(sp)
  401188:	24042538 	li	a0,9528
  40118c:	00002821 	move	a1,zero
  401190:	00003021 	move	a2,zero
  401194:	0c100030 	jal	4000c0 <msyscall>
  401198:	00003821 	move	a3,zero
  40119c:	8fbf0018 	lw	ra,24(sp)
  4011a0:	00000000 	nop
  4011a4:	03e00008 	jr	ra
  4011a8:	27bd0020 	addiu	sp,sp,32

004011ac <syscall_yield>:
  4011ac:	27bdffe0 	addiu	sp,sp,-32
  4011b0:	afbf0018 	sw	ra,24(sp)
  4011b4:	afa00010 	sw	zero,16(sp)
  4011b8:	afa00014 	sw	zero,20(sp)
  4011bc:	24042539 	li	a0,9529
  4011c0:	00002821 	move	a1,zero
  4011c4:	00003021 	move	a2,zero
  4011c8:	0c100030 	jal	4000c0 <msyscall>
  4011cc:	00003821 	move	a3,zero
  4011d0:	8fbf0018 	lw	ra,24(sp)
  4011d4:	00000000 	nop
  4011d8:	03e00008 	jr	ra
  4011dc:	27bd0020 	addiu	sp,sp,32

004011e0 <syscall_env_destroy>:
  4011e0:	27bdffe0 	addiu	sp,sp,-32
  4011e4:	afbf0018 	sw	ra,24(sp)
  4011e8:	00802821 	move	a1,a0
  4011ec:	afa00010 	sw	zero,16(sp)
  4011f0:	afa00014 	sw	zero,20(sp)
  4011f4:	2404253a 	li	a0,9530
  4011f8:	00003021 	move	a2,zero
  4011fc:	0c100030 	jal	4000c0 <msyscall>
  401200:	00003821 	move	a3,zero
  401204:	8fbf0018 	lw	ra,24(sp)
  401208:	00000000 	nop
  40120c:	03e00008 	jr	ra
  401210:	27bd0020 	addiu	sp,sp,32

00401214 <syscall_set_pgfault_handler>:
  401214:	27bdffe0 	addiu	sp,sp,-32
  401218:	afbf0018 	sw	ra,24(sp)
  40121c:	00801021 	move	v0,a0
  401220:	00a01821 	move	v1,a1
  401224:	00c03821 	move	a3,a2
  401228:	afa00010 	sw	zero,16(sp)
  40122c:	afa00014 	sw	zero,20(sp)
  401230:	2404253b 	li	a0,9531
  401234:	00402821 	move	a1,v0
  401238:	0c100030 	jal	4000c0 <msyscall>
  40123c:	00603021 	move	a2,v1
  401240:	8fbf0018 	lw	ra,24(sp)
  401244:	00000000 	nop
  401248:	03e00008 	jr	ra
  40124c:	27bd0020 	addiu	sp,sp,32

00401250 <syscall_mem_alloc>:
  401250:	27bdffe0 	addiu	sp,sp,-32
  401254:	afbf0018 	sw	ra,24(sp)
  401258:	00801021 	move	v0,a0
  40125c:	00a01821 	move	v1,a1
  401260:	00c03821 	move	a3,a2
  401264:	afa00010 	sw	zero,16(sp)
  401268:	afa00014 	sw	zero,20(sp)
  40126c:	2404253c 	li	a0,9532
  401270:	00402821 	move	a1,v0
  401274:	0c100030 	jal	4000c0 <msyscall>
  401278:	00603021 	move	a2,v1
  40127c:	8fbf0018 	lw	ra,24(sp)
  401280:	00000000 	nop
  401284:	03e00008 	jr	ra
  401288:	27bd0020 	addiu	sp,sp,32

0040128c <syscall_mem_map>:
  40128c:	27bdffe0 	addiu	sp,sp,-32
  401290:	afbf0018 	sw	ra,24(sp)
  401294:	00801821 	move	v1,a0
  401298:	00a04021 	move	t0,a1
  40129c:	00c04821 	move	t1,a2
  4012a0:	afa70010 	sw	a3,16(sp)
  4012a4:	8fa20030 	lw	v0,48(sp)
  4012a8:	00000000 	nop
  4012ac:	afa20014 	sw	v0,20(sp)
  4012b0:	2404253d 	li	a0,9533
  4012b4:	00602821 	move	a1,v1
  4012b8:	01003021 	move	a2,t0
  4012bc:	0c100030 	jal	4000c0 <msyscall>
  4012c0:	01203821 	move	a3,t1
  4012c4:	8fbf0018 	lw	ra,24(sp)
  4012c8:	00000000 	nop
  4012cc:	03e00008 	jr	ra
  4012d0:	27bd0020 	addiu	sp,sp,32

004012d4 <syscall_mem_unmap>:
  4012d4:	27bdffe0 	addiu	sp,sp,-32
  4012d8:	afbf0018 	sw	ra,24(sp)
  4012dc:	00801021 	move	v0,a0
  4012e0:	00a03021 	move	a2,a1
  4012e4:	afa00010 	sw	zero,16(sp)
  4012e8:	afa00014 	sw	zero,20(sp)
  4012ec:	2404253e 	li	a0,9534
  4012f0:	00402821 	move	a1,v0
  4012f4:	0c100030 	jal	4000c0 <msyscall>
  4012f8:	00003821 	move	a3,zero
  4012fc:	8fbf0018 	lw	ra,24(sp)
  401300:	00000000 	nop
  401304:	03e00008 	jr	ra
  401308:	27bd0020 	addiu	sp,sp,32

0040130c <syscall_set_env_status>:
  40130c:	27bdffe0 	addiu	sp,sp,-32
  401310:	afbf0018 	sw	ra,24(sp)
  401314:	00801021 	move	v0,a0
  401318:	00a03021 	move	a2,a1
  40131c:	afa00010 	sw	zero,16(sp)
  401320:	afa00014 	sw	zero,20(sp)
  401324:	24042540 	li	a0,9536
  401328:	00402821 	move	a1,v0
  40132c:	0c100030 	jal	4000c0 <msyscall>
  401330:	00003821 	move	a3,zero
  401334:	8fbf0018 	lw	ra,24(sp)
  401338:	00000000 	nop
  40133c:	03e00008 	jr	ra
  401340:	27bd0020 	addiu	sp,sp,32

00401344 <syscall_set_trapframe>:
  401344:	27bdffe0 	addiu	sp,sp,-32
  401348:	afbf0018 	sw	ra,24(sp)
  40134c:	00801021 	move	v0,a0
  401350:	00a03021 	move	a2,a1
  401354:	afa00010 	sw	zero,16(sp)
  401358:	afa00014 	sw	zero,20(sp)
  40135c:	24042541 	li	a0,9537
  401360:	00402821 	move	a1,v0
  401364:	0c100030 	jal	4000c0 <msyscall>
  401368:	00003821 	move	a3,zero
  40136c:	8fbf0018 	lw	ra,24(sp)
  401370:	00000000 	nop
  401374:	03e00008 	jr	ra
  401378:	27bd0020 	addiu	sp,sp,32

0040137c <syscall_panic>:
  40137c:	27bdffe0 	addiu	sp,sp,-32
  401380:	afbf0018 	sw	ra,24(sp)
  401384:	00802821 	move	a1,a0
  401388:	afa00010 	sw	zero,16(sp)
  40138c:	afa00014 	sw	zero,20(sp)
  401390:	24042542 	li	a0,9538
  401394:	00003021 	move	a2,zero
  401398:	0c100030 	jal	4000c0 <msyscall>
  40139c:	00003821 	move	a3,zero
  4013a0:	8fbf0018 	lw	ra,24(sp)
  4013a4:	00000000 	nop
  4013a8:	03e00008 	jr	ra
  4013ac:	27bd0020 	addiu	sp,sp,32

004013b0 <syscall_ipc_can_send>:
  4013b0:	27bdffe0 	addiu	sp,sp,-32
  4013b4:	afbf0018 	sw	ra,24(sp)
  4013b8:	00801021 	move	v0,a0
  4013bc:	00a01821 	move	v1,a1
  4013c0:	00c04021 	move	t0,a2
  4013c4:	afa70010 	sw	a3,16(sp)
  4013c8:	afa00014 	sw	zero,20(sp)
  4013cc:	24042543 	li	a0,9539
  4013d0:	00402821 	move	a1,v0
  4013d4:	00603021 	move	a2,v1
  4013d8:	0c100030 	jal	4000c0 <msyscall>
  4013dc:	01003821 	move	a3,t0
  4013e0:	8fbf0018 	lw	ra,24(sp)
  4013e4:	00000000 	nop
  4013e8:	03e00008 	jr	ra
  4013ec:	27bd0020 	addiu	sp,sp,32

004013f0 <syscall_ipc_recv>:
  4013f0:	27bdffe0 	addiu	sp,sp,-32
  4013f4:	afbf0018 	sw	ra,24(sp)
  4013f8:	00802821 	move	a1,a0
  4013fc:	afa00010 	sw	zero,16(sp)
  401400:	afa00014 	sw	zero,20(sp)
  401404:	24042544 	li	a0,9540
  401408:	00003021 	move	a2,zero
  40140c:	0c100030 	jal	4000c0 <msyscall>
  401410:	00003821 	move	a3,zero
  401414:	8fbf0018 	lw	ra,24(sp)
  401418:	00000000 	nop
  40141c:	03e00008 	jr	ra
  401420:	27bd0020 	addiu	sp,sp,32

00401424 <syscall_cgetc>:
  401424:	27bdffe0 	addiu	sp,sp,-32
  401428:	afbf0018 	sw	ra,24(sp)
  40142c:	afa00010 	sw	zero,16(sp)
  401430:	afa00014 	sw	zero,20(sp)
  401434:	24042545 	li	a0,9541
  401438:	00002821 	move	a1,zero
  40143c:	00003021 	move	a2,zero
  401440:	0c100030 	jal	4000c0 <msyscall>
  401444:	00003821 	move	a3,zero
  401448:	8fbf0018 	lw	ra,24(sp)
  40144c:	00000000 	nop
  401450:	03e00008 	jr	ra
  401454:	27bd0020 	addiu	sp,sp,32
	...

00401460 <ipc_send>:
  401460:	27bdffd8 	addiu	sp,sp,-40
  401464:	afbf0024 	sw	ra,36(sp)
  401468:	afb40020 	sw	s4,32(sp)
  40146c:	afb3001c 	sw	s3,28(sp)
  401470:	afb20018 	sw	s2,24(sp)
  401474:	afb10014 	sw	s1,20(sp)
  401478:	afb00010 	sw	s0,16(sp)
  40147c:	0080a021 	move	s4,a0
  401480:	00a09821 	move	s3,a1
  401484:	00c09021 	move	s2,a2
  401488:	00e08821 	move	s1,a3
  40148c:	10000003 	b	40149c <ipc_send+0x3c>
  401490:	2410fffa 	li	s0,-6
  401494:	0c10046b 	jal	4011ac <syscall_yield>
  401498:	00000000 	nop
  40149c:	02802021 	move	a0,s4
  4014a0:	02602821 	move	a1,s3
  4014a4:	02403021 	move	a2,s2
  4014a8:	0c1004ec 	jal	4013b0 <syscall_ipc_can_send>
  4014ac:	02203821 	move	a3,s1
  4014b0:	1050fff8 	beq	v0,s0,401494 <ipc_send+0x34>
  4014b4:	00000000 	nop
  4014b8:	10400007 	beqz	v0,4014d8 <ipc_send+0x78>
  4014bc:	3c040040 	lui	a0,0x40
  4014c0:	2484641c 	addiu	a0,a0,25628
  4014c4:	2405001c 	li	a1,28
  4014c8:	3c060040 	lui	a2,0x40
  4014cc:	24c66424 	addiu	a2,a2,25636
  4014d0:	0c100072 	jal	4001c8 <_user_panic>
  4014d4:	00403821 	move	a3,v0
  4014d8:	8fbf0024 	lw	ra,36(sp)
  4014dc:	8fb40020 	lw	s4,32(sp)
  4014e0:	8fb3001c 	lw	s3,28(sp)
  4014e4:	8fb20018 	lw	s2,24(sp)
  4014e8:	8fb10014 	lw	s1,20(sp)
  4014ec:	8fb00010 	lw	s0,16(sp)
  4014f0:	03e00008 	jr	ra
  4014f4:	27bd0028 	addiu	sp,sp,40

004014f8 <ipc_recv>:
  4014f8:	27bdffe0 	addiu	sp,sp,-32
  4014fc:	afbf0018 	sw	ra,24(sp)
  401500:	afb10014 	sw	s1,20(sp)
  401504:	afb00010 	sw	s0,16(sp)
  401508:	00808021 	move	s0,a0
  40150c:	00c08821 	move	s1,a2
  401510:	0c1004fc 	jal	4013f0 <syscall_ipc_recv>
  401514:	00a02021 	move	a0,a1
  401518:	12000006 	beqz	s0,401534 <ipc_recv+0x3c>
  40151c:	3c020040 	lui	v0,0x40
  401520:	8c427000 	lw	v0,28672(v0)
  401524:	00000000 	nop
  401528:	8c4200c8 	lw	v0,200(v0)
  40152c:	00000000 	nop
  401530:	ae020000 	sw	v0,0(s0)
  401534:	12200006 	beqz	s1,401550 <ipc_recv+0x58>
  401538:	3c020040 	lui	v0,0x40
  40153c:	8c427000 	lw	v0,28672(v0)
  401540:	00000000 	nop
  401544:	8c4200d4 	lw	v0,212(v0)
  401548:	00000000 	nop
  40154c:	ae220000 	sw	v0,0(s1)
  401550:	3c020040 	lui	v0,0x40
  401554:	8c427000 	lw	v0,28672(v0)
  401558:	00000000 	nop
  40155c:	8c4200c4 	lw	v0,196(v0)
  401560:	8fbf0018 	lw	ra,24(sp)
  401564:	8fb10014 	lw	s1,20(sp)
  401568:	8fb00010 	lw	s0,16(sp)
  40156c:	03e00008 	jr	ra
  401570:	27bd0020 	addiu	sp,sp,32
	...

00401580 <strlen>:
  401580:	80820000 	lb	v0,0(a0)
  401584:	00000000 	nop
  401588:	10400006 	beqz	v0,4015a4 <strlen+0x24>
  40158c:	00001821 	move	v1,zero
  401590:	24840001 	addiu	a0,a0,1
  401594:	80820000 	lb	v0,0(a0)
  401598:	00000000 	nop
  40159c:	1440fffc 	bnez	v0,401590 <strlen+0x10>
  4015a0:	24630001 	addiu	v1,v1,1
  4015a4:	03e00008 	jr	ra
  4015a8:	00601021 	move	v0,v1

004015ac <strcpy>:
  4015ac:	00801821 	move	v1,a0
  4015b0:	80a20000 	lb	v0,0(a1)
  4015b4:	00000000 	nop
  4015b8:	a0620000 	sb	v0,0(v1)
  4015bc:	24630001 	addiu	v1,v1,1
  4015c0:	1440fffb 	bnez	v0,4015b0 <strcpy+0x4>
  4015c4:	24a50001 	addiu	a1,a1,1
  4015c8:	03e00008 	jr	ra
  4015cc:	00801021 	move	v0,a0

004015d0 <strchr>:
  4015d0:	00801021 	move	v0,a0
  4015d4:	00052e00 	sll	a1,a1,0x18
  4015d8:	80830000 	lb	v1,0(a0)
  4015dc:	00000000 	nop
  4015e0:	1460000c 	bnez	v1,401614 <strchr+0x44>
  4015e4:	00052e03 	sra	a1,a1,0x18
  4015e8:	03e00008 	jr	ra
  4015ec:	00001021 	move	v0,zero
  4015f0:	10a3000a 	beq	a1,v1,40161c <strchr+0x4c>
  4015f4:	00000000 	nop
  4015f8:	24420001 	addiu	v0,v0,1
  4015fc:	80430000 	lb	v1,0(v0)
  401600:	00000000 	nop
  401604:	1460fffa 	bnez	v1,4015f0 <strchr+0x20>
  401608:	00000000 	nop
  40160c:	03e00008 	jr	ra
  401610:	00001021 	move	v0,zero
  401614:	14a3fff8 	bne	a1,v1,4015f8 <strchr+0x28>
  401618:	00000000 	nop
  40161c:	03e00008 	jr	ra
  401620:	00000000 	nop

00401624 <memcpy>:
  401624:	10c0000a 	beqz	a2,401650 <memcpy+0x2c>
  401628:	24c2ffff 	addiu	v0,a2,-1
  40162c:	00801821 	move	v1,a0
  401630:	00821021 	addu	v0,a0,v0
  401634:	24460001 	addiu	a2,v0,1
  401638:	90a20000 	lbu	v0,0(a1)
  40163c:	00000000 	nop
  401640:	a0620000 	sb	v0,0(v1)
  401644:	24630001 	addiu	v1,v1,1
  401648:	1466fffb 	bne	v1,a2,401638 <memcpy+0x14>
  40164c:	24a50001 	addiu	a1,a1,1
  401650:	03e00008 	jr	ra
  401654:	00801021 	move	v0,a0

00401658 <strcmp>:
  401658:	80830000 	lb	v1,0(a0)
  40165c:	00000000 	nop
  401660:	1060000c 	beqz	v1,401694 <strcmp+0x3c>
  401664:	00000000 	nop
  401668:	10000014 	b	4016bc <strcmp+0x64>
  40166c:	00000000 	nop
  401670:	24840001 	addiu	a0,a0,1
  401674:	80830000 	lb	v1,0(a0)
  401678:	00000000 	nop
  40167c:	10600005 	beqz	v1,401694 <strcmp+0x3c>
  401680:	24a50001 	addiu	a1,a1,1
  401684:	80a20000 	lb	v0,0(a1)
  401688:	00000000 	nop
  40168c:	1043fff8 	beq	v0,v1,401670 <strcmp+0x18>
  401690:	00000000 	nop
  401694:	306300ff 	andi	v1,v1,0xff
  401698:	90a50000 	lbu	a1,0(a1)
  40169c:	00000000 	nop
  4016a0:	0065102b 	sltu	v0,v1,a1
  4016a4:	10400003 	beqz	v0,4016b4 <strcmp+0x5c>
  4016a8:	00000000 	nop
  4016ac:	03e00008 	jr	ra
  4016b0:	2402ffff 	li	v0,-1
  4016b4:	03e00008 	jr	ra
  4016b8:	00a3102b 	sltu	v0,a1,v1
  4016bc:	80a20000 	lb	v0,0(a1)
  4016c0:	00000000 	nop
  4016c4:	1443fff4 	bne	v0,v1,401698 <strcmp+0x40>
  4016c8:	306300ff 	andi	v1,v1,0xff
  4016cc:	1000ffe9 	b	401674 <strcmp+0x1c>
  4016d0:	24840001 	addiu	a0,a0,1
	...

004016e0 <dev_lookup>:
  4016e0:	27bdffe8 	addiu	sp,sp,-24
  4016e4:	afbf0010 	sw	ra,16(sp)
  4016e8:	00803021 	move	a2,a0
  4016ec:	3c020040 	lui	v0,0x40
  4016f0:	8c4465c8 	lw	a0,26056(v0)
  4016f4:	00000000 	nop
  4016f8:	14800017 	bnez	a0,401758 <dev_lookup+0x78>
  4016fc:	3c020040 	lui	v0,0x40
  401700:	1000000e 	b	40173c <dev_lookup+0x5c>
  401704:	00000000 	nop
  401708:	8c820000 	lw	v0,0(a0)
  40170c:	00000000 	nop
  401710:	14c20006 	bne	a2,v0,40172c <dev_lookup+0x4c>
  401714:	24630004 	addiu	v1,v1,4
  401718:	aca40000 	sw	a0,0(a1)
  40171c:	10000014 	b	401770 <dev_lookup+0x90>
  401720:	00001021 	move	v0,zero
  401724:	3c020040 	lui	v0,0x40
  401728:	244365cc 	addiu	v1,v0,26060
  40172c:	8c640000 	lw	a0,0(v1)
  401730:	00000000 	nop
  401734:	1480fff4 	bnez	a0,401708 <dev_lookup+0x28>
  401738:	3c020040 	lui	v0,0x40
  40173c:	8c427000 	lw	v0,28672(v0)
  401740:	3c040040 	lui	a0,0x40
  401744:	8c4500a4 	lw	a1,164(v0)
  401748:	0c100062 	jal	400188 <writef>
  40174c:	2484643c 	addiu	a0,a0,25660
  401750:	10000007 	b	401770 <dev_lookup+0x90>
  401754:	2402fffd 	li	v0,-3
  401758:	8c820000 	lw	v0,0(a0)
  40175c:	00000000 	nop
  401760:	14c2fff0 	bne	a2,v0,401724 <dev_lookup+0x44>
  401764:	00000000 	nop
  401768:	1000ffec 	b	40171c <dev_lookup+0x3c>
  40176c:	aca40000 	sw	a0,0(a1)
  401770:	8fbf0010 	lw	ra,16(sp)
  401774:	00000000 	nop
  401778:	03e00008 	jr	ra
  40177c:	27bd0018 	addiu	sp,sp,24

00401780 <fd_alloc>:
  401780:	3c020040 	lui	v0,0x40
  401784:	8c46500c 	lw	a2,20492(v0)
  401788:	3c055fc0 	lui	a1,0x5fc0
  40178c:	3c080040 	lui	t0,0x40
  401790:	3c025fc1 	lui	v0,0x5fc1
  401794:	3447f000 	ori	a3,v0,0xf000
  401798:	00051582 	srl	v0,a1,0x16
  40179c:	00021080 	sll	v0,v0,0x2
  4017a0:	00c21021 	addu	v0,a2,v0
  4017a4:	8c420000 	lw	v0,0(v0)
  4017a8:	00000000 	nop
  4017ac:	30420200 	andi	v0,v0,0x200
  4017b0:	14400003 	bnez	v0,4017c0 <fd_alloc+0x40>
  4017b4:	00000000 	nop
  4017b8:	03e00008 	jr	ra
  4017bc:	ac850000 	sw	a1,0(a0)
  4017c0:	00051302 	srl	v0,a1,0xc
  4017c4:	00021080 	sll	v0,v0,0x2
  4017c8:	8d035008 	lw	v1,20488(t0)
  4017cc:	00000000 	nop
  4017d0:	00431021 	addu	v0,v0,v1
  4017d4:	8c420000 	lw	v0,0(v0)
  4017d8:	00000000 	nop
  4017dc:	30420200 	andi	v0,v0,0x200
  4017e0:	14400004 	bnez	v0,4017f4 <fd_alloc+0x74>
  4017e4:	24a51000 	addiu	a1,a1,4096
  4017e8:	24a5f000 	addiu	a1,a1,-4096
  4017ec:	03e00008 	jr	ra
  4017f0:	ac850000 	sw	a1,0(a0)
  4017f4:	14a7ffe8 	bne	a1,a3,401798 <fd_alloc+0x18>
  4017f8:	2402fff8 	li	v0,-8
  4017fc:	03e00008 	jr	ra
  401800:	00000000 	nop

00401804 <fd_close>:
  401804:	27bdffe8 	addiu	sp,sp,-24
  401808:	afbf0010 	sw	ra,16(sp)
  40180c:	00802821 	move	a1,a0
  401810:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  401814:	00002021 	move	a0,zero
  401818:	8fbf0010 	lw	ra,16(sp)
  40181c:	00000000 	nop
  401820:	03e00008 	jr	ra
  401824:	27bd0018 	addiu	sp,sp,24

00401828 <fd_lookup>:
  401828:	28820020 	slti	v0,a0,32
  40182c:	10400010 	beqz	v0,401870 <fd_lookup+0x48>
  401830:	00041b00 	sll	v1,a0,0xc
  401834:	3c025fc0 	lui	v0,0x5fc0
  401838:	00622021 	addu	a0,v1,v0
  40183c:	00041282 	srl	v0,a0,0xa
  401840:	3c030040 	lui	v1,0x40
  401844:	8c635008 	lw	v1,20488(v1)
  401848:	00000000 	nop
  40184c:	00431021 	addu	v0,v0,v1
  401850:	8c420000 	lw	v0,0(v0)
  401854:	00000000 	nop
  401858:	30420200 	andi	v0,v0,0x200
  40185c:	10400004 	beqz	v0,401870 <fd_lookup+0x48>
  401860:	00000000 	nop
  401864:	aca40000 	sw	a0,0(a1)
  401868:	03e00008 	jr	ra
  40186c:	00001021 	move	v0,zero
  401870:	03e00008 	jr	ra
  401874:	2402fffd 	li	v0,-3

00401878 <fd2data>:
  401878:	27bdffe8 	addiu	sp,sp,-24
  40187c:	afbf0010 	sw	ra,16(sp)
  401880:	0c100629 	jal	4018a4 <fd2num>
  401884:	00000000 	nop
  401888:	00021d80 	sll	v1,v0,0x16
  40188c:	3c026000 	lui	v0,0x6000
  401890:	00621021 	addu	v0,v1,v0
  401894:	8fbf0010 	lw	ra,16(sp)
  401898:	00000000 	nop
  40189c:	03e00008 	jr	ra
  4018a0:	27bd0018 	addiu	sp,sp,24

004018a4 <fd2num>:
  4018a4:	3c02a040 	lui	v0,0xa040
  4018a8:	00821021 	addu	v0,a0,v0
  4018ac:	03e00008 	jr	ra
  4018b0:	00021302 	srl	v0,v0,0xc

004018b4 <num2fd>:
  4018b4:	00042300 	sll	a0,a0,0xc
  4018b8:	3c025fc0 	lui	v0,0x5fc0
  4018bc:	03e00008 	jr	ra
  4018c0:	00821021 	addu	v0,a0,v0

004018c4 <close>:
  4018c4:	27bdffe0 	addiu	sp,sp,-32
  4018c8:	afbf001c 	sw	ra,28(sp)
  4018cc:	afb00018 	sw	s0,24(sp)
  4018d0:	0c10060a 	jal	401828 <fd_lookup>
  4018d4:	27a50014 	addiu	a1,sp,20
  4018d8:	04400011 	bltz	v0,401920 <close+0x5c>
  4018dc:	00408021 	move	s0,v0
  4018e0:	8fa20014 	lw	v0,20(sp)
  4018e4:	00000000 	nop
  4018e8:	8c440000 	lw	a0,0(v0)
  4018ec:	0c1005b8 	jal	4016e0 <dev_lookup>
  4018f0:	27a50010 	addiu	a1,sp,16
  4018f4:	0440000a 	bltz	v0,401920 <close+0x5c>
  4018f8:	00408021 	move	s0,v0
  4018fc:	8fa20010 	lw	v0,16(sp)
  401900:	00000000 	nop
  401904:	8c420010 	lw	v0,16(v0)
  401908:	8fa40014 	lw	a0,20(sp)
  40190c:	0040f809 	jalr	v0
  401910:	00000000 	nop
  401914:	8fa40014 	lw	a0,20(sp)
  401918:	0c100601 	jal	401804 <fd_close>
  40191c:	00408021 	move	s0,v0
  401920:	02001021 	move	v0,s0
  401924:	8fbf001c 	lw	ra,28(sp)
  401928:	8fb00018 	lw	s0,24(sp)
  40192c:	03e00008 	jr	ra
  401930:	27bd0020 	addiu	sp,sp,32

00401934 <close_all>:
  401934:	27bdffe0 	addiu	sp,sp,-32
  401938:	afbf0018 	sw	ra,24(sp)
  40193c:	afb10014 	sw	s1,20(sp)
  401940:	afb00010 	sw	s0,16(sp)
  401944:	00008021 	move	s0,zero
  401948:	24110020 	li	s1,32
  40194c:	0c100631 	jal	4018c4 <close>
  401950:	02002021 	move	a0,s0
  401954:	26100001 	addiu	s0,s0,1
  401958:	1611fffc 	bne	s0,s1,40194c <close_all+0x18>
  40195c:	00000000 	nop
  401960:	8fbf0018 	lw	ra,24(sp)
  401964:	8fb10014 	lw	s1,20(sp)
  401968:	8fb00010 	lw	s0,16(sp)
  40196c:	03e00008 	jr	ra
  401970:	27bd0020 	addiu	sp,sp,32

00401974 <dup>:
  401974:	27bdffb8 	addiu	sp,sp,-72
  401978:	afbf0040 	sw	ra,64(sp)
  40197c:	afb7003c 	sw	s7,60(sp)
  401980:	afb60038 	sw	s6,56(sp)
  401984:	afb50034 	sw	s5,52(sp)
  401988:	afb40030 	sw	s4,48(sp)
  40198c:	afb3002c 	sw	s3,44(sp)
  401990:	afb20028 	sw	s2,40(sp)
  401994:	afb10024 	sw	s1,36(sp)
  401998:	afb00020 	sw	s0,32(sp)
  40199c:	00a0b821 	move	s7,a1
  4019a0:	0c10060a 	jal	401828 <fd_lookup>
  4019a4:	27a50018 	addiu	a1,sp,24
  4019a8:	0440004f 	bltz	v0,401ae8 <dup+0x174>
  4019ac:	00409821 	move	s3,v0
  4019b0:	0c100631 	jal	4018c4 <close>
  4019b4:	02e02021 	move	a0,s7
  4019b8:	00178300 	sll	s0,s7,0xc
  4019bc:	3c025fc0 	lui	v0,0x5fc0
  4019c0:	8fa40018 	lw	a0,24(sp)
  4019c4:	0c10061e 	jal	401878 <fd2data>
  4019c8:	02028021 	addu	s0,s0,v0
  4019cc:	0040a821 	move	s5,v0
  4019d0:	0c10061e 	jal	401878 <fd2data>
  4019d4:	02002021 	move	a0,s0
  4019d8:	00409021 	move	s2,v0
  4019dc:	8fa50018 	lw	a1,24(sp)
  4019e0:	0200b021 	move	s6,s0
  4019e4:	00051302 	srl	v0,a1,0xc
  4019e8:	00021080 	sll	v0,v0,0x2
  4019ec:	3c030040 	lui	v1,0x40
  4019f0:	8c635008 	lw	v1,20488(v1)
  4019f4:	00000000 	nop
  4019f8:	00431021 	addu	v0,v0,v1
  4019fc:	8c420000 	lw	v0,0(v0)
  401a00:	00000000 	nop
  401a04:	30420604 	andi	v0,v0,0x604
  401a08:	afa20010 	sw	v0,16(sp)
  401a0c:	00002021 	move	a0,zero
  401a10:	00003021 	move	a2,zero
  401a14:	0c1004a3 	jal	40128c <syscall_mem_map>
  401a18:	02003821 	move	a3,s0
  401a1c:	04400024 	bltz	v0,401ab0 <dup+0x13c>
  401a20:	00409821 	move	s3,v0
  401a24:	00151582 	srl	v0,s5,0x16
  401a28:	00021080 	sll	v0,v0,0x2
  401a2c:	3c030040 	lui	v1,0x40
  401a30:	8c63500c 	lw	v1,20492(v1)
  401a34:	00000000 	nop
  401a38:	00431021 	addu	v0,v0,v1
  401a3c:	8c420000 	lw	v0,0(v0)
  401a40:	00000000 	nop
  401a44:	10400027 	beqz	v0,401ae4 <dup+0x170>
  401a48:	00008821 	move	s1,zero
  401a4c:	3c140040 	lui	s4,0x40
  401a50:	3c100040 	lui	s0,0x40
  401a54:	02b12821 	addu	a1,s5,s1
  401a58:	00051302 	srl	v0,a1,0xc
  401a5c:	00021080 	sll	v0,v0,0x2
  401a60:	8e835008 	lw	v1,20488(s4)
  401a64:	00000000 	nop
  401a68:	00431021 	addu	v0,v0,v1
  401a6c:	8c430000 	lw	v1,0(v0)
  401a70:	00000000 	nop
  401a74:	30620200 	andi	v0,v1,0x200
  401a78:	10400008 	beqz	v0,401a9c <dup+0x128>
  401a7c:	30620604 	andi	v0,v1,0x604
  401a80:	afa20010 	sw	v0,16(sp)
  401a84:	00002021 	move	a0,zero
  401a88:	00003021 	move	a2,zero
  401a8c:	0c1004a3 	jal	40128c <syscall_mem_map>
  401a90:	02513821 	addu	a3,s2,s1
  401a94:	04400006 	bltz	v0,401ab0 <dup+0x13c>
  401a98:	00409821 	move	s3,v0
  401a9c:	26311000 	addiu	s1,s1,4096
  401aa0:	12300010 	beq	s1,s0,401ae4 <dup+0x170>
  401aa4:	02b12821 	addu	a1,s5,s1
  401aa8:	1000ffec 	b	401a5c <dup+0xe8>
  401aac:	00051302 	srl	v0,a1,0xc
  401ab0:	00002021 	move	a0,zero
  401ab4:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  401ab8:	02c02821 	move	a1,s6
  401abc:	00008021 	move	s0,zero
  401ac0:	3c110040 	lui	s1,0x40
  401ac4:	00002021 	move	a0,zero
  401ac8:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  401acc:	02502821 	addu	a1,s2,s0
  401ad0:	26101000 	addiu	s0,s0,4096
  401ad4:	12110004 	beq	s0,s1,401ae8 <dup+0x174>
  401ad8:	00002021 	move	a0,zero
  401adc:	1000fffa 	b	401ac8 <dup+0x154>
  401ae0:	00000000 	nop
  401ae4:	02e09821 	move	s3,s7
  401ae8:	02601021 	move	v0,s3
  401aec:	8fbf0040 	lw	ra,64(sp)
  401af0:	8fb7003c 	lw	s7,60(sp)
  401af4:	8fb60038 	lw	s6,56(sp)
  401af8:	8fb50034 	lw	s5,52(sp)
  401afc:	8fb40030 	lw	s4,48(sp)
  401b00:	8fb3002c 	lw	s3,44(sp)
  401b04:	8fb20028 	lw	s2,40(sp)
  401b08:	8fb10024 	lw	s1,36(sp)
  401b0c:	8fb00020 	lw	s0,32(sp)
  401b10:	03e00008 	jr	ra
  401b14:	27bd0048 	addiu	sp,sp,72

00401b18 <read>:
  401b18:	27bdffd8 	addiu	sp,sp,-40
  401b1c:	afbf0024 	sw	ra,36(sp)
  401b20:	afb20020 	sw	s2,32(sp)
  401b24:	afb1001c 	sw	s1,28(sp)
  401b28:	afb00018 	sw	s0,24(sp)
  401b2c:	00809021 	move	s2,a0
  401b30:	00a08021 	move	s0,a1
  401b34:	00c08821 	move	s1,a2
  401b38:	0c10060a 	jal	401828 <fd_lookup>
  401b3c:	27a50014 	addiu	a1,sp,20
  401b40:	04400028 	bltz	v0,401be4 <read+0xcc>
  401b44:	00402021 	move	a0,v0
  401b48:	8fa20014 	lw	v0,20(sp)
  401b4c:	00000000 	nop
  401b50:	8c440000 	lw	a0,0(v0)
  401b54:	0c1005b8 	jal	4016e0 <dev_lookup>
  401b58:	27a50010 	addiu	a1,sp,16
  401b5c:	04400021 	bltz	v0,401be4 <read+0xcc>
  401b60:	00402021 	move	a0,v0
  401b64:	8fa70014 	lw	a3,20(sp)
  401b68:	00000000 	nop
  401b6c:	8ce20008 	lw	v0,8(a3)
  401b70:	00000000 	nop
  401b74:	30420003 	andi	v0,v0,0x3
  401b78:	24030001 	li	v1,1
  401b7c:	1443000a 	bne	v0,v1,401ba8 <read+0x90>
  401b80:	02002821 	move	a1,s0
  401b84:	3c020040 	lui	v0,0x40
  401b88:	8c427000 	lw	v0,28672(v0)
  401b8c:	3c040040 	lui	a0,0x40
  401b90:	2484645c 	addiu	a0,a0,25692
  401b94:	8c4500a4 	lw	a1,164(v0)
  401b98:	0c100062 	jal	400188 <writef>
  401b9c:	02403021 	move	a2,s2
  401ba0:	10000010 	b	401be4 <read+0xcc>
  401ba4:	2404fffd 	li	a0,-3
  401ba8:	8fa20010 	lw	v0,16(sp)
  401bac:	00000000 	nop
  401bb0:	8c420008 	lw	v0,8(v0)
  401bb4:	00e02021 	move	a0,a3
  401bb8:	8ce70004 	lw	a3,4(a3)
  401bbc:	0040f809 	jalr	v0
  401bc0:	02203021 	move	a2,s1
  401bc4:	04400007 	bltz	v0,401be4 <read+0xcc>
  401bc8:	00402021 	move	a0,v0
  401bcc:	8fa30014 	lw	v1,20(sp)
  401bd0:	00000000 	nop
  401bd4:	8c620004 	lw	v0,4(v1)
  401bd8:	00000000 	nop
  401bdc:	00821021 	addu	v0,a0,v0
  401be0:	ac620004 	sw	v0,4(v1)
  401be4:	00801021 	move	v0,a0
  401be8:	8fbf0024 	lw	ra,36(sp)
  401bec:	8fb20020 	lw	s2,32(sp)
  401bf0:	8fb1001c 	lw	s1,28(sp)
  401bf4:	8fb00018 	lw	s0,24(sp)
  401bf8:	03e00008 	jr	ra
  401bfc:	27bd0028 	addiu	sp,sp,40

00401c00 <readn>:
  401c00:	27bdffd8 	addiu	sp,sp,-40
  401c04:	afbf0020 	sw	ra,32(sp)
  401c08:	afb3001c 	sw	s3,28(sp)
  401c0c:	afb20018 	sw	s2,24(sp)
  401c10:	afb10014 	sw	s1,20(sp)
  401c14:	afb00010 	sw	s0,16(sp)
  401c18:	00809821 	move	s3,a0
  401c1c:	00a09021 	move	s2,a1
  401c20:	14c00003 	bnez	a2,401c30 <readn+0x30>
  401c24:	00c08821 	move	s1,a2
  401c28:	10000010 	b	401c6c <readn+0x6c>
  401c2c:	00001021 	move	v0,zero
  401c30:	00008021 	move	s0,zero
  401c34:	00001821 	move	v1,zero
  401c38:	02602021 	move	a0,s3
  401c3c:	02432821 	addu	a1,s2,v1
  401c40:	0c1006c6 	jal	401b18 <read>
  401c44:	02233023 	subu	a2,s1,v1
  401c48:	04400008 	bltz	v0,401c6c <readn+0x6c>
  401c4c:	00000000 	nop
  401c50:	10400005 	beqz	v0,401c68 <readn+0x68>
  401c54:	00000000 	nop
  401c58:	02028021 	addu	s0,s0,v0
  401c5c:	0211102b 	sltu	v0,s0,s1
  401c60:	1440fff5 	bnez	v0,401c38 <readn+0x38>
  401c64:	02001821 	move	v1,s0
  401c68:	02001021 	move	v0,s0
  401c6c:	8fbf0020 	lw	ra,32(sp)
  401c70:	8fb3001c 	lw	s3,28(sp)
  401c74:	8fb20018 	lw	s2,24(sp)
  401c78:	8fb10014 	lw	s1,20(sp)
  401c7c:	8fb00010 	lw	s0,16(sp)
  401c80:	03e00008 	jr	ra
  401c84:	27bd0028 	addiu	sp,sp,40

00401c88 <write>:
  401c88:	27bdffd8 	addiu	sp,sp,-40
  401c8c:	afbf0024 	sw	ra,36(sp)
  401c90:	afb20020 	sw	s2,32(sp)
  401c94:	afb1001c 	sw	s1,28(sp)
  401c98:	afb00018 	sw	s0,24(sp)
  401c9c:	00809021 	move	s2,a0
  401ca0:	00a08021 	move	s0,a1
  401ca4:	00c08821 	move	s1,a2
  401ca8:	0c10060a 	jal	401828 <fd_lookup>
  401cac:	27a50014 	addiu	a1,sp,20
  401cb0:	04400027 	bltz	v0,401d50 <write+0xc8>
  401cb4:	00402021 	move	a0,v0
  401cb8:	8fa20014 	lw	v0,20(sp)
  401cbc:	00000000 	nop
  401cc0:	8c440000 	lw	a0,0(v0)
  401cc4:	0c1005b8 	jal	4016e0 <dev_lookup>
  401cc8:	27a50010 	addiu	a1,sp,16
  401ccc:	04400020 	bltz	v0,401d50 <write+0xc8>
  401cd0:	00402021 	move	a0,v0
  401cd4:	8fa30014 	lw	v1,20(sp)
  401cd8:	00000000 	nop
  401cdc:	8c620008 	lw	v0,8(v1)
  401ce0:	00000000 	nop
  401ce4:	30420003 	andi	v0,v0,0x3
  401ce8:	1440000a 	bnez	v0,401d14 <write+0x8c>
  401cec:	02002821 	move	a1,s0
  401cf0:	3c020040 	lui	v0,0x40
  401cf4:	8c427000 	lw	v0,28672(v0)
  401cf8:	3c040040 	lui	a0,0x40
  401cfc:	24846478 	addiu	a0,a0,25720
  401d00:	8c4500a4 	lw	a1,164(v0)
  401d04:	0c100062 	jal	400188 <writef>
  401d08:	02403021 	move	a2,s2
  401d0c:	10000010 	b	401d50 <write+0xc8>
  401d10:	2404fffd 	li	a0,-3
  401d14:	8fa20010 	lw	v0,16(sp)
  401d18:	00000000 	nop
  401d1c:	8c42000c 	lw	v0,12(v0)
  401d20:	00602021 	move	a0,v1
  401d24:	8c670004 	lw	a3,4(v1)
  401d28:	0040f809 	jalr	v0
  401d2c:	02203021 	move	a2,s1
  401d30:	18400007 	blez	v0,401d50 <write+0xc8>
  401d34:	00402021 	move	a0,v0
  401d38:	8fa30014 	lw	v1,20(sp)
  401d3c:	00000000 	nop
  401d40:	8c620004 	lw	v0,4(v1)
  401d44:	00000000 	nop
  401d48:	00821021 	addu	v0,a0,v0
  401d4c:	ac620004 	sw	v0,4(v1)
  401d50:	00801021 	move	v0,a0
  401d54:	8fbf0024 	lw	ra,36(sp)
  401d58:	8fb20020 	lw	s2,32(sp)
  401d5c:	8fb1001c 	lw	s1,28(sp)
  401d60:	8fb00018 	lw	s0,24(sp)
  401d64:	03e00008 	jr	ra
  401d68:	27bd0028 	addiu	sp,sp,40

00401d6c <seek>:
  401d6c:	27bdffe0 	addiu	sp,sp,-32
  401d70:	afbf001c 	sw	ra,28(sp)
  401d74:	afb00018 	sw	s0,24(sp)
  401d78:	00a08021 	move	s0,a1
  401d7c:	0c10060a 	jal	401828 <fd_lookup>
  401d80:	27a50010 	addiu	a1,sp,16
  401d84:	04400005 	bltz	v0,401d9c <seek+0x30>
  401d88:	00000000 	nop
  401d8c:	8fa20010 	lw	v0,16(sp)
  401d90:	00000000 	nop
  401d94:	ac500004 	sw	s0,4(v0)
  401d98:	00001021 	move	v0,zero
  401d9c:	8fbf001c 	lw	ra,28(sp)
  401da0:	8fb00018 	lw	s0,24(sp)
  401da4:	03e00008 	jr	ra
  401da8:	27bd0020 	addiu	sp,sp,32

00401dac <fstat>:
  401dac:	27bdffe0 	addiu	sp,sp,-32
  401db0:	afbf001c 	sw	ra,28(sp)
  401db4:	afb00018 	sw	s0,24(sp)
  401db8:	00a08021 	move	s0,a1
  401dbc:	0c10060a 	jal	401828 <fd_lookup>
  401dc0:	27a50014 	addiu	a1,sp,20
  401dc4:	04400012 	bltz	v0,401e10 <fstat+0x64>
  401dc8:	00000000 	nop
  401dcc:	8fa20014 	lw	v0,20(sp)
  401dd0:	00000000 	nop
  401dd4:	8c440000 	lw	a0,0(v0)
  401dd8:	0c1005b8 	jal	4016e0 <dev_lookup>
  401ddc:	27a50010 	addiu	a1,sp,16
  401de0:	0440000b 	bltz	v0,401e10 <fstat+0x64>
  401de4:	00000000 	nop
  401de8:	a2000000 	sb	zero,0(s0)
  401dec:	ae000080 	sw	zero,128(s0)
  401df0:	ae000084 	sw	zero,132(s0)
  401df4:	8fa20010 	lw	v0,16(sp)
  401df8:	00000000 	nop
  401dfc:	ae020088 	sw	v0,136(s0)
  401e00:	8c420014 	lw	v0,20(v0)
  401e04:	8fa40014 	lw	a0,20(sp)
  401e08:	0040f809 	jalr	v0
  401e0c:	02002821 	move	a1,s0
  401e10:	8fbf001c 	lw	ra,28(sp)
  401e14:	8fb00018 	lw	s0,24(sp)
  401e18:	03e00008 	jr	ra
  401e1c:	27bd0020 	addiu	sp,sp,32

00401e20 <stat>:
  401e20:	27bdffe0 	addiu	sp,sp,-32
  401e24:	afbf0018 	sw	ra,24(sp)
  401e28:	afb10014 	sw	s1,20(sp)
  401e2c:	afb00010 	sw	s0,16(sp)
  401e30:	00a08021 	move	s0,a1
  401e34:	0c1007c4 	jal	401f10 <open>
  401e38:	00002821 	move	a1,zero
  401e3c:	04400008 	bltz	v0,401e60 <stat+0x40>
  401e40:	00408821 	move	s1,v0
  401e44:	00402021 	move	a0,v0
  401e48:	0c10076b 	jal	401dac <fstat>
  401e4c:	02002821 	move	a1,s0
  401e50:	00408021 	move	s0,v0
  401e54:	0c100631 	jal	4018c4 <close>
  401e58:	02202021 	move	a0,s1
  401e5c:	02008821 	move	s1,s0
  401e60:	02201021 	move	v0,s1
  401e64:	8fbf0018 	lw	ra,24(sp)
  401e68:	8fb10014 	lw	s1,20(sp)
  401e6c:	8fb00010 	lw	s0,16(sp)
  401e70:	03e00008 	jr	ra
  401e74:	27bd0020 	addiu	sp,sp,32
	...

00401e80 <pageref>:
  401e80:	00041582 	srl	v0,a0,0x16
  401e84:	00021080 	sll	v0,v0,0x2
  401e88:	3c030040 	lui	v1,0x40
  401e8c:	8c63500c 	lw	v1,20492(v1)
  401e90:	00000000 	nop
  401e94:	00431021 	addu	v0,v0,v1
  401e98:	8c420000 	lw	v0,0(v0)
  401e9c:	00000000 	nop
  401ea0:	30420200 	andi	v0,v0,0x200
  401ea4:	10400016 	beqz	v0,401f00 <pageref+0x80>
  401ea8:	3c030040 	lui	v1,0x40
  401eac:	00041302 	srl	v0,a0,0xc
  401eb0:	00021080 	sll	v0,v0,0x2
  401eb4:	8c635008 	lw	v1,20488(v1)
  401eb8:	00000000 	nop
  401ebc:	00431021 	addu	v0,v0,v1
  401ec0:	8c440000 	lw	a0,0(v0)
  401ec4:	00000000 	nop
  401ec8:	30820200 	andi	v0,a0,0x200
  401ecc:	1040000c 	beqz	v0,401f00 <pageref+0x80>
  401ed0:	00000000 	nop
  401ed4:	00041302 	srl	v0,a0,0xc
  401ed8:	00021880 	sll	v1,v0,0x2
  401edc:	00021100 	sll	v0,v0,0x4
  401ee0:	00431023 	subu	v0,v0,v1
  401ee4:	3c030040 	lui	v1,0x40
  401ee8:	8c635004 	lw	v1,20484(v1)
  401eec:	00000000 	nop
  401ef0:	00431021 	addu	v0,v0,v1
  401ef4:	94420008 	lhu	v0,8(v0)
  401ef8:	03e00008 	jr	ra
  401efc:	00000000 	nop
  401f00:	03e00008 	jr	ra
  401f04:	00001021 	move	v0,zero
	...

00401f10 <open>:
  401f10:	27bdffd0 	addiu	sp,sp,-48
  401f14:	afbf002c 	sw	ra,44(sp)
  401f18:	afb40028 	sw	s4,40(sp)
  401f1c:	afb30024 	sw	s3,36(sp)
  401f20:	afb20020 	sw	s2,32(sp)
  401f24:	afb1001c 	sw	s1,28(sp)
  401f28:	afb00018 	sw	s0,24(sp)
  401f2c:	00809021 	move	s2,a0
  401f30:	00a08821 	move	s1,a1
  401f34:	0c1005e0 	jal	401780 <fd_alloc>
  401f38:	27a40010 	addiu	a0,sp,16
  401f3c:	04410006 	bgez	v0,401f58 <open+0x48>
  401f40:	00408021 	move	s0,v0
  401f44:	3c040040 	lui	a0,0x40
  401f48:	0c100062 	jal	400188 <writef>
  401f4c:	248464a0 	addiu	a0,a0,25760
  401f50:	1000002f 	b	402010 <open+0x100>
  401f54:	02001021 	move	v0,s0
  401f58:	02402021 	move	a0,s2
  401f5c:	8fa60010 	lw	a2,16(sp)
  401f60:	0c100a11 	jal	402844 <fsipc_open>
  401f64:	02202821 	move	a1,s1
  401f68:	04410007 	bgez	v0,401f88 <open+0x78>
  401f6c:	00408021 	move	s0,v0
  401f70:	3c040040 	lui	a0,0x40
  401f74:	248464b8 	addiu	a0,a0,25784
  401f78:	0c100062 	jal	400188 <writef>
  401f7c:	02402821 	move	a1,s2
  401f80:	10000023 	b	402010 <open+0x100>
  401f84:	02001021 	move	v0,s0
  401f88:	8fa40010 	lw	a0,16(sp)
  401f8c:	0c10061e 	jal	401878 <fd2data>
  401f90:	00000000 	nop
  401f94:	8fa40010 	lw	a0,16(sp)
  401f98:	00000000 	nop
  401f9c:	8c920090 	lw	s2,144(a0)
  401fa0:	8c93000c 	lw	s3,12(a0)
  401fa4:	1640000a 	bnez	s2,401fd0 <open+0xc0>
  401fa8:	0040a021 	move	s4,v0
  401fac:	0c100629 	jal	4018a4 <fd2num>
  401fb0:	00000000 	nop
  401fb4:	10000015 	b	40200c <open+0xfc>
  401fb8:	00408021 	move	s0,v0
  401fbc:	3c040040 	lui	a0,0x40
  401fc0:	0c100062 	jal	400188 <writef>
  401fc4:	248464d0 	addiu	a0,a0,25808
  401fc8:	10000011 	b	402010 <open+0x100>
  401fcc:	02001021 	move	v0,s0
  401fd0:	00008821 	move	s1,zero
  401fd4:	02602021 	move	a0,s3
  401fd8:	02202821 	move	a1,s1
  401fdc:	0c100a30 	jal	4028c0 <fsipc_map>
  401fe0:	02343021 	addu	a2,s1,s4
  401fe4:	0440fff5 	bltz	v0,401fbc <open+0xac>
  401fe8:	00408021 	move	s0,v0
  401fec:	26311000 	addiu	s1,s1,4096
  401ff0:	0232102b 	sltu	v0,s1,s2
  401ff4:	1440fff8 	bnez	v0,401fd8 <open+0xc8>
  401ff8:	02602021 	move	a0,s3
  401ffc:	8fa40010 	lw	a0,16(sp)
  402000:	0c100629 	jal	4018a4 <fd2num>
  402004:	00000000 	nop
  402008:	00408021 	move	s0,v0
  40200c:	02001021 	move	v0,s0
  402010:	8fbf002c 	lw	ra,44(sp)
  402014:	8fb40028 	lw	s4,40(sp)
  402018:	8fb30024 	lw	s3,36(sp)
  40201c:	8fb20020 	lw	s2,32(sp)
  402020:	8fb1001c 	lw	s1,28(sp)
  402024:	8fb00018 	lw	s0,24(sp)
  402028:	03e00008 	jr	ra
  40202c:	27bd0030 	addiu	sp,sp,48

00402030 <file_close>:
  402030:	27bdffd8 	addiu	sp,sp,-40
  402034:	afbf0020 	sw	ra,32(sp)
  402038:	afb3001c 	sw	s3,28(sp)
  40203c:	afb20018 	sw	s2,24(sp)
  402040:	afb10014 	sw	s1,20(sp)
  402044:	afb00010 	sw	s0,16(sp)
  402048:	8c91000c 	lw	s1,12(a0)
  40204c:	8c920090 	lw	s2,144(a0)
  402050:	0c10061e 	jal	401878 <fd2data>
  402054:	00000000 	nop
  402058:	12400009 	beqz	s2,402080 <file_close+0x50>
  40205c:	00409821 	move	s3,v0
  402060:	00008021 	move	s0,zero
  402064:	02202021 	move	a0,s1
  402068:	0c100a6a 	jal	4029a8 <fsipc_dirty>
  40206c:	02002821 	move	a1,s0
  402070:	26101000 	addiu	s0,s0,4096
  402074:	0212102b 	sltu	v0,s0,s2
  402078:	1440fffb 	bnez	v0,402068 <file_close+0x38>
  40207c:	02202021 	move	a0,s1
  402080:	0c100a5d 	jal	402974 <fsipc_close>
  402084:	02202021 	move	a0,s1
  402088:	0441000b 	bgez	v0,4020b8 <file_close+0x88>
  40208c:	00408021 	move	s0,v0
  402090:	3c040040 	lui	a0,0x40
  402094:	0c100062 	jal	400188 <writef>
  402098:	248464e8 	addiu	a0,a0,25832
  40209c:	10000013 	b	4020ec <file_close+0xbc>
  4020a0:	02001021 	move	v0,s0
  4020a4:	3c040040 	lui	a0,0x40
  4020a8:	0c100062 	jal	400188 <writef>
  4020ac:	24846500 	addiu	a0,a0,25856
  4020b0:	1000000e 	b	4020ec <file_close+0xbc>
  4020b4:	02001021 	move	v0,s0
  4020b8:	1240000a 	beqz	s2,4020e4 <file_close+0xb4>
  4020bc:	00008821 	move	s1,zero
  4020c0:	00002021 	move	a0,zero
  4020c4:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  4020c8:	02332821 	addu	a1,s1,s3
  4020cc:	0440fff5 	bltz	v0,4020a4 <file_close+0x74>
  4020d0:	00408021 	move	s0,v0
  4020d4:	26311000 	addiu	s1,s1,4096
  4020d8:	0232102b 	sltu	v0,s1,s2
  4020dc:	1440fff9 	bnez	v0,4020c4 <file_close+0x94>
  4020e0:	00002021 	move	a0,zero
  4020e4:	00008021 	move	s0,zero
  4020e8:	02001021 	move	v0,s0
  4020ec:	8fbf0020 	lw	ra,32(sp)
  4020f0:	8fb3001c 	lw	s3,28(sp)
  4020f4:	8fb20018 	lw	s2,24(sp)
  4020f8:	8fb10014 	lw	s1,20(sp)
  4020fc:	8fb00010 	lw	s0,16(sp)
  402100:	03e00008 	jr	ra
  402104:	27bd0028 	addiu	sp,sp,40

00402108 <file_read>:
  402108:	27bdffe0 	addiu	sp,sp,-32
  40210c:	afbf001c 	sw	ra,28(sp)
  402110:	afb20018 	sw	s2,24(sp)
  402114:	afb10014 	sw	s1,20(sp)
  402118:	afb00010 	sw	s0,16(sp)
  40211c:	00a09021 	move	s2,a1
  402120:	00c08021 	move	s0,a2
  402124:	8c830090 	lw	v1,144(a0)
  402128:	00000000 	nop
  40212c:	0067102b 	sltu	v0,v1,a3
  402130:	10400003 	beqz	v0,402140 <file_read+0x38>
  402134:	00e08821 	move	s1,a3
  402138:	1000000d 	b	402170 <file_read+0x68>
  40213c:	00001021 	move	v0,zero
  402140:	00e61021 	addu	v0,a3,a2
  402144:	0062102b 	sltu	v0,v1,v0
  402148:	10400002 	beqz	v0,402154 <file_read+0x4c>
  40214c:	00000000 	nop
  402150:	00678023 	subu	s0,v1,a3
  402154:	0c10061e 	jal	401878 <fd2data>
  402158:	00000000 	nop
  40215c:	00512021 	addu	a0,v0,s1
  402160:	02402821 	move	a1,s2
  402164:	0c1002f4 	jal	400bd0 <user_bcopy>
  402168:	02003021 	move	a2,s0
  40216c:	02001021 	move	v0,s0
  402170:	8fbf001c 	lw	ra,28(sp)
  402174:	8fb20018 	lw	s2,24(sp)
  402178:	8fb10014 	lw	s1,20(sp)
  40217c:	8fb00010 	lw	s0,16(sp)
  402180:	03e00008 	jr	ra
  402184:	27bd0020 	addiu	sp,sp,32

00402188 <read_map>:
  402188:	27bdffd8 	addiu	sp,sp,-40
  40218c:	afbf0020 	sw	ra,32(sp)
  402190:	afb1001c 	sw	s1,28(sp)
  402194:	afb00018 	sw	s0,24(sp)
  402198:	00a08021 	move	s0,a1
  40219c:	00c08821 	move	s1,a2
  4021a0:	0c10060a 	jal	401828 <fd_lookup>
  4021a4:	27a50010 	addiu	a1,sp,16
  4021a8:	04400029 	bltz	v0,402250 <read_map+0xc8>
  4021ac:	3c030040 	lui	v1,0x40
  4021b0:	8fa40010 	lw	a0,16(sp)
  4021b4:	00000000 	nop
  4021b8:	8c820000 	lw	v0,0(a0)
  4021bc:	8c6365d8 	lw	v1,26072(v1)
  4021c0:	00000000 	nop
  4021c4:	14430022 	bne	v0,v1,402250 <read_map+0xc8>
  4021c8:	2402fffd 	li	v0,-3
  4021cc:	0c10061e 	jal	401878 <fd2data>
  4021d0:	00000000 	nop
  4021d4:	00502021 	addu	a0,v0,s0
  4021d8:	3c02003f 	lui	v0,0x3f
  4021dc:	3442ffff 	ori	v0,v0,0xffff
  4021e0:	0050102b 	sltu	v0,v0,s0
  4021e4:	1440001a 	bnez	v0,402250 <read_map+0xc8>
  4021e8:	2402fff9 	li	v0,-7
  4021ec:	00041582 	srl	v0,a0,0x16
  4021f0:	00021080 	sll	v0,v0,0x2
  4021f4:	3c030040 	lui	v1,0x40
  4021f8:	8c63500c 	lw	v1,20492(v1)
  4021fc:	00000000 	nop
  402200:	00431021 	addu	v0,v0,v1
  402204:	8c420000 	lw	v0,0(v0)
  402208:	00000000 	nop
  40220c:	30420200 	andi	v0,v0,0x200
  402210:	1040000f 	beqz	v0,402250 <read_map+0xc8>
  402214:	2402fff9 	li	v0,-7
  402218:	00041302 	srl	v0,a0,0xc
  40221c:	00021080 	sll	v0,v0,0x2
  402220:	3c030040 	lui	v1,0x40
  402224:	8c635008 	lw	v1,20488(v1)
  402228:	00000000 	nop
  40222c:	00431021 	addu	v0,v0,v1
  402230:	8c420000 	lw	v0,0(v0)
  402234:	00000000 	nop
  402238:	30420200 	andi	v0,v0,0x200
  40223c:	10400003 	beqz	v0,40224c <read_map+0xc4>
  402240:	00001021 	move	v0,zero
  402244:	10000002 	b	402250 <read_map+0xc8>
  402248:	ae240000 	sw	a0,0(s1)
  40224c:	2402fff9 	li	v0,-7
  402250:	8fbf0020 	lw	ra,32(sp)
  402254:	8fb1001c 	lw	s1,28(sp)
  402258:	8fb00018 	lw	s0,24(sp)
  40225c:	03e00008 	jr	ra
  402260:	27bd0028 	addiu	sp,sp,40

00402264 <file_write>:
  402264:	27bdffd8 	addiu	sp,sp,-40
  402268:	afbf0024 	sw	ra,36(sp)
  40226c:	afb40020 	sw	s4,32(sp)
  402270:	afb3001c 	sw	s3,28(sp)
  402274:	afb20018 	sw	s2,24(sp)
  402278:	afb10014 	sw	s1,20(sp)
  40227c:	afb00010 	sw	s0,16(sp)
  402280:	00808821 	move	s1,a0
  402284:	00a0a021 	move	s4,a1
  402288:	00c09021 	move	s2,a2
  40228c:	00e68021 	addu	s0,a3,a2
  402290:	3c020040 	lui	v0,0x40
  402294:	0050102b 	sltu	v0,v0,s0
  402298:	10400003 	beqz	v0,4022a8 <file_write+0x44>
  40229c:	00e09821 	move	s3,a3
  4022a0:	10000014 	b	4022f4 <file_write+0x90>
  4022a4:	2402fff9 	li	v0,-7
  4022a8:	8c820090 	lw	v0,144(a0)
  4022ac:	00000000 	nop
  4022b0:	0050102b 	sltu	v0,v0,s0
  4022b4:	10400008 	beqz	v0,4022d8 <file_write+0x74>
  4022b8:	00000000 	nop
  4022bc:	0c100629 	jal	4018a4 <fd2num>
  4022c0:	00000000 	nop
  4022c4:	00402021 	move	a0,v0
  4022c8:	0c1008dc 	jal	402370 <ftruncate>
  4022cc:	02002821 	move	a1,s0
  4022d0:	04400008 	bltz	v0,4022f4 <file_write+0x90>
  4022d4:	00000000 	nop
  4022d8:	0c10061e 	jal	401878 <fd2data>
  4022dc:	02202021 	move	a0,s1
  4022e0:	02802021 	move	a0,s4
  4022e4:	00532821 	addu	a1,v0,s3
  4022e8:	0c1002f4 	jal	400bd0 <user_bcopy>
  4022ec:	02403021 	move	a2,s2
  4022f0:	02401021 	move	v0,s2
  4022f4:	8fbf0024 	lw	ra,36(sp)
  4022f8:	8fb40020 	lw	s4,32(sp)
  4022fc:	8fb3001c 	lw	s3,28(sp)
  402300:	8fb20018 	lw	s2,24(sp)
  402304:	8fb10014 	lw	s1,20(sp)
  402308:	8fb00010 	lw	s0,16(sp)
  40230c:	03e00008 	jr	ra
  402310:	27bd0028 	addiu	sp,sp,40

00402314 <file_stat>:
  402314:	27bdffe0 	addiu	sp,sp,-32
  402318:	afbf0018 	sw	ra,24(sp)
  40231c:	afb10014 	sw	s1,20(sp)
  402320:	afb00010 	sw	s0,16(sp)
  402324:	00808021 	move	s0,a0
  402328:	00a08821 	move	s1,a1
  40232c:	00a02021 	move	a0,a1
  402330:	0c10056b 	jal	4015ac <strcpy>
  402334:	26050010 	addiu	a1,s0,16
  402338:	8e020090 	lw	v0,144(s0)
  40233c:	00000000 	nop
  402340:	ae220080 	sw	v0,128(s1)
  402344:	8e020094 	lw	v0,148(s0)
  402348:	00000000 	nop
  40234c:	38420001 	xori	v0,v0,0x1
  402350:	2c420001 	sltiu	v0,v0,1
  402354:	ae220084 	sw	v0,132(s1)
  402358:	00001021 	move	v0,zero
  40235c:	8fbf0018 	lw	ra,24(sp)
  402360:	8fb10014 	lw	s1,20(sp)
  402364:	8fb00010 	lw	s0,16(sp)
  402368:	03e00008 	jr	ra
  40236c:	27bd0020 	addiu	sp,sp,32

00402370 <ftruncate>:
  402370:	27bdffb8 	addiu	sp,sp,-72
  402374:	afbf0044 	sw	ra,68(sp)
  402378:	afbe0040 	sw	s8,64(sp)
  40237c:	afb7003c 	sw	s7,60(sp)
  402380:	afb60038 	sw	s6,56(sp)
  402384:	afb50034 	sw	s5,52(sp)
  402388:	afb40030 	sw	s4,48(sp)
  40238c:	afb3002c 	sw	s3,44(sp)
  402390:	afb20028 	sw	s2,40(sp)
  402394:	afb10024 	sw	s1,36(sp)
  402398:	afb00020 	sw	s0,32(sp)
  40239c:	3c020040 	lui	v0,0x40
  4023a0:	0045102b 	sltu	v0,v0,a1
  4023a4:	10400003 	beqz	v0,4023b4 <ftruncate+0x44>
  4023a8:	00a08821 	move	s1,a1
  4023ac:	10000049 	b	4024d4 <ftruncate+0x164>
  4023b0:	2410fff9 	li	s0,-7
  4023b4:	0c10060a 	jal	401828 <fd_lookup>
  4023b8:	27a50018 	addiu	a1,sp,24
  4023bc:	04400045 	bltz	v0,4024d4 <ftruncate+0x164>
  4023c0:	00408021 	move	s0,v0
  4023c4:	8fa50018 	lw	a1,24(sp)
  4023c8:	00000000 	nop
  4023cc:	8ca20000 	lw	v0,0(a1)
  4023d0:	3c030040 	lui	v1,0x40
  4023d4:	8c6365d8 	lw	v1,26072(v1)
  4023d8:	00000000 	nop
  4023dc:	10430008 	beq	v0,v1,402400 <ftruncate+0x90>
  4023e0:	2410fffd 	li	s0,-3
  4023e4:	1000003c 	b	4024d8 <ftruncate+0x168>
  4023e8:	02001021 	move	v0,s0
  4023ec:	02602021 	move	a0,s3
  4023f0:	0c100a4e 	jal	402938 <fsipc_set_size>
  4023f4:	02e02821 	move	a1,s7
  4023f8:	10000037 	b	4024d8 <ftruncate+0x168>
  4023fc:	02001021 	move	v0,s0
  402400:	8cb3000c 	lw	s3,12(a1)
  402404:	8cb70090 	lw	s7,144(a1)
  402408:	02602021 	move	a0,s3
  40240c:	0c100a4e 	jal	402938 <fsipc_set_size>
  402410:	02202821 	move	a1,s1
  402414:	0440002f 	bltz	v0,4024d4 <ftruncate+0x164>
  402418:	00408021 	move	s0,v0
  40241c:	8fa40018 	lw	a0,24(sp)
  402420:	0c10061e 	jal	401878 <fd2data>
  402424:	26f60fff 	addiu	s6,s7,4095
  402428:	0040f021 	move	s8,v0
  40242c:	2402f000 	li	v0,-4096
  402430:	02c29024 	and	s2,s6,v0
  402434:	26350fff 	addiu	s5,s1,4095
  402438:	02a2a024 	and	s4,s5,v0
  40243c:	0254102b 	sltu	v0,s2,s4
  402440:	1040000d 	beqz	v0,402478 <ftruncate+0x108>
  402444:	2402f000 	li	v0,-4096
  402448:	025e8821 	addu	s1,s2,s8
  40244c:	02602021 	move	a0,s3
  402450:	02402821 	move	a1,s2
  402454:	0c100a30 	jal	4028c0 <fsipc_map>
  402458:	02203021 	move	a2,s1
  40245c:	0440ffe3 	bltz	v0,4023ec <ftruncate+0x7c>
  402460:	00408021 	move	s0,v0
  402464:	26521000 	addiu	s2,s2,4096
  402468:	0254102b 	sltu	v0,s2,s4
  40246c:	1440fff7 	bnez	v0,40244c <ftruncate+0xdc>
  402470:	26311000 	addiu	s1,s1,4096
  402474:	2402f000 	li	v0,-4096
  402478:	02a28024 	and	s0,s5,v0
  40247c:	02c29024 	and	s2,s6,v0
  402480:	0212102b 	sltu	v0,s0,s2
  402484:	10400012 	beqz	v0,4024d0 <ftruncate+0x160>
  402488:	03d08821 	addu	s1,s8,s0
  40248c:	00002021 	move	a0,zero
  402490:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  402494:	02202821 	move	a1,s1
  402498:	0441000a 	bgez	v0,4024c4 <ftruncate+0x154>
  40249c:	26101000 	addiu	s0,s0,4096
  4024a0:	2610f000 	addiu	s0,s0,-4096
  4024a4:	afa20010 	sw	v0,16(sp)
  4024a8:	3c040040 	lui	a0,0x40
  4024ac:	2484651c 	addiu	a0,a0,25884
  4024b0:	24050113 	li	a1,275
  4024b4:	3c060040 	lui	a2,0x40
  4024b8:	24c66524 	addiu	a2,a2,25892
  4024bc:	0c100072 	jal	4001c8 <_user_panic>
  4024c0:	02203821 	move	a3,s1
  4024c4:	0212102b 	sltu	v0,s0,s2
  4024c8:	1440fff0 	bnez	v0,40248c <ftruncate+0x11c>
  4024cc:	26311000 	addiu	s1,s1,4096
  4024d0:	00008021 	move	s0,zero
  4024d4:	02001021 	move	v0,s0
  4024d8:	8fbf0044 	lw	ra,68(sp)
  4024dc:	8fbe0040 	lw	s8,64(sp)
  4024e0:	8fb7003c 	lw	s7,60(sp)
  4024e4:	8fb60038 	lw	s6,56(sp)
  4024e8:	8fb50034 	lw	s5,52(sp)
  4024ec:	8fb40030 	lw	s4,48(sp)
  4024f0:	8fb3002c 	lw	s3,44(sp)
  4024f4:	8fb20028 	lw	s2,40(sp)
  4024f8:	8fb10024 	lw	s1,36(sp)
  4024fc:	8fb00020 	lw	s0,32(sp)
  402500:	03e00008 	jr	ra
  402504:	27bd0048 	addiu	sp,sp,72

00402508 <remove>:
  402508:	27bdffe8 	addiu	sp,sp,-24
  40250c:	afbf0010 	sw	ra,16(sp)
  402510:	0c100a79 	jal	4029e4 <fsipc_remove>
  402514:	00000000 	nop
  402518:	8fbf0010 	lw	ra,16(sp)
  40251c:	00000000 	nop
  402520:	03e00008 	jr	ra
  402524:	27bd0018 	addiu	sp,sp,24

00402528 <sync>:
  402528:	27bdffe8 	addiu	sp,sp,-24
  40252c:	afbf0010 	sw	ra,16(sp)
  402530:	0c100a91 	jal	402a44 <fsipc_sync>
  402534:	00000000 	nop
  402538:	8fbf0010 	lw	ra,16(sp)
  40253c:	00000000 	nop
  402540:	03e00008 	jr	ra
  402544:	27bd0018 	addiu	sp,sp,24
	...

00402550 <pipe>:
  402550:	27bdffd0 	addiu	sp,sp,-48
  402554:	afbf002c 	sw	ra,44(sp)
  402558:	afb20028 	sw	s2,40(sp)
  40255c:	afb10024 	sw	s1,36(sp)
  402560:	afb00020 	sw	s0,32(sp)
  402564:	00809021 	move	s2,a0
  402568:	0c1005e0 	jal	401780 <fd_alloc>
  40256c:	27a40018 	addiu	a0,sp,24
  402570:	04400056 	bltz	v0,4026cc <pipe+0x17c>
  402574:	00408021 	move	s0,v0
  402578:	00002021 	move	a0,zero
  40257c:	8fa50018 	lw	a1,24(sp)
  402580:	0c100494 	jal	401250 <syscall_mem_alloc>
  402584:	24060604 	li	a2,1540
  402588:	04400050 	bltz	v0,4026cc <pipe+0x17c>
  40258c:	00408021 	move	s0,v0
  402590:	0c1005e0 	jal	401780 <fd_alloc>
  402594:	27a4001c 	addiu	a0,sp,28
  402598:	04400049 	bltz	v0,4026c0 <pipe+0x170>
  40259c:	00408021 	move	s0,v0
  4025a0:	00002021 	move	a0,zero
  4025a4:	8fa5001c 	lw	a1,28(sp)
  4025a8:	0c100494 	jal	401250 <syscall_mem_alloc>
  4025ac:	24060604 	li	a2,1540
  4025b0:	04400043 	bltz	v0,4026c0 <pipe+0x170>
  4025b4:	00408021 	move	s0,v0
  4025b8:	8fa40018 	lw	a0,24(sp)
  4025bc:	0c10061e 	jal	401878 <fd2data>
  4025c0:	00000000 	nop
  4025c4:	00408821 	move	s1,v0
  4025c8:	00002021 	move	a0,zero
  4025cc:	00402821 	move	a1,v0
  4025d0:	0c100494 	jal	401250 <syscall_mem_alloc>
  4025d4:	24060604 	li	a2,1540
  4025d8:	04400036 	bltz	v0,4026b4 <pipe+0x164>
  4025dc:	00408021 	move	s0,v0
  4025e0:	8fa4001c 	lw	a0,28(sp)
  4025e4:	0c10061e 	jal	401878 <fd2data>
  4025e8:	00000000 	nop
  4025ec:	24030604 	li	v1,1540
  4025f0:	afa30010 	sw	v1,16(sp)
  4025f4:	00002021 	move	a0,zero
  4025f8:	02202821 	move	a1,s1
  4025fc:	00003021 	move	a2,zero
  402600:	0c1004a3 	jal	40128c <syscall_mem_map>
  402604:	00403821 	move	a3,v0
  402608:	04400027 	bltz	v0,4026a8 <pipe+0x158>
  40260c:	00408021 	move	s0,v0
  402610:	3c040040 	lui	a0,0x40
  402614:	8c8365f4 	lw	v1,26100(a0)
  402618:	8fa20018 	lw	v0,24(sp)
  40261c:	00000000 	nop
  402620:	ac430000 	sw	v1,0(v0)
  402624:	8fa20018 	lw	v0,24(sp)
  402628:	00000000 	nop
  40262c:	ac400008 	sw	zero,8(v0)
  402630:	8c8365f4 	lw	v1,26100(a0)
  402634:	8fa2001c 	lw	v0,28(sp)
  402638:	00000000 	nop
  40263c:	ac430000 	sw	v1,0(v0)
  402640:	24030001 	li	v1,1
  402644:	8fa2001c 	lw	v0,28(sp)
  402648:	00000000 	nop
  40264c:	ac430008 	sw	v1,8(v0)
  402650:	3c020040 	lui	v0,0x40
  402654:	8c457000 	lw	a1,28672(v0)
  402658:	00111302 	srl	v0,s1,0xc
  40265c:	00021080 	sll	v0,v0,0x2
  402660:	3c030040 	lui	v1,0x40
  402664:	8c635008 	lw	v1,20488(v1)
  402668:	00000000 	nop
  40266c:	00431021 	addu	v0,v0,v1
  402670:	8c460000 	lw	a2,0(v0)
  402674:	3c040040 	lui	a0,0x40
  402678:	8ca500a4 	lw	a1,164(a1)
  40267c:	0c100062 	jal	400188 <writef>
  402680:	24846554 	addiu	a0,a0,25940
  402684:	8fa40018 	lw	a0,24(sp)
  402688:	0c100629 	jal	4018a4 <fd2num>
  40268c:	00008021 	move	s0,zero
  402690:	ae420000 	sw	v0,0(s2)
  402694:	8fa4001c 	lw	a0,28(sp)
  402698:	0c100629 	jal	4018a4 <fd2num>
  40269c:	00000000 	nop
  4026a0:	1000000a 	b	4026cc <pipe+0x17c>
  4026a4:	ae420004 	sw	v0,4(s2)
  4026a8:	00002021 	move	a0,zero
  4026ac:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  4026b0:	02202821 	move	a1,s1
  4026b4:	8fa5001c 	lw	a1,28(sp)
  4026b8:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  4026bc:	00002021 	move	a0,zero
  4026c0:	8fa50018 	lw	a1,24(sp)
  4026c4:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  4026c8:	00002021 	move	a0,zero
  4026cc:	02001021 	move	v0,s0
  4026d0:	8fbf002c 	lw	ra,44(sp)
  4026d4:	8fb20028 	lw	s2,40(sp)
  4026d8:	8fb10024 	lw	s1,36(sp)
  4026dc:	8fb00020 	lw	s0,32(sp)
  4026e0:	03e00008 	jr	ra
  4026e4:	27bd0030 	addiu	sp,sp,48

004026e8 <_pipeisclosed>:
  4026e8:	03e00008 	jr	ra
  4026ec:	00000000 	nop

004026f0 <pipeisclosed>:
  4026f0:	27bdffe0 	addiu	sp,sp,-32
  4026f4:	afbf0018 	sw	ra,24(sp)
  4026f8:	0c10060a 	jal	401828 <fd_lookup>
  4026fc:	27a50010 	addiu	a1,sp,16
  402700:	04400007 	bltz	v0,402720 <pipeisclosed+0x30>
  402704:	00000000 	nop
  402708:	8fa40010 	lw	a0,16(sp)
  40270c:	0c10061e 	jal	401878 <fd2data>
  402710:	00000000 	nop
  402714:	8fa40010 	lw	a0,16(sp)
  402718:	0c1009ba 	jal	4026e8 <_pipeisclosed>
  40271c:	00402821 	move	a1,v0
  402720:	8fbf0018 	lw	ra,24(sp)
  402724:	00000000 	nop
  402728:	03e00008 	jr	ra
  40272c:	27bd0020 	addiu	sp,sp,32

00402730 <piperead>:
  402730:	03e00008 	jr	ra
  402734:	00000000 	nop

00402738 <pipewrite>:
  402738:	03e00008 	jr	ra
  40273c:	00c01021 	move	v0,a2

00402740 <pipestat>:
  402740:	27bdffe0 	addiu	sp,sp,-32
  402744:	afbf0018 	sw	ra,24(sp)
  402748:	afb10014 	sw	s1,20(sp)
  40274c:	afb00010 	sw	s0,16(sp)
  402750:	0c10061e 	jal	401878 <fd2data>
  402754:	00a08021 	move	s0,a1
  402758:	00408821 	move	s1,v0
  40275c:	02002021 	move	a0,s0
  402760:	3c050040 	lui	a1,0x40
  402764:	0c10056b 	jal	4015ac <strcpy>
  402768:	24a56568 	addiu	a1,a1,25960
  40276c:	8e220004 	lw	v0,4(s1)
  402770:	8e230000 	lw	v1,0(s1)
  402774:	00000000 	nop
  402778:	00431023 	subu	v0,v0,v1
  40277c:	ae020080 	sw	v0,128(s0)
  402780:	ae000084 	sw	zero,132(s0)
  402784:	3c020040 	lui	v0,0x40
  402788:	244265f4 	addiu	v0,v0,26100
  40278c:	ae020088 	sw	v0,136(s0)
  402790:	00001021 	move	v0,zero
  402794:	8fbf0018 	lw	ra,24(sp)
  402798:	8fb10014 	lw	s1,20(sp)
  40279c:	8fb00010 	lw	s0,16(sp)
  4027a0:	03e00008 	jr	ra
  4027a4:	27bd0020 	addiu	sp,sp,32

004027a8 <pipeclose>:
  4027a8:	27bdffe8 	addiu	sp,sp,-24
  4027ac:	afbf0010 	sw	ra,16(sp)
  4027b0:	0c10061e 	jal	401878 <fd2data>
  4027b4:	00000000 	nop
  4027b8:	00002021 	move	a0,zero
  4027bc:	0c1004b5 	jal	4012d4 <syscall_mem_unmap>
  4027c0:	00402821 	move	a1,v0
  4027c4:	00001021 	move	v0,zero
  4027c8:	8fbf0010 	lw	ra,16(sp)
  4027cc:	00000000 	nop
  4027d0:	03e00008 	jr	ra
  4027d4:	27bd0018 	addiu	sp,sp,24
	...

004027e0 <fsipc>:
  4027e0:	27bdffd8 	addiu	sp,sp,-40
  4027e4:	afbf0020 	sw	ra,32(sp)
  4027e8:	afb1001c 	sw	s1,28(sp)
  4027ec:	afb00018 	sw	s0,24(sp)
  4027f0:	00801821 	move	v1,a0
  4027f4:	00a04021 	move	t0,a1
  4027f8:	00c08021 	move	s0,a2
  4027fc:	00e08821 	move	s1,a3
  402800:	3c020040 	lui	v0,0x40
  402804:	8c425000 	lw	v0,20480(v0)
  402808:	00000000 	nop
  40280c:	8c44018c 	lw	a0,396(v0)
  402810:	00602821 	move	a1,v1
  402814:	01003021 	move	a2,t0
  402818:	0c100518 	jal	401460 <ipc_send>
  40281c:	24070600 	li	a3,1536
  402820:	27a40010 	addiu	a0,sp,16
  402824:	02002821 	move	a1,s0
  402828:	0c10053e 	jal	4014f8 <ipc_recv>
  40282c:	02203021 	move	a2,s1
  402830:	8fbf0020 	lw	ra,32(sp)
  402834:	8fb1001c 	lw	s1,28(sp)
  402838:	8fb00018 	lw	s0,24(sp)
  40283c:	03e00008 	jr	ra
  402840:	27bd0028 	addiu	sp,sp,40

00402844 <fsipc_open>:
  402844:	27bdffd0 	addiu	sp,sp,-48
  402848:	afbf0028 	sw	ra,40(sp)
  40284c:	afb30024 	sw	s3,36(sp)
  402850:	afb20020 	sw	s2,32(sp)
  402854:	afb1001c 	sw	s1,28(sp)
  402858:	afb00018 	sw	s0,24(sp)
  40285c:	00808821 	move	s1,a0
  402860:	00a09021 	move	s2,a1
  402864:	00c09821 	move	s3,a2
  402868:	3c020040 	lui	v0,0x40
  40286c:	0c100560 	jal	401580 <strlen>
  402870:	24503000 	addiu	s0,v0,12288
  402874:	28420400 	slti	v0,v0,1024
  402878:	1040000a 	beqz	v0,4028a4 <fsipc_open+0x60>
  40287c:	2402fff6 	li	v0,-10
  402880:	02002021 	move	a0,s0
  402884:	0c10056b 	jal	4015ac <strcpy>
  402888:	02202821 	move	a1,s1
  40288c:	ae120400 	sw	s2,1024(s0)
  402890:	24040001 	li	a0,1
  402894:	02002821 	move	a1,s0
  402898:	02603021 	move	a2,s3
  40289c:	0c1009f8 	jal	4027e0 <fsipc>
  4028a0:	27a70010 	addiu	a3,sp,16
  4028a4:	8fbf0028 	lw	ra,40(sp)
  4028a8:	8fb30024 	lw	s3,36(sp)
  4028ac:	8fb20020 	lw	s2,32(sp)
  4028b0:	8fb1001c 	lw	s1,28(sp)
  4028b4:	8fb00018 	lw	s0,24(sp)
  4028b8:	03e00008 	jr	ra
  4028bc:	27bd0030 	addiu	sp,sp,48

004028c0 <fsipc_map>:
  4028c0:	27bdffd8 	addiu	sp,sp,-40
  4028c4:	afbf0024 	sw	ra,36(sp)
  4028c8:	afb00020 	sw	s0,32(sp)
  4028cc:	00c08021 	move	s0,a2
  4028d0:	3c020040 	lui	v0,0x40
  4028d4:	24433000 	addiu	v1,v0,12288
  4028d8:	ac443000 	sw	a0,12288(v0)
  4028dc:	ac650004 	sw	a1,4(v1)
  4028e0:	24040002 	li	a0,2
  4028e4:	00602821 	move	a1,v1
  4028e8:	0c1009f8 	jal	4027e0 <fsipc>
  4028ec:	27a70018 	addiu	a3,sp,24
  4028f0:	0440000d 	bltz	v0,402928 <fsipc_map+0x68>
  4028f4:	24030200 	li	v1,512
  4028f8:	8fa70018 	lw	a3,24(sp)
  4028fc:	2402fbfb 	li	v0,-1029
  402900:	00e21024 	and	v0,a3,v0
  402904:	10430008 	beq	v0,v1,402928 <fsipc_map+0x68>
  402908:	00001021 	move	v0,zero
  40290c:	afb00010 	sw	s0,16(sp)
  402910:	3c040040 	lui	a0,0x40
  402914:	24846570 	addiu	a0,a0,25968
  402918:	2405004a 	li	a1,74
  40291c:	3c060040 	lui	a2,0x40
  402920:	0c100072 	jal	4001c8 <_user_panic>
  402924:	24c66578 	addiu	a2,a2,25976
  402928:	8fbf0024 	lw	ra,36(sp)
  40292c:	8fb00020 	lw	s0,32(sp)
  402930:	03e00008 	jr	ra
  402934:	27bd0028 	addiu	sp,sp,40

00402938 <fsipc_set_size>:
  402938:	27bdffe8 	addiu	sp,sp,-24
  40293c:	afbf0010 	sw	ra,16(sp)
  402940:	3c020040 	lui	v0,0x40
  402944:	24433000 	addiu	v1,v0,12288
  402948:	ac443000 	sw	a0,12288(v0)
  40294c:	ac650004 	sw	a1,4(v1)
  402950:	24040003 	li	a0,3
  402954:	00602821 	move	a1,v1
  402958:	00003021 	move	a2,zero
  40295c:	0c1009f8 	jal	4027e0 <fsipc>
  402960:	00003821 	move	a3,zero
  402964:	8fbf0010 	lw	ra,16(sp)
  402968:	00000000 	nop
  40296c:	03e00008 	jr	ra
  402970:	27bd0018 	addiu	sp,sp,24

00402974 <fsipc_close>:
  402974:	27bdffe8 	addiu	sp,sp,-24
  402978:	afbf0010 	sw	ra,16(sp)
  40297c:	3c050040 	lui	a1,0x40
  402980:	aca43000 	sw	a0,12288(a1)
  402984:	24040004 	li	a0,4
  402988:	24a53000 	addiu	a1,a1,12288
  40298c:	00003021 	move	a2,zero
  402990:	0c1009f8 	jal	4027e0 <fsipc>
  402994:	00003821 	move	a3,zero
  402998:	8fbf0010 	lw	ra,16(sp)
  40299c:	00000000 	nop
  4029a0:	03e00008 	jr	ra
  4029a4:	27bd0018 	addiu	sp,sp,24

004029a8 <fsipc_dirty>:
  4029a8:	27bdffe8 	addiu	sp,sp,-24
  4029ac:	afbf0010 	sw	ra,16(sp)
  4029b0:	3c020040 	lui	v0,0x40
  4029b4:	24433000 	addiu	v1,v0,12288
  4029b8:	ac443000 	sw	a0,12288(v0)
  4029bc:	ac650004 	sw	a1,4(v1)
  4029c0:	24040005 	li	a0,5
  4029c4:	00602821 	move	a1,v1
  4029c8:	00003021 	move	a2,zero
  4029cc:	0c1009f8 	jal	4027e0 <fsipc>
  4029d0:	00003821 	move	a3,zero
  4029d4:	8fbf0010 	lw	ra,16(sp)
  4029d8:	00000000 	nop
  4029dc:	03e00008 	jr	ra
  4029e0:	27bd0018 	addiu	sp,sp,24

004029e4 <fsipc_remove>:
  4029e4:	27bdffe0 	addiu	sp,sp,-32
  4029e8:	afbf0018 	sw	ra,24(sp)
  4029ec:	afb10014 	sw	s1,20(sp)
  4029f0:	afb00010 	sw	s0,16(sp)
  4029f4:	00808821 	move	s1,a0
  4029f8:	3c020040 	lui	v0,0x40
  4029fc:	0c100560 	jal	401580 <strlen>
  402a00:	24503000 	addiu	s0,v0,12288
  402a04:	28420400 	slti	v0,v0,1024
  402a08:	10400009 	beqz	v0,402a30 <fsipc_remove+0x4c>
  402a0c:	2402fff6 	li	v0,-10
  402a10:	02002021 	move	a0,s0
  402a14:	0c10056b 	jal	4015ac <strcpy>
  402a18:	02202821 	move	a1,s1
  402a1c:	24040006 	li	a0,6
  402a20:	02002821 	move	a1,s0
  402a24:	00003021 	move	a2,zero
  402a28:	0c1009f8 	jal	4027e0 <fsipc>
  402a2c:	00003821 	move	a3,zero
  402a30:	8fbf0018 	lw	ra,24(sp)
  402a34:	8fb10014 	lw	s1,20(sp)
  402a38:	8fb00010 	lw	s0,16(sp)
  402a3c:	03e00008 	jr	ra
  402a40:	27bd0020 	addiu	sp,sp,32

00402a44 <fsipc_sync>:
  402a44:	27bdffe8 	addiu	sp,sp,-24
  402a48:	afbf0010 	sw	ra,16(sp)
  402a4c:	24040007 	li	a0,7
  402a50:	3c050040 	lui	a1,0x40
  402a54:	24a53000 	addiu	a1,a1,12288
  402a58:	00003021 	move	a2,zero
  402a5c:	0c1009f8 	jal	4027e0 <fsipc>
  402a60:	00003821 	move	a3,zero
  402a64:	8fbf0010 	lw	ra,16(sp)
  402a68:	00000000 	nop
  402a6c:	03e00008 	jr	ra
  402a70:	27bd0018 	addiu	sp,sp,24
	...

00402a80 <iscons>:
  402a80:	27bdffe0 	addiu	sp,sp,-32
  402a84:	afbf0018 	sw	ra,24(sp)
  402a88:	0c10060a 	jal	401828 <fd_lookup>
  402a8c:	27a50010 	addiu	a1,sp,16
  402a90:	04400008 	bltz	v0,402ab4 <iscons+0x34>
  402a94:	3c030040 	lui	v1,0x40
  402a98:	8fa20010 	lw	v0,16(sp)
  402a9c:	00000000 	nop
  402aa0:	8c420000 	lw	v0,0(v0)
  402aa4:	8c636610 	lw	v1,26128(v1)
  402aa8:	00000000 	nop
  402aac:	00431026 	xor	v0,v0,v1
  402ab0:	2c420001 	sltiu	v0,v0,1
  402ab4:	8fbf0018 	lw	ra,24(sp)
  402ab8:	00000000 	nop
  402abc:	03e00008 	jr	ra
  402ac0:	27bd0020 	addiu	sp,sp,32

00402ac4 <opencons>:
  402ac4:	27bdffe0 	addiu	sp,sp,-32
  402ac8:	afbf0018 	sw	ra,24(sp)
  402acc:	0c1005e0 	jal	401780 <fd_alloc>
  402ad0:	27a40010 	addiu	a0,sp,16
  402ad4:	04400012 	bltz	v0,402b20 <opencons+0x5c>
  402ad8:	00002021 	move	a0,zero
  402adc:	8fa50010 	lw	a1,16(sp)
  402ae0:	0c100494 	jal	401250 <syscall_mem_alloc>
  402ae4:	24060604 	li	a2,1540
  402ae8:	0440000d 	bltz	v0,402b20 <opencons+0x5c>
  402aec:	00000000 	nop
  402af0:	3c020040 	lui	v0,0x40
  402af4:	8c436610 	lw	v1,26128(v0)
  402af8:	8fa20010 	lw	v0,16(sp)
  402afc:	00000000 	nop
  402b00:	ac430000 	sw	v1,0(v0)
  402b04:	24030002 	li	v1,2
  402b08:	8fa20010 	lw	v0,16(sp)
  402b0c:	00000000 	nop
  402b10:	ac430008 	sw	v1,8(v0)
  402b14:	8fa40010 	lw	a0,16(sp)
  402b18:	0c100629 	jal	4018a4 <fd2num>
  402b1c:	00000000 	nop
  402b20:	8fbf0018 	lw	ra,24(sp)
  402b24:	00000000 	nop
  402b28:	03e00008 	jr	ra
  402b2c:	27bd0020 	addiu	sp,sp,32

00402b30 <cons_read>:
  402b30:	27bdffe0 	addiu	sp,sp,-32
  402b34:	afbf0018 	sw	ra,24(sp)
  402b38:	afb10014 	sw	s1,20(sp)
  402b3c:	afb00010 	sw	s0,16(sp)
  402b40:	14c00005 	bnez	a2,402b58 <cons_read+0x28>
  402b44:	00a08821 	move	s1,a1
  402b48:	1000001d 	b	402bc0 <cons_read+0x90>
  402b4c:	00008021 	move	s0,zero
  402b50:	0c10046b 	jal	4011ac <syscall_yield>
  402b54:	00000000 	nop
  402b58:	0c100509 	jal	401424 <syscall_cgetc>
  402b5c:	00000000 	nop
  402b60:	1040fffb 	beqz	v0,402b50 <cons_read+0x20>
  402b64:	00408021 	move	s0,v0
  402b68:	2402000d 	li	v0,13
  402b6c:	12020009 	beq	s0,v0,402b94 <cons_read+0x64>
  402b70:	3c040040 	lui	a0,0x40
  402b74:	3c040040 	lui	a0,0x40
  402b78:	248465b8 	addiu	a0,a0,26040
  402b7c:	0c100062 	jal	400188 <writef>
  402b80:	02002821 	move	a1,s0
  402b84:	06010007 	bgez	s0,402ba4 <cons_read+0x74>
  402b88:	02001021 	move	v0,s0
  402b8c:	1000000d 	b	402bc4 <cons_read+0x94>
  402b90:	00000000 	nop
  402b94:	0c100062 	jal	400188 <writef>
  402b98:	248464e4 	addiu	a0,a0,25828
  402b9c:	10000005 	b	402bb4 <cons_read+0x84>
  402ba0:	a2300000 	sb	s0,0(s1)
  402ba4:	24020004 	li	v0,4
  402ba8:	12020004 	beq	s0,v0,402bbc <cons_read+0x8c>
  402bac:	00000000 	nop
  402bb0:	a2300000 	sb	s0,0(s1)
  402bb4:	10000002 	b	402bc0 <cons_read+0x90>
  402bb8:	24100001 	li	s0,1
  402bbc:	00008021 	move	s0,zero
  402bc0:	02001021 	move	v0,s0
  402bc4:	8fbf0018 	lw	ra,24(sp)
  402bc8:	8fb10014 	lw	s1,20(sp)
  402bcc:	8fb00010 	lw	s0,16(sp)
  402bd0:	03e00008 	jr	ra
  402bd4:	27bd0020 	addiu	sp,sp,32

00402bd8 <cons_write>:
  402bd8:	27bdff50 	addiu	sp,sp,-176
  402bdc:	afbf00a8 	sw	ra,168(sp)
  402be0:	afb500a4 	sw	s5,164(sp)
  402be4:	afb400a0 	sw	s4,160(sp)
  402be8:	afb3009c 	sw	s3,156(sp)
  402bec:	afb20098 	sw	s2,152(sp)
  402bf0:	afb10094 	sw	s1,148(sp)
  402bf4:	afb00090 	sw	s0,144(sp)
  402bf8:	00a0a821 	move	s5,a1
  402bfc:	14c00003 	bnez	a2,402c0c <cons_write+0x34>
  402c00:	00c08821 	move	s1,a2
  402c04:	10000016 	b	402c60 <cons_write+0x88>
  402c08:	00009021 	move	s2,zero
  402c0c:	00001821 	move	v1,zero
  402c10:	00009021 	move	s2,zero
  402c14:	27b30010 	addiu	s3,sp,16
  402c18:	3c140040 	lui	s4,0x40
  402c1c:	02238023 	subu	s0,s1,v1
  402c20:	2e020080 	sltiu	v0,s0,128
  402c24:	14400002 	bnez	v0,402c30 <cons_write+0x58>
  402c28:	02a32021 	addu	a0,s5,v1
  402c2c:	2410007f 	li	s0,127
  402c30:	27a50010 	addiu	a1,sp,16
  402c34:	0c1002f4 	jal	400bd0 <user_bcopy>
  402c38:	02003021 	move	a2,s0
  402c3c:	02701021 	addu	v0,s3,s0
  402c40:	a0400000 	sb	zero,0(v0)
  402c44:	268465bc 	addiu	a0,s4,26044
  402c48:	0c100062 	jal	400188 <writef>
  402c4c:	02602821 	move	a1,s3
  402c50:	02509021 	addu	s2,s2,s0
  402c54:	0251102b 	sltu	v0,s2,s1
  402c58:	1440fff0 	bnez	v0,402c1c <cons_write+0x44>
  402c5c:	02401821 	move	v1,s2
  402c60:	02401021 	move	v0,s2
  402c64:	8fbf00a8 	lw	ra,168(sp)
  402c68:	8fb500a4 	lw	s5,164(sp)
  402c6c:	8fb400a0 	lw	s4,160(sp)
  402c70:	8fb3009c 	lw	s3,156(sp)
  402c74:	8fb20098 	lw	s2,152(sp)
  402c78:	8fb10094 	lw	s1,148(sp)
  402c7c:	8fb00090 	lw	s0,144(sp)
  402c80:	03e00008 	jr	ra
  402c84:	27bd00b0 	addiu	sp,sp,176

00402c88 <cons_close>:
  402c88:	03e00008 	jr	ra
  402c8c:	00001021 	move	v0,zero

00402c90 <cons_stat>:
  402c90:	27bdffe8 	addiu	sp,sp,-24
  402c94:	afbf0010 	sw	ra,16(sp)
  402c98:	00a02021 	move	a0,a1
  402c9c:	3c050040 	lui	a1,0x40
  402ca0:	0c10056b 	jal	4015ac <strcpy>
  402ca4:	24a565c0 	addiu	a1,a1,26048
  402ca8:	00001021 	move	v0,zero
  402cac:	8fbf0010 	lw	ra,16(sp)
  402cb0:	00000000 	nop
  402cb4:	03e00008 	jr	ra
  402cb8:	27bd0018 	addiu	sp,sp,24
  402cbc:	00000000 	nop

00402cc0 <user_out2string>:
  402cc0:	24020001 	li	v0,1
  402cc4:	14c2000d 	bne	a2,v0,402cfc <user_out2string+0x3c>
  402cc8:	00000000 	nop
  402ccc:	80a20000 	lb	v0,0(a1)
  402cd0:	00000000 	nop
  402cd4:	1040000b 	beqz	v0,402d04 <user_out2string+0x44>
  402cd8:	00003821 	move	a3,zero
  402cdc:	00871021 	addu	v0,a0,a3
  402ce0:	00a71821 	addu	v1,a1,a3
  402ce4:	90630000 	lbu	v1,0(v1)
  402ce8:	24e70001 	addiu	a3,a3,1
  402cec:	10c70005 	beq	a2,a3,402d04 <user_out2string+0x44>
  402cf0:	a0430000 	sb	v1,0(v0)
  402cf4:	1000fffa 	b	402ce0 <user_out2string+0x20>
  402cf8:	00871021 	addu	v0,a0,a3
  402cfc:	1cc0fff7 	bgtz	a2,402cdc <user_out2string+0x1c>
  402d00:	00003821 	move	a3,zero
  402d04:	03e00008 	jr	ra
  402d08:	00000000 	nop

00402d0c <fwritef>:
  402d0c:	27bdfdd8 	addiu	sp,sp,-552
  402d10:	afbf0220 	sw	ra,544(sp)
  402d14:	afb1021c 	sw	s1,540(sp)
  402d18:	afb00218 	sw	s0,536(sp)
  402d1c:	00808821 	move	s1,a0
  402d20:	afa60230 	sw	a2,560(sp)
  402d24:	afa70234 	sw	a3,564(sp)
  402d28:	00a08021 	move	s0,a1
  402d2c:	27a20230 	addiu	v0,sp,560
  402d30:	afa20210 	sw	v0,528(sp)
  402d34:	27a40010 	addiu	a0,sp,16
  402d38:	0c100316 	jal	400c58 <user_bzero>
  402d3c:	24050200 	li	a1,512
  402d40:	3c040040 	lui	a0,0x40
  402d44:	24842cc0 	addiu	a0,a0,11456
  402d48:	27a50010 	addiu	a1,sp,16
  402d4c:	8fa70210 	lw	a3,528(sp)
  402d50:	0c10008c 	jal	400230 <user_lp_Print>
  402d54:	02003021 	move	a2,s0
  402d58:	0c100560 	jal	401580 <strlen>
  402d5c:	27a40010 	addiu	a0,sp,16
  402d60:	02202021 	move	a0,s1
  402d64:	27a50010 	addiu	a1,sp,16
  402d68:	0c100722 	jal	401c88 <write>
  402d6c:	00403021 	move	a2,v0
  402d70:	8fbf0220 	lw	ra,544(sp)
  402d74:	8fb1021c 	lw	s1,540(sp)
  402d78:	8fb00218 	lw	s0,536(sp)
  402d7c:	03e00008 	jr	ra
  402d80:	27bd0228 	addiu	sp,sp,552
	...
Disassembly of section .reginfo:

00402d90 <.reginfo>:
  402d90:	f7fffffe 	0xf7fffffe
	...
Disassembly of section .data:

00403000 <fsipcbuf>:
	...

00404000 <fdtab>:
	...

00405000 <envs>:
  405000:	7f400000 	0x7f400000

00405004 <pages>:
  405004:	7f800000 	0x7f800000

00405008 <vpt>:
  405008:	7fc00000 	0x7fc00000

0040500c <vpd>:
  40500c:	7fdff000 	0x7fdff000

00405010 <__pgfault_handler>:
	...

00406000 <user_theFatalMsg>:
  406000:	66617461 	0x66617461
  406004:	6c206572 	0x6c206572
  406008:	726f7220 	0x726f7220
  40600c:	696e2075 	0x696e2075
  406010:	7365725f 	0x7365725f
  406014:	6c705f50 	0x6c705f50
  406018:	72696e74 	0x72696e74
  40601c:	21000000 	addi	zero,t0,0
  406020:	00000000 	nop
  406024:	00400790 	0x400790
  406028:	00400798 	0x400798
  40602c:	00400798 	0x400798
  406030:	00400798 	0x400798
  406034:	00400798 	0x400798
  406038:	00400798 	0x400798
  40603c:	00400798 	0x400798
  406040:	00400798 	0x400798
  406044:	00400798 	0x400798
  406048:	00400798 	0x400798
  40604c:	00400798 	0x400798
  406050:	00400798 	0x400798
  406054:	00400798 	0x400798
  406058:	00400798 	0x400798
  40605c:	00400798 	0x400798
  406060:	00400798 	0x400798
  406064:	00400798 	0x400798
  406068:	00400798 	0x400798
  40606c:	00400798 	0x400798
  406070:	00400798 	0x400798
  406074:	00400798 	0x400798
  406078:	00400798 	0x400798
  40607c:	00400798 	0x400798
  406080:	00400798 	0x400798
  406084:	00400798 	0x400798
  406088:	00400798 	0x400798
  40608c:	00400798 	0x400798
  406090:	00400798 	0x400798
  406094:	00400798 	0x400798
  406098:	00400798 	0x400798
  40609c:	00400798 	0x400798
  4060a0:	00400798 	0x400798
  4060a4:	00400798 	0x400798
  4060a8:	00400798 	0x400798
  4060ac:	00400798 	0x400798
  4060b0:	00400798 	0x400798
  4060b4:	00400798 	0x400798
  4060b8:	00400798 	0x400798
  4060bc:	00400798 	0x400798
  4060c0:	00400798 	0x400798
  4060c4:	00400798 	0x400798
  4060c8:	00400798 	0x400798
  4060cc:	00400798 	0x400798
  4060d0:	00400798 	0x400798
  4060d4:	00400798 	0x400798
  4060d8:	00400798 	0x400798
  4060dc:	00400798 	0x400798
  4060e0:	00400798 	0x400798
  4060e4:	00400798 	0x400798
  4060e8:	00400798 	0x400798
  4060ec:	00400798 	0x400798
  4060f0:	00400798 	0x400798
  4060f4:	00400798 	0x400798
  4060f8:	00400798 	0x400798
  4060fc:	00400798 	0x400798
  406100:	00400798 	0x400798
  406104:	00400798 	0x400798
  406108:	00400798 	0x400798
  40610c:	00400798 	0x400798
  406110:	00400798 	0x400798
  406114:	00400798 	0x400798
  406118:	00400798 	0x400798
  40611c:	00400798 	0x400798
  406120:	00400798 	0x400798
  406124:	00400798 	0x400798
  406128:	00400798 	0x400798
  40612c:	00400798 	0x400798
  406130:	00400798 	0x400798
  406134:	0040047c 	0x40047c
  406138:	00400798 	0x400798
  40613c:	00400798 	0x400798
  406140:	00400798 	0x400798
  406144:	00400798 	0x400798
  406148:	00400798 	0x400798
  40614c:	00400798 	0x400798
  406150:	00400798 	0x400798
  406154:	00400798 	0x400798
  406158:	00400798 	0x400798
  40615c:	00400798 	0x400798
  406160:	00400504 	0x400504
  406164:	00400798 	0x400798
  406168:	00400798 	0x400798
  40616c:	00400798 	0x400798
  406170:	00400798 	0x400798
  406174:	00400798 	0x400798
  406178:	0040057c 	0x40057c
  40617c:	00400798 	0x400798
  406180:	00400798 	0x400798
  406184:	0040066c 	0x40066c
  406188:	00400798 	0x400798
  40618c:	00400798 	0x400798
  406190:	00400798 	0x400798
  406194:	00400798 	0x400798
  406198:	00400798 	0x400798
  40619c:	00400798 	0x400798
  4061a0:	00400798 	0x400798
  4061a4:	00400798 	0x400798
  4061a8:	00400798 	0x400798
  4061ac:	00400404 	0x400404
  4061b0:	004006e8 	0x4006e8
  4061b4:	0040047c 	0x40047c
  4061b8:	00400798 	0x400798
  4061bc:	00400798 	0x400798
  4061c0:	00400798 	0x400798
  4061c4:	00400798 	0x400798
  4061c8:	00400798 	0x400798
  4061cc:	00400798 	0x400798
  4061d0:	00400798 	0x400798
  4061d4:	00400798 	0x400798
  4061d8:	00400798 	0x400798
  4061dc:	00400798 	0x400798
  4061e0:	00400504 	0x400504
  4061e4:	00400798 	0x400798
  4061e8:	00400798 	0x400798
  4061ec:	00400798 	0x400798
  4061f0:	0040073c 	0x40073c
  4061f4:	00400798 	0x400798
  4061f8:	0040057c 	0x40057c
  4061fc:	00400798 	0x400798
  406200:	00400798 	0x400798
  406204:	004005f4 	0x4005f4
	...
  406210:	70616e69 	0x70616e69
  406214:	63206174 	0x63206174
  406218:	2025733a 	addi	a1,at,29498
  40621c:	25643a20 	addiu	a0,t3,14880
  406220:	00000000 	nop
  406224:	666f726b 	0x666f726b
  406228:	2e630000 	sltiu	v1,s3,0
  40622c:	55736572 	0x55736572
  406230:	20706766 	addi	s0,v1,26470
  406234:	61756c74 	0x61756c74
  406238:	20686164 	addi	t0,v1,24932
  40623c:	646c6572 	0x646c6572
  406240:	20666163 	addi	a2,v1,24931
  406244:	696e6720 	0x696e6720
  406248:	61206e6f 	0x61206e6f
  40624c:	6e2d434f 	0x6e2d434f
  406250:	57207061 	0x57207061
  406254:	67650a00 	0x67650a00
  406258:	55736572 	0x55736572
  40625c:	20706766 	addi	s0,v1,26470
  406260:	61756c74 	0x61756c74
  406264:	20686164 	addi	t0,v1,24932
  406268:	646c6572 	0x646c6572
  40626c:	206d656d 	addi	t5,v1,25965
  406270:	5f616c6c 	0x5f616c6c
  406274:	6f632066 	0x6f632066
  406278:	61696c64 	0x61696c64
  40627c:	0a000000 	j	8000000 <end+0x7bf8ffc>
  406280:	55736572 	0x55736572
  406284:	20706766 	addi	s0,v1,26470
  406288:	61756c74 	0x61756c74
  40628c:	20686164 	addi	t0,v1,24932
  406290:	646c6572 	0x646c6572
  406294:	206d656d 	addi	t5,v1,25965
  406298:	5f6d6170 	0x5f6d6170
  40629c:	20666169 	addi	a2,v1,24937
  4062a0:	6c640a00 	0x6c640a00
  4062a4:	55736572 	0x55736572
  4062a8:	20706766 	addi	s0,v1,26470
  4062ac:	61756c74 	0x61756c74
  4062b0:	20686164 	addi	t0,v1,24932
  4062b4:	646c6572 	0x646c6572
  4062b8:	206d656d 	addi	t5,v1,25965
  4062bc:	5f756e6d 	0x5f756e6d
  4062c0:	61702066 	0x61702066
  4062c4:	61696c65 	0x61696c65
  4062c8:	640a0000 	0x640a0000
  4062cc:	6661696c 	0x6661696c
  4062d0:	65642074 	0x65642074
  4062d4:	6f206475 	0x6f206475
  4062d8:	70207265 	0x70207265
  4062dc:	61642d6f 	0x61642d6f
  4062e0:	6e6c7920 	0x6e6c7920
  4062e4:	5054450a 	0x5054450a
  4062e8:	00000000 	nop
  4062ec:	6661696c 	0x6661696c
  4062f0:	65642074 	0x65642074
  4062f4:	6f206475 	0x6f206475
  4062f8:	70204c49 	0x70204c49
  4062fc:	42415241 	c0	0x415241
  406300:	59205054 	0x59205054
  406304:	450a0000 	0x450a0000
  406308:	6661696c 	0x6661696c
  40630c:	65642074 	0x65642074
  406310:	6f206475 	0x6f206475
  406314:	70205054 	0x70205054
  406318:	45207768 	0x45207768
  40631c:	69636820 	0x69636820
  406320:	68617320 	0x68617320
  406324:	6265656e 	0x6265656e
  406328:	20647570 	addi	a0,v1,30064
  40632c:	6c696361 	0x6c696361
  406330:	74656420 	jalx	1959080 <end+0x155207c>
  406334:	6265666f 	0x6265666f
  406338:	72650a00 	0x72650a00
  40633c:	6661696c 	0x6661696c
  406340:	65642074 	0x65642074
  406344:	6f206475 	0x6f206475
  406348:	70205054 	0x70205054
  40634c:	45207769 	0x45207769
  406350:	74682043 	jalx	1a0810c <end+0x1601108>
  406354:	4f572069 	c3	0x1572069
  406358:	6e206368 	0x6e206368
  40635c:	696c6420 	0x696c6420
  406360:	656e760a 	0x656e760a
  406364:	00000000 	nop
  406368:	6661696c 	0x6661696c
  40636c:	65642074 	0x65642074
  406370:	6f206475 	0x6f206475
  406374:	70205054 	0x70205054
  406378:	45207769 	0x45207769
  40637c:	74682043 	jalx	1a0810c <end+0x1601108>
  406380:	4f572069 	c3	0x1572069
  406384:	6e206661 	0x6e206661
  406388:	74686572 	jalx	1a195c8 <end+0x16125c4>
  40638c:	20656e76 	addi	a1,v1,28278
  406390:	0a000000 	j	8000000 <end+0x7bf8ffc>
  406394:	666f726b 	0x666f726b
  406398:	20616c6c 	addi	at,v1,27756
  40639c:	6f63206d 	0x6f63206d
  4063a0:	656d2066 	0x656d2066
  4063a4:	61696c65 	0x61696c65
  4063a8:	640a0000 	0x640a0000
  4063ac:	666f726b 	0x666f726b
  4063b0:	20736574 	addi	s3,v1,25972
  4063b4:	20706766 	addi	s0,v1,26470
  4063b8:	61756c74 	0x61756c74
  4063bc:	5f68616e 	0x5f68616e
  4063c0:	646c6572 	0x646c6572
  4063c4:	20666169 	addi	a2,v1,24937
  4063c8:	6c65640a 	0x6c65640a
  4063cc:	00000000 	nop
  4063d0:	666f726b 	0x666f726b
  4063d4:	20736574 	addi	s3,v1,25972
  4063d8:	20737461 	addi	s3,v1,29793
  4063dc:	74757320 	jalx	1d5cc80 <end+0x1955c7c>
  4063e0:	6661696c 	0x6661696c
  4063e4:	65640a00 	0x65640a00
  4063e8:	73666f72 	0x73666f72
  4063ec:	6b206e6f 	0x6b206e6f
  4063f0:	7420696d 	jalx	81a5b4 <end+0x4135b0>
  4063f4:	706c656d 	0x706c656d
  4063f8:	656e7465 	0x656e7465
  4063fc:	64000000 	0x64000000
  406400:	63616e6e 	0x63616e6e
  406404:	6f742073 	0x6f742073
  406408:	65742070 	0x65742070
  40640c:	67666175 	0x67666175
  406410:	6c742068 	0x6c742068
  406414:	616e646c 	0x616e646c
  406418:	65720a00 	0x65720a00
  40641c:	6970632e 	0x6970632e
  406420:	63000000 	0x63000000
  406424:	6572726f 	0x6572726f
  406428:	7220696e 	0x7220696e
  40642c:	20697063 	addi	t1,v1,28771
  406430:	5f73656e 	0x5f73656e
  406434:	643a2025 	0x643a2025
  406438:	64000000 	0x64000000
  40643c:	5b253038 	0x5b253038
  406440:	785d2075 	0x785d2075
  406444:	6e6b6e6f 	0x6e6b6e6f
  406448:	776e2064 	jalx	db88190 <end+0xd78118c>
  40644c:	65766963 	0x65766963
  406450:	65207479 	0x65207479
  406454:	70652025 	0x70652025
  406458:	640a0000 	0x640a0000
  40645c:	5b253038 	0x5b253038
  406460:	785d2072 	0x785d2072
  406464:	65616420 	0x65616420
  406468:	2564202d 	addiu	a0,t3,8237
  40646c:	2d206261 	sltiu	zero,t1,25185
  406470:	64206d6f 	0x64206d6f
  406474:	64650a00 	0x64650a00
  406478:	5b253038 	0x5b253038
  40647c:	785d2077 	0x785d2077
  406480:	72697465 	0x72697465
  406484:	20256420 	addi	a1,at,25632
  406488:	2d2d2062 	sltiu	t5,t1,8290
  40648c:	6164206d 	0x6164206d
  406490:	6f64650a 	0x6f64650a
  406494:	00000000 	nop
  406498:	66696c65 	0x66696c65
  40649c:	00000000 	nop
  4064a0:	57697468 	0x57697468
  4064a4:	6f757420 	0x6f757420
  4064a8:	66726565 	0x66726565
  4064ac:	20666420 	addi	a2,v1,25632
  4064b0:	6c656674 	0x6c656674
  4064b4:	0a000000 	j	8000000 <end+0x7bf8ffc>
  4064b8:	63616e6e 	0x63616e6e
  4064bc:	6f6e7420 	0x6f6e7420
  4064c0:	6f70656e 	0x6f70656e
  4064c4:	2066696c 	addi	a2,v1,26988
  4064c8:	65202573 	0x65202573
  4064cc:	0a000000 	j	8000000 <end+0x7bf8ffc>
  4064d0:	63616e6e 	0x63616e6e
  4064d4:	6f74206d 	0x6f74206d
  4064d8:	61702074 	0x61702074
  4064dc:	68652066 	0x68652066
  4064e0:	696c652e 	0x696c652e
  4064e4:	0a000000 	j	8000000 <end+0x7bf8ffc>
  4064e8:	63616e6e 	0x63616e6e
  4064ec:	6f742063 	0x6f742063
  4064f0:	6c6f7365 	0x6c6f7365
  4064f4:	20746865 	addi	s4,v1,26725
  4064f8:	2066696c 	addi	a2,v1,26988
  4064fc:	650a0000 	0x650a0000
  406500:	63616e6e 	0x63616e6e
  406504:	6f6e7420 	0x6f6e7420
  406508:	756e6d61 	jalx	5b9b584 <end+0x5794580>
  40650c:	70207468 	0x70207468
  406510:	65206669 	0x65206669
  406514:	6c652e0a 	0x6c652e0a
  406518:	00000000 	nop
  40651c:	66696c65 	0x66696c65
  406520:	2e630000 	sltiu	v1,s3,0
  406524:	66747275 	0x66747275
  406528:	6e636174 	0x6e636174
  40652c:	653a2073 	0x653a2073
  406530:	79736361 	0x79736361
  406534:	6c6c5f6d 	0x6c6c5f6d
  406538:	656d5f75 	0x656d5f75
  40653c:	6e6d6170 	0x6e6d6170
  406540:	20253038 	addi	a1,at,12344
  406544:	783a2025 	0x783a2025
  406548:	65000000 	0x65000000
  40654c:	70697065 	0x70697065
  406550:	00000000 	nop
  406554:	5b253038 	0x5b253038
  406558:	785d2070 	0x785d2070
  40655c:	69706563 	0x69706563
  406560:	72656174 	0x72656174
  406564:	65200a00 	0x65200a00
  406568:	3c706970 	0x3c706970
  40656c:	653e0000 	0x653e0000
  406570:	66736970 	0x66736970
  406574:	632e6300 	0x632e6300
  406578:	66736970 	0x66736970
  40657c:	635f6d61 	0x635f6d61
  406580:	703a2075 	0x703a2075
  406584:	6e657870 	0x6e657870
  406588:	65637465 	0x65637465
  40658c:	64207065 	0x64207065
  406590:	726d6973 	0x726d6973
  406594:	73696f6e 	0x73696f6e
  406598:	73202530 	0x73202530
  40659c:	38782066 	xori	t8,v1,0x2066
  4065a0:	6f722064 	0x6f722064
  4065a4:	73747661 	0x73747661
  4065a8:	20253038 	addi	a1,at,12344
  4065ac:	78000000 	0x78000000
  4065b0:	636f6e73 	0x636f6e73
  4065b4:	00000000 	nop
  4065b8:	25630000 	addiu	v1,t3,0
  4065bc:	25730000 	addiu	s3,t3,0
  4065c0:	3c636f6e 	0x3c636f6e
  4065c4:	Address 0x00000000004065c4 is out of bounds.

Disassembly of section .data.rel:

004065c8 <devtab>:
  4065c8:	004065d8 	0x4065d8
  4065cc:	00406610 	0x406610
  4065d0:	004065f4 	0x4065f4
  4065d4:	00000000 	nop
Disassembly of section .data.rel.local:

004065d8 <devfile>:
  4065d8:	00000066 	0x66
  4065dc:	00406498 	0x406498
  4065e0:	00402108 	0x402108
  4065e4:	00402264 	0x402264
  4065e8:	00402030 	0x402030
  4065ec:	00402314 	0x402314
  4065f0:	00000000 	nop

004065f4 <devpipe>:
  4065f4:	00000070 	0x70
  4065f8:	0040654c 	syscall	0x10195
  4065fc:	00402730 	0x402730
  406600:	00402738 	0x402738
  406604:	004027a8 	0x4027a8
  406608:	00402740 	0x402740
  40660c:	00000000 	nop

00406610 <devcons>:
  406610:	00000063 	0x63
  406614:	004065b0 	0x4065b0
  406618:	00402b30 	0x402b30
  40661c:	00402bd8 	0x402bd8
  406620:	00402c88 	0x402c88
  406624:	00402c90 	0x402c90
  406628:	00000000 	nop
Disassembly of section .bss:

00407000 <env>:
  407000:	00000000 	nop
Disassembly of section .pdr:

00000000 <.pdr>:
   0:	004000c0 	0x4000c0
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	004000d0 	0x4000d0
  24:	80000000 	lb	zero,0(zero)
  28:	fffffff8 	0xfffffff8
	...
  34:	00000018 	mult	zero,zero
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	004000f0 	0x4000f0
  44:	80070000 	lb	a3,0(zero)
  48:	fffffffc 	0xfffffffc
	...
  54:	00000020 	add	zero,zero,zero
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	00400188 	0x400188
  64:	80000000 	lb	zero,0(zero)
  68:	fffffff8 	0xfffffff8
	...
  74:	00000020 	add	zero,zero,zero
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	004001c8 	0x4001c8
  84:	80010000 	lb	at,0(zero)
  88:	fffffffc 	0xfffffffc
	...
  94:	00000020 	add	zero,zero,zero
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	00400230 	0x400230
  a4:	803f0000 	lb	ra,0(at)
  a8:	fffffff8 	0xfffffff8
	...
  b4:	00000428 	0x428
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	004007fc 	0x4007fc
	...
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	00400878 	0x400878
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	00400998 	0x400998
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	00400b30 	0x400b30
 124:	80000000 	lb	zero,0(zero)
 128:	fffffff8 	0xfffffff8
	...
 134:	00000018 	mult	zero,zero
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	00400b50 	0x400b50
 144:	80070000 	lb	a3,0(zero)
 148:	fffffffc 	0xfffffffc
	...
 154:	00000020 	add	zero,zero,zero
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	00400bd0 	0x400bd0
	...
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	00400c58 	0x400c58
	...
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	00400c84 	0x400c84
 1a4:	80030000 	lb	v1,0(zero)
 1a8:	fffffff8 	0xfffffff8
	...
 1b4:	00000028 	0x28
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	00400d98 	0x400d98
 1c4:	80030000 	lb	v1,0(zero)
 1c8:	fffffff8 	0xfffffff8
	...
 1d4:	00000028 	0x28
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	00400ef0 	0x400ef0
 1e4:	801f0000 	lb	ra,0(zero)
 1e8:	fffffffc 	0xfffffffc
	...
 1f4:	00000030 	0x30
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	00401094 	0x401094
 204:	80000000 	lb	zero,0(zero)
 208:	fffffff8 	0xfffffff8
	...
 214:	00000018 	mult	zero,zero
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f
 220:	004010c0 	0x4010c0
 224:	80010000 	lb	at,0(zero)
 228:	fffffffc 	0xfffffffc
	...
 234:	00000018 	mult	zero,zero
 238:	0000001d 	0x1d
 23c:	0000001f 	0x1f
 240:	00401140 	0x401140
 244:	80000000 	lb	zero,0(zero)
 248:	fffffff8 	0xfffffff8
	...
 254:	00000020 	add	zero,zero,zero
 258:	0000001d 	0x1d
 25c:	0000001f 	0x1f
 260:	00401178 	0x401178
 264:	80000000 	lb	zero,0(zero)
 268:	fffffff8 	0xfffffff8
	...
 274:	00000020 	add	zero,zero,zero
 278:	0000001d 	0x1d
 27c:	0000001f 	0x1f
 280:	004011ac 	0x4011ac
 284:	80000000 	lb	zero,0(zero)
 288:	fffffff8 	0xfffffff8
	...
 294:	00000020 	add	zero,zero,zero
 298:	0000001d 	0x1d
 29c:	0000001f 	0x1f
 2a0:	004011e0 	0x4011e0
 2a4:	80000000 	lb	zero,0(zero)
 2a8:	fffffff8 	0xfffffff8
	...
 2b4:	00000020 	add	zero,zero,zero
 2b8:	0000001d 	0x1d
 2bc:	0000001f 	0x1f
 2c0:	00401214 	0x401214
 2c4:	80000000 	lb	zero,0(zero)
 2c8:	fffffff8 	0xfffffff8
	...
 2d4:	00000020 	add	zero,zero,zero
 2d8:	0000001d 	0x1d
 2dc:	0000001f 	0x1f
 2e0:	00401250 	0x401250
 2e4:	80000000 	lb	zero,0(zero)
 2e8:	fffffff8 	0xfffffff8
	...
 2f4:	00000020 	add	zero,zero,zero
 2f8:	0000001d 	0x1d
 2fc:	0000001f 	0x1f
 300:	0040128c 	syscall	0x1004a
 304:	80000000 	lb	zero,0(zero)
 308:	fffffff8 	0xfffffff8
	...
 314:	00000020 	add	zero,zero,zero
 318:	0000001d 	0x1d
 31c:	0000001f 	0x1f
 320:	004012d4 	0x4012d4
 324:	80000000 	lb	zero,0(zero)
 328:	fffffff8 	0xfffffff8
	...
 334:	00000020 	add	zero,zero,zero
 338:	0000001d 	0x1d
 33c:	0000001f 	0x1f
 340:	0040130c 	syscall	0x1004c
 344:	80000000 	lb	zero,0(zero)
 348:	fffffff8 	0xfffffff8
	...
 354:	00000020 	add	zero,zero,zero
 358:	0000001d 	0x1d
 35c:	0000001f 	0x1f
 360:	00401344 	0x401344
 364:	80000000 	lb	zero,0(zero)
 368:	fffffff8 	0xfffffff8
	...
 374:	00000020 	add	zero,zero,zero
 378:	0000001d 	0x1d
 37c:	0000001f 	0x1f
 380:	0040137c 	0x40137c
 384:	80000000 	lb	zero,0(zero)
 388:	fffffff8 	0xfffffff8
	...
 394:	00000020 	add	zero,zero,zero
 398:	0000001d 	0x1d
 39c:	0000001f 	0x1f
 3a0:	004013b0 	0x4013b0
 3a4:	80000000 	lb	zero,0(zero)
 3a8:	fffffff8 	0xfffffff8
	...
 3b4:	00000020 	add	zero,zero,zero
 3b8:	0000001d 	0x1d
 3bc:	0000001f 	0x1f
 3c0:	004013f0 	0x4013f0
 3c4:	80000000 	lb	zero,0(zero)
 3c8:	fffffff8 	0xfffffff8
	...
 3d4:	00000020 	add	zero,zero,zero
 3d8:	0000001d 	0x1d
 3dc:	0000001f 	0x1f
 3e0:	00401424 	0x401424
 3e4:	80000000 	lb	zero,0(zero)
 3e8:	fffffff8 	0xfffffff8
	...
 3f4:	00000020 	add	zero,zero,zero
 3f8:	0000001d 	0x1d
 3fc:	0000001f 	0x1f
 400:	00401460 	0x401460
 404:	801f0000 	lb	ra,0(zero)
 408:	fffffffc 	0xfffffffc
	...
 414:	00000028 	0x28
 418:	0000001d 	0x1d
 41c:	0000001f 	0x1f
 420:	004014f8 	0x4014f8
 424:	80030000 	lb	v1,0(zero)
 428:	fffffff8 	0xfffffff8
	...
 434:	00000020 	add	zero,zero,zero
 438:	0000001d 	0x1d
 43c:	0000001f 	0x1f
 440:	00401580 	0x401580
	...
 458:	0000001d 	0x1d
 45c:	0000001f 	0x1f
 460:	004015ac 	0x4015ac
	...
 478:	0000001d 	0x1d
 47c:	0000001f 	0x1f
 480:	004015d0 	0x4015d0
	...
 498:	0000001d 	0x1d
 49c:	0000001f 	0x1f
 4a0:	00401624 	0x401624
	...
 4b8:	0000001d 	0x1d
 4bc:	0000001f 	0x1f
 4c0:	00401658 	0x401658
	...
 4d8:	0000001d 	0x1d
 4dc:	0000001f 	0x1f
 4e0:	004016e0 	0x4016e0
 4e4:	80000000 	lb	zero,0(zero)
 4e8:	fffffff8 	0xfffffff8
	...
 4f4:	00000018 	mult	zero,zero
 4f8:	0000001d 	0x1d
 4fc:	0000001f 	0x1f
 500:	00401780 	0x401780
	...
 518:	0000001d 	0x1d
 51c:	0000001f 	0x1f
 520:	00401804 	sllv	v1,zero,v0
 524:	80000000 	lb	zero,0(zero)
 528:	fffffff8 	0xfffffff8
	...
 534:	00000018 	mult	zero,zero
 538:	0000001d 	0x1d
 53c:	0000001f 	0x1f
 540:	00401828 	0x401828
	...
 558:	0000001d 	0x1d
 55c:	0000001f 	0x1f
 560:	00401878 	0x401878
 564:	80000000 	lb	zero,0(zero)
 568:	fffffff8 	0xfffffff8
	...
 574:	00000018 	mult	zero,zero
 578:	0000001d 	0x1d
 57c:	0000001f 	0x1f
 580:	004018a4 	0x4018a4
	...
 598:	0000001d 	0x1d
 59c:	0000001f 	0x1f
 5a0:	004018b4 	0x4018b4
	...
 5b8:	0000001d 	0x1d
 5bc:	0000001f 	0x1f
 5c0:	004018c4 	0x4018c4
 5c4:	80010000 	lb	at,0(zero)
 5c8:	fffffffc 	0xfffffffc
	...
 5d4:	00000020 	add	zero,zero,zero
 5d8:	0000001d 	0x1d
 5dc:	0000001f 	0x1f
 5e0:	00401934 	0x401934
 5e4:	80030000 	lb	v1,0(zero)
 5e8:	fffffff8 	0xfffffff8
	...
 5f4:	00000020 	add	zero,zero,zero
 5f8:	0000001d 	0x1d
 5fc:	0000001f 	0x1f
 600:	00401974 	0x401974
 604:	80ff0000 	lb	ra,0(a3)
 608:	fffffff8 	0xfffffff8
	...
 614:	00000048 	0x48
 618:	0000001d 	0x1d
 61c:	0000001f 	0x1f
 620:	00401b18 	0x401b18
 624:	80070000 	lb	a3,0(zero)
 628:	fffffffc 	0xfffffffc
	...
 634:	00000028 	0x28
 638:	0000001d 	0x1d
 63c:	0000001f 	0x1f
 640:	00401c00 	0x401c00
 644:	800f0000 	lb	t7,0(zero)
 648:	fffffff8 	0xfffffff8
	...
 654:	00000028 	0x28
 658:	0000001d 	0x1d
 65c:	0000001f 	0x1f
 660:	00401c88 	0x401c88
 664:	80070000 	lb	a3,0(zero)
 668:	fffffffc 	0xfffffffc
	...
 674:	00000028 	0x28
 678:	0000001d 	0x1d
 67c:	0000001f 	0x1f
 680:	00401d6c 	0x401d6c
 684:	80010000 	lb	at,0(zero)
 688:	fffffffc 	0xfffffffc
	...
 694:	00000020 	add	zero,zero,zero
 698:	0000001d 	0x1d
 69c:	0000001f 	0x1f
 6a0:	00401dac 	0x401dac
 6a4:	80010000 	lb	at,0(zero)
 6a8:	fffffffc 	0xfffffffc
	...
 6b4:	00000020 	add	zero,zero,zero
 6b8:	0000001d 	0x1d
 6bc:	0000001f 	0x1f
 6c0:	00401e20 	0x401e20
 6c4:	80030000 	lb	v1,0(zero)
 6c8:	fffffff8 	0xfffffff8
	...
 6d4:	00000020 	add	zero,zero,zero
 6d8:	0000001d 	0x1d
 6dc:	0000001f 	0x1f
 6e0:	00401e80 	0x401e80
	...
 6f8:	0000001d 	0x1d
 6fc:	0000001f 	0x1f
 700:	00401f10 	0x401f10
 704:	801f0000 	lb	ra,0(zero)
 708:	fffffffc 	0xfffffffc
	...
 714:	00000030 	0x30
 718:	0000001d 	0x1d
 71c:	0000001f 	0x1f
 720:	00402030 	0x402030
 724:	800f0000 	lb	t7,0(zero)
 728:	fffffff8 	0xfffffff8
	...
 734:	00000028 	0x28
 738:	0000001d 	0x1d
 73c:	0000001f 	0x1f
 740:	00402108 	0x402108
 744:	80070000 	lb	a3,0(zero)
 748:	fffffffc 	0xfffffffc
	...
 754:	00000020 	add	zero,zero,zero
 758:	0000001d 	0x1d
 75c:	0000001f 	0x1f
 760:	00402188 	0x402188
 764:	80030000 	lb	v1,0(zero)
 768:	fffffff8 	0xfffffff8
	...
 774:	00000028 	0x28
 778:	0000001d 	0x1d
 77c:	0000001f 	0x1f
 780:	00402264 	0x402264
 784:	801f0000 	lb	ra,0(zero)
 788:	fffffffc 	0xfffffffc
	...
 794:	00000028 	0x28
 798:	0000001d 	0x1d
 79c:	0000001f 	0x1f
 7a0:	00402314 	0x402314
 7a4:	80030000 	lb	v1,0(zero)
 7a8:	fffffff8 	0xfffffff8
	...
 7b4:	00000020 	add	zero,zero,zero
 7b8:	0000001d 	0x1d
 7bc:	0000001f 	0x1f
 7c0:	00402370 	0x402370
 7c4:	c0ff0000 	lwc0	$31,0(a3)
 7c8:	fffffffc 	0xfffffffc
	...
 7d4:	00000048 	0x48
 7d8:	0000001d 	0x1d
 7dc:	0000001f 	0x1f
 7e0:	00402508 	0x402508
 7e4:	80000000 	lb	zero,0(zero)
 7e8:	fffffff8 	0xfffffff8
	...
 7f4:	00000018 	mult	zero,zero
 7f8:	0000001d 	0x1d
 7fc:	0000001f 	0x1f
 800:	00402528 	0x402528
 804:	80000000 	lb	zero,0(zero)
 808:	fffffff8 	0xfffffff8
	...
 814:	00000018 	mult	zero,zero
 818:	0000001d 	0x1d
 81c:	0000001f 	0x1f
 820:	00402550 	0x402550
 824:	80070000 	lb	a3,0(zero)
 828:	fffffffc 	0xfffffffc
	...
 834:	00000030 	0x30
 838:	0000001d 	0x1d
 83c:	0000001f 	0x1f
 840:	004026e8 	0x4026e8
	...
 858:	0000001d 	0x1d
 85c:	0000001f 	0x1f
 860:	004026f0 	0x4026f0
 864:	80000000 	lb	zero,0(zero)
 868:	fffffff8 	0xfffffff8
	...
 874:	00000020 	add	zero,zero,zero
 878:	0000001d 	0x1d
 87c:	0000001f 	0x1f
 880:	00402730 	0x402730
	...
 898:	0000001d 	0x1d
 89c:	0000001f 	0x1f
 8a0:	00402738 	0x402738
	...
 8b8:	0000001d 	0x1d
 8bc:	0000001f 	0x1f
 8c0:	00402740 	0x402740
 8c4:	80030000 	lb	v1,0(zero)
 8c8:	fffffff8 	0xfffffff8
	...
 8d4:	00000020 	add	zero,zero,zero
 8d8:	0000001d 	0x1d
 8dc:	0000001f 	0x1f
 8e0:	004027a8 	0x4027a8
 8e4:	80000000 	lb	zero,0(zero)
 8e8:	fffffff8 	0xfffffff8
	...
 8f4:	00000018 	mult	zero,zero
 8f8:	0000001d 	0x1d
 8fc:	0000001f 	0x1f
 900:	004027e0 	0x4027e0
 904:	80030000 	lb	v1,0(zero)
 908:	fffffff8 	0xfffffff8
	...
 914:	00000028 	0x28
 918:	0000001d 	0x1d
 91c:	0000001f 	0x1f
 920:	00402844 	0x402844
 924:	800f0000 	lb	t7,0(zero)
 928:	fffffff8 	0xfffffff8
	...
 934:	00000030 	0x30
 938:	0000001d 	0x1d
 93c:	0000001f 	0x1f
 940:	004028c0 	0x4028c0
 944:	80010000 	lb	at,0(zero)
 948:	fffffffc 	0xfffffffc
	...
 954:	00000028 	0x28
 958:	0000001d 	0x1d
 95c:	0000001f 	0x1f
 960:	00402938 	0x402938
 964:	80000000 	lb	zero,0(zero)
 968:	fffffff8 	0xfffffff8
	...
 974:	00000018 	mult	zero,zero
 978:	0000001d 	0x1d
 97c:	0000001f 	0x1f
 980:	00402974 	0x402974
 984:	80000000 	lb	zero,0(zero)
 988:	fffffff8 	0xfffffff8
	...
 994:	00000018 	mult	zero,zero
 998:	0000001d 	0x1d
 99c:	0000001f 	0x1f
 9a0:	004029a8 	0x4029a8
 9a4:	80000000 	lb	zero,0(zero)
 9a8:	fffffff8 	0xfffffff8
	...
 9b4:	00000018 	mult	zero,zero
 9b8:	0000001d 	0x1d
 9bc:	0000001f 	0x1f
 9c0:	004029e4 	0x4029e4
 9c4:	80030000 	lb	v1,0(zero)
 9c8:	fffffff8 	0xfffffff8
	...
 9d4:	00000020 	add	zero,zero,zero
 9d8:	0000001d 	0x1d
 9dc:	0000001f 	0x1f
 9e0:	00402a44 	0x402a44
 9e4:	80000000 	lb	zero,0(zero)
 9e8:	fffffff8 	0xfffffff8
	...
 9f4:	00000018 	mult	zero,zero
 9f8:	0000001d 	0x1d
 9fc:	0000001f 	0x1f
 a00:	00402a80 	0x402a80
 a04:	80000000 	lb	zero,0(zero)
 a08:	fffffff8 	0xfffffff8
	...
 a14:	00000020 	add	zero,zero,zero
 a18:	0000001d 	0x1d
 a1c:	0000001f 	0x1f
 a20:	00402ac4 	0x402ac4
 a24:	80000000 	lb	zero,0(zero)
 a28:	fffffff8 	0xfffffff8
	...
 a34:	00000020 	add	zero,zero,zero
 a38:	0000001d 	0x1d
 a3c:	0000001f 	0x1f
 a40:	00402b30 	0x402b30
 a44:	80030000 	lb	v1,0(zero)
 a48:	fffffff8 	0xfffffff8
	...
 a54:	00000020 	add	zero,zero,zero
 a58:	0000001d 	0x1d
 a5c:	0000001f 	0x1f
 a60:	00402bd8 	0x402bd8
 a64:	803f0000 	lb	ra,0(at)
 a68:	fffffff8 	0xfffffff8
	...
 a74:	000000b0 	0xb0
 a78:	0000001d 	0x1d
 a7c:	0000001f 	0x1f
 a80:	00402c88 	0x402c88
	...
 a98:	0000001d 	0x1d
 a9c:	0000001f 	0x1f
 aa0:	00402c90 	0x402c90
 aa4:	80000000 	lb	zero,0(zero)
 aa8:	fffffff8 	0xfffffff8
	...
 ab4:	00000018 	mult	zero,zero
 ab8:	0000001d 	0x1d
 abc:	0000001f 	0x1f
 ac0:	00402cc0 	0x402cc0
	...
 ad8:	0000001d 	0x1d
 adc:	0000001f 	0x1f
 ae0:	00402d0c 	syscall	0x100b4
 ae4:	80030000 	lb	v1,0(zero)
 ae8:	fffffff8 	0xfffffff8
	...
 af4:	00000228 	0x228
 af8:	0000001d 	0x1d
 afc:	0000001f 	0x1f
