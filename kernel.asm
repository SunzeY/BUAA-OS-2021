
user/mytest.b:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <_start>:
  400000:	8fa40000 	lw	a0,0(sp)
  400004:	8fa50004 	lw	a1,4(sp)
  400008:	0c1002f8 	jal	400be0 <libmain>
  40000c:	00000000 	nop
  400010:	00000000 	nop

00400014 <__asm_pgfault_handler>:
  400014:	00000000 	nop
  400018:	8fa4008c 	lw	a0,140(sp)
  40001c:	3c090040 	lui	t1,0x40
  400020:	8d296010 	lw	t1,24592(t1)
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

004000d0 <get_sp>:
  4000d0:	03e00008 	jr	ra
  4000d4:	03a01021 	move	v0,sp
	...

004000e0 <umain>:
  4000e0:	27bdffe8 	addiu	sp,sp,-24
  4000e4:	afbf0010 	sw	ra,16(sp)
  4000e8:	0c1003ea 	jal	400fa8 <fork>
  4000ec:	00000000 	nop
  4000f0:	14400017 	bnez	v0,400150 <umain+0x70>
  4000f4:	3c020041 	lui	v0,0x41
  4000f8:	0c100484 	jal	401210 <tfork>
  4000fc:	00000000 	nop
  400100:	1440000a 	bnez	v0,40012c <umain+0x4c>
  400104:	3c020041 	lui	v0,0x41
  400108:	8c458000 	lw	a1,-32768(v0)
  40010c:	00000000 	nop
  400110:	24a50003 	addiu	a1,a1,3
  400114:	ac458000 	sw	a1,-32768(v0)
  400118:	3c040040 	lui	a0,0x40
  40011c:	0c100086 	jal	400218 <writef>
  400120:	24847210 	addiu	a0,a0,29200
  400124:	1000ffff 	b	400124 <umain+0x44>
  400128:	00000000 	nop
  40012c:	8c458000 	lw	a1,-32768(v0)
  400130:	00000000 	nop
  400134:	24a50002 	addiu	a1,a1,2
  400138:	ac458000 	sw	a1,-32768(v0)
  40013c:	3c040040 	lui	a0,0x40
  400140:	0c100086 	jal	400218 <writef>
  400144:	24847228 	addiu	a0,a0,29224
  400148:	1000ffff 	b	400148 <umain+0x68>
  40014c:	00000000 	nop
  400150:	8c458000 	lw	a1,-32768(v0)
  400154:	00000000 	nop
  400158:	24a50001 	addiu	a1,a1,1
  40015c:	ac458000 	sw	a1,-32768(v0)
  400160:	3c040040 	lui	a0,0x40
  400164:	0c100086 	jal	400218 <writef>
  400168:	24847240 	addiu	a0,a0,29248
  40016c:	1000ffff 	b	40016c <umain+0x8c>
  400170:	00000000 	nop
	...

00400180 <user_myoutput>:
  400180:	27bdffe0 	addiu	sp,sp,-32
  400184:	afbf001c 	sw	ra,28(sp)
  400188:	afb20018 	sw	s2,24(sp)
  40018c:	afb10014 	sw	s1,20(sp)
  400190:	afb00010 	sw	s0,16(sp)
  400194:	24020001 	li	v0,1
  400198:	14c20015 	bne	a2,v0,4001f0 <user_myoutput+0x70>
  40019c:	00c09021 	move	s2,a2
  4001a0:	80a20000 	lb	v0,0(a1)
  4001a4:	00000000 	nop
  4001a8:	14400013 	bnez	v0,4001f8 <user_myoutput+0x78>
  4001ac:	00a08021 	move	s0,a1
  4001b0:	10000013 	b	400200 <user_myoutput+0x80>
  4001b4:	00000000 	nop
  4001b8:	82040000 	lb	a0,0(s0)
  4001bc:	0c10052c 	jal	4014b0 <syscall_putchar>
  4001c0:	00000000 	nop
  4001c4:	82030000 	lb	v1,0(s0)
  4001c8:	2402000a 	li	v0,10
  4001cc:	14620003 	bne	v1,v0,4001dc <user_myoutput+0x5c>
  4001d0:	00000000 	nop
  4001d4:	0c10052c 	jal	4014b0 <syscall_putchar>
  4001d8:	2404000a 	li	a0,10
  4001dc:	26310001 	addiu	s1,s1,1
  4001e0:	12510007 	beq	s2,s1,400200 <user_myoutput+0x80>
  4001e4:	26100001 	addiu	s0,s0,1
  4001e8:	1000fff3 	b	4001b8 <user_myoutput+0x38>
  4001ec:	00000000 	nop
  4001f0:	18c00003 	blez	a2,400200 <user_myoutput+0x80>
  4001f4:	00a08021 	move	s0,a1
  4001f8:	1000ffef 	b	4001b8 <user_myoutput+0x38>
  4001fc:	00008821 	move	s1,zero
  400200:	8fbf001c 	lw	ra,28(sp)
  400204:	8fb20018 	lw	s2,24(sp)
  400208:	8fb10014 	lw	s1,20(sp)
  40020c:	8fb00010 	lw	s0,16(sp)
  400210:	03e00008 	jr	ra
  400214:	27bd0020 	addiu	sp,sp,32

00400218 <writef>:
  400218:	27bdffe0 	addiu	sp,sp,-32
  40021c:	afbf0018 	sw	ra,24(sp)
  400220:	afa50024 	sw	a1,36(sp)
  400224:	afa60028 	sw	a2,40(sp)
  400228:	afa7002c 	sw	a3,44(sp)
  40022c:	00803021 	move	a2,a0
  400230:	27a70024 	addiu	a3,sp,36
  400234:	afa70010 	sw	a3,16(sp)
  400238:	3c040040 	lui	a0,0x40
  40023c:	24840180 	addiu	a0,a0,384
  400240:	0c1000b0 	jal	4002c0 <user_lp_Print>
  400244:	00002821 	move	a1,zero
  400248:	8fbf0018 	lw	ra,24(sp)
  40024c:	00000000 	nop
  400250:	03e00008 	jr	ra
  400254:	27bd0020 	addiu	sp,sp,32

00400258 <_user_panic>:
  400258:	27bdffe0 	addiu	sp,sp,-32
  40025c:	afbf001c 	sw	ra,28(sp)
  400260:	afb00018 	sw	s0,24(sp)
  400264:	00801821 	move	v1,a0
  400268:	00a04021 	move	t0,a1
  40026c:	afa7002c 	sw	a3,44(sp)
  400270:	00c08021 	move	s0,a2
  400274:	27a2002c 	addiu	v0,sp,44
  400278:	afa20010 	sw	v0,16(sp)
  40027c:	3c040040 	lui	a0,0x40
  400280:	24847258 	addiu	a0,a0,29272
  400284:	00602821 	move	a1,v1
  400288:	0c100086 	jal	400218 <writef>
  40028c:	01003021 	move	a2,t0
  400290:	3c040040 	lui	a0,0x40
  400294:	24840180 	addiu	a0,a0,384
  400298:	00002821 	move	a1,zero
  40029c:	8fa70010 	lw	a3,16(sp)
  4002a0:	0c1000b0 	jal	4002c0 <user_lp_Print>
  4002a4:	02003021 	move	a2,s0
  4002a8:	3c040040 	lui	a0,0x40
  4002ac:	0c100086 	jal	400218 <writef>
  4002b0:	2484752c 	addiu	a0,a0,29996
  4002b4:	1000ffff 	b	4002b4 <_user_panic+0x5c>
  4002b8:	00000000 	nop
  4002bc:	00000000 	nop

004002c0 <user_lp_Print>:
  4002c0:	27bdfbd8 	addiu	sp,sp,-1064
  4002c4:	afbf0420 	sw	ra,1056(sp)
  4002c8:	afb5041c 	sw	s5,1052(sp)
  4002cc:	afb40418 	sw	s4,1048(sp)
  4002d0:	afb30414 	sw	s3,1044(sp)
  4002d4:	afb20410 	sw	s2,1040(sp)
  4002d8:	afb1040c 	sw	s1,1036(sp)
  4002dc:	afb00408 	sw	s0,1032(sp)
  4002e0:	0080a821 	move	s5,a0
  4002e4:	00a09021 	move	s2,a1
  4002e8:	00c02821 	move	a1,a2
  4002ec:	00e09821 	move	s3,a3
  4002f0:	80a30000 	lb	v1,0(a1)
  4002f4:	00000000 	nop
  4002f8:	1060000d 	beqz	v1,400330 <user_lp_Print+0x70>
  4002fc:	00a08021 	move	s0,a1
  400300:	1000015e 	b	40087c <user_lp_Print+0x5bc>
  400304:	24020025 	li	v0,37
  400308:	00a08021 	move	s0,a1
  40030c:	26100001 	addiu	s0,s0,1
  400310:	82020000 	lb	v0,0(s0)
  400314:	00000000 	nop
  400318:	10400006 	beqz	v0,400334 <user_lp_Print+0x74>
  40031c:	02058823 	subu	s1,s0,a1
  400320:	10430005 	beq	v0,v1,400338 <user_lp_Print+0x78>
  400324:	2e2203e9 	sltiu	v0,s1,1001
  400328:	1000fff9 	b	400310 <user_lp_Print+0x50>
  40032c:	26100001 	addiu	s0,s0,1
  400330:	02058823 	subu	s1,s0,a1
  400334:	2e2203e9 	sltiu	v0,s1,1001
  400338:	14400008 	bnez	v0,40035c <user_lp_Print+0x9c>
  40033c:	02203021 	move	a2,s1
  400340:	02402021 	move	a0,s2
  400344:	3c050040 	lui	a1,0x40
  400348:	24a57000 	addiu	a1,a1,28672
  40034c:	02a0f809 	jalr	s5
  400350:	2406001d 	li	a2,29
  400354:	1000ffff 	b	400354 <user_lp_Print+0x94>
  400358:	00000000 	nop
  40035c:	02a0f809 	jalr	s5
  400360:	02402021 	move	a0,s2
  400364:	82020000 	lb	v0,0(s0)
  400368:	00000000 	nop
  40036c:	10400135 	beqz	v0,400844 <user_lp_Print+0x584>
  400370:	02519021 	addu	s2,s2,s1
  400374:	82030001 	lb	v1,1(s0)
  400378:	2402006c 	li	v0,108
  40037c:	10620003 	beq	v1,v0,40038c <user_lp_Print+0xcc>
  400380:	26110001 	addiu	s1,s0,1
  400384:	10000003 	b	400394 <user_lp_Print+0xd4>
  400388:	00002021 	move	a0,zero
  40038c:	26110002 	addiu	s1,s0,2
  400390:	24040001 	li	a0,1
  400394:	82230000 	lb	v1,0(s1)
  400398:	2402002d 	li	v0,45
  40039c:	14620004 	bne	v1,v0,4003b0 <user_lp_Print+0xf0>
  4003a0:	00003821 	move	a3,zero
  4003a4:	26310001 	addiu	s1,s1,1
  4003a8:	24070001 	li	a3,1
  4003ac:	82230000 	lb	v1,0(s1)
  4003b0:	24020030 	li	v0,48
  4003b4:	14620003 	bne	v1,v0,4003c4 <user_lp_Print+0x104>
  4003b8:	24090020 	li	t1,32
  4003bc:	26310001 	addiu	s1,s1,1
  4003c0:	24090030 	li	t1,48
  4003c4:	82260000 	lb	a2,0(s1)
  4003c8:	00000000 	nop
  4003cc:	24c2ffd0 	addiu	v0,a2,-48
  4003d0:	304200ff 	andi	v0,v0,0xff
  4003d4:	2c42000a 	sltiu	v0,v0,10
  4003d8:	1040000e 	beqz	v0,400414 <user_lp_Print+0x154>
  4003dc:	00004021 	move	t0,zero
  4003e0:	00081040 	sll	v0,t0,0x1
  4003e4:	000818c0 	sll	v1,t0,0x3
  4003e8:	00431021 	addu	v0,v0,v1
  4003ec:	00461021 	addu	v0,v0,a2
  4003f0:	2448ffd0 	addiu	t0,v0,-48
  4003f4:	26310001 	addiu	s1,s1,1
  4003f8:	82260000 	lb	a2,0(s1)
  4003fc:	00000000 	nop
  400400:	24c2ffd0 	addiu	v0,a2,-48
  400404:	304200ff 	andi	v0,v0,0xff
  400408:	2c42000a 	sltiu	v0,v0,10
  40040c:	1440fff5 	bnez	v0,4003e4 <user_lp_Print+0x124>
  400410:	00081040 	sll	v0,t0,0x1
  400414:	82230000 	lb	v1,0(s1)
  400418:	2402002e 	li	v0,46
  40041c:	14620014 	bne	v1,v0,400470 <user_lp_Print+0x1b0>
  400420:	2c620079 	sltiu	v0,v1,121
  400424:	26310001 	addiu	s1,s1,1
  400428:	92220000 	lbu	v0,0(s1)
  40042c:	00000000 	nop
  400430:	2442ffd0 	addiu	v0,v0,-48
  400434:	304200ff 	andi	v0,v0,0xff
  400438:	2c42000a 	sltiu	v0,v0,10
  40043c:	10400009 	beqz	v0,400464 <user_lp_Print+0x1a4>
  400440:	00000000 	nop
  400444:	26310001 	addiu	s1,s1,1
  400448:	92220000 	lbu	v0,0(s1)
  40044c:	00000000 	nop
  400450:	2442ffd0 	addiu	v0,v0,-48
  400454:	304200ff 	andi	v0,v0,0xff
  400458:	2c42000a 	sltiu	v0,v0,10
  40045c:	1440fff9 	bnez	v0,400444 <user_lp_Print+0x184>
  400460:	00000000 	nop
  400464:	82230000 	lb	v1,0(s1)
  400468:	00000000 	nop
  40046c:	2c620079 	sltiu	v0,v1,121
  400470:	104000ed 	beqz	v0,400828 <user_lp_Print+0x568>
  400474:	00031080 	sll	v0,v1,0x2
  400478:	3c030040 	lui	v1,0x40
  40047c:	24637024 	addiu	v1,v1,28708
  400480:	00431021 	addu	v0,v0,v1
  400484:	8c420000 	lw	v0,0(v0)
  400488:	00000000 	nop
  40048c:	00400008 	jr	v0
  400490:	00000000 	nop
  400494:	10800004 	beqz	a0,4004a8 <user_lp_Print+0x1e8>
  400498:	00000000 	nop
  40049c:	8e650000 	lw	a1,0(s3)
  4004a0:	10000003 	b	4004b0 <user_lp_Print+0x1f0>
  4004a4:	26730004 	addiu	s3,s3,4
  4004a8:	8e650000 	lw	a1,0(s3)
  4004ac:	26730004 	addiu	s3,s3,4
  4004b0:	afa80010 	sw	t0,16(sp)
  4004b4:	afa70014 	sw	a3,20(sp)
  4004b8:	afa90018 	sw	t1,24(sp)
  4004bc:	afa0001c 	sw	zero,28(sp)
  4004c0:	27a40020 	addiu	a0,sp,32
  4004c4:	24060002 	li	a2,2
  4004c8:	0c10028a 	jal	400a28 <user_PrintNum>
  4004cc:	00003821 	move	a3,zero
  4004d0:	00408021 	move	s0,v0
  4004d4:	00403021 	move	a2,v0
  4004d8:	2c4203e9 	sltiu	v0,v0,1001
  4004dc:	14400007 	bnez	v0,4004fc <user_lp_Print+0x23c>
  4004e0:	02402021 	move	a0,s2
  4004e4:	3c050040 	lui	a1,0x40
  4004e8:	24a57000 	addiu	a1,a1,28672
  4004ec:	02a0f809 	jalr	s5
  4004f0:	2406001d 	li	a2,29
  4004f4:	1000ffff 	b	4004f4 <user_lp_Print+0x234>
  4004f8:	00000000 	nop
  4004fc:	02a0f809 	jalr	s5
  400500:	27a50020 	addiu	a1,sp,32
  400504:	100000cd 	b	40083c <user_lp_Print+0x57c>
  400508:	02509021 	addu	s2,s2,s0
  40050c:	10800004 	beqz	a0,400520 <user_lp_Print+0x260>
  400510:	00000000 	nop
  400514:	8e650000 	lw	a1,0(s3)
  400518:	10000003 	b	400528 <user_lp_Print+0x268>
  40051c:	26730004 	addiu	s3,s3,4
  400520:	8e650000 	lw	a1,0(s3)
  400524:	26730004 	addiu	s3,s3,4
  400528:	04a10003 	bgez	a1,400538 <user_lp_Print+0x278>
  40052c:	00001021 	move	v0,zero
  400530:	00052823 	negu	a1,a1
  400534:	24020001 	li	v0,1
  400538:	afa80010 	sw	t0,16(sp)
  40053c:	afa70014 	sw	a3,20(sp)
  400540:	afa90018 	sw	t1,24(sp)
  400544:	afa0001c 	sw	zero,28(sp)
  400548:	27a40020 	addiu	a0,sp,32
  40054c:	2406000a 	li	a2,10
  400550:	0c10028a 	jal	400a28 <user_PrintNum>
  400554:	00403821 	move	a3,v0
  400558:	00408021 	move	s0,v0
  40055c:	00403021 	move	a2,v0
  400560:	2c4203e9 	sltiu	v0,v0,1001
  400564:	14400007 	bnez	v0,400584 <user_lp_Print+0x2c4>
  400568:	02402021 	move	a0,s2
  40056c:	3c050040 	lui	a1,0x40
  400570:	24a57000 	addiu	a1,a1,28672
  400574:	02a0f809 	jalr	s5
  400578:	2406001d 	li	a2,29
  40057c:	1000ffff 	b	40057c <user_lp_Print+0x2bc>
  400580:	00000000 	nop
  400584:	02a0f809 	jalr	s5
  400588:	27a50020 	addiu	a1,sp,32
  40058c:	100000ab 	b	40083c <user_lp_Print+0x57c>
  400590:	02509021 	addu	s2,s2,s0
  400594:	10800004 	beqz	a0,4005a8 <user_lp_Print+0x2e8>
  400598:	00000000 	nop
  40059c:	8e650000 	lw	a1,0(s3)
  4005a0:	10000003 	b	4005b0 <user_lp_Print+0x2f0>
  4005a4:	26730004 	addiu	s3,s3,4
  4005a8:	8e650000 	lw	a1,0(s3)
  4005ac:	26730004 	addiu	s3,s3,4
  4005b0:	afa80010 	sw	t0,16(sp)
  4005b4:	afa70014 	sw	a3,20(sp)
  4005b8:	afa90018 	sw	t1,24(sp)
  4005bc:	afa0001c 	sw	zero,28(sp)
  4005c0:	27a40020 	addiu	a0,sp,32
  4005c4:	24060008 	li	a2,8
  4005c8:	0c10028a 	jal	400a28 <user_PrintNum>
  4005cc:	00003821 	move	a3,zero
  4005d0:	00408021 	move	s0,v0
  4005d4:	00403021 	move	a2,v0
  4005d8:	2c4203e9 	sltiu	v0,v0,1001
  4005dc:	14400007 	bnez	v0,4005fc <user_lp_Print+0x33c>
  4005e0:	02402021 	move	a0,s2
  4005e4:	3c050040 	lui	a1,0x40
  4005e8:	24a57000 	addiu	a1,a1,28672
  4005ec:	02a0f809 	jalr	s5
  4005f0:	2406001d 	li	a2,29
  4005f4:	1000ffff 	b	4005f4 <user_lp_Print+0x334>
  4005f8:	00000000 	nop
  4005fc:	02a0f809 	jalr	s5
  400600:	27a50020 	addiu	a1,sp,32
  400604:	1000008d 	b	40083c <user_lp_Print+0x57c>
  400608:	02509021 	addu	s2,s2,s0
  40060c:	10800004 	beqz	a0,400620 <user_lp_Print+0x360>
  400610:	00000000 	nop
  400614:	8e650000 	lw	a1,0(s3)
  400618:	10000003 	b	400628 <user_lp_Print+0x368>
  40061c:	26730004 	addiu	s3,s3,4
  400620:	8e650000 	lw	a1,0(s3)
  400624:	26730004 	addiu	s3,s3,4
  400628:	afa80010 	sw	t0,16(sp)
  40062c:	afa70014 	sw	a3,20(sp)
  400630:	afa90018 	sw	t1,24(sp)
  400634:	afa0001c 	sw	zero,28(sp)
  400638:	27a40020 	addiu	a0,sp,32
  40063c:	2406000a 	li	a2,10
  400640:	0c10028a 	jal	400a28 <user_PrintNum>
  400644:	00003821 	move	a3,zero
  400648:	00408021 	move	s0,v0
  40064c:	00403021 	move	a2,v0
  400650:	2c4203e9 	sltiu	v0,v0,1001
  400654:	14400007 	bnez	v0,400674 <user_lp_Print+0x3b4>
  400658:	02402021 	move	a0,s2
  40065c:	3c050040 	lui	a1,0x40
  400660:	24a57000 	addiu	a1,a1,28672
  400664:	02a0f809 	jalr	s5
  400668:	2406001d 	li	a2,29
  40066c:	1000ffff 	b	40066c <user_lp_Print+0x3ac>
  400670:	00000000 	nop
  400674:	02a0f809 	jalr	s5
  400678:	27a50020 	addiu	a1,sp,32
  40067c:	1000006f 	b	40083c <user_lp_Print+0x57c>
  400680:	02509021 	addu	s2,s2,s0
  400684:	10800004 	beqz	a0,400698 <user_lp_Print+0x3d8>
  400688:	00000000 	nop
  40068c:	8e650000 	lw	a1,0(s3)
  400690:	10000003 	b	4006a0 <user_lp_Print+0x3e0>
  400694:	26730004 	addiu	s3,s3,4
  400698:	8e650000 	lw	a1,0(s3)
  40069c:	26730004 	addiu	s3,s3,4
  4006a0:	afa80010 	sw	t0,16(sp)
  4006a4:	afa70014 	sw	a3,20(sp)
  4006a8:	afa90018 	sw	t1,24(sp)
  4006ac:	afa0001c 	sw	zero,28(sp)
  4006b0:	27a40020 	addiu	a0,sp,32
  4006b4:	24060010 	li	a2,16
  4006b8:	0c10028a 	jal	400a28 <user_PrintNum>
  4006bc:	00003821 	move	a3,zero
  4006c0:	00408021 	move	s0,v0
  4006c4:	00403021 	move	a2,v0
  4006c8:	2c4203e9 	sltiu	v0,v0,1001
  4006cc:	14400007 	bnez	v0,4006ec <user_lp_Print+0x42c>
  4006d0:	02402021 	move	a0,s2
  4006d4:	3c050040 	lui	a1,0x40
  4006d8:	24a57000 	addiu	a1,a1,28672
  4006dc:	02a0f809 	jalr	s5
  4006e0:	2406001d 	li	a2,29
  4006e4:	1000ffff 	b	4006e4 <user_lp_Print+0x424>
  4006e8:	00000000 	nop
  4006ec:	02a0f809 	jalr	s5
  4006f0:	27a50020 	addiu	a1,sp,32
  4006f4:	10000051 	b	40083c <user_lp_Print+0x57c>
  4006f8:	02509021 	addu	s2,s2,s0
  4006fc:	10800004 	beqz	a0,400710 <user_lp_Print+0x450>
  400700:	00000000 	nop
  400704:	8e650000 	lw	a1,0(s3)
  400708:	10000003 	b	400718 <user_lp_Print+0x458>
  40070c:	26730004 	addiu	s3,s3,4
  400710:	8e650000 	lw	a1,0(s3)
  400714:	26730004 	addiu	s3,s3,4
  400718:	afa80010 	sw	t0,16(sp)
  40071c:	afa70014 	sw	a3,20(sp)
  400720:	afa90018 	sw	t1,24(sp)
  400724:	24020001 	li	v0,1
  400728:	afa2001c 	sw	v0,28(sp)
  40072c:	27a40020 	addiu	a0,sp,32
  400730:	24060010 	li	a2,16
  400734:	0c10028a 	jal	400a28 <user_PrintNum>
  400738:	00003821 	move	a3,zero
  40073c:	00408021 	move	s0,v0
  400740:	00403021 	move	a2,v0
  400744:	2c4203e9 	sltiu	v0,v0,1001
  400748:	14400007 	bnez	v0,400768 <user_lp_Print+0x4a8>
  40074c:	02402021 	move	a0,s2
  400750:	3c050040 	lui	a1,0x40
  400754:	24a57000 	addiu	a1,a1,28672
  400758:	02a0f809 	jalr	s5
  40075c:	2406001d 	li	a2,29
  400760:	1000ffff 	b	400760 <user_lp_Print+0x4a0>
  400764:	00000000 	nop
  400768:	02a0f809 	jalr	s5
  40076c:	27a50020 	addiu	a1,sp,32
  400770:	10000032 	b	40083c <user_lp_Print+0x57c>
  400774:	02509021 	addu	s2,s2,s0
  400778:	26740004 	addiu	s4,s3,4
  40077c:	27a40020 	addiu	a0,sp,32
  400780:	82650003 	lb	a1,3(s3)
  400784:	0c100223 	jal	40088c <user_PrintChar>
  400788:	01003021 	move	a2,t0
  40078c:	00408021 	move	s0,v0
  400790:	00403021 	move	a2,v0
  400794:	2c4203e9 	sltiu	v0,v0,1001
  400798:	14400007 	bnez	v0,4007b8 <user_lp_Print+0x4f8>
  40079c:	02402021 	move	a0,s2
  4007a0:	3c050040 	lui	a1,0x40
  4007a4:	24a57000 	addiu	a1,a1,28672
  4007a8:	02a0f809 	jalr	s5
  4007ac:	2406001d 	li	a2,29
  4007b0:	1000ffff 	b	4007b0 <user_lp_Print+0x4f0>
  4007b4:	00000000 	nop
  4007b8:	02a0f809 	jalr	s5
  4007bc:	27a50020 	addiu	a1,sp,32
  4007c0:	02509021 	addu	s2,s2,s0
  4007c4:	1000001d 	b	40083c <user_lp_Print+0x57c>
  4007c8:	02809821 	move	s3,s4
  4007cc:	26740004 	addiu	s4,s3,4
  4007d0:	27a40020 	addiu	a0,sp,32
  4007d4:	8e650000 	lw	a1,0(s3)
  4007d8:	0c100242 	jal	400908 <user_PrintString>
  4007dc:	01003021 	move	a2,t0
  4007e0:	00408021 	move	s0,v0
  4007e4:	00403021 	move	a2,v0
  4007e8:	2c4203e9 	sltiu	v0,v0,1001
  4007ec:	14400007 	bnez	v0,40080c <user_lp_Print+0x54c>
  4007f0:	02402021 	move	a0,s2
  4007f4:	3c050040 	lui	a1,0x40
  4007f8:	24a57000 	addiu	a1,a1,28672
  4007fc:	02a0f809 	jalr	s5
  400800:	2406001d 	li	a2,29
  400804:	1000ffff 	b	400804 <user_lp_Print+0x544>
  400808:	00000000 	nop
  40080c:	02a0f809 	jalr	s5
  400810:	27a50020 	addiu	a1,sp,32
  400814:	02509021 	addu	s2,s2,s0
  400818:	10000008 	b	40083c <user_lp_Print+0x57c>
  40081c:	02809821 	move	s3,s4
  400820:	10000006 	b	40083c <user_lp_Print+0x57c>
  400824:	2631ffff 	addiu	s1,s1,-1
  400828:	02402021 	move	a0,s2
  40082c:	02202821 	move	a1,s1
  400830:	02a0f809 	jalr	s5
  400834:	24060001 	li	a2,1
  400838:	26520001 	addiu	s2,s2,1
  40083c:	1000feac 	b	4002f0 <user_lp_Print+0x30>
  400840:	26250001 	addiu	a1,s1,1
  400844:	02402021 	move	a0,s2
  400848:	3c050040 	lui	a1,0x40
  40084c:	24a57020 	addiu	a1,a1,28704
  400850:	02a0f809 	jalr	s5
  400854:	24060001 	li	a2,1
  400858:	8fbf0420 	lw	ra,1056(sp)
  40085c:	8fb5041c 	lw	s5,1052(sp)
  400860:	8fb40418 	lw	s4,1048(sp)
  400864:	8fb30414 	lw	s3,1044(sp)
  400868:	8fb20410 	lw	s2,1040(sp)
  40086c:	8fb1040c 	lw	s1,1036(sp)
  400870:	8fb00408 	lw	s0,1032(sp)
  400874:	03e00008 	jr	ra
  400878:	27bd0428 	addiu	sp,sp,1064
  40087c:	1462fea2 	bne	v1,v0,400308 <user_lp_Print+0x48>
  400880:	24030025 	li	v1,37
  400884:	1000feaa 	b	400330 <user_lp_Print+0x70>
  400888:	00a08021 	move	s0,a1

0040088c <user_PrintChar>:
  40088c:	00052e00 	sll	a1,a1,0x18
  400890:	1cc00002 	bgtz	a2,40089c <user_PrintChar+0x10>
  400894:	00052e03 	sra	a1,a1,0x18
  400898:	24060001 	li	a2,1
  40089c:	10e00014 	beqz	a3,4008f0 <user_PrintChar+0x64>
  4008a0:	28c20002 	slti	v0,a2,2
  4008a4:	14400016 	bnez	v0,400900 <user_PrintChar+0x74>
  4008a8:	a0850000 	sb	a1,0(a0)
  4008ac:	24030001 	li	v1,1
  4008b0:	24050020 	li	a1,32
  4008b4:	00831021 	addu	v0,a0,v1
  4008b8:	24630001 	addiu	v1,v1,1
  4008bc:	10c30010 	beq	a2,v1,400900 <user_PrintChar+0x74>
  4008c0:	a0450000 	sb	a1,0(v0)
  4008c4:	1000fffc 	b	4008b8 <user_PrintChar+0x2c>
  4008c8:	00831021 	addu	v0,a0,v1
  4008cc:	00001821 	move	v1,zero
  4008d0:	24080020 	li	t0,32
  4008d4:	00641021 	addu	v0,v1,a0
  4008d8:	24630001 	addiu	v1,v1,1
  4008dc:	1467fffd 	bne	v1,a3,4008d4 <user_PrintChar+0x48>
  4008e0:	a0480000 	sb	t0,0(v0)
  4008e4:	00c41021 	addu	v0,a2,a0
  4008e8:	10000005 	b	400900 <user_PrintChar+0x74>
  4008ec:	a045ffff 	sb	a1,-1(v0)
  4008f0:	24c7ffff 	addiu	a3,a2,-1
  4008f4:	1ce0fff5 	bgtz	a3,4008cc <user_PrintChar+0x40>
  4008f8:	00c41021 	addu	v0,a2,a0
  4008fc:	a045ffff 	sb	a1,-1(v0)
  400900:	03e00008 	jr	ra
  400904:	00c01021 	move	v0,a2

00400908 <user_PrintString>:
  400908:	80a20000 	lb	v0,0(a1)
  40090c:	00000000 	nop
  400910:	14400003 	bnez	v0,400920 <user_PrintString+0x18>
  400914:	24a30001 	addiu	v1,a1,1
  400918:	10000007 	b	400938 <user_PrintString+0x30>
  40091c:	00004021 	move	t0,zero
  400920:	00004021 	move	t0,zero
  400924:	25080001 	addiu	t0,t0,1
  400928:	80620000 	lb	v0,0(v1)
  40092c:	00000000 	nop
  400930:	1440fffc 	bnez	v0,400924 <user_PrintString+0x1c>
  400934:	24630001 	addiu	v1,v1,1
  400938:	00c8102a 	slt	v0,a2,t0
  40093c:	10400002 	beqz	v0,400948 <user_PrintString+0x40>
  400940:	00000000 	nop
  400944:	01003021 	move	a2,t0
  400948:	14e00031 	bnez	a3,400a10 <user_PrintString+0x108>
  40094c:	00c83823 	subu	a3,a2,t0
  400950:	1000002b 	b	400a00 <user_PrintString+0xf8>
  400954:	00000000 	nop
  400958:	00003821 	move	a3,zero
  40095c:	00871021 	addu	v0,a0,a3
  400960:	00a71821 	addu	v1,a1,a3
  400964:	90630000 	lbu	v1,0(v1)
  400968:	24e70001 	addiu	a3,a3,1
  40096c:	1507fffb 	bne	t0,a3,40095c <user_PrintString+0x54>
  400970:	a0430000 	sb	v1,0(v0)
  400974:	0106102a 	slt	v0,t0,a2
  400978:	10400029 	beqz	v0,400a20 <user_PrintString+0x118>
  40097c:	00001821 	move	v1,zero
  400980:	00881021 	addu	v0,a0,t0
  400984:	24050020 	li	a1,32
  400988:	00c82023 	subu	a0,a2,t0
  40098c:	a0450000 	sb	a1,0(v0)
  400990:	24630001 	addiu	v1,v1,1
  400994:	10640022 	beq	v1,a0,400a20 <user_PrintString+0x118>
  400998:	24420001 	addiu	v0,v0,1
  40099c:	1000fffc 	b	400990 <user_PrintString+0x88>
  4009a0:	a0450000 	sb	a1,0(v0)
  4009a4:	00001821 	move	v1,zero
  4009a8:	24090020 	li	t1,32
  4009ac:	00831021 	addu	v0,a0,v1
  4009b0:	24630001 	addiu	v1,v1,1
  4009b4:	1467fffd 	bne	v1,a3,4009ac <user_PrintString+0xa4>
  4009b8:	a0490000 	sb	t1,0(v0)
  4009bc:	00e6102a 	slt	v0,a3,a2
  4009c0:	10400017 	beqz	v0,400a20 <user_PrintString+0x118>
  4009c4:	00872021 	addu	a0,a0,a3
  4009c8:	00e61023 	subu	v0,a3,a2
  4009cc:	01021021 	addu	v0,t0,v0
  4009d0:	00a21821 	addu	v1,a1,v0
  4009d4:	00002821 	move	a1,zero
  4009d8:	00c73823 	subu	a3,a2,a3
  4009dc:	90620000 	lbu	v0,0(v1)
  4009e0:	00000000 	nop
  4009e4:	a0820000 	sb	v0,0(a0)
  4009e8:	24a50001 	addiu	a1,a1,1
  4009ec:	24630001 	addiu	v1,v1,1
  4009f0:	10a7000b 	beq	a1,a3,400a20 <user_PrintString+0x118>
  4009f4:	24840001 	addiu	a0,a0,1
  4009f8:	1000fff8 	b	4009dc <user_PrintString+0xd4>
  4009fc:	00000000 	nop
  400a00:	1ce0ffe8 	bgtz	a3,4009a4 <user_PrintString+0x9c>
  400a04:	00e6102a 	slt	v0,a3,a2
  400a08:	1000ffed 	b	4009c0 <user_PrintString+0xb8>
  400a0c:	00000000 	nop
  400a10:	1d00ffd1 	bgtz	t0,400958 <user_PrintString+0x50>
  400a14:	0106102a 	slt	v0,t0,a2
  400a18:	1000ffd7 	b	400978 <user_PrintString+0x70>
  400a1c:	00000000 	nop
  400a20:	03e00008 	jr	ra
  400a24:	00c01021 	move	v0,a2

00400a28 <user_PrintNum>:
  400a28:	8fa90010 	lw	t1,16(sp)
  400a2c:	8fac0014 	lw	t4,20(sp)
  400a30:	8fab001c 	lw	t3,28(sp)
  400a34:	83aa001b 	lb	t2,27(sp)
  400a38:	00804021 	move	t0,a0
  400a3c:	14c00002 	bnez	a2,400a48 <user_PrintNum+0x20>
  400a40:	00a6001b 	divu	zero,a1,a2
  400a44:	0007000d 	break	0x7
  400a48:	00001810 	mfhi	v1
  400a4c:	2862000a 	slti	v0,v1,10
  400a50:	10400004 	beqz	v0,400a64 <user_PrintNum+0x3c>
  400a54:	24620030 	addiu	v0,v1,48
  400a58:	a1020000 	sb	v0,0(t0)
  400a5c:	1000000c 	b	400a90 <user_PrintNum+0x68>
  400a60:	25080001 	addiu	t0,t0,1
  400a64:	11600005 	beqz	t3,400a7c <user_PrintNum+0x54>
  400a68:	24620057 	addiu	v0,v1,87
  400a6c:	24620037 	addiu	v0,v1,55
  400a70:	a1020000 	sb	v0,0(t0)
  400a74:	10000003 	b	400a84 <user_PrintNum+0x5c>
  400a78:	25080001 	addiu	t0,t0,1
  400a7c:	a1020000 	sb	v0,0(t0)
  400a80:	25080001 	addiu	t0,t0,1
  400a84:	14c00002 	bnez	a2,400a90 <user_PrintNum+0x68>
  400a88:	00a6001b 	divu	zero,a1,a2
  400a8c:	0007000d 	break	0x7
  400a90:	00002812 	mflo	a1
  400a94:	14a0ffe9 	bnez	a1,400a3c <user_PrintNum+0x14>
  400a98:	00000000 	nop
  400a9c:	10e00005 	beqz	a3,400ab4 <user_PrintNum+0x8c>
  400aa0:	01043023 	subu	a2,t0,a0
  400aa4:	2402002d 	li	v0,45
  400aa8:	a1020000 	sb	v0,0(t0)
  400aac:	25080001 	addiu	t0,t0,1
  400ab0:	01043023 	subu	a2,t0,a0
  400ab4:	0126102a 	slt	v0,t1,a2
  400ab8:	10400002 	beqz	v0,400ac4 <user_PrintNum+0x9c>
  400abc:	00000000 	nop
  400ac0:	00c04821 	move	t1,a2
  400ac4:	11800002 	beqz	t4,400ad0 <user_PrintNum+0xa8>
  400ac8:	00000000 	nop
  400acc:	240a0020 	li	t2,32
  400ad0:	10e00033 	beqz	a3,400ba0 <user_PrintNum+0x178>
  400ad4:	00c9102a 	slt	v0,a2,t1
  400ad8:	15800031 	bnez	t4,400ba0 <user_PrintNum+0x178>
  400adc:	00000000 	nop
  400ae0:	24020030 	li	v0,48
  400ae4:	1542002e 	bne	t2,v0,400ba0 <user_PrintNum+0x178>
  400ae8:	00c9102a 	slt	v0,a2,t1
  400aec:	24c6ffff 	addiu	a2,a2,-1
  400af0:	2528ffff 	addiu	t0,t1,-1
  400af4:	00c8102a 	slt	v0,a2,t0
  400af8:	10400008 	beqz	v0,400b1c <user_PrintNum+0xf4>
  400afc:	01061023 	subu	v0,t0,a2
  400b00:	00861821 	addu	v1,a0,a2
  400b04:	00002821 	move	a1,zero
  400b08:	24070030 	li	a3,48
  400b0c:	a0670000 	sb	a3,0(v1)
  400b10:	24a50001 	addiu	a1,a1,1
  400b14:	14a2fffd 	bne	a1,v0,400b0c <user_PrintNum+0xe4>
  400b18:	24630001 	addiu	v1,v1,1
  400b1c:	00891821 	addu	v1,a0,t1
  400b20:	2402002d 	li	v0,45
  400b24:	1000000d 	b	400b5c <user_PrintNum+0x134>
  400b28:	a062ffff 	sb	v0,-1(v1)
  400b2c:	a0aa0000 	sb	t2,0(a1)
  400b30:	24630001 	addiu	v1,v1,1
  400b34:	01261023 	subu	v0,t1,a2
  400b38:	1462fffc 	bne	v1,v0,400b2c <user_PrintNum+0x104>
  400b3c:	24a50001 	addiu	a1,a1,1
  400b40:	11800006 	beqz	t4,400b5c <user_PrintNum+0x134>
  400b44:	00000000 	nop
  400b48:	24c6ffff 	addiu	a2,a2,-1
  400b4c:	1cc00005 	bgtz	a2,400b64 <user_PrintNum+0x13c>
  400b50:	00003821 	move	a3,zero
  400b54:	03e00008 	jr	ra
  400b58:	01201021 	move	v0,t1
  400b5c:	1000fffb 	b	400b4c <user_PrintNum+0x124>
  400b60:	2526ffff 	addiu	a2,t1,-1
  400b64:	00802821 	move	a1,a0
  400b68:	00862021 	addu	a0,a0,a2
  400b6c:	80a20000 	lb	v0,0(a1)
  400b70:	90830000 	lbu	v1,0(a0)
  400b74:	00000000 	nop
  400b78:	a0a30000 	sb	v1,0(a1)
  400b7c:	a0820000 	sb	v0,0(a0)
  400b80:	24e70001 	addiu	a3,a3,1
  400b84:	24c6ffff 	addiu	a2,a2,-1
  400b88:	24a50001 	addiu	a1,a1,1
  400b8c:	00e6102a 	slt	v0,a3,a2
  400b90:	10400008 	beqz	v0,400bb4 <user_PrintNum+0x18c>
  400b94:	2484ffff 	addiu	a0,a0,-1
  400b98:	1000fff4 	b	400b6c <user_PrintNum+0x144>
  400b9c:	00000000 	nop
  400ba0:	1040ffe7 	beqz	v0,400b40 <user_PrintNum+0x118>
  400ba4:	00000000 	nop
  400ba8:	00862821 	addu	a1,a0,a2
  400bac:	1000ffdf 	b	400b2c <user_PrintNum+0x104>
  400bb0:	00001821 	move	v1,zero
  400bb4:	01201021 	move	v0,t1
  400bb8:	03e00008 	jr	ra
  400bbc:	00000000 	nop

00400bc0 <exit>:
  400bc0:	27bdffe8 	addiu	sp,sp,-24
  400bc4:	afbf0010 	sw	ra,16(sp)
  400bc8:	0c100554 	jal	401550 <syscall_env_destroy>
  400bcc:	00002021 	move	a0,zero
  400bd0:	8fbf0010 	lw	ra,16(sp)
  400bd4:	00000000 	nop
  400bd8:	03e00008 	jr	ra
  400bdc:	27bd0018 	addiu	sp,sp,24

00400be0 <libmain>:
  400be0:	27bdffe0 	addiu	sp,sp,-32
  400be4:	afbf001c 	sw	ra,28(sp)
  400be8:	afb20018 	sw	s2,24(sp)
  400bec:	afb10014 	sw	s1,20(sp)
  400bf0:	afb00010 	sw	s0,16(sp)
  400bf4:	00808821 	move	s1,a0
  400bf8:	00a09021 	move	s2,a1
  400bfc:	3c100041 	lui	s0,0x41
  400c00:	0c10053a 	jal	4014e8 <syscall_getenvid>
  400c04:	ae008004 	sw	zero,-32764(s0)
  400c08:	304203ff 	andi	v0,v0,0x3ff
  400c0c:	00022080 	sll	a0,v0,0x2
  400c10:	00021940 	sll	v1,v0,0x5
  400c14:	00641823 	subu	v1,v1,a0
  400c18:	00621821 	addu	v1,v1,v0
  400c1c:	000318c0 	sll	v1,v1,0x3
  400c20:	3c020040 	lui	v0,0x40
  400c24:	8c426000 	lw	v0,24576(v0)
  400c28:	00000000 	nop
  400c2c:	00621821 	addu	v1,v1,v0
  400c30:	ae038004 	sw	v1,-32764(s0)
  400c34:	02202021 	move	a0,s1
  400c38:	0c100038 	jal	4000e0 <umain>
  400c3c:	02402821 	move	a1,s2
  400c40:	0c1002f0 	jal	400bc0 <exit>
  400c44:	00000000 	nop
  400c48:	8fbf001c 	lw	ra,28(sp)
  400c4c:	8fb20018 	lw	s2,24(sp)
  400c50:	8fb10014 	lw	s1,20(sp)
  400c54:	8fb00010 	lw	s0,16(sp)
  400c58:	03e00008 	jr	ra
  400c5c:	27bd0020 	addiu	sp,sp,32

00400c60 <uget_sp>:
  400c60:	27bdffe8 	addiu	sp,sp,-24
  400c64:	afbf0010 	sw	ra,16(sp)
  400c68:	0c100034 	jal	4000d0 <get_sp>
  400c6c:	00000000 	nop
  400c70:	2403f000 	li	v1,-4096
  400c74:	00431024 	and	v0,v0,v1
  400c78:	8fbf0010 	lw	ra,16(sp)
  400c7c:	00000000 	nop
  400c80:	03e00008 	jr	ra
  400c84:	27bd0018 	addiu	sp,sp,24

00400c88 <user_bcopy>:
  400c88:	30820003 	andi	v0,a0,0x3
  400c8c:	14400004 	bnez	v0,400ca0 <user_bcopy+0x18>
  400c90:	00c53021 	addu	a2,a2,a1
  400c94:	30a20003 	andi	v0,a1,0x3
  400c98:	10400018 	beqz	v0,400cfc <user_bcopy+0x74>
  400c9c:	24a20003 	addiu	v0,a1,3
  400ca0:	00a6102b 	sltu	v0,a1,a2
  400ca4:	1440000d 	bnez	v0,400cdc <user_bcopy+0x54>
  400ca8:	00a01821 	move	v1,a1
  400cac:	03e00008 	jr	ra
  400cb0:	00000000 	nop
  400cb4:	8c820000 	lw	v0,0(a0)
  400cb8:	00000000 	nop
  400cbc:	aca20000 	sw	v0,0(a1)
  400cc0:	24a50004 	addiu	a1,a1,4
  400cc4:	24630007 	addiu	v1,v1,7
  400cc8:	0066182b 	sltu	v1,v1,a2
  400ccc:	1060fff4 	beqz	v1,400ca0 <user_bcopy+0x18>
  400cd0:	24840004 	addiu	a0,a0,4
  400cd4:	1000fff7 	b	400cb4 <user_bcopy+0x2c>
  400cd8:	00a01821 	move	v1,a1
  400cdc:	90820000 	lbu	v0,0(a0)
  400ce0:	00000000 	nop
  400ce4:	a0620000 	sb	v0,0(v1)
  400ce8:	24630001 	addiu	v1,v1,1
  400cec:	1066ffef 	beq	v1,a2,400cac <user_bcopy+0x24>
  400cf0:	24840001 	addiu	a0,a0,1
  400cf4:	1000fff9 	b	400cdc <user_bcopy+0x54>
  400cf8:	00000000 	nop
  400cfc:	0046102b 	sltu	v0,v0,a2
  400d00:	1440ffec 	bnez	v0,400cb4 <user_bcopy+0x2c>
  400d04:	00a01821 	move	v1,a1
  400d08:	1000ffe6 	b	400ca4 <user_bcopy+0x1c>
  400d0c:	00a6102b 	sltu	v0,a1,a2

00400d10 <user_bzero>:
  400d10:	24a2ffff 	addiu	v0,a1,-1
  400d14:	04400007 	bltz	v0,400d34 <user_bzero+0x24>
  400d18:	00801821 	move	v1,a0
  400d1c:	00821021 	addu	v0,a0,v0
  400d20:	24420001 	addiu	v0,v0,1
  400d24:	a0600000 	sb	zero,0(v1)
  400d28:	24630001 	addiu	v1,v1,1
  400d2c:	1462fffd 	bne	v1,v0,400d24 <user_bzero+0x14>
  400d30:	00000000 	nop
  400d34:	03e00008 	jr	ra
  400d38:	00000000 	nop

00400d3c <pgfault>:
  400d3c:	27bdffd8 	addiu	sp,sp,-40
  400d40:	afbf0020 	sw	ra,32(sp)
  400d44:	afb1001c 	sw	s1,28(sp)
  400d48:	afb00018 	sw	s0,24(sp)
  400d4c:	00041302 	srl	v0,a0,0xc
  400d50:	3c030040 	lui	v1,0x40
  400d54:	8c636008 	lw	v1,24584(v1)
  400d58:	00021080 	sll	v0,v0,0x2
  400d5c:	00431021 	addu	v0,v0,v1
  400d60:	8c420000 	lw	v0,0(v0)
  400d64:	00000000 	nop
  400d68:	38420001 	xori	v0,v0,0x1
  400d6c:	30420001 	andi	v0,v0,0x1
  400d70:	10400007 	beqz	v0,400d90 <pgfault+0x54>
  400d74:	2402f000 	li	v0,-4096
  400d78:	3c040040 	lui	a0,0x40
  400d7c:	2484726c 	addiu	a0,a0,29292
  400d80:	2405005e 	li	a1,94
  400d84:	3c060040 	lui	a2,0x40
  400d88:	0c100096 	jal	400258 <_user_panic>
  400d8c:	24c67274 	addiu	a2,a2,29300
  400d90:	00828824 	and	s1,a0,v0
  400d94:	00002021 	move	a0,zero
  400d98:	3c057f3f 	lui	a1,0x7f3f
  400d9c:	34a5e000 	ori	a1,a1,0xe000
  400da0:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  400da4:	24060600 	li	a2,1536
  400da8:	04410007 	bgez	v0,400dc8 <pgfault+0x8c>
  400dac:	02202021 	move	a0,s1
  400db0:	3c040040 	lui	a0,0x40
  400db4:	2484726c 	addiu	a0,a0,29292
  400db8:	24050066 	li	a1,102
  400dbc:	3c060040 	lui	a2,0x40
  400dc0:	0c100096 	jal	400258 <_user_panic>
  400dc4:	24c672a0 	addiu	a2,a2,29344
  400dc8:	3c107f3f 	lui	s0,0x7f3f
  400dcc:	3605e000 	ori	a1,s0,0xe000
  400dd0:	0c100322 	jal	400c88 <user_bcopy>
  400dd4:	24061000 	li	a2,4096
  400dd8:	24020600 	li	v0,1536
  400ddc:	afa20010 	sw	v0,16(sp)
  400de0:	00002021 	move	a0,zero
  400de4:	3605e000 	ori	a1,s0,0xe000
  400de8:	00003021 	move	a2,zero
  400dec:	0c10057f 	jal	4015fc <syscall_mem_map>
  400df0:	02203821 	move	a3,s1
  400df4:	04410007 	bgez	v0,400e14 <pgfault+0xd8>
  400df8:	00002021 	move	a0,zero
  400dfc:	3c040040 	lui	a0,0x40
  400e00:	2484726c 	addiu	a0,a0,29292
  400e04:	2405006e 	li	a1,110
  400e08:	3c060040 	lui	a2,0x40
  400e0c:	0c100096 	jal	400258 <_user_panic>
  400e10:	24c672c8 	addiu	a2,a2,29384
  400e14:	3c057f3f 	lui	a1,0x7f3f
  400e18:	0c100591 	jal	401644 <syscall_mem_unmap>
  400e1c:	34a5e000 	ori	a1,a1,0xe000
  400e20:	04410006 	bgez	v0,400e3c <pgfault+0x100>
  400e24:	3c040040 	lui	a0,0x40
  400e28:	2484726c 	addiu	a0,a0,29292
  400e2c:	24050073 	li	a1,115
  400e30:	3c060040 	lui	a2,0x40
  400e34:	0c100096 	jal	400258 <_user_panic>
  400e38:	24c672ec 	addiu	a2,a2,29420
  400e3c:	8fbf0020 	lw	ra,32(sp)
  400e40:	8fb1001c 	lw	s1,28(sp)
  400e44:	8fb00018 	lw	s0,24(sp)
  400e48:	03e00008 	jr	ra
  400e4c:	27bd0028 	addiu	sp,sp,40

00400e50 <duppage>:
  400e50:	27bdffd8 	addiu	sp,sp,-40
  400e54:	afbf0020 	sw	ra,32(sp)
  400e58:	afb1001c 	sw	s1,28(sp)
  400e5c:	afb00018 	sw	s0,24(sp)
  400e60:	00803021 	move	a2,a0
  400e64:	00058300 	sll	s0,a1,0xc
  400e68:	3c020040 	lui	v0,0x40
  400e6c:	8c426008 	lw	v0,24584(v0)
  400e70:	00052880 	sll	a1,a1,0x2
  400e74:	00a22821 	addu	a1,a1,v0
  400e78:	8ca50000 	lw	a1,0(a1)
  400e7c:	00000000 	nop
  400e80:	30a20400 	andi	v0,a1,0x400
  400e84:	1440000d 	bnez	v0,400ebc <duppage+0x6c>
  400e88:	30a30fff 	andi	v1,a1,0xfff
  400e8c:	afa30010 	sw	v1,16(sp)
  400e90:	00002021 	move	a0,zero
  400e94:	02002821 	move	a1,s0
  400e98:	0c10057f 	jal	4015fc <syscall_mem_map>
  400e9c:	02003821 	move	a3,s0
  400ea0:	1040003c 	beqz	v0,400f94 <duppage+0x144>
  400ea4:	3c040040 	lui	a0,0x40
  400ea8:	2484726c 	addiu	a0,a0,29292
  400eac:	24050097 	li	a1,151
  400eb0:	3c060040 	lui	a2,0x40
  400eb4:	0c100096 	jal	400258 <_user_panic>
  400eb8:	24c67314 	addiu	a2,a2,29460
  400ebc:	30620004 	andi	v0,v1,0x4
  400ec0:	1040000d 	beqz	v0,400ef8 <duppage+0xa8>
  400ec4:	30a20001 	andi	v0,a1,0x1
  400ec8:	afa30010 	sw	v1,16(sp)
  400ecc:	00002021 	move	a0,zero
  400ed0:	02002821 	move	a1,s0
  400ed4:	0c10057f 	jal	4015fc <syscall_mem_map>
  400ed8:	02003821 	move	a3,s0
  400edc:	1040002d 	beqz	v0,400f94 <duppage+0x144>
  400ee0:	3c040040 	lui	a0,0x40
  400ee4:	2484726c 	addiu	a0,a0,29292
  400ee8:	2405009c 	li	a1,156
  400eec:	3c060040 	lui	a2,0x40
  400ef0:	0c100096 	jal	400258 <_user_panic>
  400ef4:	24c67334 	addiu	a2,a2,29492
  400ef8:	1040000d 	beqz	v0,400f30 <duppage+0xe0>
  400efc:	34710001 	ori	s1,v1,0x1
  400f00:	afa30010 	sw	v1,16(sp)
  400f04:	00002021 	move	a0,zero
  400f08:	02002821 	move	a1,s0
  400f0c:	0c10057f 	jal	4015fc <syscall_mem_map>
  400f10:	02003821 	move	a3,s0
  400f14:	1040001f 	beqz	v0,400f94 <duppage+0x144>
  400f18:	3c040040 	lui	a0,0x40
  400f1c:	2484726c 	addiu	a0,a0,29292
  400f20:	240500a1 	li	a1,161
  400f24:	3c060040 	lui	a2,0x40
  400f28:	0c100096 	jal	400258 <_user_panic>
  400f2c:	24c67350 	addiu	a2,a2,29520
  400f30:	afb10010 	sw	s1,16(sp)
  400f34:	00002021 	move	a0,zero
  400f38:	02002821 	move	a1,s0
  400f3c:	0c10057f 	jal	4015fc <syscall_mem_map>
  400f40:	02003821 	move	a3,s0
  400f44:	10400007 	beqz	v0,400f64 <duppage+0x114>
  400f48:	00002021 	move	a0,zero
  400f4c:	3c040040 	lui	a0,0x40
  400f50:	2484726c 	addiu	a0,a0,29292
  400f54:	240500aa 	li	a1,170
  400f58:	3c060040 	lui	a2,0x40
  400f5c:	0c100096 	jal	400258 <_user_panic>
  400f60:	24c67384 	addiu	a2,a2,29572
  400f64:	afb10010 	sw	s1,16(sp)
  400f68:	02002821 	move	a1,s0
  400f6c:	00003021 	move	a2,zero
  400f70:	0c10057f 	jal	4015fc <syscall_mem_map>
  400f74:	02003821 	move	a3,s0
  400f78:	10400006 	beqz	v0,400f94 <duppage+0x144>
  400f7c:	3c040040 	lui	a0,0x40
  400f80:	2484726c 	addiu	a0,a0,29292
  400f84:	240500ad 	li	a1,173
  400f88:	3c060040 	lui	a2,0x40
  400f8c:	0c100096 	jal	400258 <_user_panic>
  400f90:	24c673b0 	addiu	a2,a2,29616
  400f94:	8fbf0020 	lw	ra,32(sp)
  400f98:	8fb1001c 	lw	s1,28(sp)
  400f9c:	8fb00018 	lw	s0,24(sp)
  400fa0:	03e00008 	jr	ra
  400fa4:	27bd0028 	addiu	sp,sp,40

00400fa8 <fork>:
  400fa8:	27bdffd0 	addiu	sp,sp,-48
  400fac:	afbf002c 	sw	ra,44(sp)
  400fb0:	afb40028 	sw	s4,40(sp)
  400fb4:	afb30024 	sw	s3,36(sp)
  400fb8:	afb20020 	sw	s2,32(sp)
  400fbc:	afb1001c 	sw	s1,28(sp)
  400fc0:	afb00018 	sw	s0,24(sp)
  400fc4:	3c040040 	lui	a0,0x40
  400fc8:	0c10050c 	jal	401430 <set_pgfault_handler>
  400fcc:	24840d3c 	addiu	a0,a0,3388
  400fd0:	afa00010 	sw	zero,16(sp)
  400fd4:	afa00014 	sw	zero,20(sp)
  400fd8:	2404253f 	li	a0,9535
  400fdc:	00002821 	move	a1,zero
  400fe0:	00003021 	move	a2,zero
  400fe4:	0c100030 	jal	4000c0 <msyscall>
  400fe8:	00003821 	move	a3,zero
  400fec:	14400011 	bnez	v0,401034 <fork+0x8c>
  400ff0:	0040a021 	move	s4,v0
  400ff4:	0c10053a 	jal	4014e8 <syscall_getenvid>
  400ff8:	00000000 	nop
  400ffc:	304203ff 	andi	v0,v0,0x3ff
  401000:	00022080 	sll	a0,v0,0x2
  401004:	00021940 	sll	v1,v0,0x5
  401008:	00641823 	subu	v1,v1,a0
  40100c:	00621821 	addu	v1,v1,v0
  401010:	000318c0 	sll	v1,v1,0x3
  401014:	3c020040 	lui	v0,0x40
  401018:	8c426000 	lw	v0,24576(v0)
  40101c:	00000000 	nop
  401020:	00621821 	addu	v1,v1,v0
  401024:	3c020041 	lui	v0,0x41
  401028:	ac438004 	sw	v1,-32764(v0)
  40102c:	1000003f 	b	40112c <fork+0x184>
  401030:	00001021 	move	v0,zero
  401034:	00008021 	move	s0,zero
  401038:	3c120040 	lui	s2,0x40
  40103c:	3c130040 	lui	s3,0x40
  401040:	3c027f3f 	lui	v0,0x7f3f
  401044:	3451e000 	ori	s1,v0,0xe000
  401048:	00101582 	srl	v0,s0,0x16
  40104c:	8e43600c 	lw	v1,24588(s2)
  401050:	00021080 	sll	v0,v0,0x2
  401054:	00431021 	addu	v0,v0,v1
  401058:	8c420000 	lw	v0,0(v0)
  40105c:	00000000 	nop
  401060:	30420200 	andi	v0,v0,0x200
  401064:	1040000b 	beqz	v0,401094 <fork+0xec>
  401068:	00102b02 	srl	a1,s0,0xc
  40106c:	8e626008 	lw	v0,24584(s3)
  401070:	00051880 	sll	v1,a1,0x2
  401074:	00621821 	addu	v1,v1,v0
  401078:	8c620000 	lw	v0,0(v1)
  40107c:	00000000 	nop
  401080:	30420200 	andi	v0,v0,0x200
  401084:	10400003 	beqz	v0,401094 <fork+0xec>
  401088:	00000000 	nop
  40108c:	0c100394 	jal	400e50 <duppage>
  401090:	02802021 	move	a0,s4
  401094:	26101000 	addiu	s0,s0,4096
  401098:	1611ffec 	bne	s0,s1,40104c <fork+0xa4>
  40109c:	00101582 	srl	v0,s0,0x16
  4010a0:	02802021 	move	a0,s4
  4010a4:	3c057f3f 	lui	a1,0x7f3f
  4010a8:	34a5f000 	ori	a1,a1,0xf000
  4010ac:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  4010b0:	24060600 	li	a2,1536
  4010b4:	04410007 	bgez	v0,4010d4 <fork+0x12c>
  4010b8:	02802021 	move	a0,s4
  4010bc:	3c040040 	lui	a0,0x40
  4010c0:	2484726c 	addiu	a0,a0,29292
  4010c4:	240500e0 	li	a1,224
  4010c8:	3c060040 	lui	a2,0x40
  4010cc:	0c100096 	jal	400258 <_user_panic>
  4010d0:	24c673dc 	addiu	a2,a2,29660
  4010d4:	3c050040 	lui	a1,0x40
  4010d8:	24a50014 	addiu	a1,a1,20
  4010dc:	0c100561 	jal	401584 <syscall_set_pgfault_handler>
  4010e0:	3c067f40 	lui	a2,0x7f40
  4010e4:	04410007 	bgez	v0,401104 <fork+0x15c>
  4010e8:	02802021 	move	a0,s4
  4010ec:	3c040040 	lui	a0,0x40
  4010f0:	2484726c 	addiu	a0,a0,29292
  4010f4:	240500e4 	li	a1,228
  4010f8:	3c060040 	lui	a2,0x40
  4010fc:	0c100096 	jal	400258 <_user_panic>
  401100:	24c673f4 	addiu	a2,a2,29684
  401104:	0c10059f 	jal	40167c <syscall_set_env_status>
  401108:	24050001 	li	a1,1
  40110c:	04410007 	bgez	v0,40112c <fork+0x184>
  401110:	02801021 	move	v0,s4
  401114:	3c040040 	lui	a0,0x40
  401118:	2484726c 	addiu	a0,a0,29292
  40111c:	240500e8 	li	a1,232
  401120:	3c060040 	lui	a2,0x40
  401124:	0c100096 	jal	400258 <_user_panic>
  401128:	24c67418 	addiu	a2,a2,29720
  40112c:	8fbf002c 	lw	ra,44(sp)
  401130:	8fb40028 	lw	s4,40(sp)
  401134:	8fb30024 	lw	s3,36(sp)
  401138:	8fb20020 	lw	s2,32(sp)
  40113c:	8fb1001c 	lw	s1,28(sp)
  401140:	8fb00018 	lw	s0,24(sp)
  401144:	03e00008 	jr	ra
  401148:	27bd0030 	addiu	sp,sp,48

0040114c <myduppage>:
  40114c:	27bdffd0 	addiu	sp,sp,-48
  401150:	afbf0028 	sw	ra,40(sp)
  401154:	afb30024 	sw	s3,36(sp)
  401158:	afb20020 	sw	s2,32(sp)
  40115c:	afb1001c 	sw	s1,28(sp)
  401160:	afb00018 	sw	s0,24(sp)
  401164:	00809821 	move	s3,a0
  401168:	00058880 	sll	s1,a1,0x2
  40116c:	3c120040 	lui	s2,0x40
  401170:	8e426008 	lw	v0,24584(s2)
  401174:	00000000 	nop
  401178:	00511021 	addu	v0,v0,s1
  40117c:	8c420000 	lw	v0,0(v0)
  401180:	00000000 	nop
  401184:	30430fff 	andi	v1,v0,0xfff
  401188:	30420001 	andi	v0,v0,0x1
  40118c:	10400013 	beqz	v0,4011dc <myduppage+0x90>
  401190:	00058300 	sll	s0,a1,0xc
  401194:	0c10034f 	jal	400d3c <pgfault>
  401198:	02002021 	move	a0,s0
  40119c:	8e426008 	lw	v0,24584(s2)
  4011a0:	00000000 	nop
  4011a4:	02221021 	addu	v0,s1,v0
  4011a8:	8c420000 	lw	v0,0(v0)
  4011ac:	00000000 	nop
  4011b0:	30420fff 	andi	v0,v0,0xfff
  4011b4:	afa20010 	sw	v0,16(sp)
  4011b8:	00002021 	move	a0,zero
  4011bc:	02002821 	move	a1,s0
  4011c0:	02603021 	move	a2,s3
  4011c4:	0c10057f 	jal	4015fc <syscall_mem_map>
  4011c8:	02003821 	move	a3,s0
  4011cc:	04410009 	bgez	v0,4011f4 <myduppage+0xa8>
  4011d0:	00000000 	nop
  4011d4:	10000007 	b	4011f4 <myduppage+0xa8>
  4011d8:	00000000 	nop
  4011dc:	afa30010 	sw	v1,16(sp)
  4011e0:	00002021 	move	a0,zero
  4011e4:	02002821 	move	a1,s0
  4011e8:	02603021 	move	a2,s3
  4011ec:	0c10057f 	jal	4015fc <syscall_mem_map>
  4011f0:	02003821 	move	a3,s0
  4011f4:	8fbf0028 	lw	ra,40(sp)
  4011f8:	8fb30024 	lw	s3,36(sp)
  4011fc:	8fb20020 	lw	s2,32(sp)
  401200:	8fb1001c 	lw	s1,28(sp)
  401204:	8fb00018 	lw	s0,24(sp)
  401208:	03e00008 	jr	ra
  40120c:	27bd0030 	addiu	sp,sp,48

00401210 <tfork>:
  401210:	27bdffc8 	addiu	sp,sp,-56
  401214:	afbf0030 	sw	ra,48(sp)
  401218:	afb5002c 	sw	s5,44(sp)
  40121c:	afb40028 	sw	s4,40(sp)
  401220:	afb30024 	sw	s3,36(sp)
  401224:	afb20020 	sw	s2,32(sp)
  401228:	afb1001c 	sw	s1,28(sp)
  40122c:	0c100318 	jal	400c60 <uget_sp>
  401230:	afb00018 	sw	s0,24(sp)
  401234:	0040a821 	move	s5,v0
  401238:	3c040040 	lui	a0,0x40
  40123c:	0c10050c 	jal	401430 <set_pgfault_handler>
  401240:	24840d3c 	addiu	a0,a0,3388
  401244:	afa00010 	sw	zero,16(sp)
  401248:	afa00014 	sw	zero,20(sp)
  40124c:	2404253f 	li	a0,9535
  401250:	00002821 	move	a1,zero
  401254:	00003021 	move	a2,zero
  401258:	0c100030 	jal	4000c0 <msyscall>
  40125c:	00003821 	move	a3,zero
  401260:	14400011 	bnez	v0,4012a8 <tfork+0x98>
  401264:	0040a021 	move	s4,v0
  401268:	0c10053a 	jal	4014e8 <syscall_getenvid>
  40126c:	00000000 	nop
  401270:	304203ff 	andi	v0,v0,0x3ff
  401274:	00022080 	sll	a0,v0,0x2
  401278:	00021940 	sll	v1,v0,0x5
  40127c:	00641823 	subu	v1,v1,a0
  401280:	00621821 	addu	v1,v1,v0
  401284:	000318c0 	sll	v1,v1,0x3
  401288:	3c020040 	lui	v0,0x40
  40128c:	8c426000 	lw	v0,24576(v0)
  401290:	00000000 	nop
  401294:	00621821 	addu	v1,v1,v0
  401298:	3c020041 	lui	v0,0x41
  40129c:	ac438004 	sw	v1,-32764(v0)
  4012a0:	10000052 	b	4013ec <tfork+0x1dc>
  4012a4:	00001021 	move	v0,zero
  4012a8:	00008021 	move	s0,zero
  4012ac:	3c120040 	lui	s2,0x40
  4012b0:	3c130040 	lui	s3,0x40
  4012b4:	3c027f01 	lui	v0,0x7f01
  4012b8:	34516000 	ori	s1,v0,0x6000
  4012bc:	00101582 	srl	v0,s0,0x16
  4012c0:	8e43600c 	lw	v1,24588(s2)
  4012c4:	00021080 	sll	v0,v0,0x2
  4012c8:	00431021 	addu	v0,v0,v1
  4012cc:	8c420000 	lw	v0,0(v0)
  4012d0:	00000000 	nop
  4012d4:	30420200 	andi	v0,v0,0x200
  4012d8:	1040000d 	beqz	v0,401310 <tfork+0x100>
  4012dc:	00102b02 	srl	a1,s0,0xc
  4012e0:	8e626008 	lw	v0,24584(s3)
  4012e4:	00051880 	sll	v1,a1,0x2
  4012e8:	00621821 	addu	v1,v1,v0
  4012ec:	8c620000 	lw	v0,0(v1)
  4012f0:	00000000 	nop
  4012f4:	30420200 	andi	v0,v0,0x200
  4012f8:	10400005 	beqz	v0,401310 <tfork+0x100>
  4012fc:	00000000 	nop
  401300:	0c100453 	jal	40114c <myduppage>
  401304:	02802021 	move	a0,s4
  401308:	04400038 	bltz	v0,4013ec <tfork+0x1dc>
  40130c:	00001021 	move	v0,zero
  401310:	26101000 	addiu	s0,s0,4096
  401314:	1611ffea 	bne	s0,s1,4012c0 <tfork+0xb0>
  401318:	00101582 	srl	v0,s0,0x16
  40131c:	3c02ffc1 	lui	v0,0xffc1
  401320:	34428000 	ori	v0,v0,0x8000
  401324:	02a28021 	addu	s0,s5,v0
  401328:	3c027f3f 	lui	v0,0x7f3f
  40132c:	3442dfff 	ori	v0,v0,0xdfff
  401330:	0050102b 	sltu	v0,v0,s0
  401334:	1440001b 	bnez	v0,4013a4 <tfork+0x194>
  401338:	3c027f3f 	lui	v0,0x7f3f
  40133c:	3c110040 	lui	s1,0x40
  401340:	3c120040 	lui	s2,0x40
  401344:	3453dfff 	ori	s3,v0,0xdfff
  401348:	00101582 	srl	v0,s0,0x16
  40134c:	8e23600c 	lw	v1,24588(s1)
  401350:	00021080 	sll	v0,v0,0x2
  401354:	00431021 	addu	v0,v0,v1
  401358:	8c420000 	lw	v0,0(v0)
  40135c:	00000000 	nop
  401360:	30420200 	andi	v0,v0,0x200
  401364:	1040000b 	beqz	v0,401394 <tfork+0x184>
  401368:	00102b02 	srl	a1,s0,0xc
  40136c:	8e426008 	lw	v0,24584(s2)
  401370:	00051880 	sll	v1,a1,0x2
  401374:	00621821 	addu	v1,v1,v0
  401378:	8c620000 	lw	v0,0(v1)
  40137c:	00000000 	nop
  401380:	30420200 	andi	v0,v0,0x200
  401384:	10400003 	beqz	v0,401394 <tfork+0x184>
  401388:	00000000 	nop
  40138c:	0c100394 	jal	400e50 <duppage>
  401390:	02802021 	move	a0,s4
  401394:	26101000 	addiu	s0,s0,4096
  401398:	0270102b 	sltu	v0,s3,s0
  40139c:	1040ffeb 	beqz	v0,40134c <tfork+0x13c>
  4013a0:	00101582 	srl	v0,s0,0x16
  4013a4:	02802021 	move	a0,s4
  4013a8:	3c057f3f 	lui	a1,0x7f3f
  4013ac:	34a5f000 	ori	a1,a1,0xf000
  4013b0:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  4013b4:	24060600 	li	a2,1536
  4013b8:	0440000c 	bltz	v0,4013ec <tfork+0x1dc>
  4013bc:	02802021 	move	a0,s4
  4013c0:	3c050040 	lui	a1,0x40
  4013c4:	24a50014 	addiu	a1,a1,20
  4013c8:	0c100561 	jal	401584 <syscall_set_pgfault_handler>
  4013cc:	3c067f40 	lui	a2,0x7f40
  4013d0:	04400006 	bltz	v0,4013ec <tfork+0x1dc>
  4013d4:	02802021 	move	a0,s4
  4013d8:	0c10059f 	jal	40167c <syscall_set_env_status>
  4013dc:	24050001 	li	a1,1
  4013e0:	04400002 	bltz	v0,4013ec <tfork+0x1dc>
  4013e4:	00000000 	nop
  4013e8:	02801021 	move	v0,s4
  4013ec:	8fbf0030 	lw	ra,48(sp)
  4013f0:	8fb5002c 	lw	s5,44(sp)
  4013f4:	8fb40028 	lw	s4,40(sp)
  4013f8:	8fb30024 	lw	s3,36(sp)
  4013fc:	8fb20020 	lw	s2,32(sp)
  401400:	8fb1001c 	lw	s1,28(sp)
  401404:	8fb00018 	lw	s0,24(sp)
  401408:	03e00008 	jr	ra
  40140c:	27bd0038 	addiu	sp,sp,56

00401410 <sfork>:
  401410:	27bdffe8 	addiu	sp,sp,-24
  401414:	afbf0010 	sw	ra,16(sp)
  401418:	3c040040 	lui	a0,0x40
  40141c:	2484726c 	addiu	a0,a0,29292
  401420:	2405014c 	li	a1,332
  401424:	3c060040 	lui	a2,0x40
  401428:	0c100096 	jal	400258 <_user_panic>
  40142c:	24c67430 	addiu	a2,a2,29744

00401430 <set_pgfault_handler>:
  401430:	27bdffe8 	addiu	sp,sp,-24
  401434:	afbf0014 	sw	ra,20(sp)
  401438:	afb00010 	sw	s0,16(sp)
  40143c:	3c020040 	lui	v0,0x40
  401440:	8c426010 	lw	v0,24592(v0)
  401444:	00000000 	nop
  401448:	14400013 	bnez	v0,401498 <set_pgfault_handler+0x68>
  40144c:	00808021 	move	s0,a0
  401450:	00002021 	move	a0,zero
  401454:	3c057f3f 	lui	a1,0x7f3f
  401458:	34a5f000 	ori	a1,a1,0xf000
  40145c:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  401460:	24060600 	li	a2,1536
  401464:	04400007 	bltz	v0,401484 <set_pgfault_handler+0x54>
  401468:	3c050040 	lui	a1,0x40
  40146c:	00002021 	move	a0,zero
  401470:	24a50014 	addiu	a1,a1,20
  401474:	0c100561 	jal	401584 <syscall_set_pgfault_handler>
  401478:	3c067f40 	lui	a2,0x7f40
  40147c:	04410007 	bgez	v0,40149c <set_pgfault_handler+0x6c>
  401480:	3c020040 	lui	v0,0x40
  401484:	3c040040 	lui	a0,0x40
  401488:	0c100086 	jal	400218 <writef>
  40148c:	24847448 	addiu	a0,a0,29768
  401490:	10000003 	b	4014a0 <set_pgfault_handler+0x70>
  401494:	00000000 	nop
  401498:	3c020040 	lui	v0,0x40
  40149c:	ac506010 	sw	s0,24592(v0)
  4014a0:	8fbf0014 	lw	ra,20(sp)
  4014a4:	8fb00010 	lw	s0,16(sp)
  4014a8:	03e00008 	jr	ra
  4014ac:	27bd0018 	addiu	sp,sp,24

004014b0 <syscall_putchar>:
  4014b0:	27bdffe0 	addiu	sp,sp,-32
  4014b4:	afbf0018 	sw	ra,24(sp)
  4014b8:	00042e00 	sll	a1,a0,0x18
  4014bc:	00052e03 	sra	a1,a1,0x18
  4014c0:	afa00010 	sw	zero,16(sp)
  4014c4:	afa00014 	sw	zero,20(sp)
  4014c8:	24042537 	li	a0,9527
  4014cc:	00003021 	move	a2,zero
  4014d0:	0c100030 	jal	4000c0 <msyscall>
  4014d4:	00003821 	move	a3,zero
  4014d8:	8fbf0018 	lw	ra,24(sp)
  4014dc:	00000000 	nop
  4014e0:	03e00008 	jr	ra
  4014e4:	27bd0020 	addiu	sp,sp,32

004014e8 <syscall_getenvid>:
  4014e8:	27bdffe0 	addiu	sp,sp,-32
  4014ec:	afbf0018 	sw	ra,24(sp)
  4014f0:	afa00010 	sw	zero,16(sp)
  4014f4:	afa00014 	sw	zero,20(sp)
  4014f8:	24042538 	li	a0,9528
  4014fc:	00002821 	move	a1,zero
  401500:	00003021 	move	a2,zero
  401504:	0c100030 	jal	4000c0 <msyscall>
  401508:	00003821 	move	a3,zero
  40150c:	8fbf0018 	lw	ra,24(sp)
  401510:	00000000 	nop
  401514:	03e00008 	jr	ra
  401518:	27bd0020 	addiu	sp,sp,32

0040151c <syscall_yield>:
  40151c:	27bdffe0 	addiu	sp,sp,-32
  401520:	afbf0018 	sw	ra,24(sp)
  401524:	afa00010 	sw	zero,16(sp)
  401528:	afa00014 	sw	zero,20(sp)
  40152c:	24042539 	li	a0,9529
  401530:	00002821 	move	a1,zero
  401534:	00003021 	move	a2,zero
  401538:	0c100030 	jal	4000c0 <msyscall>
  40153c:	00003821 	move	a3,zero
  401540:	8fbf0018 	lw	ra,24(sp)
  401544:	00000000 	nop
  401548:	03e00008 	jr	ra
  40154c:	27bd0020 	addiu	sp,sp,32

00401550 <syscall_env_destroy>:
  401550:	27bdffe0 	addiu	sp,sp,-32
  401554:	afbf0018 	sw	ra,24(sp)
  401558:	00802821 	move	a1,a0
  40155c:	afa00010 	sw	zero,16(sp)
  401560:	afa00014 	sw	zero,20(sp)
  401564:	2404253a 	li	a0,9530
  401568:	00003021 	move	a2,zero
  40156c:	0c100030 	jal	4000c0 <msyscall>
  401570:	00003821 	move	a3,zero
  401574:	8fbf0018 	lw	ra,24(sp)
  401578:	00000000 	nop
  40157c:	03e00008 	jr	ra
  401580:	27bd0020 	addiu	sp,sp,32

00401584 <syscall_set_pgfault_handler>:
  401584:	27bdffe0 	addiu	sp,sp,-32
  401588:	afbf0018 	sw	ra,24(sp)
  40158c:	00801021 	move	v0,a0
  401590:	00a01821 	move	v1,a1
  401594:	00c03821 	move	a3,a2
  401598:	afa00010 	sw	zero,16(sp)
  40159c:	afa00014 	sw	zero,20(sp)
  4015a0:	2404253b 	li	a0,9531
  4015a4:	00402821 	move	a1,v0
  4015a8:	0c100030 	jal	4000c0 <msyscall>
  4015ac:	00603021 	move	a2,v1
  4015b0:	8fbf0018 	lw	ra,24(sp)
  4015b4:	00000000 	nop
  4015b8:	03e00008 	jr	ra
  4015bc:	27bd0020 	addiu	sp,sp,32

004015c0 <syscall_mem_alloc>:
  4015c0:	27bdffe0 	addiu	sp,sp,-32
  4015c4:	afbf0018 	sw	ra,24(sp)
  4015c8:	00801021 	move	v0,a0
  4015cc:	00a01821 	move	v1,a1
  4015d0:	00c03821 	move	a3,a2
  4015d4:	afa00010 	sw	zero,16(sp)
  4015d8:	afa00014 	sw	zero,20(sp)
  4015dc:	2404253c 	li	a0,9532
  4015e0:	00402821 	move	a1,v0
  4015e4:	0c100030 	jal	4000c0 <msyscall>
  4015e8:	00603021 	move	a2,v1
  4015ec:	8fbf0018 	lw	ra,24(sp)
  4015f0:	00000000 	nop
  4015f4:	03e00008 	jr	ra
  4015f8:	27bd0020 	addiu	sp,sp,32

004015fc <syscall_mem_map>:
  4015fc:	27bdffe0 	addiu	sp,sp,-32
  401600:	afbf0018 	sw	ra,24(sp)
  401604:	00801821 	move	v1,a0
  401608:	00a04021 	move	t0,a1
  40160c:	00c04821 	move	t1,a2
  401610:	afa70010 	sw	a3,16(sp)
  401614:	8fa20030 	lw	v0,48(sp)
  401618:	00000000 	nop
  40161c:	afa20014 	sw	v0,20(sp)
  401620:	2404253d 	li	a0,9533
  401624:	00602821 	move	a1,v1
  401628:	01003021 	move	a2,t0
  40162c:	0c100030 	jal	4000c0 <msyscall>
  401630:	01203821 	move	a3,t1
  401634:	8fbf0018 	lw	ra,24(sp)
  401638:	00000000 	nop
  40163c:	03e00008 	jr	ra
  401640:	27bd0020 	addiu	sp,sp,32

00401644 <syscall_mem_unmap>:
  401644:	27bdffe0 	addiu	sp,sp,-32
  401648:	afbf0018 	sw	ra,24(sp)
  40164c:	00801021 	move	v0,a0
  401650:	00a03021 	move	a2,a1
  401654:	afa00010 	sw	zero,16(sp)
  401658:	afa00014 	sw	zero,20(sp)
  40165c:	2404253e 	li	a0,9534
  401660:	00402821 	move	a1,v0
  401664:	0c100030 	jal	4000c0 <msyscall>
  401668:	00003821 	move	a3,zero
  40166c:	8fbf0018 	lw	ra,24(sp)
  401670:	00000000 	nop
  401674:	03e00008 	jr	ra
  401678:	27bd0020 	addiu	sp,sp,32

0040167c <syscall_set_env_status>:
  40167c:	27bdffe0 	addiu	sp,sp,-32
  401680:	afbf0018 	sw	ra,24(sp)
  401684:	00801021 	move	v0,a0
  401688:	00a03021 	move	a2,a1
  40168c:	afa00010 	sw	zero,16(sp)
  401690:	afa00014 	sw	zero,20(sp)
  401694:	24042540 	li	a0,9536
  401698:	00402821 	move	a1,v0
  40169c:	0c100030 	jal	4000c0 <msyscall>
  4016a0:	00003821 	move	a3,zero
  4016a4:	8fbf0018 	lw	ra,24(sp)
  4016a8:	00000000 	nop
  4016ac:	03e00008 	jr	ra
  4016b0:	27bd0020 	addiu	sp,sp,32

004016b4 <syscall_set_trapframe>:
  4016b4:	27bdffe0 	addiu	sp,sp,-32
  4016b8:	afbf0018 	sw	ra,24(sp)
  4016bc:	00801021 	move	v0,a0
  4016c0:	00a03021 	move	a2,a1
  4016c4:	afa00010 	sw	zero,16(sp)
  4016c8:	afa00014 	sw	zero,20(sp)
  4016cc:	24042541 	li	a0,9537
  4016d0:	00402821 	move	a1,v0
  4016d4:	0c100030 	jal	4000c0 <msyscall>
  4016d8:	00003821 	move	a3,zero
  4016dc:	8fbf0018 	lw	ra,24(sp)
  4016e0:	00000000 	nop
  4016e4:	03e00008 	jr	ra
  4016e8:	27bd0020 	addiu	sp,sp,32

004016ec <syscall_panic>:
  4016ec:	27bdffe0 	addiu	sp,sp,-32
  4016f0:	afbf0018 	sw	ra,24(sp)
  4016f4:	00802821 	move	a1,a0
  4016f8:	afa00010 	sw	zero,16(sp)
  4016fc:	afa00014 	sw	zero,20(sp)
  401700:	24042542 	li	a0,9538
  401704:	00003021 	move	a2,zero
  401708:	0c100030 	jal	4000c0 <msyscall>
  40170c:	00003821 	move	a3,zero
  401710:	8fbf0018 	lw	ra,24(sp)
  401714:	00000000 	nop
  401718:	03e00008 	jr	ra
  40171c:	27bd0020 	addiu	sp,sp,32

00401720 <syscall_ipc_can_send>:
  401720:	27bdffe0 	addiu	sp,sp,-32
  401724:	afbf0018 	sw	ra,24(sp)
  401728:	00801021 	move	v0,a0
  40172c:	00a01821 	move	v1,a1
  401730:	00c04021 	move	t0,a2
  401734:	afa70010 	sw	a3,16(sp)
  401738:	afa00014 	sw	zero,20(sp)
  40173c:	24042543 	li	a0,9539
  401740:	00402821 	move	a1,v0
  401744:	00603021 	move	a2,v1
  401748:	0c100030 	jal	4000c0 <msyscall>
  40174c:	01003821 	move	a3,t0
  401750:	8fbf0018 	lw	ra,24(sp)
  401754:	00000000 	nop
  401758:	03e00008 	jr	ra
  40175c:	27bd0020 	addiu	sp,sp,32

00401760 <syscall_ipc_recv>:
  401760:	27bdffe0 	addiu	sp,sp,-32
  401764:	afbf0018 	sw	ra,24(sp)
  401768:	00802821 	move	a1,a0
  40176c:	afa00010 	sw	zero,16(sp)
  401770:	afa00014 	sw	zero,20(sp)
  401774:	24042544 	li	a0,9540
  401778:	00003021 	move	a2,zero
  40177c:	0c100030 	jal	4000c0 <msyscall>
  401780:	00003821 	move	a3,zero
  401784:	8fbf0018 	lw	ra,24(sp)
  401788:	00000000 	nop
  40178c:	03e00008 	jr	ra
  401790:	27bd0020 	addiu	sp,sp,32

00401794 <syscall_cgetc>:
  401794:	27bdffe0 	addiu	sp,sp,-32
  401798:	afbf0018 	sw	ra,24(sp)
  40179c:	afa00010 	sw	zero,16(sp)
  4017a0:	afa00014 	sw	zero,20(sp)
  4017a4:	24042545 	li	a0,9541
  4017a8:	00002821 	move	a1,zero
  4017ac:	00003021 	move	a2,zero
  4017b0:	0c100030 	jal	4000c0 <msyscall>
  4017b4:	00003821 	move	a3,zero
  4017b8:	8fbf0018 	lw	ra,24(sp)
  4017bc:	00000000 	nop
  4017c0:	03e00008 	jr	ra
  4017c4:	27bd0020 	addiu	sp,sp,32
	...

004017d0 <ipc_send>:
  4017d0:	27bdffd8 	addiu	sp,sp,-40
  4017d4:	afbf0024 	sw	ra,36(sp)
  4017d8:	afb40020 	sw	s4,32(sp)
  4017dc:	afb3001c 	sw	s3,28(sp)
  4017e0:	afb20018 	sw	s2,24(sp)
  4017e4:	afb10014 	sw	s1,20(sp)
  4017e8:	afb00010 	sw	s0,16(sp)
  4017ec:	0080a021 	move	s4,a0
  4017f0:	00a09821 	move	s3,a1
  4017f4:	00c09021 	move	s2,a2
  4017f8:	00e08821 	move	s1,a3
  4017fc:	10000003 	b	40180c <ipc_send+0x3c>
  401800:	2410fffa 	li	s0,-6
  401804:	0c100547 	jal	40151c <syscall_yield>
  401808:	00000000 	nop
  40180c:	02802021 	move	a0,s4
  401810:	02602821 	move	a1,s3
  401814:	02403021 	move	a2,s2
  401818:	0c1005c8 	jal	401720 <syscall_ipc_can_send>
  40181c:	02203821 	move	a3,s1
  401820:	1050fff8 	beq	v0,s0,401804 <ipc_send+0x34>
  401824:	00000000 	nop
  401828:	10400007 	beqz	v0,401848 <ipc_send+0x78>
  40182c:	3c040040 	lui	a0,0x40
  401830:	24847464 	addiu	a0,a0,29796
  401834:	2405001c 	li	a1,28
  401838:	3c060040 	lui	a2,0x40
  40183c:	24c6746c 	addiu	a2,a2,29804
  401840:	0c100096 	jal	400258 <_user_panic>
  401844:	00403821 	move	a3,v0
  401848:	8fbf0024 	lw	ra,36(sp)
  40184c:	8fb40020 	lw	s4,32(sp)
  401850:	8fb3001c 	lw	s3,28(sp)
  401854:	8fb20018 	lw	s2,24(sp)
  401858:	8fb10014 	lw	s1,20(sp)
  40185c:	8fb00010 	lw	s0,16(sp)
  401860:	03e00008 	jr	ra
  401864:	27bd0028 	addiu	sp,sp,40

00401868 <ipc_recv>:
  401868:	27bdffe0 	addiu	sp,sp,-32
  40186c:	afbf0018 	sw	ra,24(sp)
  401870:	afb10014 	sw	s1,20(sp)
  401874:	afb00010 	sw	s0,16(sp)
  401878:	00808021 	move	s0,a0
  40187c:	00c08821 	move	s1,a2
  401880:	0c1005d8 	jal	401760 <syscall_ipc_recv>
  401884:	00a02021 	move	a0,a1
  401888:	12000006 	beqz	s0,4018a4 <ipc_recv+0x3c>
  40188c:	3c020041 	lui	v0,0x41
  401890:	8c428004 	lw	v0,-32764(v0)
  401894:	00000000 	nop
  401898:	8c4200c8 	lw	v0,200(v0)
  40189c:	00000000 	nop
  4018a0:	ae020000 	sw	v0,0(s0)
  4018a4:	12200006 	beqz	s1,4018c0 <ipc_recv+0x58>
  4018a8:	3c020041 	lui	v0,0x41
  4018ac:	8c428004 	lw	v0,-32764(v0)
  4018b0:	00000000 	nop
  4018b4:	8c4200d4 	lw	v0,212(v0)
  4018b8:	00000000 	nop
  4018bc:	ae220000 	sw	v0,0(s1)
  4018c0:	3c020041 	lui	v0,0x41
  4018c4:	8c428004 	lw	v0,-32764(v0)
  4018c8:	00000000 	nop
  4018cc:	8c4200c4 	lw	v0,196(v0)
  4018d0:	8fbf0018 	lw	ra,24(sp)
  4018d4:	8fb10014 	lw	s1,20(sp)
  4018d8:	8fb00010 	lw	s0,16(sp)
  4018dc:	03e00008 	jr	ra
  4018e0:	27bd0020 	addiu	sp,sp,32
	...

004018f0 <strlen>:
  4018f0:	80820000 	lb	v0,0(a0)
  4018f4:	00000000 	nop
  4018f8:	10400006 	beqz	v0,401914 <strlen+0x24>
  4018fc:	00001821 	move	v1,zero
  401900:	24840001 	addiu	a0,a0,1
  401904:	80820000 	lb	v0,0(a0)
  401908:	00000000 	nop
  40190c:	1440fffc 	bnez	v0,401900 <strlen+0x10>
  401910:	24630001 	addiu	v1,v1,1
  401914:	03e00008 	jr	ra
  401918:	00601021 	move	v0,v1

0040191c <strcpy>:
  40191c:	00801821 	move	v1,a0
  401920:	80a20000 	lb	v0,0(a1)
  401924:	00000000 	nop
  401928:	a0620000 	sb	v0,0(v1)
  40192c:	24630001 	addiu	v1,v1,1
  401930:	1440fffb 	bnez	v0,401920 <strcpy+0x4>
  401934:	24a50001 	addiu	a1,a1,1
  401938:	03e00008 	jr	ra
  40193c:	00801021 	move	v0,a0

00401940 <strchr>:
  401940:	00801021 	move	v0,a0
  401944:	00052e00 	sll	a1,a1,0x18
  401948:	80830000 	lb	v1,0(a0)
  40194c:	00000000 	nop
  401950:	1460000c 	bnez	v1,401984 <strchr+0x44>
  401954:	00052e03 	sra	a1,a1,0x18
  401958:	03e00008 	jr	ra
  40195c:	00001021 	move	v0,zero
  401960:	10a3000a 	beq	a1,v1,40198c <strchr+0x4c>
  401964:	00000000 	nop
  401968:	24420001 	addiu	v0,v0,1
  40196c:	80430000 	lb	v1,0(v0)
  401970:	00000000 	nop
  401974:	1460fffa 	bnez	v1,401960 <strchr+0x20>
  401978:	00000000 	nop
  40197c:	03e00008 	jr	ra
  401980:	00001021 	move	v0,zero
  401984:	14a3fff8 	bne	a1,v1,401968 <strchr+0x28>
  401988:	00000000 	nop
  40198c:	03e00008 	jr	ra
  401990:	00000000 	nop

00401994 <memcpy>:
  401994:	10c0000a 	beqz	a2,4019c0 <memcpy+0x2c>
  401998:	24c2ffff 	addiu	v0,a2,-1
  40199c:	00801821 	move	v1,a0
  4019a0:	00821021 	addu	v0,a0,v0
  4019a4:	24460001 	addiu	a2,v0,1
  4019a8:	90a20000 	lbu	v0,0(a1)
  4019ac:	00000000 	nop
  4019b0:	a0620000 	sb	v0,0(v1)
  4019b4:	24630001 	addiu	v1,v1,1
  4019b8:	1466fffb 	bne	v1,a2,4019a8 <memcpy+0x14>
  4019bc:	24a50001 	addiu	a1,a1,1
  4019c0:	03e00008 	jr	ra
  4019c4:	00801021 	move	v0,a0

004019c8 <strcmp>:
  4019c8:	80830000 	lb	v1,0(a0)
  4019cc:	00000000 	nop
  4019d0:	1060000c 	beqz	v1,401a04 <strcmp+0x3c>
  4019d4:	00000000 	nop
  4019d8:	10000014 	b	401a2c <strcmp+0x64>
  4019dc:	00000000 	nop
  4019e0:	24840001 	addiu	a0,a0,1
  4019e4:	80830000 	lb	v1,0(a0)
  4019e8:	00000000 	nop
  4019ec:	10600005 	beqz	v1,401a04 <strcmp+0x3c>
  4019f0:	24a50001 	addiu	a1,a1,1
  4019f4:	80a20000 	lb	v0,0(a1)
  4019f8:	00000000 	nop
  4019fc:	1043fff8 	beq	v0,v1,4019e0 <strcmp+0x18>
  401a00:	00000000 	nop
  401a04:	306300ff 	andi	v1,v1,0xff
  401a08:	90a50000 	lbu	a1,0(a1)
  401a0c:	00000000 	nop
  401a10:	0065102b 	sltu	v0,v1,a1
  401a14:	10400003 	beqz	v0,401a24 <strcmp+0x5c>
  401a18:	00000000 	nop
  401a1c:	03e00008 	jr	ra
  401a20:	2402ffff 	li	v0,-1
  401a24:	03e00008 	jr	ra
  401a28:	00a3102b 	sltu	v0,a1,v1
  401a2c:	80a20000 	lb	v0,0(a1)
  401a30:	00000000 	nop
  401a34:	1443fff4 	bne	v0,v1,401a08 <strcmp+0x40>
  401a38:	306300ff 	andi	v1,v1,0xff
  401a3c:	1000ffe9 	b	4019e4 <strcmp+0x1c>
  401a40:	24840001 	addiu	a0,a0,1
	...

00401a50 <dev_lookup>:
  401a50:	27bdffe8 	addiu	sp,sp,-24
  401a54:	afbf0010 	sw	ra,16(sp)
  401a58:	00803021 	move	a2,a0
  401a5c:	3c020040 	lui	v0,0x40
  401a60:	8c447610 	lw	a0,30224(v0)
  401a64:	00000000 	nop
  401a68:	14800017 	bnez	a0,401ac8 <dev_lookup+0x78>
  401a6c:	3c020041 	lui	v0,0x41
  401a70:	1000000e 	b	401aac <dev_lookup+0x5c>
  401a74:	00000000 	nop
  401a78:	8c820000 	lw	v0,0(a0)
  401a7c:	00000000 	nop
  401a80:	14c20006 	bne	a2,v0,401a9c <dev_lookup+0x4c>
  401a84:	24630004 	addiu	v1,v1,4
  401a88:	aca40000 	sw	a0,0(a1)
  401a8c:	10000014 	b	401ae0 <dev_lookup+0x90>
  401a90:	00001021 	move	v0,zero
  401a94:	3c020040 	lui	v0,0x40
  401a98:	24437614 	addiu	v1,v0,30228
  401a9c:	8c640000 	lw	a0,0(v1)
  401aa0:	00000000 	nop
  401aa4:	1480fff4 	bnez	a0,401a78 <dev_lookup+0x28>
  401aa8:	3c020041 	lui	v0,0x41
  401aac:	8c428004 	lw	v0,-32764(v0)
  401ab0:	3c040040 	lui	a0,0x40
  401ab4:	8c4500a4 	lw	a1,164(v0)
  401ab8:	0c100086 	jal	400218 <writef>
  401abc:	24847484 	addiu	a0,a0,29828
  401ac0:	10000007 	b	401ae0 <dev_lookup+0x90>
  401ac4:	2402fffd 	li	v0,-3
  401ac8:	8c820000 	lw	v0,0(a0)
  401acc:	00000000 	nop
  401ad0:	14c2fff0 	bne	a2,v0,401a94 <dev_lookup+0x44>
  401ad4:	00000000 	nop
  401ad8:	1000ffec 	b	401a8c <dev_lookup+0x3c>
  401adc:	aca40000 	sw	a0,0(a1)
  401ae0:	8fbf0010 	lw	ra,16(sp)
  401ae4:	00000000 	nop
  401ae8:	03e00008 	jr	ra
  401aec:	27bd0018 	addiu	sp,sp,24

00401af0 <fd_alloc>:
  401af0:	3c020040 	lui	v0,0x40
  401af4:	8c46600c 	lw	a2,24588(v0)
  401af8:	3c055fc0 	lui	a1,0x5fc0
  401afc:	3c080040 	lui	t0,0x40
  401b00:	3c025fc1 	lui	v0,0x5fc1
  401b04:	3447f000 	ori	a3,v0,0xf000
  401b08:	00051582 	srl	v0,a1,0x16
  401b0c:	00021080 	sll	v0,v0,0x2
  401b10:	00c21021 	addu	v0,a2,v0
  401b14:	8c420000 	lw	v0,0(v0)
  401b18:	00000000 	nop
  401b1c:	30420200 	andi	v0,v0,0x200
  401b20:	14400003 	bnez	v0,401b30 <fd_alloc+0x40>
  401b24:	00000000 	nop
  401b28:	03e00008 	jr	ra
  401b2c:	ac850000 	sw	a1,0(a0)
  401b30:	00051302 	srl	v0,a1,0xc
  401b34:	00021080 	sll	v0,v0,0x2
  401b38:	8d036008 	lw	v1,24584(t0)
  401b3c:	00000000 	nop
  401b40:	00431021 	addu	v0,v0,v1
  401b44:	8c420000 	lw	v0,0(v0)
  401b48:	00000000 	nop
  401b4c:	30420200 	andi	v0,v0,0x200
  401b50:	14400004 	bnez	v0,401b64 <fd_alloc+0x74>
  401b54:	24a51000 	addiu	a1,a1,4096
  401b58:	24a5f000 	addiu	a1,a1,-4096
  401b5c:	03e00008 	jr	ra
  401b60:	ac850000 	sw	a1,0(a0)
  401b64:	14a7ffe8 	bne	a1,a3,401b08 <fd_alloc+0x18>
  401b68:	2402fff8 	li	v0,-8
  401b6c:	03e00008 	jr	ra
  401b70:	00000000 	nop

00401b74 <fd_close>:
  401b74:	27bdffe8 	addiu	sp,sp,-24
  401b78:	afbf0010 	sw	ra,16(sp)
  401b7c:	00802821 	move	a1,a0
  401b80:	0c100591 	jal	401644 <syscall_mem_unmap>
  401b84:	00002021 	move	a0,zero
  401b88:	8fbf0010 	lw	ra,16(sp)
  401b8c:	00000000 	nop
  401b90:	03e00008 	jr	ra
  401b94:	27bd0018 	addiu	sp,sp,24

00401b98 <fd_lookup>:
  401b98:	28820020 	slti	v0,a0,32
  401b9c:	10400010 	beqz	v0,401be0 <fd_lookup+0x48>
  401ba0:	00041b00 	sll	v1,a0,0xc
  401ba4:	3c025fc0 	lui	v0,0x5fc0
  401ba8:	00622021 	addu	a0,v1,v0
  401bac:	00041282 	srl	v0,a0,0xa
  401bb0:	3c030040 	lui	v1,0x40
  401bb4:	8c636008 	lw	v1,24584(v1)
  401bb8:	00000000 	nop
  401bbc:	00431021 	addu	v0,v0,v1
  401bc0:	8c420000 	lw	v0,0(v0)
  401bc4:	00000000 	nop
  401bc8:	30420200 	andi	v0,v0,0x200
  401bcc:	10400004 	beqz	v0,401be0 <fd_lookup+0x48>
  401bd0:	00000000 	nop
  401bd4:	aca40000 	sw	a0,0(a1)
  401bd8:	03e00008 	jr	ra
  401bdc:	00001021 	move	v0,zero
  401be0:	03e00008 	jr	ra
  401be4:	2402fffd 	li	v0,-3

00401be8 <fd2data>:
  401be8:	27bdffe8 	addiu	sp,sp,-24
  401bec:	afbf0010 	sw	ra,16(sp)
  401bf0:	0c100705 	jal	401c14 <fd2num>
  401bf4:	00000000 	nop
  401bf8:	00021d80 	sll	v1,v0,0x16
  401bfc:	3c026000 	lui	v0,0x6000
  401c00:	00621021 	addu	v0,v1,v0
  401c04:	8fbf0010 	lw	ra,16(sp)
  401c08:	00000000 	nop
  401c0c:	03e00008 	jr	ra
  401c10:	27bd0018 	addiu	sp,sp,24

00401c14 <fd2num>:
  401c14:	3c02a040 	lui	v0,0xa040
  401c18:	00821021 	addu	v0,a0,v0
  401c1c:	03e00008 	jr	ra
  401c20:	00021302 	srl	v0,v0,0xc

00401c24 <num2fd>:
  401c24:	00042300 	sll	a0,a0,0xc
  401c28:	3c025fc0 	lui	v0,0x5fc0
  401c2c:	03e00008 	jr	ra
  401c30:	00821021 	addu	v0,a0,v0

00401c34 <close>:
  401c34:	27bdffe0 	addiu	sp,sp,-32
  401c38:	afbf001c 	sw	ra,28(sp)
  401c3c:	afb00018 	sw	s0,24(sp)
  401c40:	0c1006e6 	jal	401b98 <fd_lookup>
  401c44:	27a50014 	addiu	a1,sp,20
  401c48:	04400011 	bltz	v0,401c90 <close+0x5c>
  401c4c:	00408021 	move	s0,v0
  401c50:	8fa20014 	lw	v0,20(sp)
  401c54:	00000000 	nop
  401c58:	8c440000 	lw	a0,0(v0)
  401c5c:	0c100694 	jal	401a50 <dev_lookup>
  401c60:	27a50010 	addiu	a1,sp,16
  401c64:	0440000a 	bltz	v0,401c90 <close+0x5c>
  401c68:	00408021 	move	s0,v0
  401c6c:	8fa20010 	lw	v0,16(sp)
  401c70:	00000000 	nop
  401c74:	8c420010 	lw	v0,16(v0)
  401c78:	8fa40014 	lw	a0,20(sp)
  401c7c:	0040f809 	jalr	v0
  401c80:	00000000 	nop
  401c84:	8fa40014 	lw	a0,20(sp)
  401c88:	0c1006dd 	jal	401b74 <fd_close>
  401c8c:	00408021 	move	s0,v0
  401c90:	02001021 	move	v0,s0
  401c94:	8fbf001c 	lw	ra,28(sp)
  401c98:	8fb00018 	lw	s0,24(sp)
  401c9c:	03e00008 	jr	ra
  401ca0:	27bd0020 	addiu	sp,sp,32

00401ca4 <close_all>:
  401ca4:	27bdffe0 	addiu	sp,sp,-32
  401ca8:	afbf0018 	sw	ra,24(sp)
  401cac:	afb10014 	sw	s1,20(sp)
  401cb0:	afb00010 	sw	s0,16(sp)
  401cb4:	00008021 	move	s0,zero
  401cb8:	24110020 	li	s1,32
  401cbc:	0c10070d 	jal	401c34 <close>
  401cc0:	02002021 	move	a0,s0
  401cc4:	26100001 	addiu	s0,s0,1
  401cc8:	1611fffc 	bne	s0,s1,401cbc <close_all+0x18>
  401ccc:	00000000 	nop
  401cd0:	8fbf0018 	lw	ra,24(sp)
  401cd4:	8fb10014 	lw	s1,20(sp)
  401cd8:	8fb00010 	lw	s0,16(sp)
  401cdc:	03e00008 	jr	ra
  401ce0:	27bd0020 	addiu	sp,sp,32

00401ce4 <dup>:
  401ce4:	27bdffb8 	addiu	sp,sp,-72
  401ce8:	afbf0040 	sw	ra,64(sp)
  401cec:	afb7003c 	sw	s7,60(sp)
  401cf0:	afb60038 	sw	s6,56(sp)
  401cf4:	afb50034 	sw	s5,52(sp)
  401cf8:	afb40030 	sw	s4,48(sp)
  401cfc:	afb3002c 	sw	s3,44(sp)
  401d00:	afb20028 	sw	s2,40(sp)
  401d04:	afb10024 	sw	s1,36(sp)
  401d08:	afb00020 	sw	s0,32(sp)
  401d0c:	00a0b821 	move	s7,a1
  401d10:	0c1006e6 	jal	401b98 <fd_lookup>
  401d14:	27a50018 	addiu	a1,sp,24
  401d18:	0440004f 	bltz	v0,401e58 <dup+0x174>
  401d1c:	00409821 	move	s3,v0
  401d20:	0c10070d 	jal	401c34 <close>
  401d24:	02e02021 	move	a0,s7
  401d28:	00178300 	sll	s0,s7,0xc
  401d2c:	3c025fc0 	lui	v0,0x5fc0
  401d30:	8fa40018 	lw	a0,24(sp)
  401d34:	0c1006fa 	jal	401be8 <fd2data>
  401d38:	02028021 	addu	s0,s0,v0
  401d3c:	0040a821 	move	s5,v0
  401d40:	0c1006fa 	jal	401be8 <fd2data>
  401d44:	02002021 	move	a0,s0
  401d48:	00409021 	move	s2,v0
  401d4c:	8fa50018 	lw	a1,24(sp)
  401d50:	0200b021 	move	s6,s0
  401d54:	00051302 	srl	v0,a1,0xc
  401d58:	00021080 	sll	v0,v0,0x2
  401d5c:	3c030040 	lui	v1,0x40
  401d60:	8c636008 	lw	v1,24584(v1)
  401d64:	00000000 	nop
  401d68:	00431021 	addu	v0,v0,v1
  401d6c:	8c420000 	lw	v0,0(v0)
  401d70:	00000000 	nop
  401d74:	30420604 	andi	v0,v0,0x604
  401d78:	afa20010 	sw	v0,16(sp)
  401d7c:	00002021 	move	a0,zero
  401d80:	00003021 	move	a2,zero
  401d84:	0c10057f 	jal	4015fc <syscall_mem_map>
  401d88:	02003821 	move	a3,s0
  401d8c:	04400024 	bltz	v0,401e20 <dup+0x13c>
  401d90:	00409821 	move	s3,v0
  401d94:	00151582 	srl	v0,s5,0x16
  401d98:	00021080 	sll	v0,v0,0x2
  401d9c:	3c030040 	lui	v1,0x40
  401da0:	8c63600c 	lw	v1,24588(v1)
  401da4:	00000000 	nop
  401da8:	00431021 	addu	v0,v0,v1
  401dac:	8c420000 	lw	v0,0(v0)
  401db0:	00000000 	nop
  401db4:	10400027 	beqz	v0,401e54 <dup+0x170>
  401db8:	00008821 	move	s1,zero
  401dbc:	3c140040 	lui	s4,0x40
  401dc0:	3c100040 	lui	s0,0x40
  401dc4:	02b12821 	addu	a1,s5,s1
  401dc8:	00051302 	srl	v0,a1,0xc
  401dcc:	00021080 	sll	v0,v0,0x2
  401dd0:	8e836008 	lw	v1,24584(s4)
  401dd4:	00000000 	nop
  401dd8:	00431021 	addu	v0,v0,v1
  401ddc:	8c430000 	lw	v1,0(v0)
  401de0:	00000000 	nop
  401de4:	30620200 	andi	v0,v1,0x200
  401de8:	10400008 	beqz	v0,401e0c <dup+0x128>
  401dec:	30620604 	andi	v0,v1,0x604
  401df0:	afa20010 	sw	v0,16(sp)
  401df4:	00002021 	move	a0,zero
  401df8:	00003021 	move	a2,zero
  401dfc:	0c10057f 	jal	4015fc <syscall_mem_map>
  401e00:	02513821 	addu	a3,s2,s1
  401e04:	04400006 	bltz	v0,401e20 <dup+0x13c>
  401e08:	00409821 	move	s3,v0
  401e0c:	26311000 	addiu	s1,s1,4096
  401e10:	12300010 	beq	s1,s0,401e54 <dup+0x170>
  401e14:	02b12821 	addu	a1,s5,s1
  401e18:	1000ffec 	b	401dcc <dup+0xe8>
  401e1c:	00051302 	srl	v0,a1,0xc
  401e20:	00002021 	move	a0,zero
  401e24:	0c100591 	jal	401644 <syscall_mem_unmap>
  401e28:	02c02821 	move	a1,s6
  401e2c:	00008021 	move	s0,zero
  401e30:	3c110040 	lui	s1,0x40
  401e34:	00002021 	move	a0,zero
  401e38:	0c100591 	jal	401644 <syscall_mem_unmap>
  401e3c:	02502821 	addu	a1,s2,s0
  401e40:	26101000 	addiu	s0,s0,4096
  401e44:	12110004 	beq	s0,s1,401e58 <dup+0x174>
  401e48:	00002021 	move	a0,zero
  401e4c:	1000fffa 	b	401e38 <dup+0x154>
  401e50:	00000000 	nop
  401e54:	02e09821 	move	s3,s7
  401e58:	02601021 	move	v0,s3
  401e5c:	8fbf0040 	lw	ra,64(sp)
  401e60:	8fb7003c 	lw	s7,60(sp)
  401e64:	8fb60038 	lw	s6,56(sp)
  401e68:	8fb50034 	lw	s5,52(sp)
  401e6c:	8fb40030 	lw	s4,48(sp)
  401e70:	8fb3002c 	lw	s3,44(sp)
  401e74:	8fb20028 	lw	s2,40(sp)
  401e78:	8fb10024 	lw	s1,36(sp)
  401e7c:	8fb00020 	lw	s0,32(sp)
  401e80:	03e00008 	jr	ra
  401e84:	27bd0048 	addiu	sp,sp,72

00401e88 <read>:
  401e88:	27bdffd8 	addiu	sp,sp,-40
  401e8c:	afbf0024 	sw	ra,36(sp)
  401e90:	afb20020 	sw	s2,32(sp)
  401e94:	afb1001c 	sw	s1,28(sp)
  401e98:	afb00018 	sw	s0,24(sp)
  401e9c:	00809021 	move	s2,a0
  401ea0:	00a08021 	move	s0,a1
  401ea4:	00c08821 	move	s1,a2
  401ea8:	0c1006e6 	jal	401b98 <fd_lookup>
  401eac:	27a50014 	addiu	a1,sp,20
  401eb0:	04400028 	bltz	v0,401f54 <read+0xcc>
  401eb4:	00402021 	move	a0,v0
  401eb8:	8fa20014 	lw	v0,20(sp)
  401ebc:	00000000 	nop
  401ec0:	8c440000 	lw	a0,0(v0)
  401ec4:	0c100694 	jal	401a50 <dev_lookup>
  401ec8:	27a50010 	addiu	a1,sp,16
  401ecc:	04400021 	bltz	v0,401f54 <read+0xcc>
  401ed0:	00402021 	move	a0,v0
  401ed4:	8fa70014 	lw	a3,20(sp)
  401ed8:	00000000 	nop
  401edc:	8ce20008 	lw	v0,8(a3)
  401ee0:	00000000 	nop
  401ee4:	30420003 	andi	v0,v0,0x3
  401ee8:	24030001 	li	v1,1
  401eec:	1443000a 	bne	v0,v1,401f18 <read+0x90>
  401ef0:	02002821 	move	a1,s0
  401ef4:	3c020041 	lui	v0,0x41
  401ef8:	8c428004 	lw	v0,-32764(v0)
  401efc:	3c040040 	lui	a0,0x40
  401f00:	248474a4 	addiu	a0,a0,29860
  401f04:	8c4500a4 	lw	a1,164(v0)
  401f08:	0c100086 	jal	400218 <writef>
  401f0c:	02403021 	move	a2,s2
  401f10:	10000010 	b	401f54 <read+0xcc>
  401f14:	2404fffd 	li	a0,-3
  401f18:	8fa20010 	lw	v0,16(sp)
  401f1c:	00000000 	nop
  401f20:	8c420008 	lw	v0,8(v0)
  401f24:	00e02021 	move	a0,a3
  401f28:	8ce70004 	lw	a3,4(a3)
  401f2c:	0040f809 	jalr	v0
  401f30:	02203021 	move	a2,s1
  401f34:	04400007 	bltz	v0,401f54 <read+0xcc>
  401f38:	00402021 	move	a0,v0
  401f3c:	8fa30014 	lw	v1,20(sp)
  401f40:	00000000 	nop
  401f44:	8c620004 	lw	v0,4(v1)
  401f48:	00000000 	nop
  401f4c:	00821021 	addu	v0,a0,v0
  401f50:	ac620004 	sw	v0,4(v1)
  401f54:	00801021 	move	v0,a0
  401f58:	8fbf0024 	lw	ra,36(sp)
  401f5c:	8fb20020 	lw	s2,32(sp)
  401f60:	8fb1001c 	lw	s1,28(sp)
  401f64:	8fb00018 	lw	s0,24(sp)
  401f68:	03e00008 	jr	ra
  401f6c:	27bd0028 	addiu	sp,sp,40

00401f70 <readn>:
  401f70:	27bdffd8 	addiu	sp,sp,-40
  401f74:	afbf0020 	sw	ra,32(sp)
  401f78:	afb3001c 	sw	s3,28(sp)
  401f7c:	afb20018 	sw	s2,24(sp)
  401f80:	afb10014 	sw	s1,20(sp)
  401f84:	afb00010 	sw	s0,16(sp)
  401f88:	00809821 	move	s3,a0
  401f8c:	00a09021 	move	s2,a1
  401f90:	14c00003 	bnez	a2,401fa0 <readn+0x30>
  401f94:	00c08821 	move	s1,a2
  401f98:	10000010 	b	401fdc <readn+0x6c>
  401f9c:	00001021 	move	v0,zero
  401fa0:	00008021 	move	s0,zero
  401fa4:	00001821 	move	v1,zero
  401fa8:	02602021 	move	a0,s3
  401fac:	02432821 	addu	a1,s2,v1
  401fb0:	0c1007a2 	jal	401e88 <read>
  401fb4:	02233023 	subu	a2,s1,v1
  401fb8:	04400008 	bltz	v0,401fdc <readn+0x6c>
  401fbc:	00000000 	nop
  401fc0:	10400005 	beqz	v0,401fd8 <readn+0x68>
  401fc4:	00000000 	nop
  401fc8:	02028021 	addu	s0,s0,v0
  401fcc:	0211102b 	sltu	v0,s0,s1
  401fd0:	1440fff5 	bnez	v0,401fa8 <readn+0x38>
  401fd4:	02001821 	move	v1,s0
  401fd8:	02001021 	move	v0,s0
  401fdc:	8fbf0020 	lw	ra,32(sp)
  401fe0:	8fb3001c 	lw	s3,28(sp)
  401fe4:	8fb20018 	lw	s2,24(sp)
  401fe8:	8fb10014 	lw	s1,20(sp)
  401fec:	8fb00010 	lw	s0,16(sp)
  401ff0:	03e00008 	jr	ra
  401ff4:	27bd0028 	addiu	sp,sp,40

00401ff8 <write>:
  401ff8:	27bdffd8 	addiu	sp,sp,-40
  401ffc:	afbf0024 	sw	ra,36(sp)
  402000:	afb20020 	sw	s2,32(sp)
  402004:	afb1001c 	sw	s1,28(sp)
  402008:	afb00018 	sw	s0,24(sp)
  40200c:	00809021 	move	s2,a0
  402010:	00a08021 	move	s0,a1
  402014:	00c08821 	move	s1,a2
  402018:	0c1006e6 	jal	401b98 <fd_lookup>
  40201c:	27a50014 	addiu	a1,sp,20
  402020:	04400027 	bltz	v0,4020c0 <write+0xc8>
  402024:	00402021 	move	a0,v0
  402028:	8fa20014 	lw	v0,20(sp)
  40202c:	00000000 	nop
  402030:	8c440000 	lw	a0,0(v0)
  402034:	0c100694 	jal	401a50 <dev_lookup>
  402038:	27a50010 	addiu	a1,sp,16
  40203c:	04400020 	bltz	v0,4020c0 <write+0xc8>
  402040:	00402021 	move	a0,v0
  402044:	8fa30014 	lw	v1,20(sp)
  402048:	00000000 	nop
  40204c:	8c620008 	lw	v0,8(v1)
  402050:	00000000 	nop
  402054:	30420003 	andi	v0,v0,0x3
  402058:	1440000a 	bnez	v0,402084 <write+0x8c>
  40205c:	02002821 	move	a1,s0
  402060:	3c020041 	lui	v0,0x41
  402064:	8c428004 	lw	v0,-32764(v0)
  402068:	3c040040 	lui	a0,0x40
  40206c:	248474c0 	addiu	a0,a0,29888
  402070:	8c4500a4 	lw	a1,164(v0)
  402074:	0c100086 	jal	400218 <writef>
  402078:	02403021 	move	a2,s2
  40207c:	10000010 	b	4020c0 <write+0xc8>
  402080:	2404fffd 	li	a0,-3
  402084:	8fa20010 	lw	v0,16(sp)
  402088:	00000000 	nop
  40208c:	8c42000c 	lw	v0,12(v0)
  402090:	00602021 	move	a0,v1
  402094:	8c670004 	lw	a3,4(v1)
  402098:	0040f809 	jalr	v0
  40209c:	02203021 	move	a2,s1
  4020a0:	18400007 	blez	v0,4020c0 <write+0xc8>
  4020a4:	00402021 	move	a0,v0
  4020a8:	8fa30014 	lw	v1,20(sp)
  4020ac:	00000000 	nop
  4020b0:	8c620004 	lw	v0,4(v1)
  4020b4:	00000000 	nop
  4020b8:	00821021 	addu	v0,a0,v0
  4020bc:	ac620004 	sw	v0,4(v1)
  4020c0:	00801021 	move	v0,a0
  4020c4:	8fbf0024 	lw	ra,36(sp)
  4020c8:	8fb20020 	lw	s2,32(sp)
  4020cc:	8fb1001c 	lw	s1,28(sp)
  4020d0:	8fb00018 	lw	s0,24(sp)
  4020d4:	03e00008 	jr	ra
  4020d8:	27bd0028 	addiu	sp,sp,40

004020dc <seek>:
  4020dc:	27bdffe0 	addiu	sp,sp,-32
  4020e0:	afbf001c 	sw	ra,28(sp)
  4020e4:	afb00018 	sw	s0,24(sp)
  4020e8:	00a08021 	move	s0,a1
  4020ec:	0c1006e6 	jal	401b98 <fd_lookup>
  4020f0:	27a50010 	addiu	a1,sp,16
  4020f4:	04400005 	bltz	v0,40210c <seek+0x30>
  4020f8:	00000000 	nop
  4020fc:	8fa20010 	lw	v0,16(sp)
  402100:	00000000 	nop
  402104:	ac500004 	sw	s0,4(v0)
  402108:	00001021 	move	v0,zero
  40210c:	8fbf001c 	lw	ra,28(sp)
  402110:	8fb00018 	lw	s0,24(sp)
  402114:	03e00008 	jr	ra
  402118:	27bd0020 	addiu	sp,sp,32

0040211c <fstat>:
  40211c:	27bdffe0 	addiu	sp,sp,-32
  402120:	afbf001c 	sw	ra,28(sp)
  402124:	afb00018 	sw	s0,24(sp)
  402128:	00a08021 	move	s0,a1
  40212c:	0c1006e6 	jal	401b98 <fd_lookup>
  402130:	27a50014 	addiu	a1,sp,20
  402134:	04400012 	bltz	v0,402180 <fstat+0x64>
  402138:	00000000 	nop
  40213c:	8fa20014 	lw	v0,20(sp)
  402140:	00000000 	nop
  402144:	8c440000 	lw	a0,0(v0)
  402148:	0c100694 	jal	401a50 <dev_lookup>
  40214c:	27a50010 	addiu	a1,sp,16
  402150:	0440000b 	bltz	v0,402180 <fstat+0x64>
  402154:	00000000 	nop
  402158:	a2000000 	sb	zero,0(s0)
  40215c:	ae000080 	sw	zero,128(s0)
  402160:	ae000084 	sw	zero,132(s0)
  402164:	8fa20010 	lw	v0,16(sp)
  402168:	00000000 	nop
  40216c:	ae020088 	sw	v0,136(s0)
  402170:	8c420014 	lw	v0,20(v0)
  402174:	8fa40014 	lw	a0,20(sp)
  402178:	0040f809 	jalr	v0
  40217c:	02002821 	move	a1,s0
  402180:	8fbf001c 	lw	ra,28(sp)
  402184:	8fb00018 	lw	s0,24(sp)
  402188:	03e00008 	jr	ra
  40218c:	27bd0020 	addiu	sp,sp,32

00402190 <stat>:
  402190:	27bdffe0 	addiu	sp,sp,-32
  402194:	afbf0018 	sw	ra,24(sp)
  402198:	afb10014 	sw	s1,20(sp)
  40219c:	afb00010 	sw	s0,16(sp)
  4021a0:	00a08021 	move	s0,a1
  4021a4:	0c1008a0 	jal	402280 <open>
  4021a8:	00002821 	move	a1,zero
  4021ac:	04400008 	bltz	v0,4021d0 <stat+0x40>
  4021b0:	00408821 	move	s1,v0
  4021b4:	00402021 	move	a0,v0
  4021b8:	0c100847 	jal	40211c <fstat>
  4021bc:	02002821 	move	a1,s0
  4021c0:	00408021 	move	s0,v0
  4021c4:	0c10070d 	jal	401c34 <close>
  4021c8:	02202021 	move	a0,s1
  4021cc:	02008821 	move	s1,s0
  4021d0:	02201021 	move	v0,s1
  4021d4:	8fbf0018 	lw	ra,24(sp)
  4021d8:	8fb10014 	lw	s1,20(sp)
  4021dc:	8fb00010 	lw	s0,16(sp)
  4021e0:	03e00008 	jr	ra
  4021e4:	27bd0020 	addiu	sp,sp,32
	...

004021f0 <pageref>:
  4021f0:	00041582 	srl	v0,a0,0x16
  4021f4:	00021080 	sll	v0,v0,0x2
  4021f8:	3c030040 	lui	v1,0x40
  4021fc:	8c63600c 	lw	v1,24588(v1)
  402200:	00000000 	nop
  402204:	00431021 	addu	v0,v0,v1
  402208:	8c420000 	lw	v0,0(v0)
  40220c:	00000000 	nop
  402210:	30420200 	andi	v0,v0,0x200
  402214:	10400016 	beqz	v0,402270 <pageref+0x80>
  402218:	3c030040 	lui	v1,0x40
  40221c:	00041302 	srl	v0,a0,0xc
  402220:	00021080 	sll	v0,v0,0x2
  402224:	8c636008 	lw	v1,24584(v1)
  402228:	00000000 	nop
  40222c:	00431021 	addu	v0,v0,v1
  402230:	8c440000 	lw	a0,0(v0)
  402234:	00000000 	nop
  402238:	30820200 	andi	v0,a0,0x200
  40223c:	1040000c 	beqz	v0,402270 <pageref+0x80>
  402240:	00000000 	nop
  402244:	00041302 	srl	v0,a0,0xc
  402248:	00021880 	sll	v1,v0,0x2
  40224c:	00021100 	sll	v0,v0,0x4
  402250:	00431023 	subu	v0,v0,v1
  402254:	3c030040 	lui	v1,0x40
  402258:	8c636004 	lw	v1,24580(v1)
  40225c:	00000000 	nop
  402260:	00431021 	addu	v0,v0,v1
  402264:	94420008 	lhu	v0,8(v0)
  402268:	03e00008 	jr	ra
  40226c:	00000000 	nop
  402270:	03e00008 	jr	ra
  402274:	00001021 	move	v0,zero
	...

00402280 <open>:
  402280:	27bdffd0 	addiu	sp,sp,-48
  402284:	afbf002c 	sw	ra,44(sp)
  402288:	afb40028 	sw	s4,40(sp)
  40228c:	afb30024 	sw	s3,36(sp)
  402290:	afb20020 	sw	s2,32(sp)
  402294:	afb1001c 	sw	s1,28(sp)
  402298:	afb00018 	sw	s0,24(sp)
  40229c:	00809021 	move	s2,a0
  4022a0:	00a08821 	move	s1,a1
  4022a4:	0c1006bc 	jal	401af0 <fd_alloc>
  4022a8:	27a40010 	addiu	a0,sp,16
  4022ac:	04410006 	bgez	v0,4022c8 <open+0x48>
  4022b0:	00408021 	move	s0,v0
  4022b4:	3c040040 	lui	a0,0x40
  4022b8:	0c100086 	jal	400218 <writef>
  4022bc:	248474e8 	addiu	a0,a0,29928
  4022c0:	1000002f 	b	402380 <open+0x100>
  4022c4:	02001021 	move	v0,s0
  4022c8:	02402021 	move	a0,s2
  4022cc:	8fa60010 	lw	a2,16(sp)
  4022d0:	0c100aed 	jal	402bb4 <fsipc_open>
  4022d4:	02202821 	move	a1,s1
  4022d8:	04410007 	bgez	v0,4022f8 <open+0x78>
  4022dc:	00408021 	move	s0,v0
  4022e0:	3c040040 	lui	a0,0x40
  4022e4:	24847500 	addiu	a0,a0,29952
  4022e8:	0c100086 	jal	400218 <writef>
  4022ec:	02402821 	move	a1,s2
  4022f0:	10000023 	b	402380 <open+0x100>
  4022f4:	02001021 	move	v0,s0
  4022f8:	8fa40010 	lw	a0,16(sp)
  4022fc:	0c1006fa 	jal	401be8 <fd2data>
  402300:	00000000 	nop
  402304:	8fa40010 	lw	a0,16(sp)
  402308:	00000000 	nop
  40230c:	8c920090 	lw	s2,144(a0)
  402310:	8c93000c 	lw	s3,12(a0)
  402314:	1640000a 	bnez	s2,402340 <open+0xc0>
  402318:	0040a021 	move	s4,v0
  40231c:	0c100705 	jal	401c14 <fd2num>
  402320:	00000000 	nop
  402324:	10000015 	b	40237c <open+0xfc>
  402328:	00408021 	move	s0,v0
  40232c:	3c040040 	lui	a0,0x40
  402330:	0c100086 	jal	400218 <writef>
  402334:	24847518 	addiu	a0,a0,29976
  402338:	10000011 	b	402380 <open+0x100>
  40233c:	02001021 	move	v0,s0
  402340:	00008821 	move	s1,zero
  402344:	02602021 	move	a0,s3
  402348:	02202821 	move	a1,s1
  40234c:	0c100b0c 	jal	402c30 <fsipc_map>
  402350:	02343021 	addu	a2,s1,s4
  402354:	0440fff5 	bltz	v0,40232c <open+0xac>
  402358:	00408021 	move	s0,v0
  40235c:	26311000 	addiu	s1,s1,4096
  402360:	0232102b 	sltu	v0,s1,s2
  402364:	1440fff8 	bnez	v0,402348 <open+0xc8>
  402368:	02602021 	move	a0,s3
  40236c:	8fa40010 	lw	a0,16(sp)
  402370:	0c100705 	jal	401c14 <fd2num>
  402374:	00000000 	nop
  402378:	00408021 	move	s0,v0
  40237c:	02001021 	move	v0,s0
  402380:	8fbf002c 	lw	ra,44(sp)
  402384:	8fb40028 	lw	s4,40(sp)
  402388:	8fb30024 	lw	s3,36(sp)
  40238c:	8fb20020 	lw	s2,32(sp)
  402390:	8fb1001c 	lw	s1,28(sp)
  402394:	8fb00018 	lw	s0,24(sp)
  402398:	03e00008 	jr	ra
  40239c:	27bd0030 	addiu	sp,sp,48

004023a0 <file_close>:
  4023a0:	27bdffd8 	addiu	sp,sp,-40
  4023a4:	afbf0020 	sw	ra,32(sp)
  4023a8:	afb3001c 	sw	s3,28(sp)
  4023ac:	afb20018 	sw	s2,24(sp)
  4023b0:	afb10014 	sw	s1,20(sp)
  4023b4:	afb00010 	sw	s0,16(sp)
  4023b8:	8c91000c 	lw	s1,12(a0)
  4023bc:	8c920090 	lw	s2,144(a0)
  4023c0:	0c1006fa 	jal	401be8 <fd2data>
  4023c4:	00000000 	nop
  4023c8:	12400009 	beqz	s2,4023f0 <file_close+0x50>
  4023cc:	00409821 	move	s3,v0
  4023d0:	00008021 	move	s0,zero
  4023d4:	02202021 	move	a0,s1
  4023d8:	0c100b46 	jal	402d18 <fsipc_dirty>
  4023dc:	02002821 	move	a1,s0
  4023e0:	26101000 	addiu	s0,s0,4096
  4023e4:	0212102b 	sltu	v0,s0,s2
  4023e8:	1440fffb 	bnez	v0,4023d8 <file_close+0x38>
  4023ec:	02202021 	move	a0,s1
  4023f0:	0c100b39 	jal	402ce4 <fsipc_close>
  4023f4:	02202021 	move	a0,s1
  4023f8:	0441000b 	bgez	v0,402428 <file_close+0x88>
  4023fc:	00408021 	move	s0,v0
  402400:	3c040040 	lui	a0,0x40
  402404:	0c100086 	jal	400218 <writef>
  402408:	24847530 	addiu	a0,a0,30000
  40240c:	10000013 	b	40245c <file_close+0xbc>
  402410:	02001021 	move	v0,s0
  402414:	3c040040 	lui	a0,0x40
  402418:	0c100086 	jal	400218 <writef>
  40241c:	24847548 	addiu	a0,a0,30024
  402420:	1000000e 	b	40245c <file_close+0xbc>
  402424:	02001021 	move	v0,s0
  402428:	1240000a 	beqz	s2,402454 <file_close+0xb4>
  40242c:	00008821 	move	s1,zero
  402430:	00002021 	move	a0,zero
  402434:	0c100591 	jal	401644 <syscall_mem_unmap>
  402438:	02332821 	addu	a1,s1,s3
  40243c:	0440fff5 	bltz	v0,402414 <file_close+0x74>
  402440:	00408021 	move	s0,v0
  402444:	26311000 	addiu	s1,s1,4096
  402448:	0232102b 	sltu	v0,s1,s2
  40244c:	1440fff9 	bnez	v0,402434 <file_close+0x94>
  402450:	00002021 	move	a0,zero
  402454:	00008021 	move	s0,zero
  402458:	02001021 	move	v0,s0
  40245c:	8fbf0020 	lw	ra,32(sp)
  402460:	8fb3001c 	lw	s3,28(sp)
  402464:	8fb20018 	lw	s2,24(sp)
  402468:	8fb10014 	lw	s1,20(sp)
  40246c:	8fb00010 	lw	s0,16(sp)
  402470:	03e00008 	jr	ra
  402474:	27bd0028 	addiu	sp,sp,40

00402478 <file_read>:
  402478:	27bdffe0 	addiu	sp,sp,-32
  40247c:	afbf001c 	sw	ra,28(sp)
  402480:	afb20018 	sw	s2,24(sp)
  402484:	afb10014 	sw	s1,20(sp)
  402488:	afb00010 	sw	s0,16(sp)
  40248c:	00a09021 	move	s2,a1
  402490:	00c08021 	move	s0,a2
  402494:	8c830090 	lw	v1,144(a0)
  402498:	00000000 	nop
  40249c:	0067102b 	sltu	v0,v1,a3
  4024a0:	10400003 	beqz	v0,4024b0 <file_read+0x38>
  4024a4:	00e08821 	move	s1,a3
  4024a8:	1000000d 	b	4024e0 <file_read+0x68>
  4024ac:	00001021 	move	v0,zero
  4024b0:	00e61021 	addu	v0,a3,a2
  4024b4:	0062102b 	sltu	v0,v1,v0
  4024b8:	10400002 	beqz	v0,4024c4 <file_read+0x4c>
  4024bc:	00000000 	nop
  4024c0:	00678023 	subu	s0,v1,a3
  4024c4:	0c1006fa 	jal	401be8 <fd2data>
  4024c8:	00000000 	nop
  4024cc:	00512021 	addu	a0,v0,s1
  4024d0:	02402821 	move	a1,s2
  4024d4:	0c100322 	jal	400c88 <user_bcopy>
  4024d8:	02003021 	move	a2,s0
  4024dc:	02001021 	move	v0,s0
  4024e0:	8fbf001c 	lw	ra,28(sp)
  4024e4:	8fb20018 	lw	s2,24(sp)
  4024e8:	8fb10014 	lw	s1,20(sp)
  4024ec:	8fb00010 	lw	s0,16(sp)
  4024f0:	03e00008 	jr	ra
  4024f4:	27bd0020 	addiu	sp,sp,32

004024f8 <read_map>:
  4024f8:	27bdffd8 	addiu	sp,sp,-40
  4024fc:	afbf0020 	sw	ra,32(sp)
  402500:	afb1001c 	sw	s1,28(sp)
  402504:	afb00018 	sw	s0,24(sp)
  402508:	00a08021 	move	s0,a1
  40250c:	00c08821 	move	s1,a2
  402510:	0c1006e6 	jal	401b98 <fd_lookup>
  402514:	27a50010 	addiu	a1,sp,16
  402518:	04400029 	bltz	v0,4025c0 <read_map+0xc8>
  40251c:	3c030040 	lui	v1,0x40
  402520:	8fa40010 	lw	a0,16(sp)
  402524:	00000000 	nop
  402528:	8c820000 	lw	v0,0(a0)
  40252c:	8c637620 	lw	v1,30240(v1)
  402530:	00000000 	nop
  402534:	14430022 	bne	v0,v1,4025c0 <read_map+0xc8>
  402538:	2402fffd 	li	v0,-3
  40253c:	0c1006fa 	jal	401be8 <fd2data>
  402540:	00000000 	nop
  402544:	00502021 	addu	a0,v0,s0
  402548:	3c02003f 	lui	v0,0x3f
  40254c:	3442ffff 	ori	v0,v0,0xffff
  402550:	0050102b 	sltu	v0,v0,s0
  402554:	1440001a 	bnez	v0,4025c0 <read_map+0xc8>
  402558:	2402fff9 	li	v0,-7
  40255c:	00041582 	srl	v0,a0,0x16
  402560:	00021080 	sll	v0,v0,0x2
  402564:	3c030040 	lui	v1,0x40
  402568:	8c63600c 	lw	v1,24588(v1)
  40256c:	00000000 	nop
  402570:	00431021 	addu	v0,v0,v1
  402574:	8c420000 	lw	v0,0(v0)
  402578:	00000000 	nop
  40257c:	30420200 	andi	v0,v0,0x200
  402580:	1040000f 	beqz	v0,4025c0 <read_map+0xc8>
  402584:	2402fff9 	li	v0,-7
  402588:	00041302 	srl	v0,a0,0xc
  40258c:	00021080 	sll	v0,v0,0x2
  402590:	3c030040 	lui	v1,0x40
  402594:	8c636008 	lw	v1,24584(v1)
  402598:	00000000 	nop
  40259c:	00431021 	addu	v0,v0,v1
  4025a0:	8c420000 	lw	v0,0(v0)
  4025a4:	00000000 	nop
  4025a8:	30420200 	andi	v0,v0,0x200
  4025ac:	10400003 	beqz	v0,4025bc <read_map+0xc4>
  4025b0:	00001021 	move	v0,zero
  4025b4:	10000002 	b	4025c0 <read_map+0xc8>
  4025b8:	ae240000 	sw	a0,0(s1)
  4025bc:	2402fff9 	li	v0,-7
  4025c0:	8fbf0020 	lw	ra,32(sp)
  4025c4:	8fb1001c 	lw	s1,28(sp)
  4025c8:	8fb00018 	lw	s0,24(sp)
  4025cc:	03e00008 	jr	ra
  4025d0:	27bd0028 	addiu	sp,sp,40

004025d4 <file_write>:
  4025d4:	27bdffd8 	addiu	sp,sp,-40
  4025d8:	afbf0024 	sw	ra,36(sp)
  4025dc:	afb40020 	sw	s4,32(sp)
  4025e0:	afb3001c 	sw	s3,28(sp)
  4025e4:	afb20018 	sw	s2,24(sp)
  4025e8:	afb10014 	sw	s1,20(sp)
  4025ec:	afb00010 	sw	s0,16(sp)
  4025f0:	00808821 	move	s1,a0
  4025f4:	00a0a021 	move	s4,a1
  4025f8:	00c09021 	move	s2,a2
  4025fc:	00e68021 	addu	s0,a3,a2
  402600:	3c020040 	lui	v0,0x40
  402604:	0050102b 	sltu	v0,v0,s0
  402608:	10400003 	beqz	v0,402618 <file_write+0x44>
  40260c:	00e09821 	move	s3,a3
  402610:	10000014 	b	402664 <file_write+0x90>
  402614:	2402fff9 	li	v0,-7
  402618:	8c820090 	lw	v0,144(a0)
  40261c:	00000000 	nop
  402620:	0050102b 	sltu	v0,v0,s0
  402624:	10400008 	beqz	v0,402648 <file_write+0x74>
  402628:	00000000 	nop
  40262c:	0c100705 	jal	401c14 <fd2num>
  402630:	00000000 	nop
  402634:	00402021 	move	a0,v0
  402638:	0c1009b8 	jal	4026e0 <ftruncate>
  40263c:	02002821 	move	a1,s0
  402640:	04400008 	bltz	v0,402664 <file_write+0x90>
  402644:	00000000 	nop
  402648:	0c1006fa 	jal	401be8 <fd2data>
  40264c:	02202021 	move	a0,s1
  402650:	02802021 	move	a0,s4
  402654:	00532821 	addu	a1,v0,s3
  402658:	0c100322 	jal	400c88 <user_bcopy>
  40265c:	02403021 	move	a2,s2
  402660:	02401021 	move	v0,s2
  402664:	8fbf0024 	lw	ra,36(sp)
  402668:	8fb40020 	lw	s4,32(sp)
  40266c:	8fb3001c 	lw	s3,28(sp)
  402670:	8fb20018 	lw	s2,24(sp)
  402674:	8fb10014 	lw	s1,20(sp)
  402678:	8fb00010 	lw	s0,16(sp)
  40267c:	03e00008 	jr	ra
  402680:	27bd0028 	addiu	sp,sp,40

00402684 <file_stat>:
  402684:	27bdffe0 	addiu	sp,sp,-32
  402688:	afbf0018 	sw	ra,24(sp)
  40268c:	afb10014 	sw	s1,20(sp)
  402690:	afb00010 	sw	s0,16(sp)
  402694:	00808021 	move	s0,a0
  402698:	00a08821 	move	s1,a1
  40269c:	00a02021 	move	a0,a1
  4026a0:	0c100647 	jal	40191c <strcpy>
  4026a4:	26050010 	addiu	a1,s0,16
  4026a8:	8e020090 	lw	v0,144(s0)
  4026ac:	00000000 	nop
  4026b0:	ae220080 	sw	v0,128(s1)
  4026b4:	8e020094 	lw	v0,148(s0)
  4026b8:	00000000 	nop
  4026bc:	38420001 	xori	v0,v0,0x1
  4026c0:	2c420001 	sltiu	v0,v0,1
  4026c4:	ae220084 	sw	v0,132(s1)
  4026c8:	00001021 	move	v0,zero
  4026cc:	8fbf0018 	lw	ra,24(sp)
  4026d0:	8fb10014 	lw	s1,20(sp)
  4026d4:	8fb00010 	lw	s0,16(sp)
  4026d8:	03e00008 	jr	ra
  4026dc:	27bd0020 	addiu	sp,sp,32

004026e0 <ftruncate>:
  4026e0:	27bdffb8 	addiu	sp,sp,-72
  4026e4:	afbf0044 	sw	ra,68(sp)
  4026e8:	afbe0040 	sw	s8,64(sp)
  4026ec:	afb7003c 	sw	s7,60(sp)
  4026f0:	afb60038 	sw	s6,56(sp)
  4026f4:	afb50034 	sw	s5,52(sp)
  4026f8:	afb40030 	sw	s4,48(sp)
  4026fc:	afb3002c 	sw	s3,44(sp)
  402700:	afb20028 	sw	s2,40(sp)
  402704:	afb10024 	sw	s1,36(sp)
  402708:	afb00020 	sw	s0,32(sp)
  40270c:	3c020040 	lui	v0,0x40
  402710:	0045102b 	sltu	v0,v0,a1
  402714:	10400003 	beqz	v0,402724 <ftruncate+0x44>
  402718:	00a08821 	move	s1,a1
  40271c:	10000049 	b	402844 <ftruncate+0x164>
  402720:	2410fff9 	li	s0,-7
  402724:	0c1006e6 	jal	401b98 <fd_lookup>
  402728:	27a50018 	addiu	a1,sp,24
  40272c:	04400045 	bltz	v0,402844 <ftruncate+0x164>
  402730:	00408021 	move	s0,v0
  402734:	8fa50018 	lw	a1,24(sp)
  402738:	00000000 	nop
  40273c:	8ca20000 	lw	v0,0(a1)
  402740:	3c030040 	lui	v1,0x40
  402744:	8c637620 	lw	v1,30240(v1)
  402748:	00000000 	nop
  40274c:	10430008 	beq	v0,v1,402770 <ftruncate+0x90>
  402750:	2410fffd 	li	s0,-3
  402754:	1000003c 	b	402848 <ftruncate+0x168>
  402758:	02001021 	move	v0,s0
  40275c:	02602021 	move	a0,s3
  402760:	0c100b2a 	jal	402ca8 <fsipc_set_size>
  402764:	02e02821 	move	a1,s7
  402768:	10000037 	b	402848 <ftruncate+0x168>
  40276c:	02001021 	move	v0,s0
  402770:	8cb3000c 	lw	s3,12(a1)
  402774:	8cb70090 	lw	s7,144(a1)
  402778:	02602021 	move	a0,s3
  40277c:	0c100b2a 	jal	402ca8 <fsipc_set_size>
  402780:	02202821 	move	a1,s1
  402784:	0440002f 	bltz	v0,402844 <ftruncate+0x164>
  402788:	00408021 	move	s0,v0
  40278c:	8fa40018 	lw	a0,24(sp)
  402790:	0c1006fa 	jal	401be8 <fd2data>
  402794:	26f60fff 	addiu	s6,s7,4095
  402798:	0040f021 	move	s8,v0
  40279c:	2402f000 	li	v0,-4096
  4027a0:	02c29024 	and	s2,s6,v0
  4027a4:	26350fff 	addiu	s5,s1,4095
  4027a8:	02a2a024 	and	s4,s5,v0
  4027ac:	0254102b 	sltu	v0,s2,s4
  4027b0:	1040000d 	beqz	v0,4027e8 <ftruncate+0x108>
  4027b4:	2402f000 	li	v0,-4096
  4027b8:	025e8821 	addu	s1,s2,s8
  4027bc:	02602021 	move	a0,s3
  4027c0:	02402821 	move	a1,s2
  4027c4:	0c100b0c 	jal	402c30 <fsipc_map>
  4027c8:	02203021 	move	a2,s1
  4027cc:	0440ffe3 	bltz	v0,40275c <ftruncate+0x7c>
  4027d0:	00408021 	move	s0,v0
  4027d4:	26521000 	addiu	s2,s2,4096
  4027d8:	0254102b 	sltu	v0,s2,s4
  4027dc:	1440fff7 	bnez	v0,4027bc <ftruncate+0xdc>
  4027e0:	26311000 	addiu	s1,s1,4096
  4027e4:	2402f000 	li	v0,-4096
  4027e8:	02a28024 	and	s0,s5,v0
  4027ec:	02c29024 	and	s2,s6,v0
  4027f0:	0212102b 	sltu	v0,s0,s2
  4027f4:	10400012 	beqz	v0,402840 <ftruncate+0x160>
  4027f8:	03d08821 	addu	s1,s8,s0
  4027fc:	00002021 	move	a0,zero
  402800:	0c100591 	jal	401644 <syscall_mem_unmap>
  402804:	02202821 	move	a1,s1
  402808:	0441000a 	bgez	v0,402834 <ftruncate+0x154>
  40280c:	26101000 	addiu	s0,s0,4096
  402810:	2610f000 	addiu	s0,s0,-4096
  402814:	afa20010 	sw	v0,16(sp)
  402818:	3c040040 	lui	a0,0x40
  40281c:	24847564 	addiu	a0,a0,30052
  402820:	24050113 	li	a1,275
  402824:	3c060040 	lui	a2,0x40
  402828:	24c6756c 	addiu	a2,a2,30060
  40282c:	0c100096 	jal	400258 <_user_panic>
  402830:	02203821 	move	a3,s1
  402834:	0212102b 	sltu	v0,s0,s2
  402838:	1440fff0 	bnez	v0,4027fc <ftruncate+0x11c>
  40283c:	26311000 	addiu	s1,s1,4096
  402840:	00008021 	move	s0,zero
  402844:	02001021 	move	v0,s0
  402848:	8fbf0044 	lw	ra,68(sp)
  40284c:	8fbe0040 	lw	s8,64(sp)
  402850:	8fb7003c 	lw	s7,60(sp)
  402854:	8fb60038 	lw	s6,56(sp)
  402858:	8fb50034 	lw	s5,52(sp)
  40285c:	8fb40030 	lw	s4,48(sp)
  402860:	8fb3002c 	lw	s3,44(sp)
  402864:	8fb20028 	lw	s2,40(sp)
  402868:	8fb10024 	lw	s1,36(sp)
  40286c:	8fb00020 	lw	s0,32(sp)
  402870:	03e00008 	jr	ra
  402874:	27bd0048 	addiu	sp,sp,72

00402878 <remove>:
  402878:	27bdffe8 	addiu	sp,sp,-24
  40287c:	afbf0010 	sw	ra,16(sp)
  402880:	0c100b55 	jal	402d54 <fsipc_remove>
  402884:	00000000 	nop
  402888:	8fbf0010 	lw	ra,16(sp)
  40288c:	00000000 	nop
  402890:	03e00008 	jr	ra
  402894:	27bd0018 	addiu	sp,sp,24

00402898 <sync>:
  402898:	27bdffe8 	addiu	sp,sp,-24
  40289c:	afbf0010 	sw	ra,16(sp)
  4028a0:	0c100b6d 	jal	402db4 <fsipc_sync>
  4028a4:	00000000 	nop
  4028a8:	8fbf0010 	lw	ra,16(sp)
  4028ac:	00000000 	nop
  4028b0:	03e00008 	jr	ra
  4028b4:	27bd0018 	addiu	sp,sp,24
	...

004028c0 <pipe>:
  4028c0:	27bdffd0 	addiu	sp,sp,-48
  4028c4:	afbf002c 	sw	ra,44(sp)
  4028c8:	afb20028 	sw	s2,40(sp)
  4028cc:	afb10024 	sw	s1,36(sp)
  4028d0:	afb00020 	sw	s0,32(sp)
  4028d4:	00809021 	move	s2,a0
  4028d8:	0c1006bc 	jal	401af0 <fd_alloc>
  4028dc:	27a40018 	addiu	a0,sp,24
  4028e0:	04400056 	bltz	v0,402a3c <pipe+0x17c>
  4028e4:	00408021 	move	s0,v0
  4028e8:	00002021 	move	a0,zero
  4028ec:	8fa50018 	lw	a1,24(sp)
  4028f0:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  4028f4:	24060604 	li	a2,1540
  4028f8:	04400050 	bltz	v0,402a3c <pipe+0x17c>
  4028fc:	00408021 	move	s0,v0
  402900:	0c1006bc 	jal	401af0 <fd_alloc>
  402904:	27a4001c 	addiu	a0,sp,28
  402908:	04400049 	bltz	v0,402a30 <pipe+0x170>
  40290c:	00408021 	move	s0,v0
  402910:	00002021 	move	a0,zero
  402914:	8fa5001c 	lw	a1,28(sp)
  402918:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  40291c:	24060604 	li	a2,1540
  402920:	04400043 	bltz	v0,402a30 <pipe+0x170>
  402924:	00408021 	move	s0,v0
  402928:	8fa40018 	lw	a0,24(sp)
  40292c:	0c1006fa 	jal	401be8 <fd2data>
  402930:	00000000 	nop
  402934:	00408821 	move	s1,v0
  402938:	00002021 	move	a0,zero
  40293c:	00402821 	move	a1,v0
  402940:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  402944:	24060604 	li	a2,1540
  402948:	04400036 	bltz	v0,402a24 <pipe+0x164>
  40294c:	00408021 	move	s0,v0
  402950:	8fa4001c 	lw	a0,28(sp)
  402954:	0c1006fa 	jal	401be8 <fd2data>
  402958:	00000000 	nop
  40295c:	24030604 	li	v1,1540
  402960:	afa30010 	sw	v1,16(sp)
  402964:	00002021 	move	a0,zero
  402968:	02202821 	move	a1,s1
  40296c:	00003021 	move	a2,zero
  402970:	0c10057f 	jal	4015fc <syscall_mem_map>
  402974:	00403821 	move	a3,v0
  402978:	04400027 	bltz	v0,402a18 <pipe+0x158>
  40297c:	00408021 	move	s0,v0
  402980:	3c040040 	lui	a0,0x40
  402984:	8c83763c 	lw	v1,30268(a0)
  402988:	8fa20018 	lw	v0,24(sp)
  40298c:	00000000 	nop
  402990:	ac430000 	sw	v1,0(v0)
  402994:	8fa20018 	lw	v0,24(sp)
  402998:	00000000 	nop
  40299c:	ac400008 	sw	zero,8(v0)
  4029a0:	8c83763c 	lw	v1,30268(a0)
  4029a4:	8fa2001c 	lw	v0,28(sp)
  4029a8:	00000000 	nop
  4029ac:	ac430000 	sw	v1,0(v0)
  4029b0:	24030001 	li	v1,1
  4029b4:	8fa2001c 	lw	v0,28(sp)
  4029b8:	00000000 	nop
  4029bc:	ac430008 	sw	v1,8(v0)
  4029c0:	3c020041 	lui	v0,0x41
  4029c4:	8c458004 	lw	a1,-32764(v0)
  4029c8:	00111302 	srl	v0,s1,0xc
  4029cc:	00021080 	sll	v0,v0,0x2
  4029d0:	3c030040 	lui	v1,0x40
  4029d4:	8c636008 	lw	v1,24584(v1)
  4029d8:	00000000 	nop
  4029dc:	00431021 	addu	v0,v0,v1
  4029e0:	8c460000 	lw	a2,0(v0)
  4029e4:	3c040040 	lui	a0,0x40
  4029e8:	8ca500a4 	lw	a1,164(a1)
  4029ec:	0c100086 	jal	400218 <writef>
  4029f0:	2484759c 	addiu	a0,a0,30108
  4029f4:	8fa40018 	lw	a0,24(sp)
  4029f8:	0c100705 	jal	401c14 <fd2num>
  4029fc:	00008021 	move	s0,zero
  402a00:	ae420000 	sw	v0,0(s2)
  402a04:	8fa4001c 	lw	a0,28(sp)
  402a08:	0c100705 	jal	401c14 <fd2num>
  402a0c:	00000000 	nop
  402a10:	1000000a 	b	402a3c <pipe+0x17c>
  402a14:	ae420004 	sw	v0,4(s2)
  402a18:	00002021 	move	a0,zero
  402a1c:	0c100591 	jal	401644 <syscall_mem_unmap>
  402a20:	02202821 	move	a1,s1
  402a24:	8fa5001c 	lw	a1,28(sp)
  402a28:	0c100591 	jal	401644 <syscall_mem_unmap>
  402a2c:	00002021 	move	a0,zero
  402a30:	8fa50018 	lw	a1,24(sp)
  402a34:	0c100591 	jal	401644 <syscall_mem_unmap>
  402a38:	00002021 	move	a0,zero
  402a3c:	02001021 	move	v0,s0
  402a40:	8fbf002c 	lw	ra,44(sp)
  402a44:	8fb20028 	lw	s2,40(sp)
  402a48:	8fb10024 	lw	s1,36(sp)
  402a4c:	8fb00020 	lw	s0,32(sp)
  402a50:	03e00008 	jr	ra
  402a54:	27bd0030 	addiu	sp,sp,48

00402a58 <_pipeisclosed>:
  402a58:	03e00008 	jr	ra
  402a5c:	00000000 	nop

00402a60 <pipeisclosed>:
  402a60:	27bdffe0 	addiu	sp,sp,-32
  402a64:	afbf0018 	sw	ra,24(sp)
  402a68:	0c1006e6 	jal	401b98 <fd_lookup>
  402a6c:	27a50010 	addiu	a1,sp,16
  402a70:	04400007 	bltz	v0,402a90 <pipeisclosed+0x30>
  402a74:	00000000 	nop
  402a78:	8fa40010 	lw	a0,16(sp)
  402a7c:	0c1006fa 	jal	401be8 <fd2data>
  402a80:	00000000 	nop
  402a84:	8fa40010 	lw	a0,16(sp)
  402a88:	0c100a96 	jal	402a58 <_pipeisclosed>
  402a8c:	00402821 	move	a1,v0
  402a90:	8fbf0018 	lw	ra,24(sp)
  402a94:	00000000 	nop
  402a98:	03e00008 	jr	ra
  402a9c:	27bd0020 	addiu	sp,sp,32

00402aa0 <piperead>:
  402aa0:	03e00008 	jr	ra
  402aa4:	00000000 	nop

00402aa8 <pipewrite>:
  402aa8:	03e00008 	jr	ra
  402aac:	00c01021 	move	v0,a2

00402ab0 <pipestat>:
  402ab0:	27bdffe0 	addiu	sp,sp,-32
  402ab4:	afbf0018 	sw	ra,24(sp)
  402ab8:	afb10014 	sw	s1,20(sp)
  402abc:	afb00010 	sw	s0,16(sp)
  402ac0:	0c1006fa 	jal	401be8 <fd2data>
  402ac4:	00a08021 	move	s0,a1
  402ac8:	00408821 	move	s1,v0
  402acc:	02002021 	move	a0,s0
  402ad0:	3c050040 	lui	a1,0x40
  402ad4:	0c100647 	jal	40191c <strcpy>
  402ad8:	24a575b0 	addiu	a1,a1,30128
  402adc:	8e220004 	lw	v0,4(s1)
  402ae0:	8e230000 	lw	v1,0(s1)
  402ae4:	00000000 	nop
  402ae8:	00431023 	subu	v0,v0,v1
  402aec:	ae020080 	sw	v0,128(s0)
  402af0:	ae000084 	sw	zero,132(s0)
  402af4:	3c020040 	lui	v0,0x40
  402af8:	2442763c 	addiu	v0,v0,30268
  402afc:	ae020088 	sw	v0,136(s0)
  402b00:	00001021 	move	v0,zero
  402b04:	8fbf0018 	lw	ra,24(sp)
  402b08:	8fb10014 	lw	s1,20(sp)
  402b0c:	8fb00010 	lw	s0,16(sp)
  402b10:	03e00008 	jr	ra
  402b14:	27bd0020 	addiu	sp,sp,32

00402b18 <pipeclose>:
  402b18:	27bdffe8 	addiu	sp,sp,-24
  402b1c:	afbf0010 	sw	ra,16(sp)
  402b20:	0c1006fa 	jal	401be8 <fd2data>
  402b24:	00000000 	nop
  402b28:	00002021 	move	a0,zero
  402b2c:	0c100591 	jal	401644 <syscall_mem_unmap>
  402b30:	00402821 	move	a1,v0
  402b34:	00001021 	move	v0,zero
  402b38:	8fbf0010 	lw	ra,16(sp)
  402b3c:	00000000 	nop
  402b40:	03e00008 	jr	ra
  402b44:	27bd0018 	addiu	sp,sp,24
	...

00402b50 <fsipc>:
  402b50:	27bdffd8 	addiu	sp,sp,-40
  402b54:	afbf0020 	sw	ra,32(sp)
  402b58:	afb1001c 	sw	s1,28(sp)
  402b5c:	afb00018 	sw	s0,24(sp)
  402b60:	00801821 	move	v1,a0
  402b64:	00a04021 	move	t0,a1
  402b68:	00c08021 	move	s0,a2
  402b6c:	00e08821 	move	s1,a3
  402b70:	3c020040 	lui	v0,0x40
  402b74:	8c426000 	lw	v0,24576(v0)
  402b78:	00000000 	nop
  402b7c:	8c44018c 	lw	a0,396(v0)
  402b80:	00602821 	move	a1,v1
  402b84:	01003021 	move	a2,t0
  402b88:	0c1005f4 	jal	4017d0 <ipc_send>
  402b8c:	24070600 	li	a3,1536
  402b90:	27a40010 	addiu	a0,sp,16
  402b94:	02002821 	move	a1,s0
  402b98:	0c10061a 	jal	401868 <ipc_recv>
  402b9c:	02203021 	move	a2,s1
  402ba0:	8fbf0020 	lw	ra,32(sp)
  402ba4:	8fb1001c 	lw	s1,28(sp)
  402ba8:	8fb00018 	lw	s0,24(sp)
  402bac:	03e00008 	jr	ra
  402bb0:	27bd0028 	addiu	sp,sp,40

00402bb4 <fsipc_open>:
  402bb4:	27bdffd0 	addiu	sp,sp,-48
  402bb8:	afbf0028 	sw	ra,40(sp)
  402bbc:	afb30024 	sw	s3,36(sp)
  402bc0:	afb20020 	sw	s2,32(sp)
  402bc4:	afb1001c 	sw	s1,28(sp)
  402bc8:	afb00018 	sw	s0,24(sp)
  402bcc:	00808821 	move	s1,a0
  402bd0:	00a09021 	move	s2,a1
  402bd4:	00c09821 	move	s3,a2
  402bd8:	3c020040 	lui	v0,0x40
  402bdc:	0c10063c 	jal	4018f0 <strlen>
  402be0:	24504000 	addiu	s0,v0,16384
  402be4:	28420400 	slti	v0,v0,1024
  402be8:	1040000a 	beqz	v0,402c14 <fsipc_open+0x60>
  402bec:	2402fff6 	li	v0,-10
  402bf0:	02002021 	move	a0,s0
  402bf4:	0c100647 	jal	40191c <strcpy>
  402bf8:	02202821 	move	a1,s1
  402bfc:	ae120400 	sw	s2,1024(s0)
  402c00:	24040001 	li	a0,1
  402c04:	02002821 	move	a1,s0
  402c08:	02603021 	move	a2,s3
  402c0c:	0c100ad4 	jal	402b50 <fsipc>
  402c10:	27a70010 	addiu	a3,sp,16
  402c14:	8fbf0028 	lw	ra,40(sp)
  402c18:	8fb30024 	lw	s3,36(sp)
  402c1c:	8fb20020 	lw	s2,32(sp)
  402c20:	8fb1001c 	lw	s1,28(sp)
  402c24:	8fb00018 	lw	s0,24(sp)
  402c28:	03e00008 	jr	ra
  402c2c:	27bd0030 	addiu	sp,sp,48

00402c30 <fsipc_map>:
  402c30:	27bdffd8 	addiu	sp,sp,-40
  402c34:	afbf0024 	sw	ra,36(sp)
  402c38:	afb00020 	sw	s0,32(sp)
  402c3c:	00c08021 	move	s0,a2
  402c40:	3c020040 	lui	v0,0x40
  402c44:	24434000 	addiu	v1,v0,16384
  402c48:	ac444000 	sw	a0,16384(v0)
  402c4c:	ac650004 	sw	a1,4(v1)
  402c50:	24040002 	li	a0,2
  402c54:	00602821 	move	a1,v1
  402c58:	0c100ad4 	jal	402b50 <fsipc>
  402c5c:	27a70018 	addiu	a3,sp,24
  402c60:	0440000d 	bltz	v0,402c98 <fsipc_map+0x68>
  402c64:	24030200 	li	v1,512
  402c68:	8fa70018 	lw	a3,24(sp)
  402c6c:	2402fbfb 	li	v0,-1029
  402c70:	00e21024 	and	v0,a3,v0
  402c74:	10430008 	beq	v0,v1,402c98 <fsipc_map+0x68>
  402c78:	00001021 	move	v0,zero
  402c7c:	afb00010 	sw	s0,16(sp)
  402c80:	3c040040 	lui	a0,0x40
  402c84:	248475b8 	addiu	a0,a0,30136
  402c88:	2405004a 	li	a1,74
  402c8c:	3c060040 	lui	a2,0x40
  402c90:	0c100096 	jal	400258 <_user_panic>
  402c94:	24c675c0 	addiu	a2,a2,30144
  402c98:	8fbf0024 	lw	ra,36(sp)
  402c9c:	8fb00020 	lw	s0,32(sp)
  402ca0:	03e00008 	jr	ra
  402ca4:	27bd0028 	addiu	sp,sp,40

00402ca8 <fsipc_set_size>:
  402ca8:	27bdffe8 	addiu	sp,sp,-24
  402cac:	afbf0010 	sw	ra,16(sp)
  402cb0:	3c020040 	lui	v0,0x40
  402cb4:	24434000 	addiu	v1,v0,16384
  402cb8:	ac444000 	sw	a0,16384(v0)
  402cbc:	ac650004 	sw	a1,4(v1)
  402cc0:	24040003 	li	a0,3
  402cc4:	00602821 	move	a1,v1
  402cc8:	00003021 	move	a2,zero
  402ccc:	0c100ad4 	jal	402b50 <fsipc>
  402cd0:	00003821 	move	a3,zero
  402cd4:	8fbf0010 	lw	ra,16(sp)
  402cd8:	00000000 	nop
  402cdc:	03e00008 	jr	ra
  402ce0:	27bd0018 	addiu	sp,sp,24

00402ce4 <fsipc_close>:
  402ce4:	27bdffe8 	addiu	sp,sp,-24
  402ce8:	afbf0010 	sw	ra,16(sp)
  402cec:	3c050040 	lui	a1,0x40
  402cf0:	aca44000 	sw	a0,16384(a1)
  402cf4:	24040004 	li	a0,4
  402cf8:	24a54000 	addiu	a1,a1,16384
  402cfc:	00003021 	move	a2,zero
  402d00:	0c100ad4 	jal	402b50 <fsipc>
  402d04:	00003821 	move	a3,zero
  402d08:	8fbf0010 	lw	ra,16(sp)
  402d0c:	00000000 	nop
  402d10:	03e00008 	jr	ra
  402d14:	27bd0018 	addiu	sp,sp,24

00402d18 <fsipc_dirty>:
  402d18:	27bdffe8 	addiu	sp,sp,-24
  402d1c:	afbf0010 	sw	ra,16(sp)
  402d20:	3c020040 	lui	v0,0x40
  402d24:	24434000 	addiu	v1,v0,16384
  402d28:	ac444000 	sw	a0,16384(v0)
  402d2c:	ac650004 	sw	a1,4(v1)
  402d30:	24040005 	li	a0,5
  402d34:	00602821 	move	a1,v1
  402d38:	00003021 	move	a2,zero
  402d3c:	0c100ad4 	jal	402b50 <fsipc>
  402d40:	00003821 	move	a3,zero
  402d44:	8fbf0010 	lw	ra,16(sp)
  402d48:	00000000 	nop
  402d4c:	03e00008 	jr	ra
  402d50:	27bd0018 	addiu	sp,sp,24

00402d54 <fsipc_remove>:
  402d54:	27bdffe0 	addiu	sp,sp,-32
  402d58:	afbf0018 	sw	ra,24(sp)
  402d5c:	afb10014 	sw	s1,20(sp)
  402d60:	afb00010 	sw	s0,16(sp)
  402d64:	00808821 	move	s1,a0
  402d68:	3c020040 	lui	v0,0x40
  402d6c:	0c10063c 	jal	4018f0 <strlen>
  402d70:	24504000 	addiu	s0,v0,16384
  402d74:	28420400 	slti	v0,v0,1024
  402d78:	10400009 	beqz	v0,402da0 <fsipc_remove+0x4c>
  402d7c:	2402fff6 	li	v0,-10
  402d80:	02002021 	move	a0,s0
  402d84:	0c100647 	jal	40191c <strcpy>
  402d88:	02202821 	move	a1,s1
  402d8c:	24040006 	li	a0,6
  402d90:	02002821 	move	a1,s0
  402d94:	00003021 	move	a2,zero
  402d98:	0c100ad4 	jal	402b50 <fsipc>
  402d9c:	00003821 	move	a3,zero
  402da0:	8fbf0018 	lw	ra,24(sp)
  402da4:	8fb10014 	lw	s1,20(sp)
  402da8:	8fb00010 	lw	s0,16(sp)
  402dac:	03e00008 	jr	ra
  402db0:	27bd0020 	addiu	sp,sp,32

00402db4 <fsipc_sync>:
  402db4:	27bdffe8 	addiu	sp,sp,-24
  402db8:	afbf0010 	sw	ra,16(sp)
  402dbc:	24040007 	li	a0,7
  402dc0:	3c050040 	lui	a1,0x40
  402dc4:	24a54000 	addiu	a1,a1,16384
  402dc8:	00003021 	move	a2,zero
  402dcc:	0c100ad4 	jal	402b50 <fsipc>
  402dd0:	00003821 	move	a3,zero
  402dd4:	8fbf0010 	lw	ra,16(sp)
  402dd8:	00000000 	nop
  402ddc:	03e00008 	jr	ra
  402de0:	27bd0018 	addiu	sp,sp,24
	...

00402df0 <iscons>:
  402df0:	27bdffe0 	addiu	sp,sp,-32
  402df4:	afbf0018 	sw	ra,24(sp)
  402df8:	0c1006e6 	jal	401b98 <fd_lookup>
  402dfc:	27a50010 	addiu	a1,sp,16
  402e00:	04400008 	bltz	v0,402e24 <iscons+0x34>
  402e04:	3c030040 	lui	v1,0x40
  402e08:	8fa20010 	lw	v0,16(sp)
  402e0c:	00000000 	nop
  402e10:	8c420000 	lw	v0,0(v0)
  402e14:	8c637658 	lw	v1,30296(v1)
  402e18:	00000000 	nop
  402e1c:	00431026 	xor	v0,v0,v1
  402e20:	2c420001 	sltiu	v0,v0,1
  402e24:	8fbf0018 	lw	ra,24(sp)
  402e28:	00000000 	nop
  402e2c:	03e00008 	jr	ra
  402e30:	27bd0020 	addiu	sp,sp,32

00402e34 <opencons>:
  402e34:	27bdffe0 	addiu	sp,sp,-32
  402e38:	afbf0018 	sw	ra,24(sp)
  402e3c:	0c1006bc 	jal	401af0 <fd_alloc>
  402e40:	27a40010 	addiu	a0,sp,16
  402e44:	04400012 	bltz	v0,402e90 <opencons+0x5c>
  402e48:	00002021 	move	a0,zero
  402e4c:	8fa50010 	lw	a1,16(sp)
  402e50:	0c100570 	jal	4015c0 <syscall_mem_alloc>
  402e54:	24060604 	li	a2,1540
  402e58:	0440000d 	bltz	v0,402e90 <opencons+0x5c>
  402e5c:	00000000 	nop
  402e60:	3c020040 	lui	v0,0x40
  402e64:	8c437658 	lw	v1,30296(v0)
  402e68:	8fa20010 	lw	v0,16(sp)
  402e6c:	00000000 	nop
  402e70:	ac430000 	sw	v1,0(v0)
  402e74:	24030002 	li	v1,2
  402e78:	8fa20010 	lw	v0,16(sp)
  402e7c:	00000000 	nop
  402e80:	ac430008 	sw	v1,8(v0)
  402e84:	8fa40010 	lw	a0,16(sp)
  402e88:	0c100705 	jal	401c14 <fd2num>
  402e8c:	00000000 	nop
  402e90:	8fbf0018 	lw	ra,24(sp)
  402e94:	00000000 	nop
  402e98:	03e00008 	jr	ra
  402e9c:	27bd0020 	addiu	sp,sp,32

00402ea0 <cons_read>:
  402ea0:	27bdffe0 	addiu	sp,sp,-32
  402ea4:	afbf0018 	sw	ra,24(sp)
  402ea8:	afb10014 	sw	s1,20(sp)
  402eac:	afb00010 	sw	s0,16(sp)
  402eb0:	14c00005 	bnez	a2,402ec8 <cons_read+0x28>
  402eb4:	00a08821 	move	s1,a1
  402eb8:	1000001d 	b	402f30 <cons_read+0x90>
  402ebc:	00008021 	move	s0,zero
  402ec0:	0c100547 	jal	40151c <syscall_yield>
  402ec4:	00000000 	nop
  402ec8:	0c1005e5 	jal	401794 <syscall_cgetc>
  402ecc:	00000000 	nop
  402ed0:	1040fffb 	beqz	v0,402ec0 <cons_read+0x20>
  402ed4:	00408021 	move	s0,v0
  402ed8:	2402000d 	li	v0,13
  402edc:	12020009 	beq	s0,v0,402f04 <cons_read+0x64>
  402ee0:	3c040040 	lui	a0,0x40
  402ee4:	3c040040 	lui	a0,0x40
  402ee8:	24847600 	addiu	a0,a0,30208
  402eec:	0c100086 	jal	400218 <writef>
  402ef0:	02002821 	move	a1,s0
  402ef4:	06010007 	bgez	s0,402f14 <cons_read+0x74>
  402ef8:	02001021 	move	v0,s0
  402efc:	1000000d 	b	402f34 <cons_read+0x94>
  402f00:	00000000 	nop
  402f04:	0c100086 	jal	400218 <writef>
  402f08:	2484752c 	addiu	a0,a0,29996
  402f0c:	10000005 	b	402f24 <cons_read+0x84>
  402f10:	a2300000 	sb	s0,0(s1)
  402f14:	24020004 	li	v0,4
  402f18:	12020004 	beq	s0,v0,402f2c <cons_read+0x8c>
  402f1c:	00000000 	nop
  402f20:	a2300000 	sb	s0,0(s1)
  402f24:	10000002 	b	402f30 <cons_read+0x90>
  402f28:	24100001 	li	s0,1
  402f2c:	00008021 	move	s0,zero
  402f30:	02001021 	move	v0,s0
  402f34:	8fbf0018 	lw	ra,24(sp)
  402f38:	8fb10014 	lw	s1,20(sp)
  402f3c:	8fb00010 	lw	s0,16(sp)
  402f40:	03e00008 	jr	ra
  402f44:	27bd0020 	addiu	sp,sp,32

00402f48 <cons_write>:
  402f48:	27bdff50 	addiu	sp,sp,-176
  402f4c:	afbf00a8 	sw	ra,168(sp)
  402f50:	afb500a4 	sw	s5,164(sp)
  402f54:	afb400a0 	sw	s4,160(sp)
  402f58:	afb3009c 	sw	s3,156(sp)
  402f5c:	afb20098 	sw	s2,152(sp)
  402f60:	afb10094 	sw	s1,148(sp)
  402f64:	afb00090 	sw	s0,144(sp)
  402f68:	00a0a821 	move	s5,a1
  402f6c:	14c00003 	bnez	a2,402f7c <cons_write+0x34>
  402f70:	00c08821 	move	s1,a2
  402f74:	10000016 	b	402fd0 <cons_write+0x88>
  402f78:	00009021 	move	s2,zero
  402f7c:	00001821 	move	v1,zero
  402f80:	00009021 	move	s2,zero
  402f84:	27b30010 	addiu	s3,sp,16
  402f88:	3c140040 	lui	s4,0x40
  402f8c:	02238023 	subu	s0,s1,v1
  402f90:	2e020080 	sltiu	v0,s0,128
  402f94:	14400002 	bnez	v0,402fa0 <cons_write+0x58>
  402f98:	02a32021 	addu	a0,s5,v1
  402f9c:	2410007f 	li	s0,127
  402fa0:	27a50010 	addiu	a1,sp,16
  402fa4:	0c100322 	jal	400c88 <user_bcopy>
  402fa8:	02003021 	move	a2,s0
  402fac:	02701021 	addu	v0,s3,s0
  402fb0:	a0400000 	sb	zero,0(v0)
  402fb4:	26847604 	addiu	a0,s4,30212
  402fb8:	0c100086 	jal	400218 <writef>
  402fbc:	02602821 	move	a1,s3
  402fc0:	02509021 	addu	s2,s2,s0
  402fc4:	0251102b 	sltu	v0,s2,s1
  402fc8:	1440fff0 	bnez	v0,402f8c <cons_write+0x44>
  402fcc:	02401821 	move	v1,s2
  402fd0:	02401021 	move	v0,s2
  402fd4:	8fbf00a8 	lw	ra,168(sp)
  402fd8:	8fb500a4 	lw	s5,164(sp)
  402fdc:	8fb400a0 	lw	s4,160(sp)
  402fe0:	8fb3009c 	lw	s3,156(sp)
  402fe4:	8fb20098 	lw	s2,152(sp)
  402fe8:	8fb10094 	lw	s1,148(sp)
  402fec:	8fb00090 	lw	s0,144(sp)
  402ff0:	03e00008 	jr	ra
  402ff4:	27bd00b0 	addiu	sp,sp,176

00402ff8 <cons_close>:
  402ff8:	03e00008 	jr	ra
  402ffc:	00001021 	move	v0,zero

00403000 <cons_stat>:
  403000:	27bdffe8 	addiu	sp,sp,-24
  403004:	afbf0010 	sw	ra,16(sp)
  403008:	00a02021 	move	a0,a1
  40300c:	3c050040 	lui	a1,0x40
  403010:	0c100647 	jal	40191c <strcpy>
  403014:	24a57608 	addiu	a1,a1,30216
  403018:	00001021 	move	v0,zero
  40301c:	8fbf0010 	lw	ra,16(sp)
  403020:	00000000 	nop
  403024:	03e00008 	jr	ra
  403028:	27bd0018 	addiu	sp,sp,24
  40302c:	00000000 	nop

00403030 <user_out2string>:
  403030:	24020001 	li	v0,1
  403034:	14c2000d 	bne	a2,v0,40306c <user_out2string+0x3c>
  403038:	00000000 	nop
  40303c:	80a20000 	lb	v0,0(a1)
  403040:	00000000 	nop
  403044:	1040000b 	beqz	v0,403074 <user_out2string+0x44>
  403048:	00003821 	move	a3,zero
  40304c:	00871021 	addu	v0,a0,a3
  403050:	00a71821 	addu	v1,a1,a3
  403054:	90630000 	lbu	v1,0(v1)
  403058:	24e70001 	addiu	a3,a3,1
  40305c:	10c70005 	beq	a2,a3,403074 <user_out2string+0x44>
  403060:	a0430000 	sb	v1,0(v0)
  403064:	1000fffa 	b	403050 <user_out2string+0x20>
  403068:	00871021 	addu	v0,a0,a3
  40306c:	1cc0fff7 	bgtz	a2,40304c <user_out2string+0x1c>
  403070:	00003821 	move	a3,zero
  403074:	03e00008 	jr	ra
  403078:	00000000 	nop

0040307c <fwritef>:
  40307c:	27bdfdd8 	addiu	sp,sp,-552
  403080:	afbf0220 	sw	ra,544(sp)
  403084:	afb1021c 	sw	s1,540(sp)
  403088:	afb00218 	sw	s0,536(sp)
  40308c:	00808821 	move	s1,a0
  403090:	afa60230 	sw	a2,560(sp)
  403094:	afa70234 	sw	a3,564(sp)
  403098:	00a08021 	move	s0,a1
  40309c:	27a20230 	addiu	v0,sp,560
  4030a0:	afa20210 	sw	v0,528(sp)
  4030a4:	27a40010 	addiu	a0,sp,16
  4030a8:	0c100344 	jal	400d10 <user_bzero>
  4030ac:	24050200 	li	a1,512
  4030b0:	3c040040 	lui	a0,0x40
  4030b4:	24843030 	addiu	a0,a0,12336
  4030b8:	27a50010 	addiu	a1,sp,16
  4030bc:	8fa70210 	lw	a3,528(sp)
  4030c0:	0c1000b0 	jal	4002c0 <user_lp_Print>
  4030c4:	02003021 	move	a2,s0
  4030c8:	0c10063c 	jal	4018f0 <strlen>
  4030cc:	27a40010 	addiu	a0,sp,16
  4030d0:	02202021 	move	a0,s1
  4030d4:	27a50010 	addiu	a1,sp,16
  4030d8:	0c1007fe 	jal	401ff8 <write>
  4030dc:	00403021 	move	a2,v0
  4030e0:	8fbf0220 	lw	ra,544(sp)
  4030e4:	8fb1021c 	lw	s1,540(sp)
  4030e8:	8fb00218 	lw	s0,536(sp)
  4030ec:	03e00008 	jr	ra
  4030f0:	27bd0228 	addiu	sp,sp,552
	...
Disassembly of section .reginfo:

00403100 <.reginfo>:
  403100:	f7fffffe 	0xf7fffffe
	...
Disassembly of section .data:

00404000 <fsipcbuf>:
	...

00405000 <fdtab>:
	...

00406000 <envs>:
  406000:	7f400000 	0x7f400000

00406004 <pages>:
  406004:	7f800000 	0x7f800000

00406008 <vpt>:
  406008:	7fc00000 	0x7fc00000

0040600c <vpd>:
  40600c:	7fdff000 	0x7fdff000

00406010 <__pgfault_handler>:
	...

00407000 <user_theFatalMsg>:
  407000:	66617461 	0x66617461
  407004:	6c206572 	0x6c206572
  407008:	726f7220 	0x726f7220
  40700c:	696e2075 	0x696e2075
  407010:	7365725f 	0x7365725f
  407014:	6c705f50 	0x6c705f50
  407018:	72696e74 	0x72696e74
  40701c:	21000000 	addi	zero,t0,0
  407020:	00000000 	nop
  407024:	00400820 	add	at,v0,zero
  407028:	00400828 	0x400828
  40702c:	00400828 	0x400828
  407030:	00400828 	0x400828
  407034:	00400828 	0x400828
  407038:	00400828 	0x400828
  40703c:	00400828 	0x400828
  407040:	00400828 	0x400828
  407044:	00400828 	0x400828
  407048:	00400828 	0x400828
  40704c:	00400828 	0x400828
  407050:	00400828 	0x400828
  407054:	00400828 	0x400828
  407058:	00400828 	0x400828
  40705c:	00400828 	0x400828
  407060:	00400828 	0x400828
  407064:	00400828 	0x400828
  407068:	00400828 	0x400828
  40706c:	00400828 	0x400828
  407070:	00400828 	0x400828
  407074:	00400828 	0x400828
  407078:	00400828 	0x400828
  40707c:	00400828 	0x400828
  407080:	00400828 	0x400828
  407084:	00400828 	0x400828
  407088:	00400828 	0x400828
  40708c:	00400828 	0x400828
  407090:	00400828 	0x400828
  407094:	00400828 	0x400828
  407098:	00400828 	0x400828
  40709c:	00400828 	0x400828
  4070a0:	00400828 	0x400828
  4070a4:	00400828 	0x400828
  4070a8:	00400828 	0x400828
  4070ac:	00400828 	0x400828
  4070b0:	00400828 	0x400828
  4070b4:	00400828 	0x400828
  4070b8:	00400828 	0x400828
  4070bc:	00400828 	0x400828
  4070c0:	00400828 	0x400828
  4070c4:	00400828 	0x400828
  4070c8:	00400828 	0x400828
  4070cc:	00400828 	0x400828
  4070d0:	00400828 	0x400828
  4070d4:	00400828 	0x400828
  4070d8:	00400828 	0x400828
  4070dc:	00400828 	0x400828
  4070e0:	00400828 	0x400828
  4070e4:	00400828 	0x400828
  4070e8:	00400828 	0x400828
  4070ec:	00400828 	0x400828
  4070f0:	00400828 	0x400828
  4070f4:	00400828 	0x400828
  4070f8:	00400828 	0x400828
  4070fc:	00400828 	0x400828
  407100:	00400828 	0x400828
  407104:	00400828 	0x400828
  407108:	00400828 	0x400828
  40710c:	00400828 	0x400828
  407110:	00400828 	0x400828
  407114:	00400828 	0x400828
  407118:	00400828 	0x400828
  40711c:	00400828 	0x400828
  407120:	00400828 	0x400828
  407124:	00400828 	0x400828
  407128:	00400828 	0x400828
  40712c:	00400828 	0x400828
  407130:	00400828 	0x400828
  407134:	0040050c 	syscall	0x10014
  407138:	00400828 	0x400828
  40713c:	00400828 	0x400828
  407140:	00400828 	0x400828
  407144:	00400828 	0x400828
  407148:	00400828 	0x400828
  40714c:	00400828 	0x400828
  407150:	00400828 	0x400828
  407154:	00400828 	0x400828
  407158:	00400828 	0x400828
  40715c:	00400828 	0x400828
  407160:	00400594 	0x400594
  407164:	00400828 	0x400828
  407168:	00400828 	0x400828
  40716c:	00400828 	0x400828
  407170:	00400828 	0x400828
  407174:	00400828 	0x400828
  407178:	0040060c 	syscall	0x10018
  40717c:	00400828 	0x400828
  407180:	00400828 	0x400828
  407184:	004006fc 	0x4006fc
  407188:	00400828 	0x400828
  40718c:	00400828 	0x400828
  407190:	00400828 	0x400828
  407194:	00400828 	0x400828
  407198:	00400828 	0x400828
  40719c:	00400828 	0x400828
  4071a0:	00400828 	0x400828
  4071a4:	00400828 	0x400828
  4071a8:	00400828 	0x400828
  4071ac:	00400494 	0x400494
  4071b0:	00400778 	0x400778
  4071b4:	0040050c 	syscall	0x10014
  4071b8:	00400828 	0x400828
  4071bc:	00400828 	0x400828
  4071c0:	00400828 	0x400828
  4071c4:	00400828 	0x400828
  4071c8:	00400828 	0x400828
  4071cc:	00400828 	0x400828
  4071d0:	00400828 	0x400828
  4071d4:	00400828 	0x400828
  4071d8:	00400828 	0x400828
  4071dc:	00400828 	0x400828
  4071e0:	00400594 	0x400594
  4071e4:	00400828 	0x400828
  4071e8:	00400828 	0x400828
  4071ec:	00400828 	0x400828
  4071f0:	004007cc 	syscall	0x1001f
  4071f4:	00400828 	0x400828
  4071f8:	0040060c 	syscall	0x10018
  4071fc:	00400828 	0x400828
  407200:	00400828 	0x400828
  407204:	00400684 	0x400684
	...
  407210:	09097468 	j	425d1a0 <end+0x3e55198>
  407214:	69732069 	0x69732069
  407218:	73206368 	0x73206368
  40721c:	696c6432 	0x696c6432
  407220:	203a613a 	addi	k0,at,24890
  407224:	25640a00 	addiu	a0,t3,2560
  407228:	09746869 	j	5d1a1a4 <end+0x591219c>
  40722c:	73206973 	0x73206973
  407230:	20636869 	addi	v1,v1,26729
  407234:	6c64203a 	0x6c64203a
  407238:	613a2564 	0x613a2564
  40723c:	0a000000 	j	8000000 <end+0x7bf7ff8>
  407240:	74686973 	jalx	1a1a5cc <end+0x16125c4>
  407244:	20697320 	addi	t1,v1,29472
  407248:	66617468 	0x66617468
  40724c:	65723a20 	0x65723a20
  407250:	613a2564 	0x613a2564
  407254:	0a000000 	j	8000000 <end+0x7bf7ff8>
  407258:	70616e69 	0x70616e69
  40725c:	63206174 	0x63206174
  407260:	2025733a 	addi	a1,at,29498
  407264:	25643a20 	addiu	a0,t3,14880
  407268:	00000000 	nop
  40726c:	666f726b 	0x666f726b
  407270:	2e630000 	sltiu	v1,s3,0
  407274:	55736572 	0x55736572
  407278:	20706766 	addi	s0,v1,26470
  40727c:	61756c74 	0x61756c74
  407280:	20686164 	addi	t0,v1,24932
  407284:	646c6572 	0x646c6572
  407288:	20666163 	addi	a2,v1,24931
  40728c:	696e6720 	0x696e6720
  407290:	61206e6f 	0x61206e6f
  407294:	6e2d434f 	0x6e2d434f
  407298:	57207061 	0x57207061
  40729c:	67650a00 	0x67650a00
  4072a0:	55736572 	0x55736572
  4072a4:	20706766 	addi	s0,v1,26470
  4072a8:	61756c74 	0x61756c74
  4072ac:	20686164 	addi	t0,v1,24932
  4072b0:	646c6572 	0x646c6572
  4072b4:	206d656d 	addi	t5,v1,25965
  4072b8:	5f616c6c 	0x5f616c6c
  4072bc:	6f632066 	0x6f632066
  4072c0:	61696c64 	0x61696c64
  4072c4:	0a000000 	j	8000000 <end+0x7bf7ff8>
  4072c8:	55736572 	0x55736572
  4072cc:	20706766 	addi	s0,v1,26470
  4072d0:	61756c74 	0x61756c74
  4072d4:	20686164 	addi	t0,v1,24932
  4072d8:	646c6572 	0x646c6572
  4072dc:	206d656d 	addi	t5,v1,25965
  4072e0:	5f6d6170 	0x5f6d6170
  4072e4:	20666169 	addi	a2,v1,24937
  4072e8:	6c640a00 	0x6c640a00
  4072ec:	55736572 	0x55736572
  4072f0:	20706766 	addi	s0,v1,26470
  4072f4:	61756c74 	0x61756c74
  4072f8:	20686164 	addi	t0,v1,24932
  4072fc:	646c6572 	0x646c6572
  407300:	206d656d 	addi	t5,v1,25965
  407304:	5f756e6d 	0x5f756e6d
  407308:	61702066 	0x61702066
  40730c:	61696c65 	0x61696c65
  407310:	640a0000 	0x640a0000
  407314:	6661696c 	0x6661696c
  407318:	65642074 	0x65642074
  40731c:	6f206475 	0x6f206475
  407320:	70207265 	0x70207265
  407324:	61642d6f 	0x61642d6f
  407328:	6e6c7920 	0x6e6c7920
  40732c:	5054450a 	0x5054450a
  407330:	00000000 	nop
  407334:	6661696c 	0x6661696c
  407338:	65642074 	0x65642074
  40733c:	6f206475 	0x6f206475
  407340:	70204c49 	0x70204c49
  407344:	42415241 	c0	0x415241
  407348:	59205054 	0x59205054
  40734c:	450a0000 	0x450a0000
  407350:	6661696c 	0x6661696c
  407354:	65642074 	0x65642074
  407358:	6f206475 	0x6f206475
  40735c:	70205054 	0x70205054
  407360:	45207768 	0x45207768
  407364:	69636820 	0x69636820
  407368:	68617320 	0x68617320
  40736c:	6265656e 	0x6265656e
  407370:	20647570 	addi	a0,v1,30064
  407374:	6c696361 	0x6c696361
  407378:	74656420 	jalx	1959080 <end+0x1551078>
  40737c:	6265666f 	0x6265666f
  407380:	72650a00 	0x72650a00
  407384:	6661696c 	0x6661696c
  407388:	65642074 	0x65642074
  40738c:	6f206475 	0x6f206475
  407390:	70205054 	0x70205054
  407394:	45207769 	0x45207769
  407398:	74682043 	jalx	1a0810c <end+0x1600104>
  40739c:	4f572069 	c3	0x1572069
  4073a0:	6e206368 	0x6e206368
  4073a4:	696c6420 	0x696c6420
  4073a8:	656e760a 	0x656e760a
  4073ac:	00000000 	nop
  4073b0:	6661696c 	0x6661696c
  4073b4:	65642074 	0x65642074
  4073b8:	6f206475 	0x6f206475
  4073bc:	70205054 	0x70205054
  4073c0:	45207769 	0x45207769
  4073c4:	74682043 	jalx	1a0810c <end+0x1600104>
  4073c8:	4f572069 	c3	0x1572069
  4073cc:	6e206661 	0x6e206661
  4073d0:	74686572 	jalx	1a195c8 <end+0x16115c0>
  4073d4:	20656e76 	addi	a1,v1,28278
  4073d8:	0a000000 	j	8000000 <end+0x7bf7ff8>
  4073dc:	666f726b 	0x666f726b
  4073e0:	20616c6c 	addi	at,v1,27756
  4073e4:	6f63206d 	0x6f63206d
  4073e8:	656d2066 	0x656d2066
  4073ec:	61696c65 	0x61696c65
  4073f0:	640a0000 	0x640a0000
  4073f4:	666f726b 	0x666f726b
  4073f8:	20736574 	addi	s3,v1,25972
  4073fc:	20706766 	addi	s0,v1,26470
  407400:	61756c74 	0x61756c74
  407404:	5f68616e 	0x5f68616e
  407408:	646c6572 	0x646c6572
  40740c:	20666169 	addi	a2,v1,24937
  407410:	6c65640a 	0x6c65640a
  407414:	00000000 	nop
  407418:	666f726b 	0x666f726b
  40741c:	20736574 	addi	s3,v1,25972
  407420:	20737461 	addi	s3,v1,29793
  407424:	74757320 	jalx	1d5cc80 <end+0x1954c78>
  407428:	6661696c 	0x6661696c
  40742c:	65640a00 	0x65640a00
  407430:	73666f72 	0x73666f72
  407434:	6b206e6f 	0x6b206e6f
  407438:	7420696d 	jalx	81a5b4 <end+0x4125ac>
  40743c:	706c656d 	0x706c656d
  407440:	656e7465 	0x656e7465
  407444:	64000000 	0x64000000
  407448:	63616e6e 	0x63616e6e
  40744c:	6f742073 	0x6f742073
  407450:	65742070 	0x65742070
  407454:	67666175 	0x67666175
  407458:	6c742068 	0x6c742068
  40745c:	616e646c 	0x616e646c
  407460:	65720a00 	0x65720a00
  407464:	6970632e 	0x6970632e
  407468:	63000000 	0x63000000
  40746c:	6572726f 	0x6572726f
  407470:	7220696e 	0x7220696e
  407474:	20697063 	addi	t1,v1,28771
  407478:	5f73656e 	0x5f73656e
  40747c:	643a2025 	0x643a2025
  407480:	64000000 	0x64000000
  407484:	5b253038 	0x5b253038
  407488:	785d2075 	0x785d2075
  40748c:	6e6b6e6f 	0x6e6b6e6f
  407490:	776e2064 	jalx	db88190 <end+0xd780188>
  407494:	65766963 	0x65766963
  407498:	65207479 	0x65207479
  40749c:	70652025 	0x70652025
  4074a0:	640a0000 	0x640a0000
  4074a4:	5b253038 	0x5b253038
  4074a8:	785d2072 	0x785d2072
  4074ac:	65616420 	0x65616420
  4074b0:	2564202d 	addiu	a0,t3,8237
  4074b4:	2d206261 	sltiu	zero,t1,25185
  4074b8:	64206d6f 	0x64206d6f
  4074bc:	64650a00 	0x64650a00
  4074c0:	5b253038 	0x5b253038
  4074c4:	785d2077 	0x785d2077
  4074c8:	72697465 	0x72697465
  4074cc:	20256420 	addi	a1,at,25632
  4074d0:	2d2d2062 	sltiu	t5,t1,8290
  4074d4:	6164206d 	0x6164206d
  4074d8:	6f64650a 	0x6f64650a
  4074dc:	00000000 	nop
  4074e0:	66696c65 	0x66696c65
  4074e4:	00000000 	nop
  4074e8:	57697468 	0x57697468
  4074ec:	6f757420 	0x6f757420
  4074f0:	66726565 	0x66726565
  4074f4:	20666420 	addi	a2,v1,25632
  4074f8:	6c656674 	0x6c656674
  4074fc:	0a000000 	j	8000000 <end+0x7bf7ff8>
  407500:	63616e6e 	0x63616e6e
  407504:	6f6e7420 	0x6f6e7420
  407508:	6f70656e 	0x6f70656e
  40750c:	2066696c 	addi	a2,v1,26988
  407510:	65202573 	0x65202573
  407514:	0a000000 	j	8000000 <end+0x7bf7ff8>
  407518:	63616e6e 	0x63616e6e
  40751c:	6f74206d 	0x6f74206d
  407520:	61702074 	0x61702074
  407524:	68652066 	0x68652066
  407528:	696c652e 	0x696c652e
  40752c:	0a000000 	j	8000000 <end+0x7bf7ff8>
  407530:	63616e6e 	0x63616e6e
  407534:	6f742063 	0x6f742063
  407538:	6c6f7365 	0x6c6f7365
  40753c:	20746865 	addi	s4,v1,26725
  407540:	2066696c 	addi	a2,v1,26988
  407544:	650a0000 	0x650a0000
  407548:	63616e6e 	0x63616e6e
  40754c:	6f6e7420 	0x6f6e7420
  407550:	756e6d61 	jalx	5b9b584 <end+0x579357c>
  407554:	70207468 	0x70207468
  407558:	65206669 	0x65206669
  40755c:	6c652e0a 	0x6c652e0a
  407560:	00000000 	nop
  407564:	66696c65 	0x66696c65
  407568:	2e630000 	sltiu	v1,s3,0
  40756c:	66747275 	0x66747275
  407570:	6e636174 	0x6e636174
  407574:	653a2073 	0x653a2073
  407578:	79736361 	0x79736361
  40757c:	6c6c5f6d 	0x6c6c5f6d
  407580:	656d5f75 	0x656d5f75
  407584:	6e6d6170 	0x6e6d6170
  407588:	20253038 	addi	a1,at,12344
  40758c:	783a2025 	0x783a2025
  407590:	65000000 	0x65000000
  407594:	70697065 	0x70697065
  407598:	00000000 	nop
  40759c:	5b253038 	0x5b253038
  4075a0:	785d2070 	0x785d2070
  4075a4:	69706563 	0x69706563
  4075a8:	72656174 	0x72656174
  4075ac:	65200a00 	0x65200a00
  4075b0:	3c706970 	0x3c706970
  4075b4:	653e0000 	0x653e0000
  4075b8:	66736970 	0x66736970
  4075bc:	632e6300 	0x632e6300
  4075c0:	66736970 	0x66736970
  4075c4:	635f6d61 	0x635f6d61
  4075c8:	703a2075 	0x703a2075
  4075cc:	6e657870 	0x6e657870
  4075d0:	65637465 	0x65637465
  4075d4:	64207065 	0x64207065
  4075d8:	726d6973 	0x726d6973
  4075dc:	73696f6e 	0x73696f6e
  4075e0:	73202530 	0x73202530
  4075e4:	38782066 	xori	t8,v1,0x2066
  4075e8:	6f722064 	0x6f722064
  4075ec:	73747661 	0x73747661
  4075f0:	20253038 	addi	a1,at,12344
  4075f4:	78000000 	0x78000000
  4075f8:	636f6e73 	0x636f6e73
  4075fc:	00000000 	nop
  407600:	25630000 	addiu	v1,t3,0
  407604:	25730000 	addiu	s3,t3,0
  407608:	3c636f6e 	0x3c636f6e
  40760c:	Address 0x000000000040760c is out of bounds.

Disassembly of section .data.rel:

00407610 <devtab>:
  407610:	00407620 	0x407620
  407614:	00407658 	0x407658
  407618:	0040763c 	0x40763c
  40761c:	00000000 	nop
Disassembly of section .data.rel.local:

00407620 <devfile>:
  407620:	00000066 	0x66
  407624:	004074e0 	0x4074e0
  407628:	00402478 	0x402478
  40762c:	004025d4 	0x4025d4
  407630:	004023a0 	0x4023a0
  407634:	00402684 	0x402684
  407638:	00000000 	nop

0040763c <devpipe>:
  40763c:	00000070 	0x70
  407640:	00407594 	0x407594
  407644:	00402aa0 	0x402aa0
  407648:	00402aa8 	0x402aa8
  40764c:	00402b18 	0x402b18
  407650:	00402ab0 	0x402ab0
  407654:	00000000 	nop

00407658 <devcons>:
  407658:	00000063 	0x63
  40765c:	004075f8 	0x4075f8
  407660:	00402ea0 	0x402ea0
  407664:	00402f48 	0x402f48
  407668:	00402ff8 	0x402ff8
  40766c:	00403000 	0x403000
  407670:	00000000 	nop
Disassembly of section .bss:

00408000 <global_a>:
  408000:	00000000 	nop

00408004 <env>:
  408004:	00000000 	nop
Disassembly of section .pdr:

00000000 <.pdr>:
   0:	004000c0 	0x4000c0
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	004000d0 	0x4000d0
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	004000e0 	0x4000e0
  44:	80000000 	lb	zero,0(zero)
  48:	fffffff8 	0xfffffff8
	...
  54:	00000018 	mult	zero,zero
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f
  60:	00400180 	0x400180
  64:	80070000 	lb	a3,0(zero)
  68:	fffffffc 	0xfffffffc
	...
  74:	00000020 	add	zero,zero,zero
  78:	0000001d 	0x1d
  7c:	0000001f 	0x1f
  80:	00400218 	0x400218
  84:	80000000 	lb	zero,0(zero)
  88:	fffffff8 	0xfffffff8
	...
  94:	00000020 	add	zero,zero,zero
  98:	0000001d 	0x1d
  9c:	0000001f 	0x1f
  a0:	00400258 	0x400258
  a4:	80010000 	lb	at,0(zero)
  a8:	fffffffc 	0xfffffffc
	...
  b4:	00000020 	add	zero,zero,zero
  b8:	0000001d 	0x1d
  bc:	0000001f 	0x1f
  c0:	004002c0 	0x4002c0
  c4:	803f0000 	lb	ra,0(at)
  c8:	fffffff8 	0xfffffff8
	...
  d4:	00000428 	0x428
  d8:	0000001d 	0x1d
  dc:	0000001f 	0x1f
  e0:	0040088c 	syscall	0x10022
	...
  f8:	0000001d 	0x1d
  fc:	0000001f 	0x1f
 100:	00400908 	0x400908
	...
 118:	0000001d 	0x1d
 11c:	0000001f 	0x1f
 120:	00400a28 	0x400a28
	...
 138:	0000001d 	0x1d
 13c:	0000001f 	0x1f
 140:	00400bc0 	0x400bc0
 144:	80000000 	lb	zero,0(zero)
 148:	fffffff8 	0xfffffff8
	...
 154:	00000018 	mult	zero,zero
 158:	0000001d 	0x1d
 15c:	0000001f 	0x1f
 160:	00400be0 	0x400be0
 164:	80070000 	lb	a3,0(zero)
 168:	fffffffc 	0xfffffffc
	...
 174:	00000020 	add	zero,zero,zero
 178:	0000001d 	0x1d
 17c:	0000001f 	0x1f
 180:	00400c60 	0x400c60
 184:	80000000 	lb	zero,0(zero)
 188:	fffffff8 	0xfffffff8
	...
 194:	00000018 	mult	zero,zero
 198:	0000001d 	0x1d
 19c:	0000001f 	0x1f
 1a0:	00400c88 	0x400c88
	...
 1b8:	0000001d 	0x1d
 1bc:	0000001f 	0x1f
 1c0:	00400d10 	0x400d10
	...
 1d8:	0000001d 	0x1d
 1dc:	0000001f 	0x1f
 1e0:	00400d3c 	0x400d3c
 1e4:	80030000 	lb	v1,0(zero)
 1e8:	fffffff8 	0xfffffff8
	...
 1f4:	00000028 	0x28
 1f8:	0000001d 	0x1d
 1fc:	0000001f 	0x1f
 200:	00400e50 	0x400e50
 204:	80030000 	lb	v1,0(zero)
 208:	fffffff8 	0xfffffff8
	...
 214:	00000028 	0x28
 218:	0000001d 	0x1d
 21c:	0000001f 	0x1f
 220:	00400fa8 	0x400fa8
 224:	801f0000 	lb	ra,0(zero)
 228:	fffffffc 	0xfffffffc
	...
 234:	00000030 	0x30
 238:	0000001d 	0x1d
 23c:	0000001f 	0x1f
 240:	0040114c 	syscall	0x10045
 244:	800f0000 	lb	t7,0(zero)
 248:	fffffff8 	0xfffffff8
	...
 254:	00000030 	0x30
 258:	0000001d 	0x1d
 25c:	0000001f 	0x1f
 260:	00401210 	0x401210
 264:	803f0000 	lb	ra,0(at)
 268:	fffffff8 	0xfffffff8
	...
 274:	00000038 	0x38
 278:	0000001d 	0x1d
 27c:	0000001f 	0x1f
 280:	00401410 	0x401410
 284:	80000000 	lb	zero,0(zero)
 288:	fffffff8 	0xfffffff8
	...
 294:	00000018 	mult	zero,zero
 298:	0000001d 	0x1d
 29c:	0000001f 	0x1f
 2a0:	00401430 	0x401430
 2a4:	80010000 	lb	at,0(zero)
 2a8:	fffffffc 	0xfffffffc
	...
 2b4:	00000018 	mult	zero,zero
 2b8:	0000001d 	0x1d
 2bc:	0000001f 	0x1f
 2c0:	004014b0 	0x4014b0
 2c4:	80000000 	lb	zero,0(zero)
 2c8:	fffffff8 	0xfffffff8
	...
 2d4:	00000020 	add	zero,zero,zero
 2d8:	0000001d 	0x1d
 2dc:	0000001f 	0x1f
 2e0:	004014e8 	0x4014e8
 2e4:	80000000 	lb	zero,0(zero)
 2e8:	fffffff8 	0xfffffff8
	...
 2f4:	00000020 	add	zero,zero,zero
 2f8:	0000001d 	0x1d
 2fc:	0000001f 	0x1f
 300:	0040151c 	0x40151c
 304:	80000000 	lb	zero,0(zero)
 308:	fffffff8 	0xfffffff8
	...
 314:	00000020 	add	zero,zero,zero
 318:	0000001d 	0x1d
 31c:	0000001f 	0x1f
 320:	00401550 	0x401550
 324:	80000000 	lb	zero,0(zero)
 328:	fffffff8 	0xfffffff8
	...
 334:	00000020 	add	zero,zero,zero
 338:	0000001d 	0x1d
 33c:	0000001f 	0x1f
 340:	00401584 	0x401584
 344:	80000000 	lb	zero,0(zero)
 348:	fffffff8 	0xfffffff8
	...
 354:	00000020 	add	zero,zero,zero
 358:	0000001d 	0x1d
 35c:	0000001f 	0x1f
 360:	004015c0 	0x4015c0
 364:	80000000 	lb	zero,0(zero)
 368:	fffffff8 	0xfffffff8
	...
 374:	00000020 	add	zero,zero,zero
 378:	0000001d 	0x1d
 37c:	0000001f 	0x1f
 380:	004015fc 	0x4015fc
 384:	80000000 	lb	zero,0(zero)
 388:	fffffff8 	0xfffffff8
	...
 394:	00000020 	add	zero,zero,zero
 398:	0000001d 	0x1d
 39c:	0000001f 	0x1f
 3a0:	00401644 	0x401644
 3a4:	80000000 	lb	zero,0(zero)
 3a8:	fffffff8 	0xfffffff8
	...
 3b4:	00000020 	add	zero,zero,zero
 3b8:	0000001d 	0x1d
 3bc:	0000001f 	0x1f
 3c0:	0040167c 	0x40167c
 3c4:	80000000 	lb	zero,0(zero)
 3c8:	fffffff8 	0xfffffff8
	...
 3d4:	00000020 	add	zero,zero,zero
 3d8:	0000001d 	0x1d
 3dc:	0000001f 	0x1f
 3e0:	004016b4 	0x4016b4
 3e4:	80000000 	lb	zero,0(zero)
 3e8:	fffffff8 	0xfffffff8
	...
 3f4:	00000020 	add	zero,zero,zero
 3f8:	0000001d 	0x1d
 3fc:	0000001f 	0x1f
 400:	004016ec 	0x4016ec
 404:	80000000 	lb	zero,0(zero)
 408:	fffffff8 	0xfffffff8
	...
 414:	00000020 	add	zero,zero,zero
 418:	0000001d 	0x1d
 41c:	0000001f 	0x1f
 420:	00401720 	0x401720
 424:	80000000 	lb	zero,0(zero)
 428:	fffffff8 	0xfffffff8
	...
 434:	00000020 	add	zero,zero,zero
 438:	0000001d 	0x1d
 43c:	0000001f 	0x1f
 440:	00401760 	0x401760
 444:	80000000 	lb	zero,0(zero)
 448:	fffffff8 	0xfffffff8
	...
 454:	00000020 	add	zero,zero,zero
 458:	0000001d 	0x1d
 45c:	0000001f 	0x1f
 460:	00401794 	0x401794
 464:	80000000 	lb	zero,0(zero)
 468:	fffffff8 	0xfffffff8
	...
 474:	00000020 	add	zero,zero,zero
 478:	0000001d 	0x1d
 47c:	0000001f 	0x1f
 480:	004017d0 	0x4017d0
 484:	801f0000 	lb	ra,0(zero)
 488:	fffffffc 	0xfffffffc
	...
 494:	00000028 	0x28
 498:	0000001d 	0x1d
 49c:	0000001f 	0x1f
 4a0:	00401868 	0x401868
 4a4:	80030000 	lb	v1,0(zero)
 4a8:	fffffff8 	0xfffffff8
	...
 4b4:	00000020 	add	zero,zero,zero
 4b8:	0000001d 	0x1d
 4bc:	0000001f 	0x1f
 4c0:	004018f0 	0x4018f0
	...
 4d8:	0000001d 	0x1d
 4dc:	0000001f 	0x1f
 4e0:	0040191c 	0x40191c
	...
 4f8:	0000001d 	0x1d
 4fc:	0000001f 	0x1f
 500:	00401940 	0x401940
	...
 518:	0000001d 	0x1d
 51c:	0000001f 	0x1f
 520:	00401994 	0x401994
	...
 538:	0000001d 	0x1d
 53c:	0000001f 	0x1f
 540:	004019c8 	0x4019c8
	...
 558:	0000001d 	0x1d
 55c:	0000001f 	0x1f
 560:	00401a50 	0x401a50
 564:	80000000 	lb	zero,0(zero)
 568:	fffffff8 	0xfffffff8
	...
 574:	00000018 	mult	zero,zero
 578:	0000001d 	0x1d
 57c:	0000001f 	0x1f
 580:	00401af0 	0x401af0
	...
 598:	0000001d 	0x1d
 59c:	0000001f 	0x1f
 5a0:	00401b74 	0x401b74
 5a4:	80000000 	lb	zero,0(zero)
 5a8:	fffffff8 	0xfffffff8
	...
 5b4:	00000018 	mult	zero,zero
 5b8:	0000001d 	0x1d
 5bc:	0000001f 	0x1f
 5c0:	00401b98 	0x401b98
	...
 5d8:	0000001d 	0x1d
 5dc:	0000001f 	0x1f
 5e0:	00401be8 	0x401be8
 5e4:	80000000 	lb	zero,0(zero)
 5e8:	fffffff8 	0xfffffff8
	...
 5f4:	00000018 	mult	zero,zero
 5f8:	0000001d 	0x1d
 5fc:	0000001f 	0x1f
 600:	00401c14 	0x401c14
	...
 618:	0000001d 	0x1d
 61c:	0000001f 	0x1f
 620:	00401c24 	0x401c24
	...
 638:	0000001d 	0x1d
 63c:	0000001f 	0x1f
 640:	00401c34 	0x401c34
 644:	80010000 	lb	at,0(zero)
 648:	fffffffc 	0xfffffffc
	...
 654:	00000020 	add	zero,zero,zero
 658:	0000001d 	0x1d
 65c:	0000001f 	0x1f
 660:	00401ca4 	0x401ca4
 664:	80030000 	lb	v1,0(zero)
 668:	fffffff8 	0xfffffff8
	...
 674:	00000020 	add	zero,zero,zero
 678:	0000001d 	0x1d
 67c:	0000001f 	0x1f
 680:	00401ce4 	0x401ce4
 684:	80ff0000 	lb	ra,0(a3)
 688:	fffffff8 	0xfffffff8
	...
 694:	00000048 	0x48
 698:	0000001d 	0x1d
 69c:	0000001f 	0x1f
 6a0:	00401e88 	0x401e88
 6a4:	80070000 	lb	a3,0(zero)
 6a8:	fffffffc 	0xfffffffc
	...
 6b4:	00000028 	0x28
 6b8:	0000001d 	0x1d
 6bc:	0000001f 	0x1f
 6c0:	00401f70 	0x401f70
 6c4:	800f0000 	lb	t7,0(zero)
 6c8:	fffffff8 	0xfffffff8
	...
 6d4:	00000028 	0x28
 6d8:	0000001d 	0x1d
 6dc:	0000001f 	0x1f
 6e0:	00401ff8 	0x401ff8
 6e4:	80070000 	lb	a3,0(zero)
 6e8:	fffffffc 	0xfffffffc
	...
 6f4:	00000028 	0x28
 6f8:	0000001d 	0x1d
 6fc:	0000001f 	0x1f
 700:	004020dc 	0x4020dc
 704:	80010000 	lb	at,0(zero)
 708:	fffffffc 	0xfffffffc
	...
 714:	00000020 	add	zero,zero,zero
 718:	0000001d 	0x1d
 71c:	0000001f 	0x1f
 720:	0040211c 	0x40211c
 724:	80010000 	lb	at,0(zero)
 728:	fffffffc 	0xfffffffc
	...
 734:	00000020 	add	zero,zero,zero
 738:	0000001d 	0x1d
 73c:	0000001f 	0x1f
 740:	00402190 	0x402190
 744:	80030000 	lb	v1,0(zero)
 748:	fffffff8 	0xfffffff8
	...
 754:	00000020 	add	zero,zero,zero
 758:	0000001d 	0x1d
 75c:	0000001f 	0x1f
 760:	004021f0 	0x4021f0
	...
 778:	0000001d 	0x1d
 77c:	0000001f 	0x1f
 780:	00402280 	0x402280
 784:	801f0000 	lb	ra,0(zero)
 788:	fffffffc 	0xfffffffc
	...
 794:	00000030 	0x30
 798:	0000001d 	0x1d
 79c:	0000001f 	0x1f
 7a0:	004023a0 	0x4023a0
 7a4:	800f0000 	lb	t7,0(zero)
 7a8:	fffffff8 	0xfffffff8
	...
 7b4:	00000028 	0x28
 7b8:	0000001d 	0x1d
 7bc:	0000001f 	0x1f
 7c0:	00402478 	0x402478
 7c4:	80070000 	lb	a3,0(zero)
 7c8:	fffffffc 	0xfffffffc
	...
 7d4:	00000020 	add	zero,zero,zero
 7d8:	0000001d 	0x1d
 7dc:	0000001f 	0x1f
 7e0:	004024f8 	0x4024f8
 7e4:	80030000 	lb	v1,0(zero)
 7e8:	fffffff8 	0xfffffff8
	...
 7f4:	00000028 	0x28
 7f8:	0000001d 	0x1d
 7fc:	0000001f 	0x1f
 800:	004025d4 	0x4025d4
 804:	801f0000 	lb	ra,0(zero)
 808:	fffffffc 	0xfffffffc
	...
 814:	00000028 	0x28
 818:	0000001d 	0x1d
 81c:	0000001f 	0x1f
 820:	00402684 	0x402684
 824:	80030000 	lb	v1,0(zero)
 828:	fffffff8 	0xfffffff8
	...
 834:	00000020 	add	zero,zero,zero
 838:	0000001d 	0x1d
 83c:	0000001f 	0x1f
 840:	004026e0 	0x4026e0
 844:	c0ff0000 	lwc0	$31,0(a3)
 848:	fffffffc 	0xfffffffc
	...
 854:	00000048 	0x48
 858:	0000001d 	0x1d
 85c:	0000001f 	0x1f
 860:	00402878 	0x402878
 864:	80000000 	lb	zero,0(zero)
 868:	fffffff8 	0xfffffff8
	...
 874:	00000018 	mult	zero,zero
 878:	0000001d 	0x1d
 87c:	0000001f 	0x1f
 880:	00402898 	0x402898
 884:	80000000 	lb	zero,0(zero)
 888:	fffffff8 	0xfffffff8
	...
 894:	00000018 	mult	zero,zero
 898:	0000001d 	0x1d
 89c:	0000001f 	0x1f
 8a0:	004028c0 	0x4028c0
 8a4:	80070000 	lb	a3,0(zero)
 8a8:	fffffffc 	0xfffffffc
	...
 8b4:	00000030 	0x30
 8b8:	0000001d 	0x1d
 8bc:	0000001f 	0x1f
 8c0:	00402a58 	0x402a58
	...
 8d8:	0000001d 	0x1d
 8dc:	0000001f 	0x1f
 8e0:	00402a60 	0x402a60
 8e4:	80000000 	lb	zero,0(zero)
 8e8:	fffffff8 	0xfffffff8
	...
 8f4:	00000020 	add	zero,zero,zero
 8f8:	0000001d 	0x1d
 8fc:	0000001f 	0x1f
 900:	00402aa0 	0x402aa0
	...
 918:	0000001d 	0x1d
 91c:	0000001f 	0x1f
 920:	00402aa8 	0x402aa8
	...
 938:	0000001d 	0x1d
 93c:	0000001f 	0x1f
 940:	00402ab0 	0x402ab0
 944:	80030000 	lb	v1,0(zero)
 948:	fffffff8 	0xfffffff8
	...
 954:	00000020 	add	zero,zero,zero
 958:	0000001d 	0x1d
 95c:	0000001f 	0x1f
 960:	00402b18 	0x402b18
 964:	80000000 	lb	zero,0(zero)
 968:	fffffff8 	0xfffffff8
	...
 974:	00000018 	mult	zero,zero
 978:	0000001d 	0x1d
 97c:	0000001f 	0x1f
 980:	00402b50 	0x402b50
 984:	80030000 	lb	v1,0(zero)
 988:	fffffff8 	0xfffffff8
	...
 994:	00000028 	0x28
 998:	0000001d 	0x1d
 99c:	0000001f 	0x1f
 9a0:	00402bb4 	0x402bb4
 9a4:	800f0000 	lb	t7,0(zero)
 9a8:	fffffff8 	0xfffffff8
	...
 9b4:	00000030 	0x30
 9b8:	0000001d 	0x1d
 9bc:	0000001f 	0x1f
 9c0:	00402c30 	0x402c30
 9c4:	80010000 	lb	at,0(zero)
 9c8:	fffffffc 	0xfffffffc
	...
 9d4:	00000028 	0x28
 9d8:	0000001d 	0x1d
 9dc:	0000001f 	0x1f
 9e0:	00402ca8 	0x402ca8
 9e4:	80000000 	lb	zero,0(zero)
 9e8:	fffffff8 	0xfffffff8
	...
 9f4:	00000018 	mult	zero,zero
 9f8:	0000001d 	0x1d
 9fc:	0000001f 	0x1f
 a00:	00402ce4 	0x402ce4
 a04:	80000000 	lb	zero,0(zero)
 a08:	fffffff8 	0xfffffff8
	...
 a14:	00000018 	mult	zero,zero
 a18:	0000001d 	0x1d
 a1c:	0000001f 	0x1f
 a20:	00402d18 	0x402d18
 a24:	80000000 	lb	zero,0(zero)
 a28:	fffffff8 	0xfffffff8
	...
 a34:	00000018 	mult	zero,zero
 a38:	0000001d 	0x1d
 a3c:	0000001f 	0x1f
 a40:	00402d54 	0x402d54
 a44:	80030000 	lb	v1,0(zero)
 a48:	fffffff8 	0xfffffff8
	...
 a54:	00000020 	add	zero,zero,zero
 a58:	0000001d 	0x1d
 a5c:	0000001f 	0x1f
 a60:	00402db4 	0x402db4
 a64:	80000000 	lb	zero,0(zero)
 a68:	fffffff8 	0xfffffff8
	...
 a74:	00000018 	mult	zero,zero
 a78:	0000001d 	0x1d
 a7c:	0000001f 	0x1f
 a80:	00402df0 	0x402df0
 a84:	80000000 	lb	zero,0(zero)
 a88:	fffffff8 	0xfffffff8
	...
 a94:	00000020 	add	zero,zero,zero
 a98:	0000001d 	0x1d
 a9c:	0000001f 	0x1f
 aa0:	00402e34 	0x402e34
 aa4:	80000000 	lb	zero,0(zero)
 aa8:	fffffff8 	0xfffffff8
	...
 ab4:	00000020 	add	zero,zero,zero
 ab8:	0000001d 	0x1d
 abc:	0000001f 	0x1f
 ac0:	00402ea0 	0x402ea0
 ac4:	80030000 	lb	v1,0(zero)
 ac8:	fffffff8 	0xfffffff8
	...
 ad4:	00000020 	add	zero,zero,zero
 ad8:	0000001d 	0x1d
 adc:	0000001f 	0x1f
 ae0:	00402f48 	0x402f48
 ae4:	803f0000 	lb	ra,0(at)
 ae8:	fffffff8 	0xfffffff8
	...
 af4:	000000b0 	0xb0
 af8:	0000001d 	0x1d
 afc:	0000001f 	0x1f
 b00:	00402ff8 	0x402ff8
	...
 b18:	0000001d 	0x1d
 b1c:	0000001f 	0x1f
 b20:	00403000 	0x403000
 b24:	80000000 	lb	zero,0(zero)
 b28:	fffffff8 	0xfffffff8
	...
 b34:	00000018 	mult	zero,zero
 b38:	0000001d 	0x1d
 b3c:	0000001f 	0x1f
 b40:	00403030 	0x403030
	...
 b58:	0000001d 	0x1d
 b5c:	0000001f 	0x1f
 b60:	0040307c 	0x40307c
 b64:	80030000 	lb	v1,0(zero)
 b68:	fffffff8 	0xfffffff8
	...
 b74:	00000228 	0x228
 b78:	0000001d 	0x1d
 b7c:	0000001f 	0x1f
