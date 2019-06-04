
crackme:     file format elf64-x86-64


Disassembly of section .init:

0000000000400418 <_init>:
  400418:	48 83 ec 08          	sub    rsp,0x8
  40041c:	48 8b 05 d5 0b 20 00 	mov    rax,QWORD PTR [rip+0x200bd5]        # 600ff8 <__gmon_start__>
  400423:	48 85 c0             	test   rax,rax
  400426:	74 05                	je     40042d <_init+0x15>
  400428:	e8 53 00 00 00       	call   400480 <__gmon_start__@plt>
  40042d:	48 83 c4 08          	add    rsp,0x8
  400431:	c3                   	ret

Disassembly of section .plt:

0000000000400440 <.plt>:
  400440:	ff 35 c2 0b 20 00    	push   QWORD PTR [rip+0x200bc2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 c4 0b 20 00    	jmp    QWORD PTR [rip+0x200bc4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400450 <puts@plt>:
  400450:	ff 25 c2 0b 20 00    	jmp    QWORD PTR [rip+0x200bc2]        # 601018 <puts@GLIBC_2.2.5>
  400456:	68 00 00 00 00       	push   0x0
  40045b:	e9 e0 ff ff ff       	jmp    400440 <.plt>

0000000000400460 <printf@plt>:
  400460:	ff 25 ba 0b 20 00    	jmp    QWORD PTR [rip+0x200bba]        # 601020 <printf@GLIBC_2.2.5>
  400466:	68 01 00 00 00       	push   0x1
  40046b:	e9 d0 ff ff ff       	jmp    400440 <.plt>

0000000000400470 <__libc_start_main@plt>:
  400470:	ff 25 b2 0b 20 00    	jmp    QWORD PTR [rip+0x200bb2]        # 601028 <__libc_start_main@GLIBC_2.2.5>
  400476:	68 02 00 00 00       	push   0x2
  40047b:	e9 c0 ff ff ff       	jmp    400440 <.plt>

0000000000400480 <__gmon_start__@plt>:
  400480:	ff 25 aa 0b 20 00    	jmp    QWORD PTR [rip+0x200baa]        # 601030 <__gmon_start__>
  400486:	68 03 00 00 00       	push   0x3
  40048b:	e9 b0 ff ff ff       	jmp    400440 <.plt>

Disassembly of section .text:

0000000000400490 <_start>:
  400490:	31 ed                	xor    ebp,ebp
  400492:	49 89 d1             	mov    r9,rdx
  400495:	5e                   	pop    rsi
  400496:	48 89 e2             	mov    rdx,rsp
  400499:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40049d:	50                   	push   rax
  40049e:	54                   	push   rsp
  40049f:	49 c7 c0 a0 06 40 00 	mov    r8,0x4006a0
  4004a6:	48 c7 c1 30 06 40 00 	mov    rcx,0x400630
  4004ad:	48 c7 c7 b4 05 40 00 	mov    rdi,0x4005b4
  4004b4:	e8 b7 ff ff ff       	call   400470 <__libc_start_main@plt>
  4004b9:	f4                   	hlt
  4004ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004004c0 <deregister_tm_clones>:
  4004c0:	b8 4f 10 60 00       	mov    eax,0x60104f
  4004c5:	55                   	push   rbp
  4004c6:	48 2d 48 10 60 00    	sub    rax,0x601048
  4004cc:	48 83 f8 0e          	cmp    rax,0xe
  4004d0:	48 89 e5             	mov    rbp,rsp
  4004d3:	77 02                	ja     4004d7 <deregister_tm_clones+0x17>
  4004d5:	5d                   	pop    rbp
  4004d6:	c3                   	ret
  4004d7:	b8 00 00 00 00       	mov    eax,0x0
  4004dc:	48 85 c0             	test   rax,rax
  4004df:	74 f4                	je     4004d5 <deregister_tm_clones+0x15>
  4004e1:	5d                   	pop    rbp
  4004e2:	bf 48 10 60 00       	mov    edi,0x601048
  4004e7:	ff e0                	jmp    rax
  4004e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004004f0 <register_tm_clones>:
  4004f0:	b8 48 10 60 00       	mov    eax,0x601048
  4004f5:	55                   	push   rbp
  4004f6:	48 2d 48 10 60 00    	sub    rax,0x601048
  4004fc:	48 c1 f8 03          	sar    rax,0x3
  400500:	48 89 e5             	mov    rbp,rsp
  400503:	48 89 c2             	mov    rdx,rax
  400506:	48 c1 ea 3f          	shr    rdx,0x3f
  40050a:	48 01 d0             	add    rax,rdx
  40050d:	48 d1 f8             	sar    rax,1
  400510:	75 02                	jne    400514 <register_tm_clones+0x24>
  400512:	5d                   	pop    rbp
  400513:	c3                   	ret
  400514:	ba 00 00 00 00       	mov    edx,0x0
  400519:	48 85 d2             	test   rdx,rdx
  40051c:	74 f4                	je     400512 <register_tm_clones+0x22>
  40051e:	5d                   	pop    rbp
  40051f:	48 89 c6             	mov    rsi,rax
  400522:	bf 48 10 60 00       	mov    edi,0x601048
  400527:	ff e2                	jmp    rdx
  400529:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400530 <__do_global_dtors_aux>:
  400530:	80 3d 11 0b 20 00 00 	cmp    BYTE PTR [rip+0x200b11],0x0        # 601048 <__TMC_END__>
  400537:	75 11                	jne    40054a <__do_global_dtors_aux+0x1a>
  400539:	55                   	push   rbp
  40053a:	48 89 e5             	mov    rbp,rsp
  40053d:	e8 7e ff ff ff       	call   4004c0 <deregister_tm_clones>
  400542:	5d                   	pop    rbp
  400543:	c6 05 fe 0a 20 00 01 	mov    BYTE PTR [rip+0x200afe],0x1        # 601048 <__TMC_END__>
  40054a:	f3 c3                	repz ret
  40054c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400550 <frame_dummy>:
  400550:	48 83 3d c8 08 20 00 	cmp    QWORD PTR [rip+0x2008c8],0x0        # 600e20 <__JCR_END__>
  400557:	00
  400558:	74 1e                	je     400578 <frame_dummy+0x28>
  40055a:	b8 00 00 00 00       	mov    eax,0x0
  40055f:	48 85 c0             	test   rax,rax
  400562:	74 14                	je     400578 <frame_dummy+0x28>
  400564:	55                   	push   rbp
  400565:	bf 20 0e 60 00       	mov    edi,0x600e20
  40056a:	48 89 e5             	mov    rbp,rsp
  40056d:	ff d0                	call   rax
  40056f:	5d                   	pop    rbp
  400570:	e9 7b ff ff ff       	jmp    4004f0 <register_tm_clones>
  400575:	0f 1f 00             	nop    DWORD PTR [rax]
  400578:	e9 73 ff ff ff       	jmp    4004f0 <register_tm_clones>

000000000040057d <checksum>:
  40057d:	55                   	push   rbp
  40057e:	48 89 e5             	mov    rbp,rsp
  400581:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi     ; move rdi into rbp-18
  400585:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0      ; move 0 into rbp-8
  40058c:	00
--40058d:	eb 14                	jmp    4005a3 <checksum+0x26>       ; initial jump
|
| 40058f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]     ; move rbp-18 into rax
| 400593:	0f b6 00             	movzx  eax,BYTE PTR [rax]           ; move one byte of rax into eax and extend with zeros
| 400596:	48 0f be c0          	movsx  rax,al                       ; move low 8 bits of eax (al) into rax and extend sign bits
| 40059a:	48 01 45 f8          	add    QWORD PTR [rbp-0x8],rax      ; add rax into rbp-8
| 40059e:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1     ; add 1 to rbp-18
|
|-4005a3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]      ; move rbp-18 into rax
  4005a7:	0f b6 00             	movzx  eax,BYTE PTR [rax]            ; move one byte of rax into eax and extend with zeros
  4005aa:	84 c0                	test   al,al                         ; al AND al. Set ZF, SF, and PF depending on output
  4005ac:	75 e1                	jne    40058f <checksum+0x12>        ; jump if ZF set to 0.  Exits to 5ae when ZF = 1
  4005ae:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4005b2:	5d                   	pop    rbp
  4005b3:	c3                   	ret

00000000004005b4 <main>:
  4005b4:	55                   	push   rbp
  4005b5:	48 89 e5             	mov    rbp,rsp
  4005b8:	48 83 ec 20          	sub    rsp,0x20
  4005bc:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  4005bf:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4005c3:	83 7d ec 02          	cmp    DWORD PTR [rbp-0x14],0x2
  4005c7:	74 20                	je     4005e9 <main+0x35>
  4005c9:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4005cd:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4005d0:	48 89 c6             	mov    rsi,rax
  4005d3:	bf b4 06 40 00       	mov    edi,0x4006b4
  4005d8:	b8 00 00 00 00       	mov    eax,0x0
  4005dd:	e8 7e fe ff ff       	call   400460 <printf@plt>
  4005e2:	b8 01 00 00 00       	mov    eax,0x1
  4005e7:	eb 41                	jmp    40062a <main+0x76>
  4005e9:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4005ed:	48 83 c0 08          	add    rax,0x8
  4005f1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4005f4:	48 89 c7             	mov    rdi,rax
  4005f7:	e8 81 ff ff ff       	call   40057d <checksum>
  4005fc:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400600:	48 81 7d f8 ee 0d 00 	cmp    QWORD PTR [rbp-0x8],0xdee
  400607:	00
  400608:	74 11                	je     40061b <main+0x67>
  40060a:	bf c8 06 40 00       	mov    edi,0x4006c8
  40060f:	e8 3c fe ff ff       	call   400450 <puts@plt>
  400614:	b8 01 00 00 00       	mov    eax,0x1
  400619:	eb 0f                	jmp    40062a <main+0x76>
  40061b:	bf d7 06 40 00       	mov    edi,0x4006d7
  400620:	e8 2b fe ff ff       	call   400450 <puts@plt>
  400625:	b8 00 00 00 00       	mov    eax,0x0
  40062a:	c9                   	leave
  40062b:	c3                   	ret
  40062c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400630 <__libc_csu_init>:
  400630:	41 57                	push   r15
  400632:	41 89 ff             	mov    r15d,edi
  400635:	41 56                	push   r14
  400637:	49 89 f6             	mov    r14,rsi
  40063a:	41 55                	push   r13
  40063c:	49 89 d5             	mov    r13,rdx
  40063f:	41 54                	push   r12
  400641:	4c 8d 25 c8 07 20 00 	lea    r12,[rip+0x2007c8]        # 600e10 <__frame_dummy_init_array_entry>
  400648:	55                   	push   rbp
  400649:	48 8d 2d c8 07 20 00 	lea    rbp,[rip+0x2007c8]        # 600e18 <__init_array_end>
  400650:	53                   	push   rbx
  400651:	4c 29 e5             	sub    rbp,r12
  400654:	31 db                	xor    ebx,ebx
  400656:	48 c1 fd 03          	sar    rbp,0x3
  40065a:	48 83 ec 08          	sub    rsp,0x8
  40065e:	e8 b5 fd ff ff       	call   400418 <_init>
  400663:	48 85 ed             	test   rbp,rbp
  400666:	74 1e                	je     400686 <__libc_csu_init+0x56>
  400668:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40066f:	00
  400670:	4c 89 ea             	mov    rdx,r13
  400673:	4c 89 f6             	mov    rsi,r14
  400676:	44 89 ff             	mov    edi,r15d
  400679:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40067d:	48 83 c3 01          	add    rbx,0x1
  400681:	48 39 eb             	cmp    rbx,rbp
  400684:	75 ea                	jne    400670 <__libc_csu_init+0x40>
  400686:	48 83 c4 08          	add    rsp,0x8
  40068a:	5b                   	pop    rbx
  40068b:	5d                   	pop    rbp
  40068c:	41 5c                	pop    r12
  40068e:	41 5d                	pop    r13
  400690:	41 5e                	pop    r14
  400692:	41 5f                	pop    r15
  400694:	c3                   	ret
  400695:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40069c:	00 00 00 00

00000000004006a0 <__libc_csu_fini>:
  4006a0:	f3 c3                	repz ret

Disassembly of section .fini:

00000000004006a4 <_fini>:
  4006a4:	48 83 ec 08          	sub    rsp,0x8
  4006a8:	48 83 c4 08          	add    rsp,0x8
  4006ac:	c3                   	ret
