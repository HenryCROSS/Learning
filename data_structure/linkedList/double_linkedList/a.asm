
.\a.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 05 45 00 00 	mov    0x4505(%rip),%rax        # 405520 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 06 45 00 00 	mov    0x4506(%rip),%rax        # 405530 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 09 45 00 00 	mov    0x4509(%rip),%rax        # 405540 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 cc 44 00 00 	mov    0x44cc(%rip),%rax        # 405510 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 af 43 00 00 	mov    0x43af(%rip),%rax        # 405400 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 a1 44 00 00 	mov    0x44a1(%rip),%rax        # 405500 <.refptr.mingw_app_type>
  40105f:	89 15 a3 6f 00 00    	mov    %edx,0x6fa3(%rip)        # 408008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 e3 1f 00 00       	callq  403058 <__set_app_type>
  401075:	e8 56 20 00 00       	callq  4030d0 <__p__fmode>
  40107a:	48 8b 15 3f 44 00 00 	mov    0x443f(%rip),%rdx        # 4054c0 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 56 0b 00 00       	callq  401be0 <_setargv>
  40108a:	48 8b 05 1f 43 00 00 	mov    0x431f(%rip),%rax        # 4053b0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 ae 1f 00 00       	callq  403058 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d f9 0d 00 00 	lea    0xdf9(%rip),%rcx        # 401ef0 <_matherr>
  4010f7:	e8 e4 0d 00 00       	callq  401ee0 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 b5 43 00 00 	mov    0x43b5(%rip),%rax        # 4054f0 <.refptr._newmode>
  40113b:	4c 8d 05 ce 6e 00 00 	lea    0x6ece(%rip),%r8        # 408010 <envp>
  401142:	48 8d 15 cf 6e 00 00 	lea    0x6ecf(%rip),%rdx        # 408018 <argv>
  401149:	48 8d 0d d0 6e 00 00 	lea    0x6ed0(%rip),%rcx        # 408020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 6e 00 00    	mov    %eax,0x6ea8(%rip)        # 408000 <__bss_start__>
  401158:	48 8d 05 a1 6e 00 00 	lea    0x6ea1(%rip),%rax        # 408000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 45 43 00 00 	mov    0x4345(%rip),%rax        # 4054b0 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 f5 1e 00 00       	callq  403068 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d 58 43 00 00 	mov    0x4358(%rip),%rdi        # 405500 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d 8c 42 00 00 	mov    0x428c(%rip),%rbx        # 405450 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 93 80 00 00 	mov    0x8093(%rip),%r12        # 409264 <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 68 42 00 00 	mov    0x4268(%rip),%rsi        # 405460 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb 6d 00 00 01 	movl   $0x1,0x6deb(%rip)        # 408004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 bd 41 00 00 	mov    0x41bd(%rip),%rax        # 4053f0 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 a4 0f 00 00       	callq  4021f0 <_pei386_runtime_relocator>
  40124c:	48 8d 0d ed 14 00 00 	lea    0x14ed(%rip),%rcx        # 402740 <_gnu_exception_handler>
  401253:	ff 15 03 80 00 00    	callq  *0x8003(%rip)        # 40925c <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 e0 41 00 00 	mov    0x41e0(%rip),%rdx        # 405440 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 e8 13 00 00       	callq  402650 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 3c 1e 00 00       	callq  4030b0 <_set_invalid_parameter_handler>
  401274:	e8 77 0d 00 00       	callq  401ff0 <_fpreset>
  401279:	48 8b 05 80 41 00 00 	mov    0x4180(%rip),%rax        # 405400 <.refptr.__image_base__>
  401280:	48 89 05 e1 76 00 00 	mov    %rax,0x76e1(%rip)        # 408968 <__mingw_winmain_hInstance>
  401287:	e8 34 1e 00 00       	callq  4030c0 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 76 00 00 	mov    %rax,0x7669(%rip)        # 408960 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 2c 00 00    	mov    %eax,0x2ceb(%rip)        # 404000 <__data_start__>
  401315:	8b 1d 05 6d 00 00    	mov    0x6d05(%rip),%ebx        # 408020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 ca 1c 00 00       	callq  402ff8 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 6c 00 00 	mov    0x6ce1(%rip),%rdi        # 408018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 77 1c 00 00       	callq  402fd0 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 93 1c 00 00       	callq  402ff8 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 73 1c 00 00       	callq  402ff0 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 6c 00 00 	mov    %rbp,0x6c83(%rip)        # 408018 <argv>
  401395:	e8 16 08 00 00       	callq  401bb0 <__main>
  40139a:	48 8b 05 6f 40 00 00 	mov    0x406f(%rip),%rax        # 405410 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 6c 00 00 	mov    0x6c68(%rip),%rdx        # 408010 <envp>
  4013a8:	8b 0d 72 6c 00 00    	mov    0x6c72(%rip),%ecx        # 408020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 6c 00 00 	mov    0x6c55(%rip),%r8        # 408010 <envp>
  4013bb:	48 8b 15 56 6c 00 00 	mov    0x6c56(%rip),%rdx        # 408018 <argv>
  4013c2:	e8 89 01 00 00       	callq  401550 <main>
  4013c7:	8b 0d 3b 6c 00 00    	mov    0x6c3b(%rip),%ecx        # 408008 <managedapp>
  4013cd:	89 05 39 6c 00 00    	mov    %eax,0x6c39(%rip)        # 40800c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 6c 00 00    	mov    0x6c23(%rip),%edx        # 408004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 56 1c 00 00       	callq  403040 <_cexit>
  4013ea:	8b 05 1c 6c 00 00    	mov    0x6c1c(%rip),%eax        # 40800c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 49 40 00 00 	mov    0x4049(%rip),%rsi        # 405460 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 17 1c 00 00       	callq  403048 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 3d 40 00 00 	mov    0x403d(%rip),%rdx        # 405480 <.refptr.__xc_z>
  401443:	48 8b 0d 26 40 00 00 	mov    0x4026(%rip),%rcx        # 405470 <.refptr.__xc_a>
  40144a:	e8 e9 1b 00 00       	callq  403038 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 93 7d 00 00    	callq  *0x7d93(%rip)        # 40920c <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 19 40 00 00 	mov    0x4019(%rip),%rdx        # 4054a0 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d fc 3f 00 00 	mov    0x3ffc(%rip),%rcx        # 405490 <.refptr.__xi_a>
  401494:	e8 9f 1b 00 00       	callq  403038 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 73 1b 00 00       	callq  403018 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 45 40 00 00 	mov    0x4045(%rip),%rax        # 405500 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 2a 07 00 00       	callq  401bf0 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 15 40 00 00 	mov    0x4015(%rip),%rax        # 405500 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 fa 06 00 00       	callq  401bf0 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 17 1b 00 00       	callq  403030 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <main>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 30          	sub    $0x30,%rsp
  401558:	e8 53 06 00 00       	callq  401bb0 <__main>
  40155d:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401564:	00 
  401565:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401569:	ba 06 00 00 00       	mov    $0x6,%edx
  40156e:	48 89 c1             	mov    %rax,%rcx
  401571:	e8 4e 03 00 00       	callq  4018c4 <append>
  401576:	48 8d 0d 83 3a 00 00 	lea    0x3a83(%rip),%rcx        # 405000 <.rdata>
  40157d:	e8 66 1a 00 00       	callq  402fe8 <printf>
  401582:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401586:	48 89 c1             	mov    %rax,%rcx
  401589:	e8 b5 01 00 00       	callq  401743 <printList>
  40158e:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401592:	ba 07 00 00 00       	mov    $0x7,%edx
  401597:	48 89 c1             	mov    %rax,%rcx
  40159a:	e8 31 02 00 00       	callq  4017d0 <push>
  40159f:	48 8d 0d 6b 3a 00 00 	lea    0x3a6b(%rip),%rcx        # 405011 <.rdata+0x11>
  4015a6:	e8 3d 1a 00 00       	callq  402fe8 <printf>
  4015ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015af:	48 89 c1             	mov    %rax,%rcx
  4015b2:	e8 8c 01 00 00       	callq  401743 <printList>
  4015b7:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4015bb:	ba 01 00 00 00       	mov    $0x1,%edx
  4015c0:	48 89 c1             	mov    %rax,%rcx
  4015c3:	e8 08 02 00 00       	callq  4017d0 <push>
  4015c8:	48 8d 0d 42 3a 00 00 	lea    0x3a42(%rip),%rcx        # 405011 <.rdata+0x11>
  4015cf:	e8 14 1a 00 00       	callq  402fe8 <printf>
  4015d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015d8:	48 89 c1             	mov    %rax,%rcx
  4015db:	e8 63 01 00 00       	callq  401743 <printList>
  4015e0:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4015e4:	ba 04 00 00 00       	mov    $0x4,%edx
  4015e9:	48 89 c1             	mov    %rax,%rcx
  4015ec:	e8 d3 02 00 00       	callq  4018c4 <append>
  4015f1:	48 8d 0d 19 3a 00 00 	lea    0x3a19(%rip),%rcx        # 405011 <.rdata+0x11>
  4015f8:	e8 eb 19 00 00       	callq  402fe8 <printf>
  4015fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401601:	48 89 c1             	mov    %rax,%rcx
  401604:	e8 3a 01 00 00       	callq  401743 <printList>
  401609:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40160d:	48 8b 40 08          	mov    0x8(%rax),%rax
  401611:	ba 08 00 00 00       	mov    $0x8,%edx
  401616:	48 89 c1             	mov    %rax,%rcx
  401619:	e8 20 02 00 00       	callq  40183e <insertAfter>
  40161e:	48 8d 0d ec 39 00 00 	lea    0x39ec(%rip),%rcx        # 405011 <.rdata+0x11>
  401625:	e8 be 19 00 00       	callq  402fe8 <printf>
  40162a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40162e:	48 89 c1             	mov    %rax,%rcx
  401631:	e8 0d 01 00 00       	callq  401743 <printList>
  401636:	48 8d 0d e6 39 00 00 	lea    0x39e6(%rip),%rcx        # 405023 <.rdata+0x23>
  40163d:	e8 9e 19 00 00       	callq  402fe0 <puts>
  401642:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401646:	ba 08 00 00 00       	mov    $0x8,%edx
  40164b:	48 89 c1             	mov    %rax,%rcx
  40164e:	e8 a3 03 00 00       	callq  4019f6 <deleteNode>
  401653:	48 8d 0d b7 39 00 00 	lea    0x39b7(%rip),%rcx        # 405011 <.rdata+0x11>
  40165a:	e8 89 19 00 00       	callq  402fe8 <printf>
  40165f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401663:	48 89 c1             	mov    %rax,%rcx
  401666:	e8 d8 00 00 00       	callq  401743 <printList>
  40166b:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  40166f:	ba 01 00 00 00       	mov    $0x1,%edx
  401674:	48 89 c1             	mov    %rax,%rcx
  401677:	e8 7a 03 00 00       	callq  4019f6 <deleteNode>
  40167c:	48 8d 0d 8e 39 00 00 	lea    0x398e(%rip),%rcx        # 405011 <.rdata+0x11>
  401683:	e8 60 19 00 00       	callq  402fe8 <printf>
  401688:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40168c:	48 89 c1             	mov    %rax,%rcx
  40168f:	e8 af 00 00 00       	callq  401743 <printList>
  401694:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401698:	ba 07 00 00 00       	mov    $0x7,%edx
  40169d:	48 89 c1             	mov    %rax,%rcx
  4016a0:	e8 51 03 00 00       	callq  4019f6 <deleteNode>
  4016a5:	48 8d 0d 65 39 00 00 	lea    0x3965(%rip),%rcx        # 405011 <.rdata+0x11>
  4016ac:	e8 37 19 00 00       	callq  402fe8 <printf>
  4016b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b5:	48 89 c1             	mov    %rax,%rcx
  4016b8:	e8 86 00 00 00       	callq  401743 <printList>
  4016bd:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4016c1:	ba 04 00 00 00       	mov    $0x4,%edx
  4016c6:	48 89 c1             	mov    %rax,%rcx
  4016c9:	e8 28 03 00 00       	callq  4019f6 <deleteNode>
  4016ce:	48 8d 0d 3c 39 00 00 	lea    0x393c(%rip),%rcx        # 405011 <.rdata+0x11>
  4016d5:	e8 0e 19 00 00       	callq  402fe8 <printf>
  4016da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016de:	48 89 c1             	mov    %rax,%rcx
  4016e1:	e8 5d 00 00 00       	callq  401743 <printList>
  4016e6:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4016ea:	ba 06 00 00 00       	mov    $0x6,%edx
  4016ef:	48 89 c1             	mov    %rax,%rcx
  4016f2:	e8 ff 02 00 00       	callq  4019f6 <deleteNode>
  4016f7:	48 8d 0d 13 39 00 00 	lea    0x3913(%rip),%rcx        # 405011 <.rdata+0x11>
  4016fe:	e8 e5 18 00 00       	callq  402fe8 <printf>
  401703:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401707:	48 89 c1             	mov    %rax,%rcx
  40170a:	e8 34 00 00 00       	callq  401743 <printList>
  40170f:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401713:	ba 01 00 00 00       	mov    $0x1,%edx
  401718:	48 89 c1             	mov    %rax,%rcx
  40171b:	e8 a4 01 00 00       	callq  4018c4 <append>
  401720:	48 8d 0d ea 38 00 00 	lea    0x38ea(%rip),%rcx        # 405011 <.rdata+0x11>
  401727:	e8 bc 18 00 00       	callq  402fe8 <printf>
  40172c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401730:	48 89 c1             	mov    %rax,%rcx
  401733:	e8 0b 00 00 00       	callq  401743 <printList>
  401738:	b8 00 00 00 00       	mov    $0x0,%eax
  40173d:	48 83 c4 30          	add    $0x30,%rsp
  401741:	5d                   	pop    %rbp
  401742:	c3                   	retq   

0000000000401743 <printList>:
  401743:	55                   	push   %rbp
  401744:	48 89 e5             	mov    %rsp,%rbp
  401747:	48 83 ec 30          	sub    $0x30,%rsp
  40174b:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40174f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401756:	00 
  401757:	48 8d 0d d2 38 00 00 	lea    0x38d2(%rip),%rcx        # 405030 <.rdata+0x30>
  40175e:	e8 7d 18 00 00       	callq  402fe0 <puts>
  401763:	eb 28                	jmp    40178d <printList+0x4a>
  401765:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401769:	8b 00                	mov    (%rax),%eax
  40176b:	89 c2                	mov    %eax,%edx
  40176d:	48 8d 0d dd 38 00 00 	lea    0x38dd(%rip),%rcx        # 405051 <.rdata+0x51>
  401774:	e8 6f 18 00 00       	callq  402fe8 <printf>
  401779:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40177d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401781:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401785:	48 8b 40 08          	mov    0x8(%rax),%rax
  401789:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40178d:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
  401792:	75 d1                	jne    401765 <printList+0x22>
  401794:	48 8d 0d bd 38 00 00 	lea    0x38bd(%rip),%rcx        # 405058 <.rdata+0x58>
  40179b:	e8 40 18 00 00       	callq  402fe0 <puts>
  4017a0:	eb 20                	jmp    4017c2 <printList+0x7f>
  4017a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017a6:	8b 00                	mov    (%rax),%eax
  4017a8:	89 c2                	mov    %eax,%edx
  4017aa:	48 8d 0d a0 38 00 00 	lea    0x38a0(%rip),%rcx        # 405051 <.rdata+0x51>
  4017b1:	e8 32 18 00 00       	callq  402fe8 <printf>
  4017b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017ba:	48 8b 40 10          	mov    0x10(%rax),%rax
  4017be:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017c2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4017c7:	75 d9                	jne    4017a2 <printList+0x5f>
  4017c9:	90                   	nop
  4017ca:	48 83 c4 30          	add    $0x30,%rsp
  4017ce:	5d                   	pop    %rbp
  4017cf:	c3                   	retq   

00000000004017d0 <push>:
  4017d0:	55                   	push   %rbp
  4017d1:	48 89 e5             	mov    %rsp,%rbp
  4017d4:	48 83 ec 30          	sub    $0x30,%rsp
  4017d8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4017dc:	89 55 18             	mov    %edx,0x18(%rbp)
  4017df:	b9 18 00 00 00       	mov    $0x18,%ecx
  4017e4:	e8 0f 18 00 00       	callq  402ff8 <malloc>
  4017e9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017f1:	8b 55 18             	mov    0x18(%rbp),%edx
  4017f4:	89 10                	mov    %edx,(%rax)
  4017f6:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4017fa:	48 8b 10             	mov    (%rax),%rdx
  4017fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401801:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401805:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401809:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  401810:	00 
  401811:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401815:	48 8b 00             	mov    (%rax),%rax
  401818:	48 85 c0             	test   %rax,%rax
  40181b:	74 0f                	je     40182c <push+0x5c>
  40181d:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401821:	48 8b 00             	mov    (%rax),%rax
  401824:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401828:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40182c:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401830:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401834:	48 89 10             	mov    %rdx,(%rax)
  401837:	90                   	nop
  401838:	48 83 c4 30          	add    $0x30,%rsp
  40183c:	5d                   	pop    %rbp
  40183d:	c3                   	retq   

000000000040183e <insertAfter>:
  40183e:	55                   	push   %rbp
  40183f:	48 89 e5             	mov    %rsp,%rbp
  401842:	48 83 ec 30          	sub    $0x30,%rsp
  401846:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40184a:	89 55 18             	mov    %edx,0x18(%rbp)
  40184d:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
  401852:	75 0e                	jne    401862 <insertAfter+0x24>
  401854:	48 8d 0d 25 38 00 00 	lea    0x3825(%rip),%rcx        # 405080 <.rdata+0x80>
  40185b:	e8 88 17 00 00       	callq  402fe8 <printf>
  401860:	eb 5c                	jmp    4018be <insertAfter+0x80>
  401862:	b9 18 00 00 00       	mov    $0x18,%ecx
  401867:	e8 8c 17 00 00       	callq  402ff8 <malloc>
  40186c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401870:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401874:	8b 55 18             	mov    0x18(%rbp),%edx
  401877:	89 10                	mov    %edx,(%rax)
  401879:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40187d:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401881:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401885:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401889:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40188d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401891:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401895:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401899:	48 8b 55 10          	mov    0x10(%rbp),%rdx
  40189d:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4018a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018a5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4018a9:	48 85 c0             	test   %rax,%rax
  4018ac:	74 10                	je     4018be <insertAfter+0x80>
  4018ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018b2:	48 8b 40 08          	mov    0x8(%rax),%rax
  4018b6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4018ba:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4018be:	48 83 c4 30          	add    $0x30,%rsp
  4018c2:	5d                   	pop    %rbp
  4018c3:	c3                   	retq   

00000000004018c4 <append>:
  4018c4:	55                   	push   %rbp
  4018c5:	48 89 e5             	mov    %rsp,%rbp
  4018c8:	48 83 ec 30          	sub    $0x30,%rsp
  4018cc:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4018d0:	89 55 18             	mov    %edx,0x18(%rbp)
  4018d3:	b9 18 00 00 00       	mov    $0x18,%ecx
  4018d8:	e8 1b 17 00 00       	callq  402ff8 <malloc>
  4018dd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4018e1:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4018e5:	48 8b 00             	mov    (%rax),%rax
  4018e8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4018ec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4018f0:	8b 55 18             	mov    0x18(%rbp),%edx
  4018f3:	89 10                	mov    %edx,(%rax)
  4018f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4018f9:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401900:	00 
  401901:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401905:	48 8b 00             	mov    (%rax),%rax
  401908:	48 85 c0             	test   %rax,%rax
  40190b:	75 25                	jne    401932 <append+0x6e>
  40190d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401911:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  401918:	00 
  401919:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40191d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401921:	48 89 10             	mov    %rdx,(%rax)
  401924:	eb 32                	jmp    401958 <append+0x94>
  401926:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40192a:	48 8b 40 08          	mov    0x8(%rax),%rax
  40192e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401932:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401936:	48 8b 40 08          	mov    0x8(%rax),%rax
  40193a:	48 85 c0             	test   %rax,%rax
  40193d:	75 e7                	jne    401926 <append+0x62>
  40193f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401943:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401947:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40194b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40194f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401953:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401957:	90                   	nop
  401958:	48 83 c4 30          	add    $0x30,%rsp
  40195c:	5d                   	pop    %rbp
  40195d:	c3                   	retq   

000000000040195e <insertBefore>:
  40195e:	55                   	push   %rbp
  40195f:	48 89 e5             	mov    %rsp,%rbp
  401962:	48 83 ec 30          	sub    $0x30,%rsp
  401966:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40196a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40196e:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  401972:	48 83 7d 18 00       	cmpq   $0x0,0x18(%rbp)
  401977:	75 0e                	jne    401987 <insertBefore+0x29>
  401979:	48 8d 0d 28 37 00 00 	lea    0x3728(%rip),%rcx        # 4050a8 <.rdata+0xa8>
  401980:	e8 63 16 00 00       	callq  402fe8 <printf>
  401985:	eb 69                	jmp    4019f0 <insertBefore+0x92>
  401987:	b9 18 00 00 00       	mov    $0x18,%ecx
  40198c:	e8 67 16 00 00       	callq  402ff8 <malloc>
  401991:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401995:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401999:	8b 55 20             	mov    0x20(%rbp),%edx
  40199c:	89 10                	mov    %edx,(%rax)
  40199e:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4019a2:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4019a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019aa:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4019ae:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4019b2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4019b6:	48 89 50 10          	mov    %rdx,0x10(%rax)
  4019ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019be:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  4019c2:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4019c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019ca:	48 8b 40 10          	mov    0x10(%rax),%rax
  4019ce:	48 85 c0             	test   %rax,%rax
  4019d1:	74 12                	je     4019e5 <insertBefore+0x87>
  4019d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019d7:	48 8b 40 10          	mov    0x10(%rax),%rax
  4019db:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4019df:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4019e3:	eb 0b                	jmp    4019f0 <insertBefore+0x92>
  4019e5:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4019e9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4019ed:	48 89 10             	mov    %rdx,(%rax)
  4019f0:	48 83 c4 30          	add    $0x30,%rsp
  4019f4:	5d                   	pop    %rbp
  4019f5:	c3                   	retq   

00000000004019f6 <deleteNode>:
  4019f6:	55                   	push   %rbp
  4019f7:	48 89 e5             	mov    %rsp,%rbp
  4019fa:	48 83 ec 30          	sub    $0x30,%rsp
  4019fe:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  401a02:	89 55 18             	mov    %edx,0x18(%rbp)
  401a05:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401a09:	48 8b 00             	mov    (%rax),%rax
  401a0c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401a10:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401a15:	74 64                	je     401a7b <deleteNode+0x85>
  401a17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a1b:	8b 00                	mov    (%rax),%eax
  401a1d:	39 45 18             	cmp    %eax,0x18(%rbp)
  401a20:	75 59                	jne    401a7b <deleteNode+0x85>
  401a22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a26:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a2a:	48 85 c0             	test   %rax,%rax
  401a2d:	74 30                	je     401a5f <deleteNode+0x69>
  401a2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a33:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401a37:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401a3b:	48 89 10             	mov    %rdx,(%rax)
  401a3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a42:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a46:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  401a4d:	00 
  401a4e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a52:	48 89 c1             	mov    %rax,%rcx
  401a55:	e8 ae 15 00 00       	callq  403008 <free>
  401a5a:	e9 97 00 00 00       	jmpq   401af6 <deleteNode+0x100>
  401a5f:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401a63:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401a6a:	e9 87 00 00 00       	jmpq   401af6 <deleteNode+0x100>
  401a6f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a73:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a77:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401a7b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401a80:	74 0b                	je     401a8d <deleteNode+0x97>
  401a82:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a86:	8b 00                	mov    (%rax),%eax
  401a88:	39 45 18             	cmp    %eax,0x18(%rbp)
  401a8b:	75 e2                	jne    401a6f <deleteNode+0x79>
  401a8d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401a92:	74 61                	je     401af5 <deleteNode+0xff>
  401a94:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a98:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a9c:	48 85 c0             	test   %rax,%rax
  401a9f:	75 1e                	jne    401abf <deleteNode+0xc9>
  401aa1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aa5:	48 8b 40 10          	mov    0x10(%rax),%rax
  401aa9:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401ab0:	00 
  401ab1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ab5:	48 89 c1             	mov    %rax,%rcx
  401ab8:	e8 4b 15 00 00       	callq  403008 <free>
  401abd:	eb 37                	jmp    401af6 <deleteNode+0x100>
  401abf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ac3:	48 8b 40 10          	mov    0x10(%rax),%rax
  401ac7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401acb:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401acf:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401ad3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ad7:	48 8b 40 08          	mov    0x8(%rax),%rax
  401adb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401adf:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  401ae3:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401ae7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aeb:	48 89 c1             	mov    %rax,%rcx
  401aee:	e8 15 15 00 00       	callq  403008 <free>
  401af3:	eb 01                	jmp    401af6 <deleteNode+0x100>
  401af5:	90                   	nop
  401af6:	48 83 c4 30          	add    $0x30,%rsp
  401afa:	5d                   	pop    %rbp
  401afb:	c3                   	retq   
  401afc:	90                   	nop
  401afd:	90                   	nop
  401afe:	90                   	nop
  401aff:	90                   	nop

0000000000401b00 <__do_global_dtors>:
  401b00:	48 83 ec 28          	sub    $0x28,%rsp
  401b04:	48 8b 05 05 25 00 00 	mov    0x2505(%rip),%rax        # 404010 <p.93846>
  401b0b:	48 8b 00             	mov    (%rax),%rax
  401b0e:	48 85 c0             	test   %rax,%rax
  401b11:	74 1d                	je     401b30 <__do_global_dtors+0x30>
  401b13:	ff d0                	callq  *%rax
  401b15:	48 8b 05 f4 24 00 00 	mov    0x24f4(%rip),%rax        # 404010 <p.93846>
  401b1c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401b20:	48 8b 40 08          	mov    0x8(%rax),%rax
  401b24:	48 89 15 e5 24 00 00 	mov    %rdx,0x24e5(%rip)        # 404010 <p.93846>
  401b2b:	48 85 c0             	test   %rax,%rax
  401b2e:	75 e3                	jne    401b13 <__do_global_dtors+0x13>
  401b30:	48 83 c4 28          	add    $0x28,%rsp
  401b34:	c3                   	retq   
  401b35:	90                   	nop
  401b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b3d:	00 00 00 

0000000000401b40 <__do_global_ctors>:
  401b40:	56                   	push   %rsi
  401b41:	53                   	push   %rbx
  401b42:	48 83 ec 28          	sub    $0x28,%rsp
  401b46:	48 8b 0d 73 38 00 00 	mov    0x3873(%rip),%rcx        # 4053c0 <.refptr.__CTOR_LIST__>
  401b4d:	48 8b 11             	mov    (%rcx),%rdx
  401b50:	83 fa ff             	cmp    $0xffffffff,%edx
  401b53:	89 d0                	mov    %edx,%eax
  401b55:	74 39                	je     401b90 <__do_global_ctors+0x50>
  401b57:	85 c0                	test   %eax,%eax
  401b59:	74 20                	je     401b7b <__do_global_ctors+0x3b>
  401b5b:	89 c2                	mov    %eax,%edx
  401b5d:	83 e8 01             	sub    $0x1,%eax
  401b60:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  401b64:	48 29 c2             	sub    %rax,%rdx
  401b67:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  401b6c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b70:	ff 13                	callq  *(%rbx)
  401b72:	48 83 eb 08          	sub    $0x8,%rbx
  401b76:	48 39 f3             	cmp    %rsi,%rbx
  401b79:	75 f5                	jne    401b70 <__do_global_ctors+0x30>
  401b7b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401b00 <__do_global_dtors>
  401b82:	48 83 c4 28          	add    $0x28,%rsp
  401b86:	5b                   	pop    %rbx
  401b87:	5e                   	pop    %rsi
  401b88:	e9 83 f9 ff ff       	jmpq   401510 <atexit>
  401b8d:	0f 1f 00             	nopl   (%rax)
  401b90:	31 c0                	xor    %eax,%eax
  401b92:	eb 02                	jmp    401b96 <__do_global_ctors+0x56>
  401b94:	89 d0                	mov    %edx,%eax
  401b96:	44 8d 40 01          	lea    0x1(%rax),%r8d
  401b9a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  401b9f:	4c 89 c2             	mov    %r8,%rdx
  401ba2:	75 f0                	jne    401b94 <__do_global_ctors+0x54>
  401ba4:	eb b1                	jmp    401b57 <__do_global_ctors+0x17>
  401ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bad:	00 00 00 

0000000000401bb0 <__main>:
  401bb0:	8b 05 7a 64 00 00    	mov    0x647a(%rip),%eax        # 408030 <initialized>
  401bb6:	85 c0                	test   %eax,%eax
  401bb8:	74 06                	je     401bc0 <__main+0x10>
  401bba:	c3                   	retq   
  401bbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401bc0:	c7 05 66 64 00 00 01 	movl   $0x1,0x6466(%rip)        # 408030 <initialized>
  401bc7:	00 00 00 
  401bca:	e9 71 ff ff ff       	jmpq   401b40 <__do_global_ctors>
  401bcf:	90                   	nop

0000000000401bd0 <my_lconv_init>:
  401bd0:	48 ff 25 e5 76 00 00 	rex.W jmpq *0x76e5(%rip)        # 4092bc <__imp___lconv_init>
  401bd7:	90                   	nop
  401bd8:	90                   	nop
  401bd9:	90                   	nop
  401bda:	90                   	nop
  401bdb:	90                   	nop
  401bdc:	90                   	nop
  401bdd:	90                   	nop
  401bde:	90                   	nop
  401bdf:	90                   	nop

0000000000401be0 <_setargv>:
  401be0:	31 c0                	xor    %eax,%eax
  401be2:	c3                   	retq   
  401be3:	90                   	nop
  401be4:	90                   	nop
  401be5:	90                   	nop
  401be6:	90                   	nop
  401be7:	90                   	nop
  401be8:	90                   	nop
  401be9:	90                   	nop
  401bea:	90                   	nop
  401beb:	90                   	nop
  401bec:	90                   	nop
  401bed:	90                   	nop
  401bee:	90                   	nop
  401bef:	90                   	nop

0000000000401bf0 <__security_init_cookie>:
  401bf0:	41 54                	push   %r12
  401bf2:	55                   	push   %rbp
  401bf3:	57                   	push   %rdi
  401bf4:	56                   	push   %rsi
  401bf5:	53                   	push   %rbx
  401bf6:	48 83 ec 30          	sub    $0x30,%rsp
  401bfa:	48 8b 1d af 24 00 00 	mov    0x24af(%rip),%rbx        # 4040b0 <__security_cookie>
  401c01:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401c08:	2b 00 00 
  401c0b:	48 39 c3             	cmp    %rax,%rbx
  401c0e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401c15:	00 00 
  401c17:	74 17                	je     401c30 <__security_init_cookie+0x40>
  401c19:	48 f7 d3             	not    %rbx
  401c1c:	48 89 1d 9d 24 00 00 	mov    %rbx,0x249d(%rip)        # 4040c0 <__security_cookie_complement>
  401c23:	48 83 c4 30          	add    $0x30,%rsp
  401c27:	5b                   	pop    %rbx
  401c28:	5e                   	pop    %rsi
  401c29:	5f                   	pop    %rdi
  401c2a:	5d                   	pop    %rbp
  401c2b:	41 5c                	pop    %r12
  401c2d:	c3                   	retq   
  401c2e:	66 90                	xchg   %ax,%ax
  401c30:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401c35:	ff 15 d9 75 00 00    	callq  *0x75d9(%rip)        # 409214 <__imp_GetSystemTimeAsFileTime>
  401c3b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401c40:	ff 15 ae 75 00 00    	callq  *0x75ae(%rip)        # 4091f4 <__imp_GetCurrentProcessId>
  401c46:	41 89 c4             	mov    %eax,%r12d
  401c49:	ff 15 ad 75 00 00    	callq  *0x75ad(%rip)        # 4091fc <__imp_GetCurrentThreadId>
  401c4f:	89 c5                	mov    %eax,%ebp
  401c51:	ff 15 c5 75 00 00    	callq  *0x75c5(%rip)        # 40921c <__imp_GetTickCount>
  401c57:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  401c5c:	89 c7                	mov    %eax,%edi
  401c5e:	ff 15 d0 75 00 00    	callq  *0x75d0(%rip)        # 409234 <__imp_QueryPerformanceCounter>
  401c64:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  401c69:	44 89 e0             	mov    %r12d,%eax
  401c6c:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401c73:	ff 00 00 
  401c76:	48 31 f0             	xor    %rsi,%rax
  401c79:	89 ee                	mov    %ebp,%esi
  401c7b:	48 31 c6             	xor    %rax,%rsi
  401c7e:	89 f8                	mov    %edi,%eax
  401c80:	48 31 f0             	xor    %rsi,%rax
  401c83:	48 21 d0             	and    %rdx,%rax
  401c86:	48 39 d8             	cmp    %rbx,%rax
  401c89:	74 25                	je     401cb0 <__security_init_cookie+0xc0>
  401c8b:	48 89 c2             	mov    %rax,%rdx
  401c8e:	48 f7 d2             	not    %rdx
  401c91:	48 89 05 18 24 00 00 	mov    %rax,0x2418(%rip)        # 4040b0 <__security_cookie>
  401c98:	48 89 15 21 24 00 00 	mov    %rdx,0x2421(%rip)        # 4040c0 <__security_cookie_complement>
  401c9f:	48 83 c4 30          	add    $0x30,%rsp
  401ca3:	5b                   	pop    %rbx
  401ca4:	5e                   	pop    %rsi
  401ca5:	5f                   	pop    %rdi
  401ca6:	5d                   	pop    %rbp
  401ca7:	41 5c                	pop    %r12
  401ca9:	c3                   	retq   
  401caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401cb0:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401cb7:	d4 ff ff 
  401cba:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401cc1:	2b 00 00 
  401cc4:	eb cb                	jmp    401c91 <__security_init_cookie+0xa1>
  401cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ccd:	00 00 00 

0000000000401cd0 <__report_gsfailure>:
  401cd0:	55                   	push   %rbp
  401cd1:	56                   	push   %rsi
  401cd2:	53                   	push   %rbx
  401cd3:	48 89 e5             	mov    %rsp,%rbp
  401cd6:	48 83 ec 70          	sub    $0x70,%rsp
  401cda:	48 89 ce             	mov    %rcx,%rsi
  401cdd:	48 8d 0d 7c 63 00 00 	lea    0x637c(%rip),%rcx        # 408060 <GS_ContextRecord>
  401ce4:	ff 15 5a 75 00 00    	callq  *0x755a(%rip)        # 409244 <__imp_RtlCaptureContext>
  401cea:	48 8b 1d 67 64 00 00 	mov    0x6467(%rip),%rbx        # 408158 <GS_ContextRecord+0xf8>
  401cf1:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401cf5:	45 31 c0             	xor    %r8d,%r8d
  401cf8:	48 89 d9             	mov    %rbx,%rcx
  401cfb:	ff 15 4b 75 00 00    	callq  *0x754b(%rip)        # 40924c <__imp_RtlLookupFunctionEntry>
  401d01:	48 85 c0             	test   %rax,%rax
  401d04:	0f 84 a3 00 00 00    	je     401dad <__report_gsfailure+0xdd>
  401d0a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  401d0e:	49 89 c1             	mov    %rax,%r9
  401d11:	49 89 d8             	mov    %rbx,%r8
  401d14:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401d1b:	00 00 
  401d1d:	48 8d 0d 3c 63 00 00 	lea    0x633c(%rip),%rcx        # 408060 <GS_ContextRecord>
  401d24:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  401d29:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  401d2d:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  401d32:	31 c9                	xor    %ecx,%ecx
  401d34:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401d39:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401d3d:	ff 15 11 75 00 00    	callq  *0x7511(%rip)        # 409254 <__imp_RtlVirtualUnwind>
  401d43:	48 8b 05 0e 64 00 00 	mov    0x640e(%rip),%rax        # 408158 <GS_ContextRecord+0xf8>
  401d4a:	31 c9                	xor    %ecx,%ecx
  401d4c:	48 89 35 8d 63 00 00 	mov    %rsi,0x638d(%rip)        # 4080e0 <GS_ContextRecord+0x80>
  401d53:	48 89 05 f6 67 00 00 	mov    %rax,0x67f6(%rip)        # 408550 <GS_ExceptionRecord+0x10>
  401d5a:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  401d61:	00 00 00 
  401d64:	48 89 05 d5 67 00 00 	mov    %rax,0x67d5(%rip)        # 408540 <GS_ExceptionRecord>
  401d6b:	48 8b 05 3e 23 00 00 	mov    0x233e(%rip),%rax        # 4040b0 <__security_cookie>
  401d72:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401d76:	48 8b 05 43 23 00 00 	mov    0x2343(%rip),%rax        # 4040c0 <__security_cookie_complement>
  401d7d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401d81:	ff 15 d5 74 00 00    	callq  *0x74d5(%rip)        # 40925c <__imp_SetUnhandledExceptionFilter>
  401d87:	48 8d 0d 42 33 00 00 	lea    0x3342(%rip),%rcx        # 4050d0 <GS_ExceptionPointers>
  401d8e:	ff 15 e8 74 00 00    	callq  *0x74e8(%rip)        # 40927c <__imp_UnhandledExceptionFilter>
  401d94:	ff 15 52 74 00 00    	callq  *0x7452(%rip)        # 4091ec <__imp_GetCurrentProcess>
  401d9a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  401d9f:	48 89 c1             	mov    %rax,%rcx
  401da2:	ff 15 c4 74 00 00    	callq  *0x74c4(%rip)        # 40926c <__imp_TerminateProcess>
  401da8:	e8 7b 12 00 00       	callq  403028 <abort>
  401dad:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401db1:	48 89 05 a0 63 00 00 	mov    %rax,0x63a0(%rip)        # 408158 <GS_ContextRecord+0xf8>
  401db8:	48 8d 45 08          	lea    0x8(%rbp),%rax
  401dbc:	48 89 05 35 63 00 00 	mov    %rax,0x6335(%rip)        # 4080f8 <GS_ContextRecord+0x98>
  401dc3:	e9 7b ff ff ff       	jmpq   401d43 <__report_gsfailure+0x73>
  401dc8:	90                   	nop
  401dc9:	90                   	nop
  401dca:	90                   	nop
  401dcb:	90                   	nop
  401dcc:	90                   	nop
  401dcd:	90                   	nop
  401dce:	90                   	nop
  401dcf:	90                   	nop

0000000000401dd0 <__dyn_tls_dtor>:
  401dd0:	48 83 ec 28          	sub    $0x28,%rsp
  401dd4:	83 fa 03             	cmp    $0x3,%edx
  401dd7:	74 17                	je     401df0 <__dyn_tls_dtor+0x20>
  401dd9:	85 d2                	test   %edx,%edx
  401ddb:	74 13                	je     401df0 <__dyn_tls_dtor+0x20>
  401ddd:	b8 01 00 00 00       	mov    $0x1,%eax
  401de2:	48 83 c4 28          	add    $0x28,%rsp
  401de6:	c3                   	retq   
  401de7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401dee:	00 00 
  401df0:	e8 cb 0c 00 00       	callq  402ac0 <__mingw_TLScallback>
  401df5:	b8 01 00 00 00       	mov    $0x1,%eax
  401dfa:	48 83 c4 28          	add    $0x28,%rsp
  401dfe:	c3                   	retq   
  401dff:	90                   	nop

0000000000401e00 <__dyn_tls_init>:
  401e00:	56                   	push   %rsi
  401e01:	53                   	push   %rbx
  401e02:	48 83 ec 28          	sub    $0x28,%rsp
  401e06:	48 8b 05 93 35 00 00 	mov    0x3593(%rip),%rax        # 4053a0 <.refptr._CRT_MT>
  401e0d:	83 38 02             	cmpl   $0x2,(%rax)
  401e10:	74 06                	je     401e18 <__dyn_tls_init+0x18>
  401e12:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401e18:	83 fa 02             	cmp    $0x2,%edx
  401e1b:	74 13                	je     401e30 <__dyn_tls_init+0x30>
  401e1d:	83 fa 01             	cmp    $0x1,%edx
  401e20:	74 40                	je     401e62 <__dyn_tls_init+0x62>
  401e22:	b8 01 00 00 00       	mov    $0x1,%eax
  401e27:	48 83 c4 28          	add    $0x28,%rsp
  401e2b:	5b                   	pop    %rbx
  401e2c:	5e                   	pop    %rsi
  401e2d:	c3                   	retq   
  401e2e:	66 90                	xchg   %ax,%ax
  401e30:	48 8d 1d 29 82 00 00 	lea    0x8229(%rip),%rbx        # 40a060 <__xd_z>
  401e37:	48 8d 35 22 82 00 00 	lea    0x8222(%rip),%rsi        # 40a060 <__xd_z>
  401e3e:	48 39 de             	cmp    %rbx,%rsi
  401e41:	74 df                	je     401e22 <__dyn_tls_init+0x22>
  401e43:	48 8b 03             	mov    (%rbx),%rax
  401e46:	48 85 c0             	test   %rax,%rax
  401e49:	74 02                	je     401e4d <__dyn_tls_init+0x4d>
  401e4b:	ff d0                	callq  *%rax
  401e4d:	48 83 c3 08          	add    $0x8,%rbx
  401e51:	48 39 de             	cmp    %rbx,%rsi
  401e54:	75 ed                	jne    401e43 <__dyn_tls_init+0x43>
  401e56:	b8 01 00 00 00       	mov    $0x1,%eax
  401e5b:	48 83 c4 28          	add    $0x28,%rsp
  401e5f:	5b                   	pop    %rbx
  401e60:	5e                   	pop    %rsi
  401e61:	c3                   	retq   
  401e62:	e8 59 0c 00 00       	callq  402ac0 <__mingw_TLScallback>
  401e67:	b8 01 00 00 00       	mov    $0x1,%eax
  401e6c:	48 83 c4 28          	add    $0x28,%rsp
  401e70:	5b                   	pop    %rbx
  401e71:	5e                   	pop    %rsi
  401e72:	c3                   	retq   
  401e73:	0f 1f 00             	nopl   (%rax)
  401e76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e7d:	00 00 00 

0000000000401e80 <__tlregdtor>:
  401e80:	31 c0                	xor    %eax,%eax
  401e82:	c3                   	retq   
  401e83:	90                   	nop
  401e84:	90                   	nop
  401e85:	90                   	nop
  401e86:	90                   	nop
  401e87:	90                   	nop
  401e88:	90                   	nop
  401e89:	90                   	nop
  401e8a:	90                   	nop
  401e8b:	90                   	nop
  401e8c:	90                   	nop
  401e8d:	90                   	nop
  401e8e:	90                   	nop
  401e8f:	90                   	nop

0000000000401e90 <__mingw_raise_matherr>:
  401e90:	48 83 ec 58          	sub    $0x58,%rsp
  401e94:	48 8b 05 65 67 00 00 	mov    0x6765(%rip),%rax        # 408600 <stUserMathErr>
  401e9b:	48 85 c0             	test   %rax,%rax
  401e9e:	74 2c                	je     401ecc <__mingw_raise_matherr+0x3c>
  401ea0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401ea7:	00 00 
  401ea9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401ead:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401eb2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401eb7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401ebd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401ec3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401ec9:	ff d0                	callq  *%rax
  401ecb:	90                   	nop
  401ecc:	48 83 c4 58          	add    $0x58,%rsp
  401ed0:	c3                   	retq   
  401ed1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ed6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401edd:	00 00 00 

0000000000401ee0 <__mingw_setusermatherr>:
  401ee0:	48 89 0d 19 67 00 00 	mov    %rcx,0x6719(%rip)        # 408600 <stUserMathErr>
  401ee7:	e9 64 11 00 00       	jmpq   403050 <__setusermatherr>
  401eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401ef0 <_matherr>:
  401ef0:	56                   	push   %rsi
  401ef1:	53                   	push   %rbx
  401ef2:	48 83 ec 78          	sub    $0x78,%rsp
  401ef6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401efb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401f00:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401f06:	83 39 06             	cmpl   $0x6,(%rcx)
  401f09:	0f 87 d1 00 00 00    	ja     401fe0 <_matherr+0xf0>
  401f0f:	8b 01                	mov    (%rcx),%eax
  401f11:	48 8d 15 4c 33 00 00 	lea    0x334c(%rip),%rdx        # 405264 <.rdata+0x124>
  401f18:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401f1c:	48 01 d0             	add    %rdx,%rax
  401f1f:	ff e0                	jmpq   *%rax
  401f21:	48 8d 1d 18 32 00 00 	lea    0x3218(%rip),%rbx        # 405140 <.rdata>
  401f28:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401f2c:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401f32:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401f37:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401f3c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401f41:	e8 3a 11 00 00       	callq  403080 <__acrt_iob_func>
  401f46:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401f4d:	49 89 f1             	mov    %rsi,%r9
  401f50:	49 89 d8             	mov    %rbx,%r8
  401f53:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401f59:	48 8d 15 d8 32 00 00 	lea    0x32d8(%rip),%rdx        # 405238 <.rdata+0xf8>
  401f60:	48 89 c1             	mov    %rax,%rcx
  401f63:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401f69:	e8 a2 10 00 00       	callq  403010 <fprintf>
  401f6e:	90                   	nop
  401f6f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401f74:	31 c0                	xor    %eax,%eax
  401f76:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401f7b:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401f81:	48 83 c4 78          	add    $0x78,%rsp
  401f85:	5b                   	pop    %rbx
  401f86:	5e                   	pop    %rsi
  401f87:	c3                   	retq   
  401f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f8f:	00 
  401f90:	48 8d 1d c8 31 00 00 	lea    0x31c8(%rip),%rbx        # 40515f <.rdata+0x1f>
  401f97:	eb 8f                	jmp    401f28 <_matherr+0x38>
  401f99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401fa0:	48 8d 1d d9 31 00 00 	lea    0x31d9(%rip),%rbx        # 405180 <.rdata+0x40>
  401fa7:	e9 7c ff ff ff       	jmpq   401f28 <_matherr+0x38>
  401fac:	0f 1f 40 00          	nopl   0x0(%rax)
  401fb0:	48 8d 1d 39 32 00 00 	lea    0x3239(%rip),%rbx        # 4051f0 <.rdata+0xb0>
  401fb7:	e9 6c ff ff ff       	jmpq   401f28 <_matherr+0x38>
  401fbc:	0f 1f 40 00          	nopl   0x0(%rax)
  401fc0:	48 8d 1d 01 32 00 00 	lea    0x3201(%rip),%rbx        # 4051c8 <.rdata+0x88>
  401fc7:	e9 5c ff ff ff       	jmpq   401f28 <_matherr+0x38>
  401fcc:	0f 1f 40 00          	nopl   0x0(%rax)
  401fd0:	48 8d 1d c9 31 00 00 	lea    0x31c9(%rip),%rbx        # 4051a0 <.rdata+0x60>
  401fd7:	e9 4c ff ff ff       	jmpq   401f28 <_matherr+0x38>
  401fdc:	0f 1f 40 00          	nopl   0x0(%rax)
  401fe0:	48 8d 1d 3f 32 00 00 	lea    0x323f(%rip),%rbx        # 405226 <.rdata+0xe6>
  401fe7:	e9 3c ff ff ff       	jmpq   401f28 <_matherr+0x38>
  401fec:	90                   	nop
  401fed:	90                   	nop
  401fee:	90                   	nop
  401fef:	90                   	nop

0000000000401ff0 <_fpreset>:
  401ff0:	db e3                	fninit 
  401ff2:	c3                   	retq   
  401ff3:	90                   	nop
  401ff4:	90                   	nop
  401ff5:	90                   	nop
  401ff6:	90                   	nop
  401ff7:	90                   	nop
  401ff8:	90                   	nop
  401ff9:	90                   	nop
  401ffa:	90                   	nop
  401ffb:	90                   	nop
  401ffc:	90                   	nop
  401ffd:	90                   	nop
  401ffe:	90                   	nop
  401fff:	90                   	nop

0000000000402000 <_decode_pointer>:
  402000:	48 89 c8             	mov    %rcx,%rax
  402003:	c3                   	retq   
  402004:	66 90                	xchg   %ax,%ax
  402006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40200d:	00 00 00 

0000000000402010 <_encode_pointer>:
  402010:	48 89 c8             	mov    %rcx,%rax
  402013:	c3                   	retq   
  402014:	90                   	nop
  402015:	90                   	nop
  402016:	90                   	nop
  402017:	90                   	nop
  402018:	90                   	nop
  402019:	90                   	nop
  40201a:	90                   	nop
  40201b:	90                   	nop
  40201c:	90                   	nop
  40201d:	90                   	nop
  40201e:	90                   	nop
  40201f:	90                   	nop

0000000000402020 <__write_memory.part.0>:
  402020:	41 54                	push   %r12
  402022:	55                   	push   %rbp
  402023:	57                   	push   %rdi
  402024:	56                   	push   %rsi
  402025:	53                   	push   %rbx
  402026:	48 83 ec 50          	sub    $0x50,%rsp
  40202a:	48 63 35 f3 65 00 00 	movslq 0x65f3(%rip),%rsi        # 408624 <maxSections>
  402031:	85 f6                	test   %esi,%esi
  402033:	48 89 cb             	mov    %rcx,%rbx
  402036:	48 89 d5             	mov    %rdx,%rbp
  402039:	4c 89 c7             	mov    %r8,%rdi
  40203c:	0f 8e 66 01 00 00    	jle    4021a8 <__write_memory.part.0+0x188>
  402042:	48 8b 05 df 65 00 00 	mov    0x65df(%rip),%rax        # 408628 <the_secs>
  402049:	31 c9                	xor    %ecx,%ecx
  40204b:	48 83 c0 18          	add    $0x18,%rax
  40204f:	90                   	nop
  402050:	48 8b 10             	mov    (%rax),%rdx
  402053:	48 39 d3             	cmp    %rdx,%rbx
  402056:	72 14                	jb     40206c <__write_memory.part.0+0x4c>
  402058:	4c 8b 40 08          	mov    0x8(%rax),%r8
  40205c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  402060:	4c 01 c2             	add    %r8,%rdx
  402063:	48 39 d3             	cmp    %rdx,%rbx
  402066:	0f 82 89 00 00 00    	jb     4020f5 <__write_memory.part.0+0xd5>
  40206c:	83 c1 01             	add    $0x1,%ecx
  40206f:	48 83 c0 28          	add    $0x28,%rax
  402073:	39 f1                	cmp    %esi,%ecx
  402075:	75 d9                	jne    402050 <__write_memory.part.0+0x30>
  402077:	48 89 d9             	mov    %rbx,%rcx
  40207a:	e8 41 0c 00 00       	callq  402cc0 <__mingw_GetSectionForAddress>
  40207f:	48 85 c0             	test   %rax,%rax
  402082:	49 89 c4             	mov    %rax,%r12
  402085:	0f 84 52 01 00 00    	je     4021dd <__write_memory.part.0+0x1bd>
  40208b:	48 8b 05 96 65 00 00 	mov    0x6596(%rip),%rax        # 408628 <the_secs>
  402092:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  402096:	48 c1 e6 03          	shl    $0x3,%rsi
  40209a:	48 01 f0             	add    %rsi,%rax
  40209d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  4020a1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4020a7:	e8 44 0d 00 00       	callq  402df0 <_GetPEImageBase>
  4020ac:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  4020b1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4020b6:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  4020bc:	48 01 c1             	add    %rax,%rcx
  4020bf:	48 8b 05 62 65 00 00 	mov    0x6562(%rip),%rax        # 408628 <the_secs>
  4020c6:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  4020cb:	ff 15 bb 71 00 00    	callq  *0x71bb(%rip)        # 40928c <__imp_VirtualQuery>
  4020d1:	48 85 c0             	test   %rax,%rax
  4020d4:	0f 84 e6 00 00 00    	je     4021c0 <__write_memory.part.0+0x1a0>
  4020da:	8b 44 24 44          	mov    0x44(%rsp),%eax
  4020de:	8d 50 fc             	lea    -0x4(%rax),%edx
  4020e1:	83 e2 fb             	and    $0xfffffffb,%edx
  4020e4:	74 08                	je     4020ee <__write_memory.part.0+0xce>
  4020e6:	83 e8 40             	sub    $0x40,%eax
  4020e9:	83 e0 bf             	and    $0xffffffbf,%eax
  4020ec:	75 62                	jne    402150 <__write_memory.part.0+0x130>
  4020ee:	83 05 2f 65 00 00 01 	addl   $0x1,0x652f(%rip)        # 408624 <maxSections>
  4020f5:	83 ff 08             	cmp    $0x8,%edi
  4020f8:	73 29                	jae    402123 <__write_memory.part.0+0x103>
  4020fa:	40 f6 c7 04          	test   $0x4,%dil
  4020fe:	0f 85 90 00 00 00    	jne    402194 <__write_memory.part.0+0x174>
  402104:	85 ff                	test   %edi,%edi
  402106:	74 10                	je     402118 <__write_memory.part.0+0xf8>
  402108:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  40210c:	40 f6 c7 02          	test   $0x2,%dil
  402110:	88 03                	mov    %al,(%rbx)
  402112:	0f 85 97 00 00 00    	jne    4021af <__write_memory.part.0+0x18f>
  402118:	48 83 c4 50          	add    $0x50,%rsp
  40211c:	5b                   	pop    %rbx
  40211d:	5e                   	pop    %rsi
  40211e:	5f                   	pop    %rdi
  40211f:	5d                   	pop    %rbp
  402120:	41 5c                	pop    %r12
  402122:	c3                   	retq   
  402123:	89 f8                	mov    %edi,%eax
  402125:	83 ef 01             	sub    $0x1,%edi
  402128:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  40212d:	83 ff 08             	cmp    $0x8,%edi
  402130:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  402135:	72 e1                	jb     402118 <__write_memory.part.0+0xf8>
  402137:	83 e7 f8             	and    $0xfffffff8,%edi
  40213a:	31 c0                	xor    %eax,%eax
  40213c:	89 c2                	mov    %eax,%edx
  40213e:	83 c0 08             	add    $0x8,%eax
  402141:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  402146:	39 f8                	cmp    %edi,%eax
  402148:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  40214c:	72 ee                	jb     40213c <__write_memory.part.0+0x11c>
  40214e:	eb c8                	jmp    402118 <__write_memory.part.0+0xf8>
  402150:	48 03 35 d1 64 00 00 	add    0x64d1(%rip),%rsi        # 408628 <the_secs>
  402157:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  40215d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402162:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402167:	49 89 f1             	mov    %rsi,%r9
  40216a:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  40216e:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  402172:	ff 15 0c 71 00 00    	callq  *0x710c(%rip)        # 409284 <__imp_VirtualProtect>
  402178:	85 c0                	test   %eax,%eax
  40217a:	0f 85 6e ff ff ff    	jne    4020ee <__write_memory.part.0+0xce>
  402180:	ff 15 7e 70 00 00    	callq  *0x707e(%rip)        # 409204 <__imp_GetLastError>
  402186:	48 8d 0d 6b 31 00 00 	lea    0x316b(%rip),%rcx        # 4052f8 <.rdata+0x78>
  40218d:	89 c2                	mov    %eax,%edx
  40218f:	e8 1c 10 00 00       	callq  4031b0 <__report_error>
  402194:	8b 45 00             	mov    0x0(%rbp),%eax
  402197:	89 ff                	mov    %edi,%edi
  402199:	89 03                	mov    %eax,(%rbx)
  40219b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  40219f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  4021a3:	e9 70 ff ff ff       	jmpq   402118 <__write_memory.part.0+0xf8>
  4021a8:	31 f6                	xor    %esi,%esi
  4021aa:	e9 c8 fe ff ff       	jmpq   402077 <__write_memory.part.0+0x57>
  4021af:	89 ff                	mov    %edi,%edi
  4021b1:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  4021b6:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  4021bb:	e9 58 ff ff ff       	jmpq   402118 <__write_memory.part.0+0xf8>
  4021c0:	48 8b 05 61 64 00 00 	mov    0x6461(%rip),%rax        # 408628 <the_secs>
  4021c7:	48 8d 0d f2 30 00 00 	lea    0x30f2(%rip),%rcx        # 4052c0 <.rdata+0x40>
  4021ce:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  4021d3:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  4021d8:	e8 d3 0f 00 00       	callq  4031b0 <__report_error>
  4021dd:	48 8d 0d bc 30 00 00 	lea    0x30bc(%rip),%rcx        # 4052a0 <.rdata+0x20>
  4021e4:	48 89 da             	mov    %rbx,%rdx
  4021e7:	e8 c4 0f 00 00       	callq  4031b0 <__report_error>
  4021ec:	90                   	nop
  4021ed:	0f 1f 00             	nopl   (%rax)

00000000004021f0 <_pei386_runtime_relocator>:
  4021f0:	55                   	push   %rbp
  4021f1:	41 57                	push   %r15
  4021f3:	41 56                	push   %r14
  4021f5:	41 55                	push   %r13
  4021f7:	41 54                	push   %r12
  4021f9:	57                   	push   %rdi
  4021fa:	56                   	push   %rsi
  4021fb:	53                   	push   %rbx
  4021fc:	48 83 ec 38          	sub    $0x38,%rsp
  402200:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  402207:	00 
  402208:	8b 1d 12 64 00 00    	mov    0x6412(%rip),%ebx        # 408620 <was_init.95174>
  40220e:	85 db                	test   %ebx,%ebx
  402210:	74 11                	je     402223 <_pei386_runtime_relocator+0x33>
  402212:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  402216:	5b                   	pop    %rbx
  402217:	5e                   	pop    %rsi
  402218:	5f                   	pop    %rdi
  402219:	41 5c                	pop    %r12
  40221b:	41 5d                	pop    %r13
  40221d:	41 5e                	pop    %r14
  40221f:	41 5f                	pop    %r15
  402221:	5d                   	pop    %rbp
  402222:	c3                   	retq   
  402223:	c7 05 f3 63 00 00 01 	movl   $0x1,0x63f3(%rip)        # 408620 <was_init.95174>
  40222a:	00 00 00 
  40222d:	e8 0e 0b 00 00       	callq  402d40 <__mingw_GetSectionCount>
  402232:	48 98                	cltq   
  402234:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402238:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  40223f:	00 
  402240:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402244:	e8 37 0d 00 00       	callq  402f80 <___chkstk_ms>
  402249:	4c 8b 25 80 31 00 00 	mov    0x3180(%rip),%r12        # 4053d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  402250:	c7 05 ca 63 00 00 00 	movl   $0x0,0x63ca(%rip)        # 408624 <maxSections>
  402257:	00 00 00 
  40225a:	48 8b 35 7f 31 00 00 	mov    0x317f(%rip),%rsi        # 4053e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  402261:	48 29 c4             	sub    %rax,%rsp
  402264:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402269:	48 89 05 b8 63 00 00 	mov    %rax,0x63b8(%rip)        # 408628 <the_secs>
  402270:	4c 89 e0             	mov    %r12,%rax
  402273:	48 29 f0             	sub    %rsi,%rax
  402276:	48 83 f8 07          	cmp    $0x7,%rax
  40227a:	7e 96                	jle    402212 <_pei386_runtime_relocator+0x22>
  40227c:	48 83 f8 0b          	cmp    $0xb,%rax
  402280:	8b 16                	mov    (%rsi),%edx
  402282:	0f 8e c8 00 00 00    	jle    402350 <_pei386_runtime_relocator+0x160>
  402288:	85 d2                	test   %edx,%edx
  40228a:	0f 84 a4 00 00 00    	je     402334 <_pei386_runtime_relocator+0x144>
  402290:	4c 39 e6             	cmp    %r12,%rsi
  402293:	0f 83 79 ff ff ff    	jae    402212 <_pei386_runtime_relocator+0x22>
  402299:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  40229d:	49 83 c4 07          	add    $0x7,%r12
  4022a1:	4c 8b 2d 58 31 00 00 	mov    0x3158(%rip),%r13        # 405400 <.refptr.__image_base__>
  4022a8:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  4022ac:	4d 29 f4             	sub    %r14,%r12
  4022af:	49 c1 ec 03          	shr    $0x3,%r12
  4022b3:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  4022b8:	eb 0a                	jmp    4022c4 <_pei386_runtime_relocator+0xd4>
  4022ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4022c0:	49 83 c6 08          	add    $0x8,%r14
  4022c4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4022c7:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4022cd:	48 89 fa             	mov    %rdi,%rdx
  4022d0:	8b 06                	mov    (%rsi),%eax
  4022d2:	4c 89 f6             	mov    %r14,%rsi
  4022d5:	4c 01 e9             	add    %r13,%rcx
  4022d8:	03 01                	add    (%rcx),%eax
  4022da:	89 45 a8             	mov    %eax,-0x58(%rbp)
  4022dd:	e8 3e fd ff ff       	callq  402020 <__write_memory.part.0>
  4022e2:	4d 39 e6             	cmp    %r12,%r14
  4022e5:	75 d9                	jne    4022c0 <_pei386_runtime_relocator+0xd0>
  4022e7:	8b 05 37 63 00 00    	mov    0x6337(%rip),%eax        # 408624 <maxSections>
  4022ed:	31 f6                	xor    %esi,%esi
  4022ef:	4c 8b 25 8e 6f 00 00 	mov    0x6f8e(%rip),%r12        # 409284 <__imp_VirtualProtect>
  4022f6:	85 c0                	test   %eax,%eax
  4022f8:	0f 8e 14 ff ff ff    	jle    402212 <_pei386_runtime_relocator+0x22>
  4022fe:	66 90                	xchg   %ax,%ax
  402300:	48 8b 05 21 63 00 00 	mov    0x6321(%rip),%rax        # 408628 <the_secs>
  402307:	48 01 f0             	add    %rsi,%rax
  40230a:	44 8b 00             	mov    (%rax),%r8d
  40230d:	45 85 c0             	test   %r8d,%r8d
  402310:	74 0e                	je     402320 <_pei386_runtime_relocator+0x130>
  402312:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402316:	49 89 f9             	mov    %rdi,%r9
  402319:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40231d:	41 ff d4             	callq  *%r12
  402320:	83 c3 01             	add    $0x1,%ebx
  402323:	48 83 c6 28          	add    $0x28,%rsi
  402327:	3b 1d f7 62 00 00    	cmp    0x62f7(%rip),%ebx        # 408624 <maxSections>
  40232d:	7c d1                	jl     402300 <_pei386_runtime_relocator+0x110>
  40232f:	e9 de fe ff ff       	jmpq   402212 <_pei386_runtime_relocator+0x22>
  402334:	8b 4e 04             	mov    0x4(%rsi),%ecx
  402337:	85 c9                	test   %ecx,%ecx
  402339:	0f 85 51 ff ff ff    	jne    402290 <_pei386_runtime_relocator+0xa0>
  40233f:	8b 56 08             	mov    0x8(%rsi),%edx
  402342:	85 d2                	test   %edx,%edx
  402344:	75 1d                	jne    402363 <_pei386_runtime_relocator+0x173>
  402346:	8b 56 0c             	mov    0xc(%rsi),%edx
  402349:	48 83 c6 0c          	add    $0xc,%rsi
  40234d:	0f 1f 00             	nopl   (%rax)
  402350:	85 d2                	test   %edx,%edx
  402352:	0f 85 38 ff ff ff    	jne    402290 <_pei386_runtime_relocator+0xa0>
  402358:	8b 46 04             	mov    0x4(%rsi),%eax
  40235b:	85 c0                	test   %eax,%eax
  40235d:	0f 85 2d ff ff ff    	jne    402290 <_pei386_runtime_relocator+0xa0>
  402363:	8b 56 08             	mov    0x8(%rsi),%edx
  402366:	83 fa 01             	cmp    $0x1,%edx
  402369:	0f 85 2f 01 00 00    	jne    40249e <_pei386_runtime_relocator+0x2ae>
  40236f:	4c 8b 2d 8a 30 00 00 	mov    0x308a(%rip),%r13        # 405400 <.refptr.__image_base__>
  402376:	48 83 c6 0c          	add    $0xc,%rsi
  40237a:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  402381:	ff ff ff 
  402384:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  402388:	4c 39 e6             	cmp    %r12,%rsi
  40238b:	72 48                	jb     4023d5 <_pei386_runtime_relocator+0x1e5>
  40238d:	e9 80 fe ff ff       	jmpq   402212 <_pei386_runtime_relocator+0x22>
  402392:	0f 86 b8 00 00 00    	jbe    402450 <_pei386_runtime_relocator+0x260>
  402398:	83 fa 20             	cmp    $0x20,%edx
  40239b:	0f 84 7f 00 00 00    	je     402420 <_pei386_runtime_relocator+0x230>
  4023a1:	83 fa 40             	cmp    $0x40,%edx
  4023a4:	0f 85 e0 00 00 00    	jne    40248a <_pei386_runtime_relocator+0x29a>
  4023aa:	48 8b 11             	mov    (%rcx),%rdx
  4023ad:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4023b3:	4c 89 f7             	mov    %r14,%rdi
  4023b6:	48 29 c2             	sub    %rax,%rdx
  4023b9:	4c 01 ca             	add    %r9,%rdx
  4023bc:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  4023c0:	4c 89 f2             	mov    %r14,%rdx
  4023c3:	e8 58 fc ff ff       	callq  402020 <__write_memory.part.0>
  4023c8:	48 83 c6 0c          	add    $0xc,%rsi
  4023cc:	4c 39 e6             	cmp    %r12,%rsi
  4023cf:	0f 83 12 ff ff ff    	jae    4022e7 <_pei386_runtime_relocator+0xf7>
  4023d5:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4023d8:	8b 06                	mov    (%rsi),%eax
  4023da:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  4023de:	4c 01 e9             	add    %r13,%rcx
  4023e1:	4c 01 e8             	add    %r13,%rax
  4023e4:	83 fa 10             	cmp    $0x10,%edx
  4023e7:	4c 8b 08             	mov    (%rax),%r9
  4023ea:	75 a6                	jne    402392 <_pei386_runtime_relocator+0x1a2>
  4023ec:	44 0f b7 01          	movzwl (%rcx),%r8d
  4023f0:	4c 89 f2             	mov    %r14,%rdx
  4023f3:	4c 89 f7             	mov    %r14,%rdi
  4023f6:	4d 89 c2             	mov    %r8,%r10
  4023f9:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  402400:	66 45 85 c0          	test   %r8w,%r8w
  402404:	4d 0f 48 c2          	cmovs  %r10,%r8
  402408:	49 29 c0             	sub    %rax,%r8
  40240b:	4d 01 c8             	add    %r9,%r8
  40240e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  402412:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  402418:	e8 03 fc ff ff       	callq  402020 <__write_memory.part.0>
  40241d:	eb a9                	jmp    4023c8 <_pei386_runtime_relocator+0x1d8>
  40241f:	90                   	nop
  402420:	8b 11                	mov    (%rcx),%edx
  402422:	4c 89 f7             	mov    %r14,%rdi
  402425:	49 89 d0             	mov    %rdx,%r8
  402428:	4c 09 fa             	or     %r15,%rdx
  40242b:	45 85 c0             	test   %r8d,%r8d
  40242e:	49 0f 49 d0          	cmovns %r8,%rdx
  402432:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402438:	48 29 c2             	sub    %rax,%rdx
  40243b:	4c 01 ca             	add    %r9,%rdx
  40243e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  402442:	4c 89 f2             	mov    %r14,%rdx
  402445:	e8 d6 fb ff ff       	callq  402020 <__write_memory.part.0>
  40244a:	e9 79 ff ff ff       	jmpq   4023c8 <_pei386_runtime_relocator+0x1d8>
  40244f:	90                   	nop
  402450:	83 fa 08             	cmp    $0x8,%edx
  402453:	75 35                	jne    40248a <_pei386_runtime_relocator+0x29a>
  402455:	44 0f b6 01          	movzbl (%rcx),%r8d
  402459:	4c 89 f2             	mov    %r14,%rdx
  40245c:	4c 89 f7             	mov    %r14,%rdi
  40245f:	4d 89 c2             	mov    %r8,%r10
  402462:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  402469:	45 84 c0             	test   %r8b,%r8b
  40246c:	4d 0f 48 c2          	cmovs  %r10,%r8
  402470:	49 29 c0             	sub    %rax,%r8
  402473:	4d 01 c8             	add    %r9,%r8
  402476:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  40247a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402480:	e8 9b fb ff ff       	callq  402020 <__write_memory.part.0>
  402485:	e9 3e ff ff ff       	jmpq   4023c8 <_pei386_runtime_relocator+0x1d8>
  40248a:	48 8d 0d c7 2e 00 00 	lea    0x2ec7(%rip),%rcx        # 405358 <.rdata+0xd8>
  402491:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  402498:	00 
  402499:	e8 12 0d 00 00       	callq  4031b0 <__report_error>
  40249e:	48 8d 0d 7b 2e 00 00 	lea    0x2e7b(%rip),%rcx        # 405320 <.rdata+0xa0>
  4024a5:	e8 06 0d 00 00       	callq  4031b0 <__report_error>
  4024aa:	90                   	nop
  4024ab:	90                   	nop
  4024ac:	90                   	nop
  4024ad:	90                   	nop
  4024ae:	90                   	nop
  4024af:	90                   	nop

00000000004024b0 <__mingw_SEH_error_handler>:
  4024b0:	48 83 ec 28          	sub    $0x28,%rsp
  4024b4:	8b 01                	mov    (%rcx),%eax
  4024b6:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4024bb:	77 63                	ja     402520 <__mingw_SEH_error_handler+0x70>
  4024bd:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4024c2:	73 7b                	jae    40253f <__mingw_SEH_error_handler+0x8f>
  4024c4:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4024c9:	0f 84 05 01 00 00    	je     4025d4 <__mingw_SEH_error_handler+0x124>
  4024cf:	0f 87 cb 00 00 00    	ja     4025a0 <__mingw_SEH_error_handler+0xf0>
  4024d5:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4024da:	0f 84 f4 00 00 00    	je     4025d4 <__mingw_SEH_error_handler+0x124>
  4024e0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4024e5:	0f 85 c3 00 00 00    	jne    4025ae <__mingw_SEH_error_handler+0xfe>
  4024eb:	31 d2                	xor    %edx,%edx
  4024ed:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4024f2:	e8 e1 0a 00 00       	callq  402fd8 <signal>
  4024f7:	48 83 f8 01          	cmp    $0x1,%rax
  4024fb:	0f 84 2f 01 00 00    	je     402630 <__mingw_SEH_error_handler+0x180>
  402501:	48 85 c0             	test   %rax,%rax
  402504:	0f 84 3c 01 00 00    	je     402646 <__mingw_SEH_error_handler+0x196>
  40250a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40250f:	ff d0                	callq  *%rax
  402511:	31 c0                	xor    %eax,%eax
  402513:	48 83 c4 28          	add    $0x28,%rsp
  402517:	c3                   	retq   
  402518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40251f:	00 
  402520:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402525:	0f 84 b5 00 00 00    	je     4025e0 <__mingw_SEH_error_handler+0x130>
  40252b:	77 37                	ja     402564 <__mingw_SEH_error_handler+0xb4>
  40252d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402532:	0f 84 9c 00 00 00    	je     4025d4 <__mingw_SEH_error_handler+0x124>
  402538:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  40253d:	75 6f                	jne    4025ae <__mingw_SEH_error_handler+0xfe>
  40253f:	31 d2                	xor    %edx,%edx
  402541:	b9 08 00 00 00       	mov    $0x8,%ecx
  402546:	e8 8d 0a 00 00       	callq  402fd8 <signal>
  40254b:	48 83 f8 01          	cmp    $0x1,%rax
  40254f:	74 6f                	je     4025c0 <__mingw_SEH_error_handler+0x110>
  402551:	48 85 c0             	test   %rax,%rax
  402554:	74 58                	je     4025ae <__mingw_SEH_error_handler+0xfe>
  402556:	b9 08 00 00 00       	mov    $0x8,%ecx
  40255b:	ff d0                	callq  *%rax
  40255d:	31 c0                	xor    %eax,%eax
  40255f:	48 83 c4 28          	add    $0x28,%rsp
  402563:	c3                   	retq   
  402564:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402569:	74 69                	je     4025d4 <__mingw_SEH_error_handler+0x124>
  40256b:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402570:	75 3c                	jne    4025ae <__mingw_SEH_error_handler+0xfe>
  402572:	31 d2                	xor    %edx,%edx
  402574:	b9 04 00 00 00       	mov    $0x4,%ecx
  402579:	e8 5a 0a 00 00       	callq  402fd8 <signal>
  40257e:	48 83 f8 01          	cmp    $0x1,%rax
  402582:	0f 84 88 00 00 00    	je     402610 <__mingw_SEH_error_handler+0x160>
  402588:	48 85 c0             	test   %rax,%rax
  40258b:	0f 84 b5 00 00 00    	je     402646 <__mingw_SEH_error_handler+0x196>
  402591:	b9 04 00 00 00       	mov    $0x4,%ecx
  402596:	ff d0                	callq  *%rax
  402598:	31 c0                	xor    %eax,%eax
  40259a:	48 83 c4 28          	add    $0x28,%rsp
  40259e:	c3                   	retq   
  40259f:	90                   	nop
  4025a0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4025a5:	74 cb                	je     402572 <__mingw_SEH_error_handler+0xc2>
  4025a7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  4025ac:	74 26                	je     4025d4 <__mingw_SEH_error_handler+0x124>
  4025ae:	b8 01 00 00 00       	mov    $0x1,%eax
  4025b3:	48 83 c4 28          	add    $0x28,%rsp
  4025b7:	c3                   	retq   
  4025b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025bf:	00 
  4025c0:	ba 01 00 00 00       	mov    $0x1,%edx
  4025c5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4025ca:	e8 09 0a 00 00       	callq  402fd8 <signal>
  4025cf:	e8 1c fa ff ff       	callq  401ff0 <_fpreset>
  4025d4:	31 c0                	xor    %eax,%eax
  4025d6:	48 83 c4 28          	add    $0x28,%rsp
  4025da:	c3                   	retq   
  4025db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025e0:	31 d2                	xor    %edx,%edx
  4025e2:	b9 08 00 00 00       	mov    $0x8,%ecx
  4025e7:	e8 ec 09 00 00       	callq  402fd8 <signal>
  4025ec:	48 83 f8 01          	cmp    $0x1,%rax
  4025f0:	0f 85 5b ff ff ff    	jne    402551 <__mingw_SEH_error_handler+0xa1>
  4025f6:	ba 01 00 00 00       	mov    $0x1,%edx
  4025fb:	b9 08 00 00 00       	mov    $0x8,%ecx
  402600:	e8 d3 09 00 00       	callq  402fd8 <signal>
  402605:	31 c0                	xor    %eax,%eax
  402607:	e9 07 ff ff ff       	jmpq   402513 <__mingw_SEH_error_handler+0x63>
  40260c:	0f 1f 40 00          	nopl   0x0(%rax)
  402610:	ba 01 00 00 00       	mov    $0x1,%edx
  402615:	b9 04 00 00 00       	mov    $0x4,%ecx
  40261a:	e8 b9 09 00 00       	callq  402fd8 <signal>
  40261f:	31 c0                	xor    %eax,%eax
  402621:	e9 ed fe ff ff       	jmpq   402513 <__mingw_SEH_error_handler+0x63>
  402626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40262d:	00 00 00 
  402630:	ba 01 00 00 00       	mov    $0x1,%edx
  402635:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40263a:	e8 99 09 00 00       	callq  402fd8 <signal>
  40263f:	31 c0                	xor    %eax,%eax
  402641:	e9 cd fe ff ff       	jmpq   402513 <__mingw_SEH_error_handler+0x63>
  402646:	b8 04 00 00 00       	mov    $0x4,%eax
  40264b:	e9 c3 fe ff ff       	jmpq   402513 <__mingw_SEH_error_handler+0x63>

0000000000402650 <__mingw_init_ehandler>:
  402650:	41 54                	push   %r12
  402652:	55                   	push   %rbp
  402653:	57                   	push   %rdi
  402654:	56                   	push   %rsi
  402655:	53                   	push   %rbx
  402656:	48 83 ec 20          	sub    $0x20,%rsp
  40265a:	e8 91 07 00 00       	callq  402df0 <_GetPEImageBase>
  40265f:	48 89 c5             	mov    %rax,%rbp
  402662:	8b 05 e0 5f 00 00    	mov    0x5fe0(%rip),%eax        # 408648 <was_here.95013>
  402668:	85 c0                	test   %eax,%eax
  40266a:	75 25                	jne    402691 <__mingw_init_ehandler+0x41>
  40266c:	48 85 ed             	test   %rbp,%rbp
  40266f:	74 20                	je     402691 <__mingw_init_ehandler+0x41>
  402671:	48 8d 0d 18 2d 00 00 	lea    0x2d18(%rip),%rcx        # 405390 <.rdata>
  402678:	c7 05 c6 5f 00 00 01 	movl   $0x1,0x5fc6(%rip)        # 408648 <was_here.95013>
  40267f:	00 00 00 
  402682:	e8 a9 05 00 00       	callq  402c30 <_FindPESectionByName>
  402687:	48 85 c0             	test   %rax,%rax
  40268a:	74 14                	je     4026a0 <__mingw_init_ehandler+0x50>
  40268c:	b8 01 00 00 00       	mov    $0x1,%eax
  402691:	48 83 c4 20          	add    $0x20,%rsp
  402695:	5b                   	pop    %rbx
  402696:	5e                   	pop    %rsi
  402697:	5f                   	pop    %rdi
  402698:	5d                   	pop    %rbp
  402699:	41 5c                	pop    %r12
  40269b:	c3                   	retq   
  40269c:	0f 1f 40 00          	nopl   0x0(%rax)
  4026a0:	48 8d 1d b9 60 00 00 	lea    0x60b9(%rip),%rbx        # 408760 <emu_pdata>
  4026a7:	b9 30 00 00 00       	mov    $0x30,%ecx
  4026ac:	31 f6                	xor    %esi,%esi
  4026ae:	48 8d 15 ab 5f 00 00 	lea    0x5fab(%rip),%rdx        # 408660 <emu_xdata>
  4026b5:	48 89 df             	mov    %rbx,%rdi
  4026b8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026bb:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 4024b0 <__mingw_SEH_error_handler>
  4026c2:	b9 20 00 00 00       	mov    $0x20,%ecx
  4026c7:	48 89 d7             	mov    %rdx,%rdi
  4026ca:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026cd:	49 29 ec             	sub    %rbp,%r12
  4026d0:	48 89 d7             	mov    %rdx,%rdi
  4026d3:	eb 2e                	jmp    402703 <__mingw_init_ehandler+0xb3>
  4026d5:	c6 07 09             	movb   $0x9,(%rdi)
  4026d8:	48 83 c6 01          	add    $0x1,%rsi
  4026dc:	48 83 c3 0c          	add    $0xc,%rbx
  4026e0:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  4026e4:	8b 48 0c             	mov    0xc(%rax),%ecx
  4026e7:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  4026ea:	03 48 08             	add    0x8(%rax),%ecx
  4026ed:	48 89 f8             	mov    %rdi,%rax
  4026f0:	48 83 c7 08          	add    $0x8,%rdi
  4026f4:	48 29 e8             	sub    %rbp,%rax
  4026f7:	89 43 fc             	mov    %eax,-0x4(%rbx)
  4026fa:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  4026fd:	48 83 fe 20          	cmp    $0x20,%rsi
  402701:	74 32                	je     402735 <__mingw_init_ehandler+0xe5>
  402703:	48 89 f1             	mov    %rsi,%rcx
  402706:	e8 75 06 00 00       	callq  402d80 <_FindPESectionExec>
  40270b:	48 85 c0             	test   %rax,%rax
  40270e:	75 c5                	jne    4026d5 <__mingw_init_ehandler+0x85>
  402710:	48 85 f6             	test   %rsi,%rsi
  402713:	89 f2                	mov    %esi,%edx
  402715:	0f 84 71 ff ff ff    	je     40268c <__mingw_init_ehandler+0x3c>
  40271b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402720:	48 8d 0d 39 60 00 00 	lea    0x6039(%rip),%rcx        # 408760 <emu_pdata>
  402727:	49 89 e8             	mov    %rbp,%r8
  40272a:	ff 15 0c 6b 00 00    	callq  *0x6b0c(%rip)        # 40923c <__imp_RtlAddFunctionTable>
  402730:	e9 57 ff ff ff       	jmpq   40268c <__mingw_init_ehandler+0x3c>
  402735:	ba 20 00 00 00       	mov    $0x20,%edx
  40273a:	eb e4                	jmp    402720 <__mingw_init_ehandler+0xd0>
  40273c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402740 <_gnu_exception_handler>:
  402740:	53                   	push   %rbx
  402741:	48 83 ec 20          	sub    $0x20,%rsp
  402745:	48 8b 11             	mov    (%rcx),%rdx
  402748:	8b 02                	mov    (%rdx),%eax
  40274a:	48 89 cb             	mov    %rcx,%rbx
  40274d:	89 c1                	mov    %eax,%ecx
  40274f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402755:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40275b:	0f 84 bf 00 00 00    	je     402820 <_gnu_exception_handler+0xe0>
  402761:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  402766:	77 68                	ja     4027d0 <_gnu_exception_handler+0x90>
  402768:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  40276d:	73 7c                	jae    4027eb <_gnu_exception_handler+0xab>
  40276f:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402774:	0f 84 b0 00 00 00    	je     40282a <_gnu_exception_handler+0xea>
  40277a:	0f 87 f4 00 00 00    	ja     402874 <_gnu_exception_handler+0x134>
  402780:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402785:	0f 84 9f 00 00 00    	je     40282a <_gnu_exception_handler+0xea>
  40278b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402790:	75 1f                	jne    4027b1 <_gnu_exception_handler+0x71>
  402792:	31 d2                	xor    %edx,%edx
  402794:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402799:	e8 3a 08 00 00       	callq  402fd8 <signal>
  40279e:	48 83 f8 01          	cmp    $0x1,%rax
  4027a2:	0f 84 51 01 00 00    	je     4028f9 <_gnu_exception_handler+0x1b9>
  4027a8:	48 85 c0             	test   %rax,%rax
  4027ab:	0f 85 0f 01 00 00    	jne    4028c0 <_gnu_exception_handler+0x180>
  4027b1:	48 8b 05 88 5e 00 00 	mov    0x5e88(%rip),%rax        # 408640 <__mingw_oldexcpt_handler>
  4027b8:	48 85 c0             	test   %rax,%rax
  4027bb:	0f 84 10 01 00 00    	je     4028d1 <_gnu_exception_handler+0x191>
  4027c1:	48 89 d9             	mov    %rbx,%rcx
  4027c4:	48 83 c4 20          	add    $0x20,%rsp
  4027c8:	5b                   	pop    %rbx
  4027c9:	48 ff e0             	rex.W jmpq *%rax
  4027cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4027d0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  4027d5:	0f 84 b5 00 00 00    	je     402890 <_gnu_exception_handler+0x150>
  4027db:	77 58                	ja     402835 <_gnu_exception_handler+0xf5>
  4027dd:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4027e2:	74 46                	je     40282a <_gnu_exception_handler+0xea>
  4027e4:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4027e9:	75 c6                	jne    4027b1 <_gnu_exception_handler+0x71>
  4027eb:	31 d2                	xor    %edx,%edx
  4027ed:	b9 08 00 00 00       	mov    $0x8,%ecx
  4027f2:	e8 e1 07 00 00       	callq  402fd8 <signal>
  4027f7:	48 83 f8 01          	cmp    $0x1,%rax
  4027fb:	0f 84 df 00 00 00    	je     4028e0 <_gnu_exception_handler+0x1a0>
  402801:	48 85 c0             	test   %rax,%rax
  402804:	74 ab                	je     4027b1 <_gnu_exception_handler+0x71>
  402806:	b9 08 00 00 00       	mov    $0x8,%ecx
  40280b:	ff d0                	callq  *%rax
  40280d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402812:	48 83 c4 20          	add    $0x20,%rsp
  402816:	5b                   	pop    %rbx
  402817:	c3                   	retq   
  402818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40281f:	00 
  402820:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402824:	0f 85 37 ff ff ff    	jne    402761 <_gnu_exception_handler+0x21>
  40282a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40282f:	48 83 c4 20          	add    $0x20,%rsp
  402833:	5b                   	pop    %rbx
  402834:	c3                   	retq   
  402835:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  40283a:	74 ee                	je     40282a <_gnu_exception_handler+0xea>
  40283c:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402841:	0f 85 6a ff ff ff    	jne    4027b1 <_gnu_exception_handler+0x71>
  402847:	31 d2                	xor    %edx,%edx
  402849:	b9 04 00 00 00       	mov    $0x4,%ecx
  40284e:	e8 85 07 00 00       	callq  402fd8 <signal>
  402853:	48 83 f8 01          	cmp    $0x1,%rax
  402857:	0f 84 b3 00 00 00    	je     402910 <_gnu_exception_handler+0x1d0>
  40285d:	48 85 c0             	test   %rax,%rax
  402860:	0f 84 4b ff ff ff    	je     4027b1 <_gnu_exception_handler+0x71>
  402866:	b9 04 00 00 00       	mov    $0x4,%ecx
  40286b:	ff d0                	callq  *%rax
  40286d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402872:	eb 9e                	jmp    402812 <_gnu_exception_handler+0xd2>
  402874:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402879:	74 cc                	je     402847 <_gnu_exception_handler+0x107>
  40287b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402880:	0f 85 2b ff ff ff    	jne    4027b1 <_gnu_exception_handler+0x71>
  402886:	eb a2                	jmp    40282a <_gnu_exception_handler+0xea>
  402888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40288f:	00 
  402890:	31 d2                	xor    %edx,%edx
  402892:	b9 08 00 00 00       	mov    $0x8,%ecx
  402897:	e8 3c 07 00 00       	callq  402fd8 <signal>
  40289c:	48 83 f8 01          	cmp    $0x1,%rax
  4028a0:	0f 85 5b ff ff ff    	jne    402801 <_gnu_exception_handler+0xc1>
  4028a6:	ba 01 00 00 00       	mov    $0x1,%edx
  4028ab:	b9 08 00 00 00       	mov    $0x8,%ecx
  4028b0:	e8 23 07 00 00       	callq  402fd8 <signal>
  4028b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028ba:	e9 53 ff ff ff       	jmpq   402812 <_gnu_exception_handler+0xd2>
  4028bf:	90                   	nop
  4028c0:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4028c5:	ff d0                	callq  *%rax
  4028c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028cc:	e9 41 ff ff ff       	jmpq   402812 <_gnu_exception_handler+0xd2>
  4028d1:	31 c0                	xor    %eax,%eax
  4028d3:	e9 3a ff ff ff       	jmpq   402812 <_gnu_exception_handler+0xd2>
  4028d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4028df:	00 
  4028e0:	ba 01 00 00 00       	mov    $0x1,%edx
  4028e5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4028ea:	e8 e9 06 00 00       	callq  402fd8 <signal>
  4028ef:	e8 fc f6 ff ff       	callq  401ff0 <_fpreset>
  4028f4:	e9 31 ff ff ff       	jmpq   40282a <_gnu_exception_handler+0xea>
  4028f9:	ba 01 00 00 00       	mov    $0x1,%edx
  4028fe:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402903:	e8 d0 06 00 00       	callq  402fd8 <signal>
  402908:	83 c8 ff             	or     $0xffffffff,%eax
  40290b:	e9 02 ff ff ff       	jmpq   402812 <_gnu_exception_handler+0xd2>
  402910:	ba 01 00 00 00       	mov    $0x1,%edx
  402915:	b9 04 00 00 00       	mov    $0x4,%ecx
  40291a:	e8 b9 06 00 00       	callq  402fd8 <signal>
  40291f:	83 c8 ff             	or     $0xffffffff,%eax
  402922:	e9 eb fe ff ff       	jmpq   402812 <_gnu_exception_handler+0xd2>
  402927:	90                   	nop
  402928:	90                   	nop
  402929:	90                   	nop
  40292a:	90                   	nop
  40292b:	90                   	nop
  40292c:	90                   	nop
  40292d:	90                   	nop
  40292e:	90                   	nop
  40292f:	90                   	nop

0000000000402930 <__mingwthr_run_key_dtors.part.0>:
  402930:	55                   	push   %rbp
  402931:	57                   	push   %rdi
  402932:	56                   	push   %rsi
  402933:	53                   	push   %rbx
  402934:	48 83 ec 28          	sub    $0x28,%rsp
  402938:	48 8d 0d c1 5f 00 00 	lea    0x5fc1(%rip),%rcx        # 408900 <__mingwthr_cs>
  40293f:	ff 15 9f 68 00 00    	callq  *0x689f(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  402945:	48 8b 1d 94 5f 00 00 	mov    0x5f94(%rip),%rbx        # 4088e0 <key_dtor_list>
  40294c:	48 85 db             	test   %rbx,%rbx
  40294f:	74 33                	je     402984 <__mingwthr_run_key_dtors.part.0+0x54>
  402951:	48 8b 2d 1c 69 00 00 	mov    0x691c(%rip),%rbp        # 409274 <__imp_TlsGetValue>
  402958:	48 8b 3d a5 68 00 00 	mov    0x68a5(%rip),%rdi        # 409204 <__imp_GetLastError>
  40295f:	90                   	nop
  402960:	8b 0b                	mov    (%rbx),%ecx
  402962:	ff d5                	callq  *%rbp
  402964:	48 89 c6             	mov    %rax,%rsi
  402967:	ff d7                	callq  *%rdi
  402969:	85 c0                	test   %eax,%eax
  40296b:	75 0e                	jne    40297b <__mingwthr_run_key_dtors.part.0+0x4b>
  40296d:	48 85 f6             	test   %rsi,%rsi
  402970:	74 09                	je     40297b <__mingwthr_run_key_dtors.part.0+0x4b>
  402972:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402976:	48 89 f1             	mov    %rsi,%rcx
  402979:	ff d0                	callq  *%rax
  40297b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40297f:	48 85 db             	test   %rbx,%rbx
  402982:	75 dc                	jne    402960 <__mingwthr_run_key_dtors.part.0+0x30>
  402984:	48 8d 0d 75 5f 00 00 	lea    0x5f75(%rip),%rcx        # 408900 <__mingwthr_cs>
  40298b:	48 83 c4 28          	add    $0x28,%rsp
  40298f:	5b                   	pop    %rbx
  402990:	5e                   	pop    %rsi
  402991:	5f                   	pop    %rdi
  402992:	5d                   	pop    %rbp
  402993:	48 ff 25 92 68 00 00 	rex.W jmpq *0x6892(%rip)        # 40922c <__imp_LeaveCriticalSection>
  40299a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004029a0 <___w64_mingwthr_add_key_dtor>:
  4029a0:	55                   	push   %rbp
  4029a1:	57                   	push   %rdi
  4029a2:	56                   	push   %rsi
  4029a3:	53                   	push   %rbx
  4029a4:	48 83 ec 28          	sub    $0x28,%rsp
  4029a8:	8b 05 3a 5f 00 00    	mov    0x5f3a(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  4029ae:	31 f6                	xor    %esi,%esi
  4029b0:	85 c0                	test   %eax,%eax
  4029b2:	89 cd                	mov    %ecx,%ebp
  4029b4:	48 89 d7             	mov    %rdx,%rdi
  4029b7:	75 0b                	jne    4029c4 <___w64_mingwthr_add_key_dtor+0x24>
  4029b9:	89 f0                	mov    %esi,%eax
  4029bb:	48 83 c4 28          	add    $0x28,%rsp
  4029bf:	5b                   	pop    %rbx
  4029c0:	5e                   	pop    %rsi
  4029c1:	5f                   	pop    %rdi
  4029c2:	5d                   	pop    %rbp
  4029c3:	c3                   	retq   
  4029c4:	ba 18 00 00 00       	mov    $0x18,%edx
  4029c9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4029ce:	e8 4d 06 00 00       	callq  403020 <calloc>
  4029d3:	48 85 c0             	test   %rax,%rax
  4029d6:	48 89 c3             	mov    %rax,%rbx
  4029d9:	74 3d                	je     402a18 <___w64_mingwthr_add_key_dtor+0x78>
  4029db:	89 28                	mov    %ebp,(%rax)
  4029dd:	48 8d 0d 1c 5f 00 00 	lea    0x5f1c(%rip),%rcx        # 408900 <__mingwthr_cs>
  4029e4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4029e8:	ff 15 f6 67 00 00    	callq  *0x67f6(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  4029ee:	48 8b 05 eb 5e 00 00 	mov    0x5eeb(%rip),%rax        # 4088e0 <key_dtor_list>
  4029f5:	48 8d 0d 04 5f 00 00 	lea    0x5f04(%rip),%rcx        # 408900 <__mingwthr_cs>
  4029fc:	48 89 1d dd 5e 00 00 	mov    %rbx,0x5edd(%rip)        # 4088e0 <key_dtor_list>
  402a03:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a07:	ff 15 1f 68 00 00    	callq  *0x681f(%rip)        # 40922c <__imp_LeaveCriticalSection>
  402a0d:	89 f0                	mov    %esi,%eax
  402a0f:	48 83 c4 28          	add    $0x28,%rsp
  402a13:	5b                   	pop    %rbx
  402a14:	5e                   	pop    %rsi
  402a15:	5f                   	pop    %rdi
  402a16:	5d                   	pop    %rbp
  402a17:	c3                   	retq   
  402a18:	be ff ff ff ff       	mov    $0xffffffff,%esi
  402a1d:	eb 9a                	jmp    4029b9 <___w64_mingwthr_add_key_dtor+0x19>
  402a1f:	90                   	nop

0000000000402a20 <___w64_mingwthr_remove_key_dtor>:
  402a20:	53                   	push   %rbx
  402a21:	48 83 ec 20          	sub    $0x20,%rsp
  402a25:	8b 05 bd 5e 00 00    	mov    0x5ebd(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402a2b:	85 c0                	test   %eax,%eax
  402a2d:	89 cb                	mov    %ecx,%ebx
  402a2f:	75 0f                	jne    402a40 <___w64_mingwthr_remove_key_dtor+0x20>
  402a31:	31 c0                	xor    %eax,%eax
  402a33:	48 83 c4 20          	add    $0x20,%rsp
  402a37:	5b                   	pop    %rbx
  402a38:	c3                   	retq   
  402a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a40:	48 8d 0d b9 5e 00 00 	lea    0x5eb9(%rip),%rcx        # 408900 <__mingwthr_cs>
  402a47:	ff 15 97 67 00 00    	callq  *0x6797(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  402a4d:	48 8b 05 8c 5e 00 00 	mov    0x5e8c(%rip),%rax        # 4088e0 <key_dtor_list>
  402a54:	48 85 c0             	test   %rax,%rax
  402a57:	74 1a                	je     402a73 <___w64_mingwthr_remove_key_dtor+0x53>
  402a59:	8b 10                	mov    (%rax),%edx
  402a5b:	39 d3                	cmp    %edx,%ebx
  402a5d:	75 0b                	jne    402a6a <___w64_mingwthr_remove_key_dtor+0x4a>
  402a5f:	eb 4f                	jmp    402ab0 <___w64_mingwthr_remove_key_dtor+0x90>
  402a61:	8b 11                	mov    (%rcx),%edx
  402a63:	39 da                	cmp    %ebx,%edx
  402a65:	74 29                	je     402a90 <___w64_mingwthr_remove_key_dtor+0x70>
  402a67:	48 89 c8             	mov    %rcx,%rax
  402a6a:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402a6e:	48 85 c9             	test   %rcx,%rcx
  402a71:	75 ee                	jne    402a61 <___w64_mingwthr_remove_key_dtor+0x41>
  402a73:	48 8d 0d 86 5e 00 00 	lea    0x5e86(%rip),%rcx        # 408900 <__mingwthr_cs>
  402a7a:	ff 15 ac 67 00 00    	callq  *0x67ac(%rip)        # 40922c <__imp_LeaveCriticalSection>
  402a80:	31 c0                	xor    %eax,%eax
  402a82:	48 83 c4 20          	add    $0x20,%rsp
  402a86:	5b                   	pop    %rbx
  402a87:	c3                   	retq   
  402a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a8f:	00 
  402a90:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402a94:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402a98:	e8 6b 05 00 00       	callq  403008 <free>
  402a9d:	48 8d 0d 5c 5e 00 00 	lea    0x5e5c(%rip),%rcx        # 408900 <__mingwthr_cs>
  402aa4:	ff 15 82 67 00 00    	callq  *0x6782(%rip)        # 40922c <__imp_LeaveCriticalSection>
  402aaa:	eb d4                	jmp    402a80 <___w64_mingwthr_remove_key_dtor+0x60>
  402aac:	0f 1f 40 00          	nopl   0x0(%rax)
  402ab0:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402ab4:	48 89 c1             	mov    %rax,%rcx
  402ab7:	48 89 15 22 5e 00 00 	mov    %rdx,0x5e22(%rip)        # 4088e0 <key_dtor_list>
  402abe:	eb d8                	jmp    402a98 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402ac0 <__mingw_TLScallback>:
  402ac0:	53                   	push   %rbx
  402ac1:	48 83 ec 20          	sub    $0x20,%rsp
  402ac5:	83 fa 01             	cmp    $0x1,%edx
  402ac8:	0f 84 92 00 00 00    	je     402b60 <__mingw_TLScallback+0xa0>
  402ace:	72 30                	jb     402b00 <__mingw_TLScallback+0x40>
  402ad0:	83 fa 02             	cmp    $0x2,%edx
  402ad3:	74 1b                	je     402af0 <__mingw_TLScallback+0x30>
  402ad5:	83 fa 03             	cmp    $0x3,%edx
  402ad8:	75 1b                	jne    402af5 <__mingw_TLScallback+0x35>
  402ada:	8b 05 08 5e 00 00    	mov    0x5e08(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402ae0:	85 c0                	test   %eax,%eax
  402ae2:	74 11                	je     402af5 <__mingw_TLScallback+0x35>
  402ae4:	e8 47 fe ff ff       	callq  402930 <__mingwthr_run_key_dtors.part.0>
  402ae9:	eb 0a                	jmp    402af5 <__mingw_TLScallback+0x35>
  402aeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402af0:	e8 fb f4 ff ff       	callq  401ff0 <_fpreset>
  402af5:	b8 01 00 00 00       	mov    $0x1,%eax
  402afa:	48 83 c4 20          	add    $0x20,%rsp
  402afe:	5b                   	pop    %rbx
  402aff:	c3                   	retq   
  402b00:	8b 05 e2 5d 00 00    	mov    0x5de2(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402b06:	85 c0                	test   %eax,%eax
  402b08:	0f 85 82 00 00 00    	jne    402b90 <__mingw_TLScallback+0xd0>
  402b0e:	8b 05 d4 5d 00 00    	mov    0x5dd4(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402b14:	83 f8 01             	cmp    $0x1,%eax
  402b17:	75 dc                	jne    402af5 <__mingw_TLScallback+0x35>
  402b19:	48 8b 0d c0 5d 00 00 	mov    0x5dc0(%rip),%rcx        # 4088e0 <key_dtor_list>
  402b20:	48 85 c9             	test   %rcx,%rcx
  402b23:	74 11                	je     402b36 <__mingw_TLScallback+0x76>
  402b25:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  402b29:	e8 da 04 00 00       	callq  403008 <free>
  402b2e:	48 85 db             	test   %rbx,%rbx
  402b31:	48 89 d9             	mov    %rbx,%rcx
  402b34:	75 ef                	jne    402b25 <__mingw_TLScallback+0x65>
  402b36:	48 8d 0d c3 5d 00 00 	lea    0x5dc3(%rip),%rcx        # 408900 <__mingwthr_cs>
  402b3d:	48 c7 05 98 5d 00 00 	movq   $0x0,0x5d98(%rip)        # 4088e0 <key_dtor_list>
  402b44:	00 00 00 00 
  402b48:	c7 05 96 5d 00 00 00 	movl   $0x0,0x5d96(%rip)        # 4088e8 <__mingwthr_cs_init>
  402b4f:	00 00 00 
  402b52:	ff 15 84 66 00 00    	callq  *0x6684(%rip)        # 4091dc <__IAT_start__>
  402b58:	eb 9b                	jmp    402af5 <__mingw_TLScallback+0x35>
  402b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b60:	8b 05 82 5d 00 00    	mov    0x5d82(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402b66:	85 c0                	test   %eax,%eax
  402b68:	74 16                	je     402b80 <__mingw_TLScallback+0xc0>
  402b6a:	c7 05 74 5d 00 00 01 	movl   $0x1,0x5d74(%rip)        # 4088e8 <__mingwthr_cs_init>
  402b71:	00 00 00 
  402b74:	b8 01 00 00 00       	mov    $0x1,%eax
  402b79:	48 83 c4 20          	add    $0x20,%rsp
  402b7d:	5b                   	pop    %rbx
  402b7e:	c3                   	retq   
  402b7f:	90                   	nop
  402b80:	48 8d 0d 79 5d 00 00 	lea    0x5d79(%rip),%rcx        # 408900 <__mingwthr_cs>
  402b87:	ff 15 97 66 00 00    	callq  *0x6697(%rip)        # 409224 <__imp_InitializeCriticalSection>
  402b8d:	eb db                	jmp    402b6a <__mingw_TLScallback+0xaa>
  402b8f:	90                   	nop
  402b90:	e8 9b fd ff ff       	callq  402930 <__mingwthr_run_key_dtors.part.0>
  402b95:	e9 74 ff ff ff       	jmpq   402b0e <__mingw_TLScallback+0x4e>
  402b9a:	90                   	nop
  402b9b:	90                   	nop
  402b9c:	90                   	nop
  402b9d:	90                   	nop
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <_ValidateImageBase.part.0>:
  402ba0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402ba4:	48 01 c1             	add    %rax,%rcx
  402ba7:	31 c0                	xor    %eax,%eax
  402ba9:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  402baf:	74 01                	je     402bb2 <_ValidateImageBase.part.0+0x12>
  402bb1:	c3                   	retq   
  402bb2:	31 c0                	xor    %eax,%eax
  402bb4:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  402bba:	0f 94 c0             	sete   %al
  402bbd:	c3                   	retq   
  402bbe:	66 90                	xchg   %ax,%ax

0000000000402bc0 <_ValidateImageBase>:
  402bc0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402bc5:	74 09                	je     402bd0 <_ValidateImageBase+0x10>
  402bc7:	31 c0                	xor    %eax,%eax
  402bc9:	c3                   	retq   
  402bca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402bd0:	eb ce                	jmp    402ba0 <_ValidateImageBase.part.0>
  402bd2:	0f 1f 40 00          	nopl   0x0(%rax)
  402bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402bdd:	00 00 00 

0000000000402be0 <_FindPESection>:
  402be0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402be4:	48 01 c1             	add    %rax,%rcx
  402be7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402beb:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402bf0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402bf4:	85 c9                	test   %ecx,%ecx
  402bf6:	74 29                	je     402c21 <_FindPESection+0x41>
  402bf8:	83 e9 01             	sub    $0x1,%ecx
  402bfb:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402bff:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402c04:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402c08:	49 39 d0             	cmp    %rdx,%r8
  402c0b:	4c 89 c1             	mov    %r8,%rcx
  402c0e:	77 08                	ja     402c18 <_FindPESection+0x38>
  402c10:	03 48 08             	add    0x8(%rax),%ecx
  402c13:	48 39 d1             	cmp    %rdx,%rcx
  402c16:	77 0b                	ja     402c23 <_FindPESection+0x43>
  402c18:	48 83 c0 28          	add    $0x28,%rax
  402c1c:	4c 39 c8             	cmp    %r9,%rax
  402c1f:	75 e3                	jne    402c04 <_FindPESection+0x24>
  402c21:	31 c0                	xor    %eax,%eax
  402c23:	c3                   	retq   
  402c24:	66 90                	xchg   %ax,%ax
  402c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c2d:	00 00 00 

0000000000402c30 <_FindPESectionByName>:
  402c30:	57                   	push   %rdi
  402c31:	56                   	push   %rsi
  402c32:	53                   	push   %rbx
  402c33:	48 83 ec 20          	sub    $0x20,%rsp
  402c37:	48 89 ce             	mov    %rcx,%rsi
  402c3a:	e8 91 03 00 00       	callq  402fd0 <strlen>
  402c3f:	48 83 f8 08          	cmp    $0x8,%rax
  402c43:	77 6b                	ja     402cb0 <_FindPESectionByName+0x80>
  402c45:	48 8b 15 b4 27 00 00 	mov    0x27b4(%rip),%rdx        # 405400 <.refptr.__image_base__>
  402c4c:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402c51:	75 5d                	jne    402cb0 <_FindPESectionByName+0x80>
  402c53:	48 89 d1             	mov    %rdx,%rcx
  402c56:	e8 45 ff ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402c5b:	85 c0                	test   %eax,%eax
  402c5d:	74 51                	je     402cb0 <_FindPESectionByName+0x80>
  402c5f:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  402c63:	48 01 d1             	add    %rdx,%rcx
  402c66:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402c6a:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  402c6f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402c73:	85 c0                	test   %eax,%eax
  402c75:	74 39                	je     402cb0 <_FindPESectionByName+0x80>
  402c77:	83 e8 01             	sub    $0x1,%eax
  402c7a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402c7e:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402c83:	eb 09                	jmp    402c8e <_FindPESectionByName+0x5e>
  402c85:	48 83 c3 28          	add    $0x28,%rbx
  402c89:	48 39 fb             	cmp    %rdi,%rbx
  402c8c:	74 22                	je     402cb0 <_FindPESectionByName+0x80>
  402c8e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402c94:	48 89 f2             	mov    %rsi,%rdx
  402c97:	48 89 d9             	mov    %rbx,%rcx
  402c9a:	e8 29 03 00 00       	callq  402fc8 <strncmp>
  402c9f:	85 c0                	test   %eax,%eax
  402ca1:	75 e2                	jne    402c85 <_FindPESectionByName+0x55>
  402ca3:	48 89 d8             	mov    %rbx,%rax
  402ca6:	48 83 c4 20          	add    $0x20,%rsp
  402caa:	5b                   	pop    %rbx
  402cab:	5e                   	pop    %rsi
  402cac:	5f                   	pop    %rdi
  402cad:	c3                   	retq   
  402cae:	66 90                	xchg   %ax,%ax
  402cb0:	31 db                	xor    %ebx,%ebx
  402cb2:	48 89 d8             	mov    %rbx,%rax
  402cb5:	48 83 c4 20          	add    $0x20,%rsp
  402cb9:	5b                   	pop    %rbx
  402cba:	5e                   	pop    %rsi
  402cbb:	5f                   	pop    %rdi
  402cbc:	c3                   	retq   
  402cbd:	0f 1f 00             	nopl   (%rax)

0000000000402cc0 <__mingw_GetSectionForAddress>:
  402cc0:	48 83 ec 28          	sub    $0x28,%rsp
  402cc4:	4c 8b 05 35 27 00 00 	mov    0x2735(%rip),%r8        # 405400 <.refptr.__image_base__>
  402ccb:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402cd1:	48 89 ca             	mov    %rcx,%rdx
  402cd4:	75 57                	jne    402d2d <__mingw_GetSectionForAddress+0x6d>
  402cd6:	4c 89 c1             	mov    %r8,%rcx
  402cd9:	e8 c2 fe ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402cde:	85 c0                	test   %eax,%eax
  402ce0:	74 4b                	je     402d2d <__mingw_GetSectionForAddress+0x6d>
  402ce2:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402ce6:	48 89 d1             	mov    %rdx,%rcx
  402ce9:	4c 29 c1             	sub    %r8,%rcx
  402cec:	49 01 c0             	add    %rax,%r8
  402cef:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402cf4:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402cf9:	85 d2                	test   %edx,%edx
  402cfb:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402d00:	74 2b                	je     402d2d <__mingw_GetSectionForAddress+0x6d>
  402d02:	83 ea 01             	sub    $0x1,%edx
  402d05:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402d09:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402d0e:	66 90                	xchg   %ax,%ax
  402d10:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402d14:	4c 39 c1             	cmp    %r8,%rcx
  402d17:	4c 89 c2             	mov    %r8,%rdx
  402d1a:	72 08                	jb     402d24 <__mingw_GetSectionForAddress+0x64>
  402d1c:	03 50 08             	add    0x8(%rax),%edx
  402d1f:	48 39 d1             	cmp    %rdx,%rcx
  402d22:	72 0b                	jb     402d2f <__mingw_GetSectionForAddress+0x6f>
  402d24:	48 83 c0 28          	add    $0x28,%rax
  402d28:	4c 39 c8             	cmp    %r9,%rax
  402d2b:	75 e3                	jne    402d10 <__mingw_GetSectionForAddress+0x50>
  402d2d:	31 c0                	xor    %eax,%eax
  402d2f:	48 83 c4 28          	add    $0x28,%rsp
  402d33:	c3                   	retq   
  402d34:	66 90                	xchg   %ax,%ax
  402d36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d3d:	00 00 00 

0000000000402d40 <__mingw_GetSectionCount>:
  402d40:	48 83 ec 28          	sub    $0x28,%rsp
  402d44:	48 8b 15 b5 26 00 00 	mov    0x26b5(%rip),%rdx        # 405400 <.refptr.__image_base__>
  402d4b:	45 31 c0             	xor    %r8d,%r8d
  402d4e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402d53:	74 0b                	je     402d60 <__mingw_GetSectionCount+0x20>
  402d55:	44 89 c0             	mov    %r8d,%eax
  402d58:	48 83 c4 28          	add    $0x28,%rsp
  402d5c:	c3                   	retq   
  402d5d:	0f 1f 00             	nopl   (%rax)
  402d60:	48 89 d1             	mov    %rdx,%rcx
  402d63:	e8 38 fe ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402d68:	85 c0                	test   %eax,%eax
  402d6a:	74 e9                	je     402d55 <__mingw_GetSectionCount+0x15>
  402d6c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402d70:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  402d76:	44 89 c0             	mov    %r8d,%eax
  402d79:	48 83 c4 28          	add    $0x28,%rsp
  402d7d:	c3                   	retq   
  402d7e:	66 90                	xchg   %ax,%ax

0000000000402d80 <_FindPESectionExec>:
  402d80:	48 83 ec 28          	sub    $0x28,%rsp
  402d84:	4c 8b 05 75 26 00 00 	mov    0x2675(%rip),%r8        # 405400 <.refptr.__image_base__>
  402d8b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402d91:	48 89 ca             	mov    %rcx,%rdx
  402d94:	75 52                	jne    402de8 <_FindPESectionExec+0x68>
  402d96:	4c 89 c1             	mov    %r8,%rcx
  402d99:	e8 02 fe ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402d9e:	85 c0                	test   %eax,%eax
  402da0:	74 46                	je     402de8 <_FindPESectionExec+0x68>
  402da2:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402da6:	4c 01 c1             	add    %r8,%rcx
  402da9:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402dad:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402db2:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402db6:	85 c9                	test   %ecx,%ecx
  402db8:	74 2e                	je     402de8 <_FindPESectionExec+0x68>
  402dba:	83 e9 01             	sub    $0x1,%ecx
  402dbd:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402dc1:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402dc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402dcd:	00 00 00 
  402dd0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402dd4:	74 09                	je     402ddf <_FindPESectionExec+0x5f>
  402dd6:	48 85 d2             	test   %rdx,%rdx
  402dd9:	74 0f                	je     402dea <_FindPESectionExec+0x6a>
  402ddb:	48 83 ea 01          	sub    $0x1,%rdx
  402ddf:	48 83 c0 28          	add    $0x28,%rax
  402de3:	48 39 c8             	cmp    %rcx,%rax
  402de6:	75 e8                	jne    402dd0 <_FindPESectionExec+0x50>
  402de8:	31 c0                	xor    %eax,%eax
  402dea:	48 83 c4 28          	add    $0x28,%rsp
  402dee:	c3                   	retq   
  402def:	90                   	nop

0000000000402df0 <_GetPEImageBase>:
  402df0:	48 83 ec 28          	sub    $0x28,%rsp
  402df4:	48 8b 15 05 26 00 00 	mov    0x2605(%rip),%rdx        # 405400 <.refptr.__image_base__>
  402dfb:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402e00:	75 1e                	jne    402e20 <_GetPEImageBase+0x30>
  402e02:	48 89 d1             	mov    %rdx,%rcx
  402e05:	e8 96 fd ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402e0a:	85 c0                	test   %eax,%eax
  402e0c:	b8 00 00 00 00       	mov    $0x0,%eax
  402e11:	48 0f 45 c2          	cmovne %rdx,%rax
  402e15:	48 83 c4 28          	add    $0x28,%rsp
  402e19:	c3                   	retq   
  402e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e20:	31 c0                	xor    %eax,%eax
  402e22:	48 83 c4 28          	add    $0x28,%rsp
  402e26:	c3                   	retq   
  402e27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e2e:	00 00 

0000000000402e30 <_IsNonwritableInCurrentImage>:
  402e30:	48 83 ec 28          	sub    $0x28,%rsp
  402e34:	4c 8b 05 c5 25 00 00 	mov    0x25c5(%rip),%r8        # 405400 <.refptr.__image_base__>
  402e3b:	31 c0                	xor    %eax,%eax
  402e3d:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402e43:	48 89 ca             	mov    %rcx,%rdx
  402e46:	74 08                	je     402e50 <_IsNonwritableInCurrentImage+0x20>
  402e48:	48 83 c4 28          	add    $0x28,%rsp
  402e4c:	c3                   	retq   
  402e4d:	0f 1f 00             	nopl   (%rax)
  402e50:	4c 89 c1             	mov    %r8,%rcx
  402e53:	e8 48 fd ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402e58:	85 c0                	test   %eax,%eax
  402e5a:	74 ec                	je     402e48 <_IsNonwritableInCurrentImage+0x18>
  402e5c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402e60:	48 89 d1             	mov    %rdx,%rcx
  402e63:	4c 29 c1             	sub    %r8,%rcx
  402e66:	49 01 c0             	add    %rax,%r8
  402e69:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402e6e:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402e73:	85 d2                	test   %edx,%edx
  402e75:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402e7a:	74 31                	je     402ead <_IsNonwritableInCurrentImage+0x7d>
  402e7c:	83 ea 01             	sub    $0x1,%edx
  402e7f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402e83:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e8f:	00 
  402e90:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402e94:	4c 39 c1             	cmp    %r8,%rcx
  402e97:	4c 89 c2             	mov    %r8,%rdx
  402e9a:	72 08                	jb     402ea4 <_IsNonwritableInCurrentImage+0x74>
  402e9c:	03 50 08             	add    0x8(%rax),%edx
  402e9f:	48 39 d1             	cmp    %rdx,%rcx
  402ea2:	72 10                	jb     402eb4 <_IsNonwritableInCurrentImage+0x84>
  402ea4:	48 83 c0 28          	add    $0x28,%rax
  402ea8:	4c 39 c8             	cmp    %r9,%rax
  402eab:	75 e3                	jne    402e90 <_IsNonwritableInCurrentImage+0x60>
  402ead:	31 c0                	xor    %eax,%eax
  402eaf:	48 83 c4 28          	add    $0x28,%rsp
  402eb3:	c3                   	retq   
  402eb4:	8b 40 24             	mov    0x24(%rax),%eax
  402eb7:	f7 d0                	not    %eax
  402eb9:	c1 e8 1f             	shr    $0x1f,%eax
  402ebc:	48 83 c4 28          	add    $0x28,%rsp
  402ec0:	c3                   	retq   
  402ec1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ec6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ecd:	00 00 00 

0000000000402ed0 <__mingw_enum_import_library_names>:
  402ed0:	48 83 ec 28          	sub    $0x28,%rsp
  402ed4:	4c 8b 1d 25 25 00 00 	mov    0x2525(%rip),%r11        # 405400 <.refptr.__image_base__>
  402edb:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402ee1:	41 89 c9             	mov    %ecx,%r9d
  402ee4:	75 58                	jne    402f3e <__mingw_enum_import_library_names+0x6e>
  402ee6:	4c 89 d9             	mov    %r11,%rcx
  402ee9:	e8 b2 fc ff ff       	callq  402ba0 <_ValidateImageBase.part.0>
  402eee:	85 c0                	test   %eax,%eax
  402ef0:	74 4c                	je     402f3e <__mingw_enum_import_library_names+0x6e>
  402ef2:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402ef6:	4c 01 d8             	add    %r11,%rax
  402ef9:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  402eff:	85 d2                	test   %edx,%edx
  402f01:	74 3b                	je     402f3e <__mingw_enum_import_library_names+0x6e>
  402f03:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402f07:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  402f0c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402f10:	85 c0                	test   %eax,%eax
  402f12:	74 2a                	je     402f3e <__mingw_enum_import_library_names+0x6e>
  402f14:	83 e8 01             	sub    $0x1,%eax
  402f17:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402f1b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  402f20:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  402f24:	4c 39 d2             	cmp    %r10,%rdx
  402f27:	4d 89 d0             	mov    %r10,%r8
  402f2a:	72 09                	jb     402f35 <__mingw_enum_import_library_names+0x65>
  402f2c:	44 03 41 08          	add    0x8(%rcx),%r8d
  402f30:	4c 39 c2             	cmp    %r8,%rdx
  402f33:	72 10                	jb     402f45 <__mingw_enum_import_library_names+0x75>
  402f35:	48 83 c1 28          	add    $0x28,%rcx
  402f39:	48 39 c1             	cmp    %rax,%rcx
  402f3c:	75 e2                	jne    402f20 <__mingw_enum_import_library_names+0x50>
  402f3e:	31 c0                	xor    %eax,%eax
  402f40:	48 83 c4 28          	add    $0x28,%rsp
  402f44:	c3                   	retq   
  402f45:	4c 01 da             	add    %r11,%rdx
  402f48:	75 0e                	jne    402f58 <__mingw_enum_import_library_names+0x88>
  402f4a:	eb f2                	jmp    402f3e <__mingw_enum_import_library_names+0x6e>
  402f4c:	0f 1f 40 00          	nopl   0x0(%rax)
  402f50:	41 83 e9 01          	sub    $0x1,%r9d
  402f54:	48 83 c2 14          	add    $0x14,%rdx
  402f58:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402f5b:	85 c9                	test   %ecx,%ecx
  402f5d:	75 07                	jne    402f66 <__mingw_enum_import_library_names+0x96>
  402f5f:	8b 42 0c             	mov    0xc(%rdx),%eax
  402f62:	85 c0                	test   %eax,%eax
  402f64:	74 d8                	je     402f3e <__mingw_enum_import_library_names+0x6e>
  402f66:	45 85 c9             	test   %r9d,%r9d
  402f69:	7f e5                	jg     402f50 <__mingw_enum_import_library_names+0x80>
  402f6b:	8b 42 0c             	mov    0xc(%rdx),%eax
  402f6e:	4c 01 d8             	add    %r11,%rax
  402f71:	48 83 c4 28          	add    $0x28,%rsp
  402f75:	c3                   	retq   
  402f76:	90                   	nop
  402f77:	90                   	nop
  402f78:	90                   	nop
  402f79:	90                   	nop
  402f7a:	90                   	nop
  402f7b:	90                   	nop
  402f7c:	90                   	nop
  402f7d:	90                   	nop
  402f7e:	90                   	nop
  402f7f:	90                   	nop

0000000000402f80 <___chkstk_ms>:
  402f80:	51                   	push   %rcx
  402f81:	50                   	push   %rax
  402f82:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402f88:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402f8d:	72 19                	jb     402fa8 <___chkstk_ms+0x28>
  402f8f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402f96:	48 83 09 00          	orq    $0x0,(%rcx)
  402f9a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402fa0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402fa6:	77 e7                	ja     402f8f <___chkstk_ms+0xf>
  402fa8:	48 29 c1             	sub    %rax,%rcx
  402fab:	48 83 09 00          	orq    $0x0,(%rcx)
  402faf:	58                   	pop    %rax
  402fb0:	59                   	pop    %rcx
  402fb1:	c3                   	retq   
  402fb2:	90                   	nop
  402fb3:	90                   	nop
  402fb4:	90                   	nop
  402fb5:	90                   	nop
  402fb6:	90                   	nop
  402fb7:	90                   	nop
  402fb8:	90                   	nop
  402fb9:	90                   	nop
  402fba:	90                   	nop
  402fbb:	90                   	nop
  402fbc:	90                   	nop
  402fbd:	90                   	nop
  402fbe:	90                   	nop
  402fbf:	90                   	nop

0000000000402fc0 <vfprintf>:
  402fc0:	ff 25 a6 63 00 00    	jmpq   *0x63a6(%rip)        # 40936c <__imp_vfprintf>
  402fc6:	90                   	nop
  402fc7:	90                   	nop

0000000000402fc8 <strncmp>:
  402fc8:	ff 25 96 63 00 00    	jmpq   *0x6396(%rip)        # 409364 <__imp_strncmp>
  402fce:	90                   	nop
  402fcf:	90                   	nop

0000000000402fd0 <strlen>:
  402fd0:	ff 25 86 63 00 00    	jmpq   *0x6386(%rip)        # 40935c <__imp_strlen>
  402fd6:	90                   	nop
  402fd7:	90                   	nop

0000000000402fd8 <signal>:
  402fd8:	ff 25 76 63 00 00    	jmpq   *0x6376(%rip)        # 409354 <__imp_signal>
  402fde:	90                   	nop
  402fdf:	90                   	nop

0000000000402fe0 <puts>:
  402fe0:	ff 25 66 63 00 00    	jmpq   *0x6366(%rip)        # 40934c <__imp_puts>
  402fe6:	90                   	nop
  402fe7:	90                   	nop

0000000000402fe8 <printf>:
  402fe8:	ff 25 56 63 00 00    	jmpq   *0x6356(%rip)        # 409344 <__imp_printf>
  402fee:	90                   	nop
  402fef:	90                   	nop

0000000000402ff0 <memcpy>:
  402ff0:	ff 25 46 63 00 00    	jmpq   *0x6346(%rip)        # 40933c <__imp_memcpy>
  402ff6:	90                   	nop
  402ff7:	90                   	nop

0000000000402ff8 <malloc>:
  402ff8:	ff 25 36 63 00 00    	jmpq   *0x6336(%rip)        # 409334 <__imp_malloc>
  402ffe:	90                   	nop
  402fff:	90                   	nop

0000000000403000 <fwrite>:
  403000:	ff 25 26 63 00 00    	jmpq   *0x6326(%rip)        # 40932c <__imp_fwrite>
  403006:	90                   	nop
  403007:	90                   	nop

0000000000403008 <free>:
  403008:	ff 25 16 63 00 00    	jmpq   *0x6316(%rip)        # 409324 <__imp_free>
  40300e:	90                   	nop
  40300f:	90                   	nop

0000000000403010 <fprintf>:
  403010:	ff 25 06 63 00 00    	jmpq   *0x6306(%rip)        # 40931c <__imp_fprintf>
  403016:	90                   	nop
  403017:	90                   	nop

0000000000403018 <exit>:
  403018:	ff 25 f6 62 00 00    	jmpq   *0x62f6(%rip)        # 409314 <__imp_exit>
  40301e:	90                   	nop
  40301f:	90                   	nop

0000000000403020 <calloc>:
  403020:	ff 25 e6 62 00 00    	jmpq   *0x62e6(%rip)        # 40930c <__imp_calloc>
  403026:	90                   	nop
  403027:	90                   	nop

0000000000403028 <abort>:
  403028:	ff 25 d6 62 00 00    	jmpq   *0x62d6(%rip)        # 409304 <__imp_abort>
  40302e:	90                   	nop
  40302f:	90                   	nop

0000000000403030 <_onexit>:
  403030:	ff 25 c6 62 00 00    	jmpq   *0x62c6(%rip)        # 4092fc <__imp__onexit>
  403036:	90                   	nop
  403037:	90                   	nop

0000000000403038 <_initterm>:
  403038:	ff 25 b6 62 00 00    	jmpq   *0x62b6(%rip)        # 4092f4 <__imp__initterm>
  40303e:	90                   	nop
  40303f:	90                   	nop

0000000000403040 <_cexit>:
  403040:	ff 25 9e 62 00 00    	jmpq   *0x629e(%rip)        # 4092e4 <__imp__cexit>
  403046:	90                   	nop
  403047:	90                   	nop

0000000000403048 <_amsg_exit>:
  403048:	ff 25 8e 62 00 00    	jmpq   *0x628e(%rip)        # 4092dc <__imp__amsg_exit>
  40304e:	90                   	nop
  40304f:	90                   	nop

0000000000403050 <__setusermatherr>:
  403050:	ff 25 76 62 00 00    	jmpq   *0x6276(%rip)        # 4092cc <__imp___setusermatherr>
  403056:	90                   	nop
  403057:	90                   	nop

0000000000403058 <__set_app_type>:
  403058:	ff 25 66 62 00 00    	jmpq   *0x6266(%rip)        # 4092c4 <__imp___set_app_type>
  40305e:	90                   	nop
  40305f:	90                   	nop

0000000000403060 <__lconv_init>:
  403060:	ff 25 56 62 00 00    	jmpq   *0x6256(%rip)        # 4092bc <__imp___lconv_init>
  403066:	90                   	nop
  403067:	90                   	nop

0000000000403068 <__getmainargs>:
  403068:	ff 25 36 62 00 00    	jmpq   *0x6236(%rip)        # 4092a4 <__imp___getmainargs>
  40306e:	90                   	nop
  40306f:	90                   	nop

0000000000403070 <__C_specific_handler>:
  403070:	ff 25 26 62 00 00    	jmpq   *0x6226(%rip)        # 40929c <__imp___C_specific_handler>
  403076:	90                   	nop
  403077:	90                   	nop
  403078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40307f:	00 

0000000000403080 <__acrt_iob_func>:
  403080:	53                   	push   %rbx
  403081:	48 83 ec 20          	sub    $0x20,%rsp
  403085:	89 cb                	mov    %ecx,%ebx
  403087:	e8 54 00 00 00       	callq  4030e0 <__iob_func>
  40308c:	89 d9                	mov    %ebx,%ecx
  40308e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  403092:	48 c1 e2 04          	shl    $0x4,%rdx
  403096:	48 01 d0             	add    %rdx,%rax
  403099:	48 83 c4 20          	add    $0x20,%rsp
  40309d:	5b                   	pop    %rbx
  40309e:	c3                   	retq   
  40309f:	90                   	nop

00000000004030a0 <_get_invalid_parameter_handler>:
  4030a0:	48 8b 05 a9 58 00 00 	mov    0x58a9(%rip),%rax        # 408950 <handler>
  4030a7:	c3                   	retq   
  4030a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030af:	00 

00000000004030b0 <_set_invalid_parameter_handler>:
  4030b0:	48 89 c8             	mov    %rcx,%rax
  4030b3:	48 87 05 96 58 00 00 	xchg   %rax,0x5896(%rip)        # 408950 <handler>
  4030ba:	c3                   	retq   
  4030bb:	90                   	nop
  4030bc:	90                   	nop
  4030bd:	90                   	nop
  4030be:	90                   	nop
  4030bf:	90                   	nop

00000000004030c0 <__p__acmdln>:
  4030c0:	48 8b 05 59 23 00 00 	mov    0x2359(%rip),%rax        # 405420 <.refptr.__imp__acmdln>
  4030c7:	48 8b 00             	mov    (%rax),%rax
  4030ca:	c3                   	retq   
  4030cb:	90                   	nop
  4030cc:	90                   	nop
  4030cd:	90                   	nop
  4030ce:	90                   	nop
  4030cf:	90                   	nop

00000000004030d0 <__p__fmode>:
  4030d0:	48 8b 05 59 23 00 00 	mov    0x2359(%rip),%rax        # 405430 <.refptr.__imp__fmode>
  4030d7:	48 8b 00             	mov    (%rax),%rax
  4030da:	c3                   	retq   
  4030db:	90                   	nop
  4030dc:	90                   	nop
  4030dd:	90                   	nop
  4030de:	90                   	nop
  4030df:	90                   	nop

00000000004030e0 <__iob_func>:
  4030e0:	ff 25 ce 61 00 00    	jmpq   *0x61ce(%rip)        # 4092b4 <__imp___iob_func>
  4030e6:	90                   	nop
  4030e7:	90                   	nop
  4030e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030ef:	00 

00000000004030f0 <VirtualQuery>:
  4030f0:	ff 25 96 61 00 00    	jmpq   *0x6196(%rip)        # 40928c <__imp_VirtualQuery>
  4030f6:	90                   	nop
  4030f7:	90                   	nop

00000000004030f8 <VirtualProtect>:
  4030f8:	ff 25 86 61 00 00    	jmpq   *0x6186(%rip)        # 409284 <__imp_VirtualProtect>
  4030fe:	90                   	nop
  4030ff:	90                   	nop

0000000000403100 <UnhandledExceptionFilter>:
  403100:	ff 25 76 61 00 00    	jmpq   *0x6176(%rip)        # 40927c <__imp_UnhandledExceptionFilter>
  403106:	90                   	nop
  403107:	90                   	nop

0000000000403108 <TlsGetValue>:
  403108:	ff 25 66 61 00 00    	jmpq   *0x6166(%rip)        # 409274 <__imp_TlsGetValue>
  40310e:	90                   	nop
  40310f:	90                   	nop

0000000000403110 <TerminateProcess>:
  403110:	ff 25 56 61 00 00    	jmpq   *0x6156(%rip)        # 40926c <__imp_TerminateProcess>
  403116:	90                   	nop
  403117:	90                   	nop

0000000000403118 <Sleep>:
  403118:	ff 25 46 61 00 00    	jmpq   *0x6146(%rip)        # 409264 <__imp_Sleep>
  40311e:	90                   	nop
  40311f:	90                   	nop

0000000000403120 <SetUnhandledExceptionFilter>:
  403120:	ff 25 36 61 00 00    	jmpq   *0x6136(%rip)        # 40925c <__imp_SetUnhandledExceptionFilter>
  403126:	90                   	nop
  403127:	90                   	nop

0000000000403128 <RtlVirtualUnwind>:
  403128:	ff 25 26 61 00 00    	jmpq   *0x6126(%rip)        # 409254 <__imp_RtlVirtualUnwind>
  40312e:	90                   	nop
  40312f:	90                   	nop

0000000000403130 <RtlLookupFunctionEntry>:
  403130:	ff 25 16 61 00 00    	jmpq   *0x6116(%rip)        # 40924c <__imp_RtlLookupFunctionEntry>
  403136:	90                   	nop
  403137:	90                   	nop

0000000000403138 <RtlCaptureContext>:
  403138:	ff 25 06 61 00 00    	jmpq   *0x6106(%rip)        # 409244 <__imp_RtlCaptureContext>
  40313e:	90                   	nop
  40313f:	90                   	nop

0000000000403140 <RtlAddFunctionTable>:
  403140:	ff 25 f6 60 00 00    	jmpq   *0x60f6(%rip)        # 40923c <__imp_RtlAddFunctionTable>
  403146:	90                   	nop
  403147:	90                   	nop

0000000000403148 <QueryPerformanceCounter>:
  403148:	ff 25 e6 60 00 00    	jmpq   *0x60e6(%rip)        # 409234 <__imp_QueryPerformanceCounter>
  40314e:	90                   	nop
  40314f:	90                   	nop

0000000000403150 <LeaveCriticalSection>:
  403150:	ff 25 d6 60 00 00    	jmpq   *0x60d6(%rip)        # 40922c <__imp_LeaveCriticalSection>
  403156:	90                   	nop
  403157:	90                   	nop

0000000000403158 <InitializeCriticalSection>:
  403158:	ff 25 c6 60 00 00    	jmpq   *0x60c6(%rip)        # 409224 <__imp_InitializeCriticalSection>
  40315e:	90                   	nop
  40315f:	90                   	nop

0000000000403160 <GetTickCount>:
  403160:	ff 25 b6 60 00 00    	jmpq   *0x60b6(%rip)        # 40921c <__imp_GetTickCount>
  403166:	90                   	nop
  403167:	90                   	nop

0000000000403168 <GetSystemTimeAsFileTime>:
  403168:	ff 25 a6 60 00 00    	jmpq   *0x60a6(%rip)        # 409214 <__imp_GetSystemTimeAsFileTime>
  40316e:	90                   	nop
  40316f:	90                   	nop

0000000000403170 <GetStartupInfoA>:
  403170:	ff 25 96 60 00 00    	jmpq   *0x6096(%rip)        # 40920c <__imp_GetStartupInfoA>
  403176:	90                   	nop
  403177:	90                   	nop

0000000000403178 <GetLastError>:
  403178:	ff 25 86 60 00 00    	jmpq   *0x6086(%rip)        # 409204 <__imp_GetLastError>
  40317e:	90                   	nop
  40317f:	90                   	nop

0000000000403180 <GetCurrentThreadId>:
  403180:	ff 25 76 60 00 00    	jmpq   *0x6076(%rip)        # 4091fc <__imp_GetCurrentThreadId>
  403186:	90                   	nop
  403187:	90                   	nop

0000000000403188 <GetCurrentProcessId>:
  403188:	ff 25 66 60 00 00    	jmpq   *0x6066(%rip)        # 4091f4 <__imp_GetCurrentProcessId>
  40318e:	90                   	nop
  40318f:	90                   	nop

0000000000403190 <GetCurrentProcess>:
  403190:	ff 25 56 60 00 00    	jmpq   *0x6056(%rip)        # 4091ec <__imp_GetCurrentProcess>
  403196:	90                   	nop
  403197:	90                   	nop

0000000000403198 <EnterCriticalSection>:
  403198:	ff 25 46 60 00 00    	jmpq   *0x6046(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  40319e:	90                   	nop
  40319f:	90                   	nop

00000000004031a0 <DeleteCriticalSection>:
  4031a0:	ff 25 36 60 00 00    	jmpq   *0x6036(%rip)        # 4091dc <__IAT_start__>
  4031a6:	90                   	nop
  4031a7:	90                   	nop
  4031a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4031af:	00 

00000000004031b0 <__report_error>:
  4031b0:	56                   	push   %rsi
  4031b1:	53                   	push   %rbx
  4031b2:	48 83 ec 38          	sub    $0x38,%rsp
  4031b6:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  4031bb:	48 89 cb             	mov    %rcx,%rbx
  4031be:	b9 02 00 00 00       	mov    $0x2,%ecx
  4031c3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  4031c8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  4031cd:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  4031d2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4031d7:	e8 a4 fe ff ff       	callq  403080 <__acrt_iob_func>
  4031dc:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  4031e2:	ba 01 00 00 00       	mov    $0x1,%edx
  4031e7:	48 8d 0d 92 20 00 00 	lea    0x2092(%rip),%rcx        # 405280 <.rdata>
  4031ee:	49 89 c1             	mov    %rax,%r9
  4031f1:	e8 0a fe ff ff       	callq  403000 <fwrite>
  4031f6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4031fb:	b9 02 00 00 00       	mov    $0x2,%ecx
  403200:	e8 7b fe ff ff       	callq  403080 <__acrt_iob_func>
  403205:	48 89 da             	mov    %rbx,%rdx
  403208:	48 89 c1             	mov    %rax,%rcx
  40320b:	49 89 f0             	mov    %rsi,%r8
  40320e:	e8 ad fd ff ff       	callq  402fc0 <vfprintf>
  403213:	e8 10 fe ff ff       	callq  403028 <abort>
  403218:	90                   	nop
  403219:	90                   	nop
  40321a:	90                   	nop
  40321b:	90                   	nop
  40321c:	90                   	nop
  40321d:	90                   	nop
  40321e:	90                   	nop
  40321f:	90                   	nop

0000000000403220 <register_frame_ctor>:
  403220:	e9 0b e3 ff ff       	jmpq   401530 <__gcc_register_frame>
  403225:	90                   	nop
  403226:	90                   	nop
  403227:	90                   	nop
  403228:	90                   	nop
  403229:	90                   	nop
  40322a:	90                   	nop
  40322b:	90                   	nop
  40322c:	90                   	nop
  40322d:	90                   	nop
  40322e:	90                   	nop
  40322f:	90                   	nop

0000000000403230 <__CTOR_LIST__>:
  403230:	ff                   	(bad)  
  403231:	ff                   	(bad)  
  403232:	ff                   	(bad)  
  403233:	ff                   	(bad)  
  403234:	ff                   	(bad)  
  403235:	ff                   	(bad)  
  403236:	ff                   	(bad)  
  403237:	ff                   	.byte 0xff

0000000000403238 <.ctors.65535>:
  403238:	20 32                	and    %dh,(%rdx)
  40323a:	40 00 00             	add    %al,(%rax)
	...

0000000000403248 <__DTOR_LIST__>:
  403248:	ff                   	(bad)  
  403249:	ff                   	(bad)  
  40324a:	ff                   	(bad)  
  40324b:	ff                   	(bad)  
  40324c:	ff                   	(bad)  
  40324d:	ff                   	(bad)  
  40324e:	ff                   	(bad)  
  40324f:	ff 00                	incl   (%rax)
  403251:	00 00                	add    %al,(%rax)
  403253:	00 00                	add    %al,(%rax)
  403255:	00 00                	add    %al,(%rax)
	...
