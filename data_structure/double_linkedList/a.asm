
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
  401070:	e8 f3 1f 00 00       	callq  403068 <__set_app_type>
  401075:	e8 66 20 00 00       	callq  4030e0 <__p__fmode>
  40107a:	48 8b 15 3f 44 00 00 	mov    0x443f(%rip),%rdx        # 4054c0 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 66 0b 00 00       	callq  401bf0 <_setargv>
  40108a:	48 8b 05 1f 43 00 00 	mov    0x431f(%rip),%rax        # 4053b0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 be 1f 00 00       	callq  403068 <__set_app_type>
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
  4010f0:	48 8d 0d 09 0e 00 00 	lea    0xe09(%rip),%rcx        # 401f00 <_matherr>
  4010f7:	e8 f4 0d 00 00       	callq  401ef0 <__mingw_setusermatherr>
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
  40116e:	e8 05 1f 00 00       	callq  403078 <__getmainargs>
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
  401247:	e8 b4 0f 00 00       	callq  402200 <_pei386_runtime_relocator>
  40124c:	48 8d 0d fd 14 00 00 	lea    0x14fd(%rip),%rcx        # 402750 <_gnu_exception_handler>
  401253:	ff 15 03 80 00 00    	callq  *0x8003(%rip)        # 40925c <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 e0 41 00 00 	mov    0x41e0(%rip),%rdx        # 405440 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 f8 13 00 00       	callq  402660 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 4c 1e 00 00       	callq  4030c0 <_set_invalid_parameter_handler>
  401274:	e8 87 0d 00 00       	callq  402000 <_fpreset>
  401279:	48 8b 05 80 41 00 00 	mov    0x4180(%rip),%rax        # 405400 <.refptr.__image_base__>
  401280:	48 89 05 e1 76 00 00 	mov    %rax,0x76e1(%rip)        # 408968 <__mingw_winmain_hInstance>
  401287:	e8 44 1e 00 00       	callq  4030d0 <__p__acmdln>
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
  401329:	e8 da 1c 00 00       	callq  403008 <malloc>
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
  401354:	e8 87 1c 00 00       	callq  402fe0 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 a3 1c 00 00       	callq  403008 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 83 1c 00 00       	callq  403000 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 6c 00 00 	mov    %rbp,0x6c83(%rip)        # 408018 <argv>
  401395:	e8 26 08 00 00       	callq  401bc0 <__main>
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
  4013e5:	e8 66 1c 00 00       	callq  403050 <_cexit>
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
  40142c:	e8 27 1c 00 00       	callq  403058 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 3d 40 00 00 	mov    0x403d(%rip),%rdx        # 405480 <.refptr.__xc_z>
  401443:	48 8b 0d 26 40 00 00 	mov    0x4026(%rip),%rcx        # 405470 <.refptr.__xc_a>
  40144a:	e8 f9 1b 00 00       	callq  403048 <_initterm>
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
  401494:	e8 af 1b 00 00       	callq  403048 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 83 1b 00 00       	callq  403028 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 45 40 00 00 	mov    0x4045(%rip),%rax        # 405500 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 3a 07 00 00       	callq  401c00 <__security_init_cookie>
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
  4014f1:	e8 0a 07 00 00       	callq  401c00 <__security_init_cookie>
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
  401514:	e8 27 1b 00 00       	callq  403040 <_onexit>
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
  401558:	e8 63 06 00 00       	callq  401bc0 <__main>
  40155d:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401564:	00 
  401565:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401569:	ba 06 00 00 00       	mov    $0x6,%edx
  40156e:	48 89 c1             	mov    %rax,%rcx
  401571:	e8 4e 03 00 00       	callq  4018c4 <append>
  401576:	48 8d 0d 83 3a 00 00 	lea    0x3a83(%rip),%rcx        # 405000 <.rdata>
  40157d:	e8 76 1a 00 00       	callq  402ff8 <printf>
  401582:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401586:	48 89 c1             	mov    %rax,%rcx
  401589:	e8 b5 01 00 00       	callq  401743 <printList>
  40158e:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401592:	ba 07 00 00 00       	mov    $0x7,%edx
  401597:	48 89 c1             	mov    %rax,%rcx
  40159a:	e8 31 02 00 00       	callq  4017d0 <push>
  40159f:	48 8d 0d 6b 3a 00 00 	lea    0x3a6b(%rip),%rcx        # 405011 <.rdata+0x11>
  4015a6:	e8 4d 1a 00 00       	callq  402ff8 <printf>
  4015ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015af:	48 89 c1             	mov    %rax,%rcx
  4015b2:	e8 8c 01 00 00       	callq  401743 <printList>
  4015b7:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4015bb:	ba 01 00 00 00       	mov    $0x1,%edx
  4015c0:	48 89 c1             	mov    %rax,%rcx
  4015c3:	e8 08 02 00 00       	callq  4017d0 <push>
  4015c8:	48 8d 0d 42 3a 00 00 	lea    0x3a42(%rip),%rcx        # 405011 <.rdata+0x11>
  4015cf:	e8 24 1a 00 00       	callq  402ff8 <printf>
  4015d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015d8:	48 89 c1             	mov    %rax,%rcx
  4015db:	e8 63 01 00 00       	callq  401743 <printList>
  4015e0:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4015e4:	ba 04 00 00 00       	mov    $0x4,%edx
  4015e9:	48 89 c1             	mov    %rax,%rcx
  4015ec:	e8 d3 02 00 00       	callq  4018c4 <append>
  4015f1:	48 8d 0d 19 3a 00 00 	lea    0x3a19(%rip),%rcx        # 405011 <.rdata+0x11>
  4015f8:	e8 fb 19 00 00       	callq  402ff8 <printf>
  4015fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401601:	48 89 c1             	mov    %rax,%rcx
  401604:	e8 3a 01 00 00       	callq  401743 <printList>
  401609:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40160d:	48 8b 40 08          	mov    0x8(%rax),%rax
  401611:	ba 08 00 00 00       	mov    $0x8,%edx
  401616:	48 89 c1             	mov    %rax,%rcx
  401619:	e8 20 02 00 00       	callq  40183e <insertAfter>
  40161e:	48 8d 0d ec 39 00 00 	lea    0x39ec(%rip),%rcx        # 405011 <.rdata+0x11>
  401625:	e8 ce 19 00 00       	callq  402ff8 <printf>
  40162a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40162e:	48 89 c1             	mov    %rax,%rcx
  401631:	e8 0d 01 00 00       	callq  401743 <printList>
  401636:	48 8d 0d e6 39 00 00 	lea    0x39e6(%rip),%rcx        # 405023 <.rdata+0x23>
  40163d:	e8 ae 19 00 00       	callq  402ff0 <puts>
  401642:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401646:	ba 08 00 00 00       	mov    $0x8,%edx
  40164b:	48 89 c1             	mov    %rax,%rcx
  40164e:	e8 a3 03 00 00       	callq  4019f6 <deleteNode>
  401653:	48 8d 0d b7 39 00 00 	lea    0x39b7(%rip),%rcx        # 405011 <.rdata+0x11>
  40165a:	e8 99 19 00 00       	callq  402ff8 <printf>
  40165f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401663:	48 89 c1             	mov    %rax,%rcx
  401666:	e8 d8 00 00 00       	callq  401743 <printList>
  40166b:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  40166f:	ba 01 00 00 00       	mov    $0x1,%edx
  401674:	48 89 c1             	mov    %rax,%rcx
  401677:	e8 7a 03 00 00       	callq  4019f6 <deleteNode>
  40167c:	48 8d 0d 8e 39 00 00 	lea    0x398e(%rip),%rcx        # 405011 <.rdata+0x11>
  401683:	e8 70 19 00 00       	callq  402ff8 <printf>
  401688:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40168c:	48 89 c1             	mov    %rax,%rcx
  40168f:	e8 af 00 00 00       	callq  401743 <printList>
  401694:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401698:	ba 07 00 00 00       	mov    $0x7,%edx
  40169d:	48 89 c1             	mov    %rax,%rcx
  4016a0:	e8 51 03 00 00       	callq  4019f6 <deleteNode>
  4016a5:	48 8d 0d 65 39 00 00 	lea    0x3965(%rip),%rcx        # 405011 <.rdata+0x11>
  4016ac:	e8 47 19 00 00       	callq  402ff8 <printf>
  4016b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b5:	48 89 c1             	mov    %rax,%rcx
  4016b8:	e8 86 00 00 00       	callq  401743 <printList>
  4016bd:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4016c1:	ba 04 00 00 00       	mov    $0x4,%edx
  4016c6:	48 89 c1             	mov    %rax,%rcx
  4016c9:	e8 28 03 00 00       	callq  4019f6 <deleteNode>
  4016ce:	48 8d 0d 3c 39 00 00 	lea    0x393c(%rip),%rcx        # 405011 <.rdata+0x11>
  4016d5:	e8 1e 19 00 00       	callq  402ff8 <printf>
  4016da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016de:	48 89 c1             	mov    %rax,%rcx
  4016e1:	e8 5d 00 00 00       	callq  401743 <printList>
  4016e6:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4016ea:	ba 06 00 00 00       	mov    $0x6,%edx
  4016ef:	48 89 c1             	mov    %rax,%rcx
  4016f2:	e8 ff 02 00 00       	callq  4019f6 <deleteNode>
  4016f7:	48 8d 0d 13 39 00 00 	lea    0x3913(%rip),%rcx        # 405011 <.rdata+0x11>
  4016fe:	e8 f5 18 00 00       	callq  402ff8 <printf>
  401703:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401707:	48 89 c1             	mov    %rax,%rcx
  40170a:	e8 34 00 00 00       	callq  401743 <printList>
  40170f:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401713:	ba 01 00 00 00       	mov    $0x1,%edx
  401718:	48 89 c1             	mov    %rax,%rcx
  40171b:	e8 a4 01 00 00       	callq  4018c4 <append>
  401720:	48 8d 0d ea 38 00 00 	lea    0x38ea(%rip),%rcx        # 405011 <.rdata+0x11>
  401727:	e8 cc 18 00 00       	callq  402ff8 <printf>
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
  40175e:	e8 8d 18 00 00       	callq  402ff0 <puts>
  401763:	eb 28                	jmp    40178d <printList+0x4a>
  401765:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401769:	8b 00                	mov    (%rax),%eax
  40176b:	89 c2                	mov    %eax,%edx
  40176d:	48 8d 0d dd 38 00 00 	lea    0x38dd(%rip),%rcx        # 405051 <.rdata+0x51>
  401774:	e8 7f 18 00 00       	callq  402ff8 <printf>
  401779:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40177d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401781:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401785:	48 8b 40 08          	mov    0x8(%rax),%rax
  401789:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40178d:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
  401792:	75 d1                	jne    401765 <printList+0x22>
  401794:	48 8d 0d bd 38 00 00 	lea    0x38bd(%rip),%rcx        # 405058 <.rdata+0x58>
  40179b:	e8 50 18 00 00       	callq  402ff0 <puts>
  4017a0:	eb 20                	jmp    4017c2 <printList+0x7f>
  4017a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017a6:	8b 00                	mov    (%rax),%eax
  4017a8:	89 c2                	mov    %eax,%edx
  4017aa:	48 8d 0d a0 38 00 00 	lea    0x38a0(%rip),%rcx        # 405051 <.rdata+0x51>
  4017b1:	e8 42 18 00 00       	callq  402ff8 <printf>
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
  4017e4:	e8 1f 18 00 00       	callq  403008 <malloc>
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
  40185b:	e8 98 17 00 00       	callq  402ff8 <printf>
  401860:	eb 5c                	jmp    4018be <insertAfter+0x80>
  401862:	b9 18 00 00 00       	mov    $0x18,%ecx
  401867:	e8 9c 17 00 00       	callq  403008 <malloc>
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
  4018d8:	e8 2b 17 00 00       	callq  403008 <malloc>
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
  401980:	e8 73 16 00 00       	callq  402ff8 <printf>
  401985:	eb 69                	jmp    4019f0 <insertBefore+0x92>
  401987:	b9 18 00 00 00       	mov    $0x18,%ecx
  40198c:	e8 77 16 00 00       	callq  403008 <malloc>
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
  401a15:	74 78                	je     401a8f <deleteNode+0x99>
  401a17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a1b:	8b 00                	mov    (%rax),%eax
  401a1d:	39 45 18             	cmp    %eax,0x18(%rbp)
  401a20:	75 6d                	jne    401a8f <deleteNode+0x99>
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
  401a55:	e8 be 15 00 00       	callq  403018 <free>
  401a5a:	e9 ab 00 00 00       	jmpq   401b0a <deleteNode+0x114>
  401a5f:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  401a66:	00 
  401a67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a6b:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a6f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401a73:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401a77:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401a7b:	48 89 10             	mov    %rdx,(%rax)
  401a7e:	e9 87 00 00 00       	jmpq   401b0a <deleteNode+0x114>
  401a83:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a87:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a8b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401a8f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401a94:	74 0b                	je     401aa1 <deleteNode+0xab>
  401a96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a9a:	8b 00                	mov    (%rax),%eax
  401a9c:	39 45 18             	cmp    %eax,0x18(%rbp)
  401a9f:	75 e2                	jne    401a83 <deleteNode+0x8d>
  401aa1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401aa6:	74 61                	je     401b09 <deleteNode+0x113>
  401aa8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aac:	48 8b 40 08          	mov    0x8(%rax),%rax
  401ab0:	48 85 c0             	test   %rax,%rax
  401ab3:	75 1e                	jne    401ad3 <deleteNode+0xdd>
  401ab5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ab9:	48 8b 40 10          	mov    0x10(%rax),%rax
  401abd:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401ac4:	00 
  401ac5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ac9:	48 89 c1             	mov    %rax,%rcx
  401acc:	e8 47 15 00 00       	callq  403018 <free>
  401ad1:	eb 37                	jmp    401b0a <deleteNode+0x114>
  401ad3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ad7:	48 8b 40 10          	mov    0x10(%rax),%rax
  401adb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401adf:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401ae3:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401ae7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aeb:	48 8b 40 08          	mov    0x8(%rax),%rax
  401aef:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401af3:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  401af7:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401afb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401aff:	48 89 c1             	mov    %rax,%rcx
  401b02:	e8 11 15 00 00       	callq  403018 <free>
  401b07:	eb 01                	jmp    401b0a <deleteNode+0x114>
  401b09:	90                   	nop
  401b0a:	48 83 c4 30          	add    $0x30,%rsp
  401b0e:	5d                   	pop    %rbp
  401b0f:	c3                   	retq   

0000000000401b10 <__do_global_dtors>:
  401b10:	48 83 ec 28          	sub    $0x28,%rsp
  401b14:	48 8b 05 f5 24 00 00 	mov    0x24f5(%rip),%rax        # 404010 <p.93846>
  401b1b:	48 8b 00             	mov    (%rax),%rax
  401b1e:	48 85 c0             	test   %rax,%rax
  401b21:	74 1d                	je     401b40 <__do_global_dtors+0x30>
  401b23:	ff d0                	callq  *%rax
  401b25:	48 8b 05 e4 24 00 00 	mov    0x24e4(%rip),%rax        # 404010 <p.93846>
  401b2c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401b30:	48 8b 40 08          	mov    0x8(%rax),%rax
  401b34:	48 89 15 d5 24 00 00 	mov    %rdx,0x24d5(%rip)        # 404010 <p.93846>
  401b3b:	48 85 c0             	test   %rax,%rax
  401b3e:	75 e3                	jne    401b23 <__do_global_dtors+0x13>
  401b40:	48 83 c4 28          	add    $0x28,%rsp
  401b44:	c3                   	retq   
  401b45:	90                   	nop
  401b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b4d:	00 00 00 

0000000000401b50 <__do_global_ctors>:
  401b50:	56                   	push   %rsi
  401b51:	53                   	push   %rbx
  401b52:	48 83 ec 28          	sub    $0x28,%rsp
  401b56:	48 8b 0d 63 38 00 00 	mov    0x3863(%rip),%rcx        # 4053c0 <.refptr.__CTOR_LIST__>
  401b5d:	48 8b 11             	mov    (%rcx),%rdx
  401b60:	83 fa ff             	cmp    $0xffffffff,%edx
  401b63:	89 d0                	mov    %edx,%eax
  401b65:	74 39                	je     401ba0 <__do_global_ctors+0x50>
  401b67:	85 c0                	test   %eax,%eax
  401b69:	74 20                	je     401b8b <__do_global_ctors+0x3b>
  401b6b:	89 c2                	mov    %eax,%edx
  401b6d:	83 e8 01             	sub    $0x1,%eax
  401b70:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  401b74:	48 29 c2             	sub    %rax,%rdx
  401b77:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  401b7c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b80:	ff 13                	callq  *(%rbx)
  401b82:	48 83 eb 08          	sub    $0x8,%rbx
  401b86:	48 39 f3             	cmp    %rsi,%rbx
  401b89:	75 f5                	jne    401b80 <__do_global_ctors+0x30>
  401b8b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401b10 <__do_global_dtors>
  401b92:	48 83 c4 28          	add    $0x28,%rsp
  401b96:	5b                   	pop    %rbx
  401b97:	5e                   	pop    %rsi
  401b98:	e9 73 f9 ff ff       	jmpq   401510 <atexit>
  401b9d:	0f 1f 00             	nopl   (%rax)
  401ba0:	31 c0                	xor    %eax,%eax
  401ba2:	eb 02                	jmp    401ba6 <__do_global_ctors+0x56>
  401ba4:	89 d0                	mov    %edx,%eax
  401ba6:	44 8d 40 01          	lea    0x1(%rax),%r8d
  401baa:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  401baf:	4c 89 c2             	mov    %r8,%rdx
  401bb2:	75 f0                	jne    401ba4 <__do_global_ctors+0x54>
  401bb4:	eb b1                	jmp    401b67 <__do_global_ctors+0x17>
  401bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bbd:	00 00 00 

0000000000401bc0 <__main>:
  401bc0:	8b 05 6a 64 00 00    	mov    0x646a(%rip),%eax        # 408030 <initialized>
  401bc6:	85 c0                	test   %eax,%eax
  401bc8:	74 06                	je     401bd0 <__main+0x10>
  401bca:	c3                   	retq   
  401bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401bd0:	c7 05 56 64 00 00 01 	movl   $0x1,0x6456(%rip)        # 408030 <initialized>
  401bd7:	00 00 00 
  401bda:	e9 71 ff ff ff       	jmpq   401b50 <__do_global_ctors>
  401bdf:	90                   	nop

0000000000401be0 <my_lconv_init>:
  401be0:	48 ff 25 d5 76 00 00 	rex.W jmpq *0x76d5(%rip)        # 4092bc <__imp___lconv_init>
  401be7:	90                   	nop
  401be8:	90                   	nop
  401be9:	90                   	nop
  401bea:	90                   	nop
  401beb:	90                   	nop
  401bec:	90                   	nop
  401bed:	90                   	nop
  401bee:	90                   	nop
  401bef:	90                   	nop

0000000000401bf0 <_setargv>:
  401bf0:	31 c0                	xor    %eax,%eax
  401bf2:	c3                   	retq   
  401bf3:	90                   	nop
  401bf4:	90                   	nop
  401bf5:	90                   	nop
  401bf6:	90                   	nop
  401bf7:	90                   	nop
  401bf8:	90                   	nop
  401bf9:	90                   	nop
  401bfa:	90                   	nop
  401bfb:	90                   	nop
  401bfc:	90                   	nop
  401bfd:	90                   	nop
  401bfe:	90                   	nop
  401bff:	90                   	nop

0000000000401c00 <__security_init_cookie>:
  401c00:	41 54                	push   %r12
  401c02:	55                   	push   %rbp
  401c03:	57                   	push   %rdi
  401c04:	56                   	push   %rsi
  401c05:	53                   	push   %rbx
  401c06:	48 83 ec 30          	sub    $0x30,%rsp
  401c0a:	48 8b 1d 9f 24 00 00 	mov    0x249f(%rip),%rbx        # 4040b0 <__security_cookie>
  401c11:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401c18:	2b 00 00 
  401c1b:	48 39 c3             	cmp    %rax,%rbx
  401c1e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401c25:	00 00 
  401c27:	74 17                	je     401c40 <__security_init_cookie+0x40>
  401c29:	48 f7 d3             	not    %rbx
  401c2c:	48 89 1d 8d 24 00 00 	mov    %rbx,0x248d(%rip)        # 4040c0 <__security_cookie_complement>
  401c33:	48 83 c4 30          	add    $0x30,%rsp
  401c37:	5b                   	pop    %rbx
  401c38:	5e                   	pop    %rsi
  401c39:	5f                   	pop    %rdi
  401c3a:	5d                   	pop    %rbp
  401c3b:	41 5c                	pop    %r12
  401c3d:	c3                   	retq   
  401c3e:	66 90                	xchg   %ax,%ax
  401c40:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401c45:	ff 15 c9 75 00 00    	callq  *0x75c9(%rip)        # 409214 <__imp_GetSystemTimeAsFileTime>
  401c4b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401c50:	ff 15 9e 75 00 00    	callq  *0x759e(%rip)        # 4091f4 <__imp_GetCurrentProcessId>
  401c56:	41 89 c4             	mov    %eax,%r12d
  401c59:	ff 15 9d 75 00 00    	callq  *0x759d(%rip)        # 4091fc <__imp_GetCurrentThreadId>
  401c5f:	89 c5                	mov    %eax,%ebp
  401c61:	ff 15 b5 75 00 00    	callq  *0x75b5(%rip)        # 40921c <__imp_GetTickCount>
  401c67:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  401c6c:	89 c7                	mov    %eax,%edi
  401c6e:	ff 15 c0 75 00 00    	callq  *0x75c0(%rip)        # 409234 <__imp_QueryPerformanceCounter>
  401c74:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  401c79:	44 89 e0             	mov    %r12d,%eax
  401c7c:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401c83:	ff 00 00 
  401c86:	48 31 f0             	xor    %rsi,%rax
  401c89:	89 ee                	mov    %ebp,%esi
  401c8b:	48 31 c6             	xor    %rax,%rsi
  401c8e:	89 f8                	mov    %edi,%eax
  401c90:	48 31 f0             	xor    %rsi,%rax
  401c93:	48 21 d0             	and    %rdx,%rax
  401c96:	48 39 d8             	cmp    %rbx,%rax
  401c99:	74 25                	je     401cc0 <__security_init_cookie+0xc0>
  401c9b:	48 89 c2             	mov    %rax,%rdx
  401c9e:	48 f7 d2             	not    %rdx
  401ca1:	48 89 05 08 24 00 00 	mov    %rax,0x2408(%rip)        # 4040b0 <__security_cookie>
  401ca8:	48 89 15 11 24 00 00 	mov    %rdx,0x2411(%rip)        # 4040c0 <__security_cookie_complement>
  401caf:	48 83 c4 30          	add    $0x30,%rsp
  401cb3:	5b                   	pop    %rbx
  401cb4:	5e                   	pop    %rsi
  401cb5:	5f                   	pop    %rdi
  401cb6:	5d                   	pop    %rbp
  401cb7:	41 5c                	pop    %r12
  401cb9:	c3                   	retq   
  401cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401cc0:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401cc7:	d4 ff ff 
  401cca:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401cd1:	2b 00 00 
  401cd4:	eb cb                	jmp    401ca1 <__security_init_cookie+0xa1>
  401cd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401cdd:	00 00 00 

0000000000401ce0 <__report_gsfailure>:
  401ce0:	55                   	push   %rbp
  401ce1:	56                   	push   %rsi
  401ce2:	53                   	push   %rbx
  401ce3:	48 89 e5             	mov    %rsp,%rbp
  401ce6:	48 83 ec 70          	sub    $0x70,%rsp
  401cea:	48 89 ce             	mov    %rcx,%rsi
  401ced:	48 8d 0d 6c 63 00 00 	lea    0x636c(%rip),%rcx        # 408060 <GS_ContextRecord>
  401cf4:	ff 15 4a 75 00 00    	callq  *0x754a(%rip)        # 409244 <__imp_RtlCaptureContext>
  401cfa:	48 8b 1d 57 64 00 00 	mov    0x6457(%rip),%rbx        # 408158 <GS_ContextRecord+0xf8>
  401d01:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401d05:	45 31 c0             	xor    %r8d,%r8d
  401d08:	48 89 d9             	mov    %rbx,%rcx
  401d0b:	ff 15 3b 75 00 00    	callq  *0x753b(%rip)        # 40924c <__imp_RtlLookupFunctionEntry>
  401d11:	48 85 c0             	test   %rax,%rax
  401d14:	0f 84 a3 00 00 00    	je     401dbd <__report_gsfailure+0xdd>
  401d1a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  401d1e:	49 89 c1             	mov    %rax,%r9
  401d21:	49 89 d8             	mov    %rbx,%r8
  401d24:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401d2b:	00 00 
  401d2d:	48 8d 0d 2c 63 00 00 	lea    0x632c(%rip),%rcx        # 408060 <GS_ContextRecord>
  401d34:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  401d39:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  401d3d:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  401d42:	31 c9                	xor    %ecx,%ecx
  401d44:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401d49:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401d4d:	ff 15 01 75 00 00    	callq  *0x7501(%rip)        # 409254 <__imp_RtlVirtualUnwind>
  401d53:	48 8b 05 fe 63 00 00 	mov    0x63fe(%rip),%rax        # 408158 <GS_ContextRecord+0xf8>
  401d5a:	31 c9                	xor    %ecx,%ecx
  401d5c:	48 89 35 7d 63 00 00 	mov    %rsi,0x637d(%rip)        # 4080e0 <GS_ContextRecord+0x80>
  401d63:	48 89 05 e6 67 00 00 	mov    %rax,0x67e6(%rip)        # 408550 <GS_ExceptionRecord+0x10>
  401d6a:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  401d71:	00 00 00 
  401d74:	48 89 05 c5 67 00 00 	mov    %rax,0x67c5(%rip)        # 408540 <GS_ExceptionRecord>
  401d7b:	48 8b 05 2e 23 00 00 	mov    0x232e(%rip),%rax        # 4040b0 <__security_cookie>
  401d82:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401d86:	48 8b 05 33 23 00 00 	mov    0x2333(%rip),%rax        # 4040c0 <__security_cookie_complement>
  401d8d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401d91:	ff 15 c5 74 00 00    	callq  *0x74c5(%rip)        # 40925c <__imp_SetUnhandledExceptionFilter>
  401d97:	48 8d 0d 32 33 00 00 	lea    0x3332(%rip),%rcx        # 4050d0 <GS_ExceptionPointers>
  401d9e:	ff 15 d8 74 00 00    	callq  *0x74d8(%rip)        # 40927c <__imp_UnhandledExceptionFilter>
  401da4:	ff 15 42 74 00 00    	callq  *0x7442(%rip)        # 4091ec <__imp_GetCurrentProcess>
  401daa:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  401daf:	48 89 c1             	mov    %rax,%rcx
  401db2:	ff 15 b4 74 00 00    	callq  *0x74b4(%rip)        # 40926c <__imp_TerminateProcess>
  401db8:	e8 7b 12 00 00       	callq  403038 <abort>
  401dbd:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401dc1:	48 89 05 90 63 00 00 	mov    %rax,0x6390(%rip)        # 408158 <GS_ContextRecord+0xf8>
  401dc8:	48 8d 45 08          	lea    0x8(%rbp),%rax
  401dcc:	48 89 05 25 63 00 00 	mov    %rax,0x6325(%rip)        # 4080f8 <GS_ContextRecord+0x98>
  401dd3:	e9 7b ff ff ff       	jmpq   401d53 <__report_gsfailure+0x73>
  401dd8:	90                   	nop
  401dd9:	90                   	nop
  401dda:	90                   	nop
  401ddb:	90                   	nop
  401ddc:	90                   	nop
  401ddd:	90                   	nop
  401dde:	90                   	nop
  401ddf:	90                   	nop

0000000000401de0 <__dyn_tls_dtor>:
  401de0:	48 83 ec 28          	sub    $0x28,%rsp
  401de4:	83 fa 03             	cmp    $0x3,%edx
  401de7:	74 17                	je     401e00 <__dyn_tls_dtor+0x20>
  401de9:	85 d2                	test   %edx,%edx
  401deb:	74 13                	je     401e00 <__dyn_tls_dtor+0x20>
  401ded:	b8 01 00 00 00       	mov    $0x1,%eax
  401df2:	48 83 c4 28          	add    $0x28,%rsp
  401df6:	c3                   	retq   
  401df7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401dfe:	00 00 
  401e00:	e8 cb 0c 00 00       	callq  402ad0 <__mingw_TLScallback>
  401e05:	b8 01 00 00 00       	mov    $0x1,%eax
  401e0a:	48 83 c4 28          	add    $0x28,%rsp
  401e0e:	c3                   	retq   
  401e0f:	90                   	nop

0000000000401e10 <__dyn_tls_init>:
  401e10:	56                   	push   %rsi
  401e11:	53                   	push   %rbx
  401e12:	48 83 ec 28          	sub    $0x28,%rsp
  401e16:	48 8b 05 83 35 00 00 	mov    0x3583(%rip),%rax        # 4053a0 <.refptr._CRT_MT>
  401e1d:	83 38 02             	cmpl   $0x2,(%rax)
  401e20:	74 06                	je     401e28 <__dyn_tls_init+0x18>
  401e22:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401e28:	83 fa 02             	cmp    $0x2,%edx
  401e2b:	74 13                	je     401e40 <__dyn_tls_init+0x30>
  401e2d:	83 fa 01             	cmp    $0x1,%edx
  401e30:	74 40                	je     401e72 <__dyn_tls_init+0x62>
  401e32:	b8 01 00 00 00       	mov    $0x1,%eax
  401e37:	48 83 c4 28          	add    $0x28,%rsp
  401e3b:	5b                   	pop    %rbx
  401e3c:	5e                   	pop    %rsi
  401e3d:	c3                   	retq   
  401e3e:	66 90                	xchg   %ax,%ax
  401e40:	48 8d 1d 19 82 00 00 	lea    0x8219(%rip),%rbx        # 40a060 <__xd_z>
  401e47:	48 8d 35 12 82 00 00 	lea    0x8212(%rip),%rsi        # 40a060 <__xd_z>
  401e4e:	48 39 de             	cmp    %rbx,%rsi
  401e51:	74 df                	je     401e32 <__dyn_tls_init+0x22>
  401e53:	48 8b 03             	mov    (%rbx),%rax
  401e56:	48 85 c0             	test   %rax,%rax
  401e59:	74 02                	je     401e5d <__dyn_tls_init+0x4d>
  401e5b:	ff d0                	callq  *%rax
  401e5d:	48 83 c3 08          	add    $0x8,%rbx
  401e61:	48 39 de             	cmp    %rbx,%rsi
  401e64:	75 ed                	jne    401e53 <__dyn_tls_init+0x43>
  401e66:	b8 01 00 00 00       	mov    $0x1,%eax
  401e6b:	48 83 c4 28          	add    $0x28,%rsp
  401e6f:	5b                   	pop    %rbx
  401e70:	5e                   	pop    %rsi
  401e71:	c3                   	retq   
  401e72:	e8 59 0c 00 00       	callq  402ad0 <__mingw_TLScallback>
  401e77:	b8 01 00 00 00       	mov    $0x1,%eax
  401e7c:	48 83 c4 28          	add    $0x28,%rsp
  401e80:	5b                   	pop    %rbx
  401e81:	5e                   	pop    %rsi
  401e82:	c3                   	retq   
  401e83:	0f 1f 00             	nopl   (%rax)
  401e86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e8d:	00 00 00 

0000000000401e90 <__tlregdtor>:
  401e90:	31 c0                	xor    %eax,%eax
  401e92:	c3                   	retq   
  401e93:	90                   	nop
  401e94:	90                   	nop
  401e95:	90                   	nop
  401e96:	90                   	nop
  401e97:	90                   	nop
  401e98:	90                   	nop
  401e99:	90                   	nop
  401e9a:	90                   	nop
  401e9b:	90                   	nop
  401e9c:	90                   	nop
  401e9d:	90                   	nop
  401e9e:	90                   	nop
  401e9f:	90                   	nop

0000000000401ea0 <__mingw_raise_matherr>:
  401ea0:	48 83 ec 58          	sub    $0x58,%rsp
  401ea4:	48 8b 05 55 67 00 00 	mov    0x6755(%rip),%rax        # 408600 <stUserMathErr>
  401eab:	48 85 c0             	test   %rax,%rax
  401eae:	74 2c                	je     401edc <__mingw_raise_matherr+0x3c>
  401eb0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401eb7:	00 00 
  401eb9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401ebd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401ec2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401ec7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401ecd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401ed3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401ed9:	ff d0                	callq  *%rax
  401edb:	90                   	nop
  401edc:	48 83 c4 58          	add    $0x58,%rsp
  401ee0:	c3                   	retq   
  401ee1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ee6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401eed:	00 00 00 

0000000000401ef0 <__mingw_setusermatherr>:
  401ef0:	48 89 0d 09 67 00 00 	mov    %rcx,0x6709(%rip)        # 408600 <stUserMathErr>
  401ef7:	e9 64 11 00 00       	jmpq   403060 <__setusermatherr>
  401efc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401f00 <_matherr>:
  401f00:	56                   	push   %rsi
  401f01:	53                   	push   %rbx
  401f02:	48 83 ec 78          	sub    $0x78,%rsp
  401f06:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401f0b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401f10:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401f16:	83 39 06             	cmpl   $0x6,(%rcx)
  401f19:	0f 87 d1 00 00 00    	ja     401ff0 <_matherr+0xf0>
  401f1f:	8b 01                	mov    (%rcx),%eax
  401f21:	48 8d 15 3c 33 00 00 	lea    0x333c(%rip),%rdx        # 405264 <.rdata+0x124>
  401f28:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401f2c:	48 01 d0             	add    %rdx,%rax
  401f2f:	ff e0                	jmpq   *%rax
  401f31:	48 8d 1d 08 32 00 00 	lea    0x3208(%rip),%rbx        # 405140 <.rdata>
  401f38:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401f3c:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401f42:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401f47:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401f4c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401f51:	e8 3a 11 00 00       	callq  403090 <__acrt_iob_func>
  401f56:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401f5d:	49 89 f1             	mov    %rsi,%r9
  401f60:	49 89 d8             	mov    %rbx,%r8
  401f63:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401f69:	48 8d 15 c8 32 00 00 	lea    0x32c8(%rip),%rdx        # 405238 <.rdata+0xf8>
  401f70:	48 89 c1             	mov    %rax,%rcx
  401f73:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401f79:	e8 a2 10 00 00       	callq  403020 <fprintf>
  401f7e:	90                   	nop
  401f7f:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401f84:	31 c0                	xor    %eax,%eax
  401f86:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401f8b:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401f91:	48 83 c4 78          	add    $0x78,%rsp
  401f95:	5b                   	pop    %rbx
  401f96:	5e                   	pop    %rsi
  401f97:	c3                   	retq   
  401f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f9f:	00 
  401fa0:	48 8d 1d b8 31 00 00 	lea    0x31b8(%rip),%rbx        # 40515f <.rdata+0x1f>
  401fa7:	eb 8f                	jmp    401f38 <_matherr+0x38>
  401fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401fb0:	48 8d 1d c9 31 00 00 	lea    0x31c9(%rip),%rbx        # 405180 <.rdata+0x40>
  401fb7:	e9 7c ff ff ff       	jmpq   401f38 <_matherr+0x38>
  401fbc:	0f 1f 40 00          	nopl   0x0(%rax)
  401fc0:	48 8d 1d 29 32 00 00 	lea    0x3229(%rip),%rbx        # 4051f0 <.rdata+0xb0>
  401fc7:	e9 6c ff ff ff       	jmpq   401f38 <_matherr+0x38>
  401fcc:	0f 1f 40 00          	nopl   0x0(%rax)
  401fd0:	48 8d 1d f1 31 00 00 	lea    0x31f1(%rip),%rbx        # 4051c8 <.rdata+0x88>
  401fd7:	e9 5c ff ff ff       	jmpq   401f38 <_matherr+0x38>
  401fdc:	0f 1f 40 00          	nopl   0x0(%rax)
  401fe0:	48 8d 1d b9 31 00 00 	lea    0x31b9(%rip),%rbx        # 4051a0 <.rdata+0x60>
  401fe7:	e9 4c ff ff ff       	jmpq   401f38 <_matherr+0x38>
  401fec:	0f 1f 40 00          	nopl   0x0(%rax)
  401ff0:	48 8d 1d 2f 32 00 00 	lea    0x322f(%rip),%rbx        # 405226 <.rdata+0xe6>
  401ff7:	e9 3c ff ff ff       	jmpq   401f38 <_matherr+0x38>
  401ffc:	90                   	nop
  401ffd:	90                   	nop
  401ffe:	90                   	nop
  401fff:	90                   	nop

0000000000402000 <_fpreset>:
  402000:	db e3                	fninit 
  402002:	c3                   	retq   
  402003:	90                   	nop
  402004:	90                   	nop
  402005:	90                   	nop
  402006:	90                   	nop
  402007:	90                   	nop
  402008:	90                   	nop
  402009:	90                   	nop
  40200a:	90                   	nop
  40200b:	90                   	nop
  40200c:	90                   	nop
  40200d:	90                   	nop
  40200e:	90                   	nop
  40200f:	90                   	nop

0000000000402010 <_decode_pointer>:
  402010:	48 89 c8             	mov    %rcx,%rax
  402013:	c3                   	retq   
  402014:	66 90                	xchg   %ax,%ax
  402016:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40201d:	00 00 00 

0000000000402020 <_encode_pointer>:
  402020:	48 89 c8             	mov    %rcx,%rax
  402023:	c3                   	retq   
  402024:	90                   	nop
  402025:	90                   	nop
  402026:	90                   	nop
  402027:	90                   	nop
  402028:	90                   	nop
  402029:	90                   	nop
  40202a:	90                   	nop
  40202b:	90                   	nop
  40202c:	90                   	nop
  40202d:	90                   	nop
  40202e:	90                   	nop
  40202f:	90                   	nop

0000000000402030 <__write_memory.part.0>:
  402030:	41 54                	push   %r12
  402032:	55                   	push   %rbp
  402033:	57                   	push   %rdi
  402034:	56                   	push   %rsi
  402035:	53                   	push   %rbx
  402036:	48 83 ec 50          	sub    $0x50,%rsp
  40203a:	48 63 35 e3 65 00 00 	movslq 0x65e3(%rip),%rsi        # 408624 <maxSections>
  402041:	85 f6                	test   %esi,%esi
  402043:	48 89 cb             	mov    %rcx,%rbx
  402046:	48 89 d5             	mov    %rdx,%rbp
  402049:	4c 89 c7             	mov    %r8,%rdi
  40204c:	0f 8e 66 01 00 00    	jle    4021b8 <__write_memory.part.0+0x188>
  402052:	48 8b 05 cf 65 00 00 	mov    0x65cf(%rip),%rax        # 408628 <the_secs>
  402059:	31 c9                	xor    %ecx,%ecx
  40205b:	48 83 c0 18          	add    $0x18,%rax
  40205f:	90                   	nop
  402060:	48 8b 10             	mov    (%rax),%rdx
  402063:	48 39 d3             	cmp    %rdx,%rbx
  402066:	72 14                	jb     40207c <__write_memory.part.0+0x4c>
  402068:	4c 8b 40 08          	mov    0x8(%rax),%r8
  40206c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  402070:	4c 01 c2             	add    %r8,%rdx
  402073:	48 39 d3             	cmp    %rdx,%rbx
  402076:	0f 82 89 00 00 00    	jb     402105 <__write_memory.part.0+0xd5>
  40207c:	83 c1 01             	add    $0x1,%ecx
  40207f:	48 83 c0 28          	add    $0x28,%rax
  402083:	39 f1                	cmp    %esi,%ecx
  402085:	75 d9                	jne    402060 <__write_memory.part.0+0x30>
  402087:	48 89 d9             	mov    %rbx,%rcx
  40208a:	e8 41 0c 00 00       	callq  402cd0 <__mingw_GetSectionForAddress>
  40208f:	48 85 c0             	test   %rax,%rax
  402092:	49 89 c4             	mov    %rax,%r12
  402095:	0f 84 52 01 00 00    	je     4021ed <__write_memory.part.0+0x1bd>
  40209b:	48 8b 05 86 65 00 00 	mov    0x6586(%rip),%rax        # 408628 <the_secs>
  4020a2:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  4020a6:	48 c1 e6 03          	shl    $0x3,%rsi
  4020aa:	48 01 f0             	add    %rsi,%rax
  4020ad:	4c 89 60 20          	mov    %r12,0x20(%rax)
  4020b1:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4020b7:	e8 44 0d 00 00       	callq  402e00 <_GetPEImageBase>
  4020bc:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  4020c1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4020c6:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  4020cc:	48 01 c1             	add    %rax,%rcx
  4020cf:	48 8b 05 52 65 00 00 	mov    0x6552(%rip),%rax        # 408628 <the_secs>
  4020d6:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  4020db:	ff 15 ab 71 00 00    	callq  *0x71ab(%rip)        # 40928c <__imp_VirtualQuery>
  4020e1:	48 85 c0             	test   %rax,%rax
  4020e4:	0f 84 e6 00 00 00    	je     4021d0 <__write_memory.part.0+0x1a0>
  4020ea:	8b 44 24 44          	mov    0x44(%rsp),%eax
  4020ee:	8d 50 fc             	lea    -0x4(%rax),%edx
  4020f1:	83 e2 fb             	and    $0xfffffffb,%edx
  4020f4:	74 08                	je     4020fe <__write_memory.part.0+0xce>
  4020f6:	83 e8 40             	sub    $0x40,%eax
  4020f9:	83 e0 bf             	and    $0xffffffbf,%eax
  4020fc:	75 62                	jne    402160 <__write_memory.part.0+0x130>
  4020fe:	83 05 1f 65 00 00 01 	addl   $0x1,0x651f(%rip)        # 408624 <maxSections>
  402105:	83 ff 08             	cmp    $0x8,%edi
  402108:	73 29                	jae    402133 <__write_memory.part.0+0x103>
  40210a:	40 f6 c7 04          	test   $0x4,%dil
  40210e:	0f 85 90 00 00 00    	jne    4021a4 <__write_memory.part.0+0x174>
  402114:	85 ff                	test   %edi,%edi
  402116:	74 10                	je     402128 <__write_memory.part.0+0xf8>
  402118:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  40211c:	40 f6 c7 02          	test   $0x2,%dil
  402120:	88 03                	mov    %al,(%rbx)
  402122:	0f 85 97 00 00 00    	jne    4021bf <__write_memory.part.0+0x18f>
  402128:	48 83 c4 50          	add    $0x50,%rsp
  40212c:	5b                   	pop    %rbx
  40212d:	5e                   	pop    %rsi
  40212e:	5f                   	pop    %rdi
  40212f:	5d                   	pop    %rbp
  402130:	41 5c                	pop    %r12
  402132:	c3                   	retq   
  402133:	89 f8                	mov    %edi,%eax
  402135:	83 ef 01             	sub    $0x1,%edi
  402138:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  40213d:	83 ff 08             	cmp    $0x8,%edi
  402140:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  402145:	72 e1                	jb     402128 <__write_memory.part.0+0xf8>
  402147:	83 e7 f8             	and    $0xfffffff8,%edi
  40214a:	31 c0                	xor    %eax,%eax
  40214c:	89 c2                	mov    %eax,%edx
  40214e:	83 c0 08             	add    $0x8,%eax
  402151:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  402156:	39 f8                	cmp    %edi,%eax
  402158:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  40215c:	72 ee                	jb     40214c <__write_memory.part.0+0x11c>
  40215e:	eb c8                	jmp    402128 <__write_memory.part.0+0xf8>
  402160:	48 03 35 c1 64 00 00 	add    0x64c1(%rip),%rsi        # 408628 <the_secs>
  402167:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  40216d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402172:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  402177:	49 89 f1             	mov    %rsi,%r9
  40217a:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  40217e:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  402182:	ff 15 fc 70 00 00    	callq  *0x70fc(%rip)        # 409284 <__imp_VirtualProtect>
  402188:	85 c0                	test   %eax,%eax
  40218a:	0f 85 6e ff ff ff    	jne    4020fe <__write_memory.part.0+0xce>
  402190:	ff 15 6e 70 00 00    	callq  *0x706e(%rip)        # 409204 <__imp_GetLastError>
  402196:	48 8d 0d 5b 31 00 00 	lea    0x315b(%rip),%rcx        # 4052f8 <.rdata+0x78>
  40219d:	89 c2                	mov    %eax,%edx
  40219f:	e8 1c 10 00 00       	callq  4031c0 <__report_error>
  4021a4:	8b 45 00             	mov    0x0(%rbp),%eax
  4021a7:	89 ff                	mov    %edi,%edi
  4021a9:	89 03                	mov    %eax,(%rbx)
  4021ab:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  4021af:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  4021b3:	e9 70 ff ff ff       	jmpq   402128 <__write_memory.part.0+0xf8>
  4021b8:	31 f6                	xor    %esi,%esi
  4021ba:	e9 c8 fe ff ff       	jmpq   402087 <__write_memory.part.0+0x57>
  4021bf:	89 ff                	mov    %edi,%edi
  4021c1:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  4021c6:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  4021cb:	e9 58 ff ff ff       	jmpq   402128 <__write_memory.part.0+0xf8>
  4021d0:	48 8b 05 51 64 00 00 	mov    0x6451(%rip),%rax        # 408628 <the_secs>
  4021d7:	48 8d 0d e2 30 00 00 	lea    0x30e2(%rip),%rcx        # 4052c0 <.rdata+0x40>
  4021de:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  4021e3:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  4021e8:	e8 d3 0f 00 00       	callq  4031c0 <__report_error>
  4021ed:	48 8d 0d ac 30 00 00 	lea    0x30ac(%rip),%rcx        # 4052a0 <.rdata+0x20>
  4021f4:	48 89 da             	mov    %rbx,%rdx
  4021f7:	e8 c4 0f 00 00       	callq  4031c0 <__report_error>
  4021fc:	90                   	nop
  4021fd:	0f 1f 00             	nopl   (%rax)

0000000000402200 <_pei386_runtime_relocator>:
  402200:	55                   	push   %rbp
  402201:	41 57                	push   %r15
  402203:	41 56                	push   %r14
  402205:	41 55                	push   %r13
  402207:	41 54                	push   %r12
  402209:	57                   	push   %rdi
  40220a:	56                   	push   %rsi
  40220b:	53                   	push   %rbx
  40220c:	48 83 ec 38          	sub    $0x38,%rsp
  402210:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  402217:	00 
  402218:	8b 1d 02 64 00 00    	mov    0x6402(%rip),%ebx        # 408620 <was_init.95174>
  40221e:	85 db                	test   %ebx,%ebx
  402220:	74 11                	je     402233 <_pei386_runtime_relocator+0x33>
  402222:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  402226:	5b                   	pop    %rbx
  402227:	5e                   	pop    %rsi
  402228:	5f                   	pop    %rdi
  402229:	41 5c                	pop    %r12
  40222b:	41 5d                	pop    %r13
  40222d:	41 5e                	pop    %r14
  40222f:	41 5f                	pop    %r15
  402231:	5d                   	pop    %rbp
  402232:	c3                   	retq   
  402233:	c7 05 e3 63 00 00 01 	movl   $0x1,0x63e3(%rip)        # 408620 <was_init.95174>
  40223a:	00 00 00 
  40223d:	e8 0e 0b 00 00       	callq  402d50 <__mingw_GetSectionCount>
  402242:	48 98                	cltq   
  402244:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402248:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  40224f:	00 
  402250:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402254:	e8 37 0d 00 00       	callq  402f90 <___chkstk_ms>
  402259:	4c 8b 25 70 31 00 00 	mov    0x3170(%rip),%r12        # 4053d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  402260:	c7 05 ba 63 00 00 00 	movl   $0x0,0x63ba(%rip)        # 408624 <maxSections>
  402267:	00 00 00 
  40226a:	48 8b 35 6f 31 00 00 	mov    0x316f(%rip),%rsi        # 4053e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  402271:	48 29 c4             	sub    %rax,%rsp
  402274:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  402279:	48 89 05 a8 63 00 00 	mov    %rax,0x63a8(%rip)        # 408628 <the_secs>
  402280:	4c 89 e0             	mov    %r12,%rax
  402283:	48 29 f0             	sub    %rsi,%rax
  402286:	48 83 f8 07          	cmp    $0x7,%rax
  40228a:	7e 96                	jle    402222 <_pei386_runtime_relocator+0x22>
  40228c:	48 83 f8 0b          	cmp    $0xb,%rax
  402290:	8b 16                	mov    (%rsi),%edx
  402292:	0f 8e c8 00 00 00    	jle    402360 <_pei386_runtime_relocator+0x160>
  402298:	85 d2                	test   %edx,%edx
  40229a:	0f 84 a4 00 00 00    	je     402344 <_pei386_runtime_relocator+0x144>
  4022a0:	4c 39 e6             	cmp    %r12,%rsi
  4022a3:	0f 83 79 ff ff ff    	jae    402222 <_pei386_runtime_relocator+0x22>
  4022a9:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  4022ad:	49 83 c4 07          	add    $0x7,%r12
  4022b1:	4c 8b 2d 48 31 00 00 	mov    0x3148(%rip),%r13        # 405400 <.refptr.__image_base__>
  4022b8:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  4022bc:	4d 29 f4             	sub    %r14,%r12
  4022bf:	49 c1 ec 03          	shr    $0x3,%r12
  4022c3:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  4022c8:	eb 0a                	jmp    4022d4 <_pei386_runtime_relocator+0xd4>
  4022ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4022d0:	49 83 c6 08          	add    $0x8,%r14
  4022d4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4022d7:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4022dd:	48 89 fa             	mov    %rdi,%rdx
  4022e0:	8b 06                	mov    (%rsi),%eax
  4022e2:	4c 89 f6             	mov    %r14,%rsi
  4022e5:	4c 01 e9             	add    %r13,%rcx
  4022e8:	03 01                	add    (%rcx),%eax
  4022ea:	89 45 a8             	mov    %eax,-0x58(%rbp)
  4022ed:	e8 3e fd ff ff       	callq  402030 <__write_memory.part.0>
  4022f2:	4d 39 e6             	cmp    %r12,%r14
  4022f5:	75 d9                	jne    4022d0 <_pei386_runtime_relocator+0xd0>
  4022f7:	8b 05 27 63 00 00    	mov    0x6327(%rip),%eax        # 408624 <maxSections>
  4022fd:	31 f6                	xor    %esi,%esi
  4022ff:	4c 8b 25 7e 6f 00 00 	mov    0x6f7e(%rip),%r12        # 409284 <__imp_VirtualProtect>
  402306:	85 c0                	test   %eax,%eax
  402308:	0f 8e 14 ff ff ff    	jle    402222 <_pei386_runtime_relocator+0x22>
  40230e:	66 90                	xchg   %ax,%ax
  402310:	48 8b 05 11 63 00 00 	mov    0x6311(%rip),%rax        # 408628 <the_secs>
  402317:	48 01 f0             	add    %rsi,%rax
  40231a:	44 8b 00             	mov    (%rax),%r8d
  40231d:	45 85 c0             	test   %r8d,%r8d
  402320:	74 0e                	je     402330 <_pei386_runtime_relocator+0x130>
  402322:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402326:	49 89 f9             	mov    %rdi,%r9
  402329:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40232d:	41 ff d4             	callq  *%r12
  402330:	83 c3 01             	add    $0x1,%ebx
  402333:	48 83 c6 28          	add    $0x28,%rsi
  402337:	3b 1d e7 62 00 00    	cmp    0x62e7(%rip),%ebx        # 408624 <maxSections>
  40233d:	7c d1                	jl     402310 <_pei386_runtime_relocator+0x110>
  40233f:	e9 de fe ff ff       	jmpq   402222 <_pei386_runtime_relocator+0x22>
  402344:	8b 4e 04             	mov    0x4(%rsi),%ecx
  402347:	85 c9                	test   %ecx,%ecx
  402349:	0f 85 51 ff ff ff    	jne    4022a0 <_pei386_runtime_relocator+0xa0>
  40234f:	8b 56 08             	mov    0x8(%rsi),%edx
  402352:	85 d2                	test   %edx,%edx
  402354:	75 1d                	jne    402373 <_pei386_runtime_relocator+0x173>
  402356:	8b 56 0c             	mov    0xc(%rsi),%edx
  402359:	48 83 c6 0c          	add    $0xc,%rsi
  40235d:	0f 1f 00             	nopl   (%rax)
  402360:	85 d2                	test   %edx,%edx
  402362:	0f 85 38 ff ff ff    	jne    4022a0 <_pei386_runtime_relocator+0xa0>
  402368:	8b 46 04             	mov    0x4(%rsi),%eax
  40236b:	85 c0                	test   %eax,%eax
  40236d:	0f 85 2d ff ff ff    	jne    4022a0 <_pei386_runtime_relocator+0xa0>
  402373:	8b 56 08             	mov    0x8(%rsi),%edx
  402376:	83 fa 01             	cmp    $0x1,%edx
  402379:	0f 85 2f 01 00 00    	jne    4024ae <_pei386_runtime_relocator+0x2ae>
  40237f:	4c 8b 2d 7a 30 00 00 	mov    0x307a(%rip),%r13        # 405400 <.refptr.__image_base__>
  402386:	48 83 c6 0c          	add    $0xc,%rsi
  40238a:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  402391:	ff ff ff 
  402394:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  402398:	4c 39 e6             	cmp    %r12,%rsi
  40239b:	72 48                	jb     4023e5 <_pei386_runtime_relocator+0x1e5>
  40239d:	e9 80 fe ff ff       	jmpq   402222 <_pei386_runtime_relocator+0x22>
  4023a2:	0f 86 b8 00 00 00    	jbe    402460 <_pei386_runtime_relocator+0x260>
  4023a8:	83 fa 20             	cmp    $0x20,%edx
  4023ab:	0f 84 7f 00 00 00    	je     402430 <_pei386_runtime_relocator+0x230>
  4023b1:	83 fa 40             	cmp    $0x40,%edx
  4023b4:	0f 85 e0 00 00 00    	jne    40249a <_pei386_runtime_relocator+0x29a>
  4023ba:	48 8b 11             	mov    (%rcx),%rdx
  4023bd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4023c3:	4c 89 f7             	mov    %r14,%rdi
  4023c6:	48 29 c2             	sub    %rax,%rdx
  4023c9:	4c 01 ca             	add    %r9,%rdx
  4023cc:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  4023d0:	4c 89 f2             	mov    %r14,%rdx
  4023d3:	e8 58 fc ff ff       	callq  402030 <__write_memory.part.0>
  4023d8:	48 83 c6 0c          	add    $0xc,%rsi
  4023dc:	4c 39 e6             	cmp    %r12,%rsi
  4023df:	0f 83 12 ff ff ff    	jae    4022f7 <_pei386_runtime_relocator+0xf7>
  4023e5:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4023e8:	8b 06                	mov    (%rsi),%eax
  4023ea:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  4023ee:	4c 01 e9             	add    %r13,%rcx
  4023f1:	4c 01 e8             	add    %r13,%rax
  4023f4:	83 fa 10             	cmp    $0x10,%edx
  4023f7:	4c 8b 08             	mov    (%rax),%r9
  4023fa:	75 a6                	jne    4023a2 <_pei386_runtime_relocator+0x1a2>
  4023fc:	44 0f b7 01          	movzwl (%rcx),%r8d
  402400:	4c 89 f2             	mov    %r14,%rdx
  402403:	4c 89 f7             	mov    %r14,%rdi
  402406:	4d 89 c2             	mov    %r8,%r10
  402409:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  402410:	66 45 85 c0          	test   %r8w,%r8w
  402414:	4d 0f 48 c2          	cmovs  %r10,%r8
  402418:	49 29 c0             	sub    %rax,%r8
  40241b:	4d 01 c8             	add    %r9,%r8
  40241e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  402422:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  402428:	e8 03 fc ff ff       	callq  402030 <__write_memory.part.0>
  40242d:	eb a9                	jmp    4023d8 <_pei386_runtime_relocator+0x1d8>
  40242f:	90                   	nop
  402430:	8b 11                	mov    (%rcx),%edx
  402432:	4c 89 f7             	mov    %r14,%rdi
  402435:	49 89 d0             	mov    %rdx,%r8
  402438:	4c 09 fa             	or     %r15,%rdx
  40243b:	45 85 c0             	test   %r8d,%r8d
  40243e:	49 0f 49 d0          	cmovns %r8,%rdx
  402442:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402448:	48 29 c2             	sub    %rax,%rdx
  40244b:	4c 01 ca             	add    %r9,%rdx
  40244e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  402452:	4c 89 f2             	mov    %r14,%rdx
  402455:	e8 d6 fb ff ff       	callq  402030 <__write_memory.part.0>
  40245a:	e9 79 ff ff ff       	jmpq   4023d8 <_pei386_runtime_relocator+0x1d8>
  40245f:	90                   	nop
  402460:	83 fa 08             	cmp    $0x8,%edx
  402463:	75 35                	jne    40249a <_pei386_runtime_relocator+0x29a>
  402465:	44 0f b6 01          	movzbl (%rcx),%r8d
  402469:	4c 89 f2             	mov    %r14,%rdx
  40246c:	4c 89 f7             	mov    %r14,%rdi
  40246f:	4d 89 c2             	mov    %r8,%r10
  402472:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  402479:	45 84 c0             	test   %r8b,%r8b
  40247c:	4d 0f 48 c2          	cmovs  %r10,%r8
  402480:	49 29 c0             	sub    %rax,%r8
  402483:	4d 01 c8             	add    %r9,%r8
  402486:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  40248a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402490:	e8 9b fb ff ff       	callq  402030 <__write_memory.part.0>
  402495:	e9 3e ff ff ff       	jmpq   4023d8 <_pei386_runtime_relocator+0x1d8>
  40249a:	48 8d 0d b7 2e 00 00 	lea    0x2eb7(%rip),%rcx        # 405358 <.rdata+0xd8>
  4024a1:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  4024a8:	00 
  4024a9:	e8 12 0d 00 00       	callq  4031c0 <__report_error>
  4024ae:	48 8d 0d 6b 2e 00 00 	lea    0x2e6b(%rip),%rcx        # 405320 <.rdata+0xa0>
  4024b5:	e8 06 0d 00 00       	callq  4031c0 <__report_error>
  4024ba:	90                   	nop
  4024bb:	90                   	nop
  4024bc:	90                   	nop
  4024bd:	90                   	nop
  4024be:	90                   	nop
  4024bf:	90                   	nop

00000000004024c0 <__mingw_SEH_error_handler>:
  4024c0:	48 83 ec 28          	sub    $0x28,%rsp
  4024c4:	8b 01                	mov    (%rcx),%eax
  4024c6:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  4024cb:	77 63                	ja     402530 <__mingw_SEH_error_handler+0x70>
  4024cd:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  4024d2:	73 7b                	jae    40254f <__mingw_SEH_error_handler+0x8f>
  4024d4:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4024d9:	0f 84 05 01 00 00    	je     4025e4 <__mingw_SEH_error_handler+0x124>
  4024df:	0f 87 cb 00 00 00    	ja     4025b0 <__mingw_SEH_error_handler+0xf0>
  4024e5:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4024ea:	0f 84 f4 00 00 00    	je     4025e4 <__mingw_SEH_error_handler+0x124>
  4024f0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4024f5:	0f 85 c3 00 00 00    	jne    4025be <__mingw_SEH_error_handler+0xfe>
  4024fb:	31 d2                	xor    %edx,%edx
  4024fd:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402502:	e8 e1 0a 00 00       	callq  402fe8 <signal>
  402507:	48 83 f8 01          	cmp    $0x1,%rax
  40250b:	0f 84 2f 01 00 00    	je     402640 <__mingw_SEH_error_handler+0x180>
  402511:	48 85 c0             	test   %rax,%rax
  402514:	0f 84 3c 01 00 00    	je     402656 <__mingw_SEH_error_handler+0x196>
  40251a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40251f:	ff d0                	callq  *%rax
  402521:	31 c0                	xor    %eax,%eax
  402523:	48 83 c4 28          	add    $0x28,%rsp
  402527:	c3                   	retq   
  402528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40252f:	00 
  402530:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  402535:	0f 84 b5 00 00 00    	je     4025f0 <__mingw_SEH_error_handler+0x130>
  40253b:	77 37                	ja     402574 <__mingw_SEH_error_handler+0xb4>
  40253d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  402542:	0f 84 9c 00 00 00    	je     4025e4 <__mingw_SEH_error_handler+0x124>
  402548:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  40254d:	75 6f                	jne    4025be <__mingw_SEH_error_handler+0xfe>
  40254f:	31 d2                	xor    %edx,%edx
  402551:	b9 08 00 00 00       	mov    $0x8,%ecx
  402556:	e8 8d 0a 00 00       	callq  402fe8 <signal>
  40255b:	48 83 f8 01          	cmp    $0x1,%rax
  40255f:	74 6f                	je     4025d0 <__mingw_SEH_error_handler+0x110>
  402561:	48 85 c0             	test   %rax,%rax
  402564:	74 58                	je     4025be <__mingw_SEH_error_handler+0xfe>
  402566:	b9 08 00 00 00       	mov    $0x8,%ecx
  40256b:	ff d0                	callq  *%rax
  40256d:	31 c0                	xor    %eax,%eax
  40256f:	48 83 c4 28          	add    $0x28,%rsp
  402573:	c3                   	retq   
  402574:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  402579:	74 69                	je     4025e4 <__mingw_SEH_error_handler+0x124>
  40257b:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402580:	75 3c                	jne    4025be <__mingw_SEH_error_handler+0xfe>
  402582:	31 d2                	xor    %edx,%edx
  402584:	b9 04 00 00 00       	mov    $0x4,%ecx
  402589:	e8 5a 0a 00 00       	callq  402fe8 <signal>
  40258e:	48 83 f8 01          	cmp    $0x1,%rax
  402592:	0f 84 88 00 00 00    	je     402620 <__mingw_SEH_error_handler+0x160>
  402598:	48 85 c0             	test   %rax,%rax
  40259b:	0f 84 b5 00 00 00    	je     402656 <__mingw_SEH_error_handler+0x196>
  4025a1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4025a6:	ff d0                	callq  *%rax
  4025a8:	31 c0                	xor    %eax,%eax
  4025aa:	48 83 c4 28          	add    $0x28,%rsp
  4025ae:	c3                   	retq   
  4025af:	90                   	nop
  4025b0:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4025b5:	74 cb                	je     402582 <__mingw_SEH_error_handler+0xc2>
  4025b7:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  4025bc:	74 26                	je     4025e4 <__mingw_SEH_error_handler+0x124>
  4025be:	b8 01 00 00 00       	mov    $0x1,%eax
  4025c3:	48 83 c4 28          	add    $0x28,%rsp
  4025c7:	c3                   	retq   
  4025c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025cf:	00 
  4025d0:	ba 01 00 00 00       	mov    $0x1,%edx
  4025d5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4025da:	e8 09 0a 00 00       	callq  402fe8 <signal>
  4025df:	e8 1c fa ff ff       	callq  402000 <_fpreset>
  4025e4:	31 c0                	xor    %eax,%eax
  4025e6:	48 83 c4 28          	add    $0x28,%rsp
  4025ea:	c3                   	retq   
  4025eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025f0:	31 d2                	xor    %edx,%edx
  4025f2:	b9 08 00 00 00       	mov    $0x8,%ecx
  4025f7:	e8 ec 09 00 00       	callq  402fe8 <signal>
  4025fc:	48 83 f8 01          	cmp    $0x1,%rax
  402600:	0f 85 5b ff ff ff    	jne    402561 <__mingw_SEH_error_handler+0xa1>
  402606:	ba 01 00 00 00       	mov    $0x1,%edx
  40260b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402610:	e8 d3 09 00 00       	callq  402fe8 <signal>
  402615:	31 c0                	xor    %eax,%eax
  402617:	e9 07 ff ff ff       	jmpq   402523 <__mingw_SEH_error_handler+0x63>
  40261c:	0f 1f 40 00          	nopl   0x0(%rax)
  402620:	ba 01 00 00 00       	mov    $0x1,%edx
  402625:	b9 04 00 00 00       	mov    $0x4,%ecx
  40262a:	e8 b9 09 00 00       	callq  402fe8 <signal>
  40262f:	31 c0                	xor    %eax,%eax
  402631:	e9 ed fe ff ff       	jmpq   402523 <__mingw_SEH_error_handler+0x63>
  402636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40263d:	00 00 00 
  402640:	ba 01 00 00 00       	mov    $0x1,%edx
  402645:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40264a:	e8 99 09 00 00       	callq  402fe8 <signal>
  40264f:	31 c0                	xor    %eax,%eax
  402651:	e9 cd fe ff ff       	jmpq   402523 <__mingw_SEH_error_handler+0x63>
  402656:	b8 04 00 00 00       	mov    $0x4,%eax
  40265b:	e9 c3 fe ff ff       	jmpq   402523 <__mingw_SEH_error_handler+0x63>

0000000000402660 <__mingw_init_ehandler>:
  402660:	41 54                	push   %r12
  402662:	55                   	push   %rbp
  402663:	57                   	push   %rdi
  402664:	56                   	push   %rsi
  402665:	53                   	push   %rbx
  402666:	48 83 ec 20          	sub    $0x20,%rsp
  40266a:	e8 91 07 00 00       	callq  402e00 <_GetPEImageBase>
  40266f:	48 89 c5             	mov    %rax,%rbp
  402672:	8b 05 d0 5f 00 00    	mov    0x5fd0(%rip),%eax        # 408648 <was_here.95013>
  402678:	85 c0                	test   %eax,%eax
  40267a:	75 25                	jne    4026a1 <__mingw_init_ehandler+0x41>
  40267c:	48 85 ed             	test   %rbp,%rbp
  40267f:	74 20                	je     4026a1 <__mingw_init_ehandler+0x41>
  402681:	48 8d 0d 08 2d 00 00 	lea    0x2d08(%rip),%rcx        # 405390 <.rdata>
  402688:	c7 05 b6 5f 00 00 01 	movl   $0x1,0x5fb6(%rip)        # 408648 <was_here.95013>
  40268f:	00 00 00 
  402692:	e8 a9 05 00 00       	callq  402c40 <_FindPESectionByName>
  402697:	48 85 c0             	test   %rax,%rax
  40269a:	74 14                	je     4026b0 <__mingw_init_ehandler+0x50>
  40269c:	b8 01 00 00 00       	mov    $0x1,%eax
  4026a1:	48 83 c4 20          	add    $0x20,%rsp
  4026a5:	5b                   	pop    %rbx
  4026a6:	5e                   	pop    %rsi
  4026a7:	5f                   	pop    %rdi
  4026a8:	5d                   	pop    %rbp
  4026a9:	41 5c                	pop    %r12
  4026ab:	c3                   	retq   
  4026ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4026b0:	48 8d 1d a9 60 00 00 	lea    0x60a9(%rip),%rbx        # 408760 <emu_pdata>
  4026b7:	b9 30 00 00 00       	mov    $0x30,%ecx
  4026bc:	31 f6                	xor    %esi,%esi
  4026be:	48 8d 15 9b 5f 00 00 	lea    0x5f9b(%rip),%rdx        # 408660 <emu_xdata>
  4026c5:	48 89 df             	mov    %rbx,%rdi
  4026c8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026cb:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 4024c0 <__mingw_SEH_error_handler>
  4026d2:	b9 20 00 00 00       	mov    $0x20,%ecx
  4026d7:	48 89 d7             	mov    %rdx,%rdi
  4026da:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026dd:	49 29 ec             	sub    %rbp,%r12
  4026e0:	48 89 d7             	mov    %rdx,%rdi
  4026e3:	eb 2e                	jmp    402713 <__mingw_init_ehandler+0xb3>
  4026e5:	c6 07 09             	movb   $0x9,(%rdi)
  4026e8:	48 83 c6 01          	add    $0x1,%rsi
  4026ec:	48 83 c3 0c          	add    $0xc,%rbx
  4026f0:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  4026f4:	8b 48 0c             	mov    0xc(%rax),%ecx
  4026f7:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  4026fa:	03 48 08             	add    0x8(%rax),%ecx
  4026fd:	48 89 f8             	mov    %rdi,%rax
  402700:	48 83 c7 08          	add    $0x8,%rdi
  402704:	48 29 e8             	sub    %rbp,%rax
  402707:	89 43 fc             	mov    %eax,-0x4(%rbx)
  40270a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  40270d:	48 83 fe 20          	cmp    $0x20,%rsi
  402711:	74 32                	je     402745 <__mingw_init_ehandler+0xe5>
  402713:	48 89 f1             	mov    %rsi,%rcx
  402716:	e8 75 06 00 00       	callq  402d90 <_FindPESectionExec>
  40271b:	48 85 c0             	test   %rax,%rax
  40271e:	75 c5                	jne    4026e5 <__mingw_init_ehandler+0x85>
  402720:	48 85 f6             	test   %rsi,%rsi
  402723:	89 f2                	mov    %esi,%edx
  402725:	0f 84 71 ff ff ff    	je     40269c <__mingw_init_ehandler+0x3c>
  40272b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402730:	48 8d 0d 29 60 00 00 	lea    0x6029(%rip),%rcx        # 408760 <emu_pdata>
  402737:	49 89 e8             	mov    %rbp,%r8
  40273a:	ff 15 fc 6a 00 00    	callq  *0x6afc(%rip)        # 40923c <__imp_RtlAddFunctionTable>
  402740:	e9 57 ff ff ff       	jmpq   40269c <__mingw_init_ehandler+0x3c>
  402745:	ba 20 00 00 00       	mov    $0x20,%edx
  40274a:	eb e4                	jmp    402730 <__mingw_init_ehandler+0xd0>
  40274c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402750 <_gnu_exception_handler>:
  402750:	53                   	push   %rbx
  402751:	48 83 ec 20          	sub    $0x20,%rsp
  402755:	48 8b 11             	mov    (%rcx),%rdx
  402758:	8b 02                	mov    (%rdx),%eax
  40275a:	48 89 cb             	mov    %rcx,%rbx
  40275d:	89 c1                	mov    %eax,%ecx
  40275f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402765:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40276b:	0f 84 bf 00 00 00    	je     402830 <_gnu_exception_handler+0xe0>
  402771:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  402776:	77 68                	ja     4027e0 <_gnu_exception_handler+0x90>
  402778:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  40277d:	73 7c                	jae    4027fb <_gnu_exception_handler+0xab>
  40277f:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402784:	0f 84 b0 00 00 00    	je     40283a <_gnu_exception_handler+0xea>
  40278a:	0f 87 f4 00 00 00    	ja     402884 <_gnu_exception_handler+0x134>
  402790:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402795:	0f 84 9f 00 00 00    	je     40283a <_gnu_exception_handler+0xea>
  40279b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4027a0:	75 1f                	jne    4027c1 <_gnu_exception_handler+0x71>
  4027a2:	31 d2                	xor    %edx,%edx
  4027a4:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4027a9:	e8 3a 08 00 00       	callq  402fe8 <signal>
  4027ae:	48 83 f8 01          	cmp    $0x1,%rax
  4027b2:	0f 84 51 01 00 00    	je     402909 <_gnu_exception_handler+0x1b9>
  4027b8:	48 85 c0             	test   %rax,%rax
  4027bb:	0f 85 0f 01 00 00    	jne    4028d0 <_gnu_exception_handler+0x180>
  4027c1:	48 8b 05 78 5e 00 00 	mov    0x5e78(%rip),%rax        # 408640 <__mingw_oldexcpt_handler>
  4027c8:	48 85 c0             	test   %rax,%rax
  4027cb:	0f 84 10 01 00 00    	je     4028e1 <_gnu_exception_handler+0x191>
  4027d1:	48 89 d9             	mov    %rbx,%rcx
  4027d4:	48 83 c4 20          	add    $0x20,%rsp
  4027d8:	5b                   	pop    %rbx
  4027d9:	48 ff e0             	rex.W jmpq *%rax
  4027dc:	0f 1f 40 00          	nopl   0x0(%rax)
  4027e0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  4027e5:	0f 84 b5 00 00 00    	je     4028a0 <_gnu_exception_handler+0x150>
  4027eb:	77 58                	ja     402845 <_gnu_exception_handler+0xf5>
  4027ed:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4027f2:	74 46                	je     40283a <_gnu_exception_handler+0xea>
  4027f4:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4027f9:	75 c6                	jne    4027c1 <_gnu_exception_handler+0x71>
  4027fb:	31 d2                	xor    %edx,%edx
  4027fd:	b9 08 00 00 00       	mov    $0x8,%ecx
  402802:	e8 e1 07 00 00       	callq  402fe8 <signal>
  402807:	48 83 f8 01          	cmp    $0x1,%rax
  40280b:	0f 84 df 00 00 00    	je     4028f0 <_gnu_exception_handler+0x1a0>
  402811:	48 85 c0             	test   %rax,%rax
  402814:	74 ab                	je     4027c1 <_gnu_exception_handler+0x71>
  402816:	b9 08 00 00 00       	mov    $0x8,%ecx
  40281b:	ff d0                	callq  *%rax
  40281d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402822:	48 83 c4 20          	add    $0x20,%rsp
  402826:	5b                   	pop    %rbx
  402827:	c3                   	retq   
  402828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40282f:	00 
  402830:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402834:	0f 85 37 ff ff ff    	jne    402771 <_gnu_exception_handler+0x21>
  40283a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40283f:	48 83 c4 20          	add    $0x20,%rsp
  402843:	5b                   	pop    %rbx
  402844:	c3                   	retq   
  402845:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  40284a:	74 ee                	je     40283a <_gnu_exception_handler+0xea>
  40284c:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402851:	0f 85 6a ff ff ff    	jne    4027c1 <_gnu_exception_handler+0x71>
  402857:	31 d2                	xor    %edx,%edx
  402859:	b9 04 00 00 00       	mov    $0x4,%ecx
  40285e:	e8 85 07 00 00       	callq  402fe8 <signal>
  402863:	48 83 f8 01          	cmp    $0x1,%rax
  402867:	0f 84 b3 00 00 00    	je     402920 <_gnu_exception_handler+0x1d0>
  40286d:	48 85 c0             	test   %rax,%rax
  402870:	0f 84 4b ff ff ff    	je     4027c1 <_gnu_exception_handler+0x71>
  402876:	b9 04 00 00 00       	mov    $0x4,%ecx
  40287b:	ff d0                	callq  *%rax
  40287d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402882:	eb 9e                	jmp    402822 <_gnu_exception_handler+0xd2>
  402884:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402889:	74 cc                	je     402857 <_gnu_exception_handler+0x107>
  40288b:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  402890:	0f 85 2b ff ff ff    	jne    4027c1 <_gnu_exception_handler+0x71>
  402896:	eb a2                	jmp    40283a <_gnu_exception_handler+0xea>
  402898:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40289f:	00 
  4028a0:	31 d2                	xor    %edx,%edx
  4028a2:	b9 08 00 00 00       	mov    $0x8,%ecx
  4028a7:	e8 3c 07 00 00       	callq  402fe8 <signal>
  4028ac:	48 83 f8 01          	cmp    $0x1,%rax
  4028b0:	0f 85 5b ff ff ff    	jne    402811 <_gnu_exception_handler+0xc1>
  4028b6:	ba 01 00 00 00       	mov    $0x1,%edx
  4028bb:	b9 08 00 00 00       	mov    $0x8,%ecx
  4028c0:	e8 23 07 00 00       	callq  402fe8 <signal>
  4028c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028ca:	e9 53 ff ff ff       	jmpq   402822 <_gnu_exception_handler+0xd2>
  4028cf:	90                   	nop
  4028d0:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4028d5:	ff d0                	callq  *%rax
  4028d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028dc:	e9 41 ff ff ff       	jmpq   402822 <_gnu_exception_handler+0xd2>
  4028e1:	31 c0                	xor    %eax,%eax
  4028e3:	e9 3a ff ff ff       	jmpq   402822 <_gnu_exception_handler+0xd2>
  4028e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4028ef:	00 
  4028f0:	ba 01 00 00 00       	mov    $0x1,%edx
  4028f5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4028fa:	e8 e9 06 00 00       	callq  402fe8 <signal>
  4028ff:	e8 fc f6 ff ff       	callq  402000 <_fpreset>
  402904:	e9 31 ff ff ff       	jmpq   40283a <_gnu_exception_handler+0xea>
  402909:	ba 01 00 00 00       	mov    $0x1,%edx
  40290e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402913:	e8 d0 06 00 00       	callq  402fe8 <signal>
  402918:	83 c8 ff             	or     $0xffffffff,%eax
  40291b:	e9 02 ff ff ff       	jmpq   402822 <_gnu_exception_handler+0xd2>
  402920:	ba 01 00 00 00       	mov    $0x1,%edx
  402925:	b9 04 00 00 00       	mov    $0x4,%ecx
  40292a:	e8 b9 06 00 00       	callq  402fe8 <signal>
  40292f:	83 c8 ff             	or     $0xffffffff,%eax
  402932:	e9 eb fe ff ff       	jmpq   402822 <_gnu_exception_handler+0xd2>
  402937:	90                   	nop
  402938:	90                   	nop
  402939:	90                   	nop
  40293a:	90                   	nop
  40293b:	90                   	nop
  40293c:	90                   	nop
  40293d:	90                   	nop
  40293e:	90                   	nop
  40293f:	90                   	nop

0000000000402940 <__mingwthr_run_key_dtors.part.0>:
  402940:	55                   	push   %rbp
  402941:	57                   	push   %rdi
  402942:	56                   	push   %rsi
  402943:	53                   	push   %rbx
  402944:	48 83 ec 28          	sub    $0x28,%rsp
  402948:	48 8d 0d b1 5f 00 00 	lea    0x5fb1(%rip),%rcx        # 408900 <__mingwthr_cs>
  40294f:	ff 15 8f 68 00 00    	callq  *0x688f(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  402955:	48 8b 1d 84 5f 00 00 	mov    0x5f84(%rip),%rbx        # 4088e0 <key_dtor_list>
  40295c:	48 85 db             	test   %rbx,%rbx
  40295f:	74 33                	je     402994 <__mingwthr_run_key_dtors.part.0+0x54>
  402961:	48 8b 2d 0c 69 00 00 	mov    0x690c(%rip),%rbp        # 409274 <__imp_TlsGetValue>
  402968:	48 8b 3d 95 68 00 00 	mov    0x6895(%rip),%rdi        # 409204 <__imp_GetLastError>
  40296f:	90                   	nop
  402970:	8b 0b                	mov    (%rbx),%ecx
  402972:	ff d5                	callq  *%rbp
  402974:	48 89 c6             	mov    %rax,%rsi
  402977:	ff d7                	callq  *%rdi
  402979:	85 c0                	test   %eax,%eax
  40297b:	75 0e                	jne    40298b <__mingwthr_run_key_dtors.part.0+0x4b>
  40297d:	48 85 f6             	test   %rsi,%rsi
  402980:	74 09                	je     40298b <__mingwthr_run_key_dtors.part.0+0x4b>
  402982:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402986:	48 89 f1             	mov    %rsi,%rcx
  402989:	ff d0                	callq  *%rax
  40298b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40298f:	48 85 db             	test   %rbx,%rbx
  402992:	75 dc                	jne    402970 <__mingwthr_run_key_dtors.part.0+0x30>
  402994:	48 8d 0d 65 5f 00 00 	lea    0x5f65(%rip),%rcx        # 408900 <__mingwthr_cs>
  40299b:	48 83 c4 28          	add    $0x28,%rsp
  40299f:	5b                   	pop    %rbx
  4029a0:	5e                   	pop    %rsi
  4029a1:	5f                   	pop    %rdi
  4029a2:	5d                   	pop    %rbp
  4029a3:	48 ff 25 82 68 00 00 	rex.W jmpq *0x6882(%rip)        # 40922c <__imp_LeaveCriticalSection>
  4029aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004029b0 <___w64_mingwthr_add_key_dtor>:
  4029b0:	55                   	push   %rbp
  4029b1:	57                   	push   %rdi
  4029b2:	56                   	push   %rsi
  4029b3:	53                   	push   %rbx
  4029b4:	48 83 ec 28          	sub    $0x28,%rsp
  4029b8:	8b 05 2a 5f 00 00    	mov    0x5f2a(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  4029be:	31 f6                	xor    %esi,%esi
  4029c0:	85 c0                	test   %eax,%eax
  4029c2:	89 cd                	mov    %ecx,%ebp
  4029c4:	48 89 d7             	mov    %rdx,%rdi
  4029c7:	75 0b                	jne    4029d4 <___w64_mingwthr_add_key_dtor+0x24>
  4029c9:	89 f0                	mov    %esi,%eax
  4029cb:	48 83 c4 28          	add    $0x28,%rsp
  4029cf:	5b                   	pop    %rbx
  4029d0:	5e                   	pop    %rsi
  4029d1:	5f                   	pop    %rdi
  4029d2:	5d                   	pop    %rbp
  4029d3:	c3                   	retq   
  4029d4:	ba 18 00 00 00       	mov    $0x18,%edx
  4029d9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4029de:	e8 4d 06 00 00       	callq  403030 <calloc>
  4029e3:	48 85 c0             	test   %rax,%rax
  4029e6:	48 89 c3             	mov    %rax,%rbx
  4029e9:	74 3d                	je     402a28 <___w64_mingwthr_add_key_dtor+0x78>
  4029eb:	89 28                	mov    %ebp,(%rax)
  4029ed:	48 8d 0d 0c 5f 00 00 	lea    0x5f0c(%rip),%rcx        # 408900 <__mingwthr_cs>
  4029f4:	48 89 78 08          	mov    %rdi,0x8(%rax)
  4029f8:	ff 15 e6 67 00 00    	callq  *0x67e6(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  4029fe:	48 8b 05 db 5e 00 00 	mov    0x5edb(%rip),%rax        # 4088e0 <key_dtor_list>
  402a05:	48 8d 0d f4 5e 00 00 	lea    0x5ef4(%rip),%rcx        # 408900 <__mingwthr_cs>
  402a0c:	48 89 1d cd 5e 00 00 	mov    %rbx,0x5ecd(%rip)        # 4088e0 <key_dtor_list>
  402a13:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a17:	ff 15 0f 68 00 00    	callq  *0x680f(%rip)        # 40922c <__imp_LeaveCriticalSection>
  402a1d:	89 f0                	mov    %esi,%eax
  402a1f:	48 83 c4 28          	add    $0x28,%rsp
  402a23:	5b                   	pop    %rbx
  402a24:	5e                   	pop    %rsi
  402a25:	5f                   	pop    %rdi
  402a26:	5d                   	pop    %rbp
  402a27:	c3                   	retq   
  402a28:	be ff ff ff ff       	mov    $0xffffffff,%esi
  402a2d:	eb 9a                	jmp    4029c9 <___w64_mingwthr_add_key_dtor+0x19>
  402a2f:	90                   	nop

0000000000402a30 <___w64_mingwthr_remove_key_dtor>:
  402a30:	53                   	push   %rbx
  402a31:	48 83 ec 20          	sub    $0x20,%rsp
  402a35:	8b 05 ad 5e 00 00    	mov    0x5ead(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402a3b:	85 c0                	test   %eax,%eax
  402a3d:	89 cb                	mov    %ecx,%ebx
  402a3f:	75 0f                	jne    402a50 <___w64_mingwthr_remove_key_dtor+0x20>
  402a41:	31 c0                	xor    %eax,%eax
  402a43:	48 83 c4 20          	add    $0x20,%rsp
  402a47:	5b                   	pop    %rbx
  402a48:	c3                   	retq   
  402a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a50:	48 8d 0d a9 5e 00 00 	lea    0x5ea9(%rip),%rcx        # 408900 <__mingwthr_cs>
  402a57:	ff 15 87 67 00 00    	callq  *0x6787(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  402a5d:	48 8b 05 7c 5e 00 00 	mov    0x5e7c(%rip),%rax        # 4088e0 <key_dtor_list>
  402a64:	48 85 c0             	test   %rax,%rax
  402a67:	74 1a                	je     402a83 <___w64_mingwthr_remove_key_dtor+0x53>
  402a69:	8b 10                	mov    (%rax),%edx
  402a6b:	39 d3                	cmp    %edx,%ebx
  402a6d:	75 0b                	jne    402a7a <___w64_mingwthr_remove_key_dtor+0x4a>
  402a6f:	eb 4f                	jmp    402ac0 <___w64_mingwthr_remove_key_dtor+0x90>
  402a71:	8b 11                	mov    (%rcx),%edx
  402a73:	39 da                	cmp    %ebx,%edx
  402a75:	74 29                	je     402aa0 <___w64_mingwthr_remove_key_dtor+0x70>
  402a77:	48 89 c8             	mov    %rcx,%rax
  402a7a:	48 8b 48 10          	mov    0x10(%rax),%rcx
  402a7e:	48 85 c9             	test   %rcx,%rcx
  402a81:	75 ee                	jne    402a71 <___w64_mingwthr_remove_key_dtor+0x41>
  402a83:	48 8d 0d 76 5e 00 00 	lea    0x5e76(%rip),%rcx        # 408900 <__mingwthr_cs>
  402a8a:	ff 15 9c 67 00 00    	callq  *0x679c(%rip)        # 40922c <__imp_LeaveCriticalSection>
  402a90:	31 c0                	xor    %eax,%eax
  402a92:	48 83 c4 20          	add    $0x20,%rsp
  402a96:	5b                   	pop    %rbx
  402a97:	c3                   	retq   
  402a98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a9f:	00 
  402aa0:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  402aa4:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402aa8:	e8 6b 05 00 00       	callq  403018 <free>
  402aad:	48 8d 0d 4c 5e 00 00 	lea    0x5e4c(%rip),%rcx        # 408900 <__mingwthr_cs>
  402ab4:	ff 15 72 67 00 00    	callq  *0x6772(%rip)        # 40922c <__imp_LeaveCriticalSection>
  402aba:	eb d4                	jmp    402a90 <___w64_mingwthr_remove_key_dtor+0x60>
  402abc:	0f 1f 40 00          	nopl   0x0(%rax)
  402ac0:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402ac4:	48 89 c1             	mov    %rax,%rcx
  402ac7:	48 89 15 12 5e 00 00 	mov    %rdx,0x5e12(%rip)        # 4088e0 <key_dtor_list>
  402ace:	eb d8                	jmp    402aa8 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000402ad0 <__mingw_TLScallback>:
  402ad0:	53                   	push   %rbx
  402ad1:	48 83 ec 20          	sub    $0x20,%rsp
  402ad5:	83 fa 01             	cmp    $0x1,%edx
  402ad8:	0f 84 92 00 00 00    	je     402b70 <__mingw_TLScallback+0xa0>
  402ade:	72 30                	jb     402b10 <__mingw_TLScallback+0x40>
  402ae0:	83 fa 02             	cmp    $0x2,%edx
  402ae3:	74 1b                	je     402b00 <__mingw_TLScallback+0x30>
  402ae5:	83 fa 03             	cmp    $0x3,%edx
  402ae8:	75 1b                	jne    402b05 <__mingw_TLScallback+0x35>
  402aea:	8b 05 f8 5d 00 00    	mov    0x5df8(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402af0:	85 c0                	test   %eax,%eax
  402af2:	74 11                	je     402b05 <__mingw_TLScallback+0x35>
  402af4:	e8 47 fe ff ff       	callq  402940 <__mingwthr_run_key_dtors.part.0>
  402af9:	eb 0a                	jmp    402b05 <__mingw_TLScallback+0x35>
  402afb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402b00:	e8 fb f4 ff ff       	callq  402000 <_fpreset>
  402b05:	b8 01 00 00 00       	mov    $0x1,%eax
  402b0a:	48 83 c4 20          	add    $0x20,%rsp
  402b0e:	5b                   	pop    %rbx
  402b0f:	c3                   	retq   
  402b10:	8b 05 d2 5d 00 00    	mov    0x5dd2(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402b16:	85 c0                	test   %eax,%eax
  402b18:	0f 85 82 00 00 00    	jne    402ba0 <__mingw_TLScallback+0xd0>
  402b1e:	8b 05 c4 5d 00 00    	mov    0x5dc4(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402b24:	83 f8 01             	cmp    $0x1,%eax
  402b27:	75 dc                	jne    402b05 <__mingw_TLScallback+0x35>
  402b29:	48 8b 0d b0 5d 00 00 	mov    0x5db0(%rip),%rcx        # 4088e0 <key_dtor_list>
  402b30:	48 85 c9             	test   %rcx,%rcx
  402b33:	74 11                	je     402b46 <__mingw_TLScallback+0x76>
  402b35:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  402b39:	e8 da 04 00 00       	callq  403018 <free>
  402b3e:	48 85 db             	test   %rbx,%rbx
  402b41:	48 89 d9             	mov    %rbx,%rcx
  402b44:	75 ef                	jne    402b35 <__mingw_TLScallback+0x65>
  402b46:	48 8d 0d b3 5d 00 00 	lea    0x5db3(%rip),%rcx        # 408900 <__mingwthr_cs>
  402b4d:	48 c7 05 88 5d 00 00 	movq   $0x0,0x5d88(%rip)        # 4088e0 <key_dtor_list>
  402b54:	00 00 00 00 
  402b58:	c7 05 86 5d 00 00 00 	movl   $0x0,0x5d86(%rip)        # 4088e8 <__mingwthr_cs_init>
  402b5f:	00 00 00 
  402b62:	ff 15 74 66 00 00    	callq  *0x6674(%rip)        # 4091dc <__IAT_start__>
  402b68:	eb 9b                	jmp    402b05 <__mingw_TLScallback+0x35>
  402b6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402b70:	8b 05 72 5d 00 00    	mov    0x5d72(%rip),%eax        # 4088e8 <__mingwthr_cs_init>
  402b76:	85 c0                	test   %eax,%eax
  402b78:	74 16                	je     402b90 <__mingw_TLScallback+0xc0>
  402b7a:	c7 05 64 5d 00 00 01 	movl   $0x1,0x5d64(%rip)        # 4088e8 <__mingwthr_cs_init>
  402b81:	00 00 00 
  402b84:	b8 01 00 00 00       	mov    $0x1,%eax
  402b89:	48 83 c4 20          	add    $0x20,%rsp
  402b8d:	5b                   	pop    %rbx
  402b8e:	c3                   	retq   
  402b8f:	90                   	nop
  402b90:	48 8d 0d 69 5d 00 00 	lea    0x5d69(%rip),%rcx        # 408900 <__mingwthr_cs>
  402b97:	ff 15 87 66 00 00    	callq  *0x6687(%rip)        # 409224 <__imp_InitializeCriticalSection>
  402b9d:	eb db                	jmp    402b7a <__mingw_TLScallback+0xaa>
  402b9f:	90                   	nop
  402ba0:	e8 9b fd ff ff       	callq  402940 <__mingwthr_run_key_dtors.part.0>
  402ba5:	e9 74 ff ff ff       	jmpq   402b1e <__mingw_TLScallback+0x4e>
  402baa:	90                   	nop
  402bab:	90                   	nop
  402bac:	90                   	nop
  402bad:	90                   	nop
  402bae:	90                   	nop
  402baf:	90                   	nop

0000000000402bb0 <_ValidateImageBase.part.0>:
  402bb0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402bb4:	48 01 c1             	add    %rax,%rcx
  402bb7:	31 c0                	xor    %eax,%eax
  402bb9:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  402bbf:	74 01                	je     402bc2 <_ValidateImageBase.part.0+0x12>
  402bc1:	c3                   	retq   
  402bc2:	31 c0                	xor    %eax,%eax
  402bc4:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  402bca:	0f 94 c0             	sete   %al
  402bcd:	c3                   	retq   
  402bce:	66 90                	xchg   %ax,%ax

0000000000402bd0 <_ValidateImageBase>:
  402bd0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402bd5:	74 09                	je     402be0 <_ValidateImageBase+0x10>
  402bd7:	31 c0                	xor    %eax,%eax
  402bd9:	c3                   	retq   
  402bda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402be0:	eb ce                	jmp    402bb0 <_ValidateImageBase.part.0>
  402be2:	0f 1f 40 00          	nopl   0x0(%rax)
  402be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402bed:	00 00 00 

0000000000402bf0 <_FindPESection>:
  402bf0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402bf4:	48 01 c1             	add    %rax,%rcx
  402bf7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402bfb:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402c00:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402c04:	85 c9                	test   %ecx,%ecx
  402c06:	74 29                	je     402c31 <_FindPESection+0x41>
  402c08:	83 e9 01             	sub    $0x1,%ecx
  402c0b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402c0f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402c14:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402c18:	49 39 d0             	cmp    %rdx,%r8
  402c1b:	4c 89 c1             	mov    %r8,%rcx
  402c1e:	77 08                	ja     402c28 <_FindPESection+0x38>
  402c20:	03 48 08             	add    0x8(%rax),%ecx
  402c23:	48 39 d1             	cmp    %rdx,%rcx
  402c26:	77 0b                	ja     402c33 <_FindPESection+0x43>
  402c28:	48 83 c0 28          	add    $0x28,%rax
  402c2c:	4c 39 c8             	cmp    %r9,%rax
  402c2f:	75 e3                	jne    402c14 <_FindPESection+0x24>
  402c31:	31 c0                	xor    %eax,%eax
  402c33:	c3                   	retq   
  402c34:	66 90                	xchg   %ax,%ax
  402c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c3d:	00 00 00 

0000000000402c40 <_FindPESectionByName>:
  402c40:	57                   	push   %rdi
  402c41:	56                   	push   %rsi
  402c42:	53                   	push   %rbx
  402c43:	48 83 ec 20          	sub    $0x20,%rsp
  402c47:	48 89 ce             	mov    %rcx,%rsi
  402c4a:	e8 91 03 00 00       	callq  402fe0 <strlen>
  402c4f:	48 83 f8 08          	cmp    $0x8,%rax
  402c53:	77 6b                	ja     402cc0 <_FindPESectionByName+0x80>
  402c55:	48 8b 15 a4 27 00 00 	mov    0x27a4(%rip),%rdx        # 405400 <.refptr.__image_base__>
  402c5c:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402c61:	75 5d                	jne    402cc0 <_FindPESectionByName+0x80>
  402c63:	48 89 d1             	mov    %rdx,%rcx
  402c66:	e8 45 ff ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402c6b:	85 c0                	test   %eax,%eax
  402c6d:	74 51                	je     402cc0 <_FindPESectionByName+0x80>
  402c6f:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  402c73:	48 01 d1             	add    %rdx,%rcx
  402c76:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402c7a:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  402c7f:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402c83:	85 c0                	test   %eax,%eax
  402c85:	74 39                	je     402cc0 <_FindPESectionByName+0x80>
  402c87:	83 e8 01             	sub    $0x1,%eax
  402c8a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402c8e:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  402c93:	eb 09                	jmp    402c9e <_FindPESectionByName+0x5e>
  402c95:	48 83 c3 28          	add    $0x28,%rbx
  402c99:	48 39 fb             	cmp    %rdi,%rbx
  402c9c:	74 22                	je     402cc0 <_FindPESectionByName+0x80>
  402c9e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402ca4:	48 89 f2             	mov    %rsi,%rdx
  402ca7:	48 89 d9             	mov    %rbx,%rcx
  402caa:	e8 29 03 00 00       	callq  402fd8 <strncmp>
  402caf:	85 c0                	test   %eax,%eax
  402cb1:	75 e2                	jne    402c95 <_FindPESectionByName+0x55>
  402cb3:	48 89 d8             	mov    %rbx,%rax
  402cb6:	48 83 c4 20          	add    $0x20,%rsp
  402cba:	5b                   	pop    %rbx
  402cbb:	5e                   	pop    %rsi
  402cbc:	5f                   	pop    %rdi
  402cbd:	c3                   	retq   
  402cbe:	66 90                	xchg   %ax,%ax
  402cc0:	31 db                	xor    %ebx,%ebx
  402cc2:	48 89 d8             	mov    %rbx,%rax
  402cc5:	48 83 c4 20          	add    $0x20,%rsp
  402cc9:	5b                   	pop    %rbx
  402cca:	5e                   	pop    %rsi
  402ccb:	5f                   	pop    %rdi
  402ccc:	c3                   	retq   
  402ccd:	0f 1f 00             	nopl   (%rax)

0000000000402cd0 <__mingw_GetSectionForAddress>:
  402cd0:	48 83 ec 28          	sub    $0x28,%rsp
  402cd4:	4c 8b 05 25 27 00 00 	mov    0x2725(%rip),%r8        # 405400 <.refptr.__image_base__>
  402cdb:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402ce1:	48 89 ca             	mov    %rcx,%rdx
  402ce4:	75 57                	jne    402d3d <__mingw_GetSectionForAddress+0x6d>
  402ce6:	4c 89 c1             	mov    %r8,%rcx
  402ce9:	e8 c2 fe ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402cee:	85 c0                	test   %eax,%eax
  402cf0:	74 4b                	je     402d3d <__mingw_GetSectionForAddress+0x6d>
  402cf2:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402cf6:	48 89 d1             	mov    %rdx,%rcx
  402cf9:	4c 29 c1             	sub    %r8,%rcx
  402cfc:	49 01 c0             	add    %rax,%r8
  402cff:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402d04:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402d09:	85 d2                	test   %edx,%edx
  402d0b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402d10:	74 2b                	je     402d3d <__mingw_GetSectionForAddress+0x6d>
  402d12:	83 ea 01             	sub    $0x1,%edx
  402d15:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402d19:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402d1e:	66 90                	xchg   %ax,%ax
  402d20:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402d24:	4c 39 c1             	cmp    %r8,%rcx
  402d27:	4c 89 c2             	mov    %r8,%rdx
  402d2a:	72 08                	jb     402d34 <__mingw_GetSectionForAddress+0x64>
  402d2c:	03 50 08             	add    0x8(%rax),%edx
  402d2f:	48 39 d1             	cmp    %rdx,%rcx
  402d32:	72 0b                	jb     402d3f <__mingw_GetSectionForAddress+0x6f>
  402d34:	48 83 c0 28          	add    $0x28,%rax
  402d38:	4c 39 c8             	cmp    %r9,%rax
  402d3b:	75 e3                	jne    402d20 <__mingw_GetSectionForAddress+0x50>
  402d3d:	31 c0                	xor    %eax,%eax
  402d3f:	48 83 c4 28          	add    $0x28,%rsp
  402d43:	c3                   	retq   
  402d44:	66 90                	xchg   %ax,%ax
  402d46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402d4d:	00 00 00 

0000000000402d50 <__mingw_GetSectionCount>:
  402d50:	48 83 ec 28          	sub    $0x28,%rsp
  402d54:	48 8b 15 a5 26 00 00 	mov    0x26a5(%rip),%rdx        # 405400 <.refptr.__image_base__>
  402d5b:	45 31 c0             	xor    %r8d,%r8d
  402d5e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402d63:	74 0b                	je     402d70 <__mingw_GetSectionCount+0x20>
  402d65:	44 89 c0             	mov    %r8d,%eax
  402d68:	48 83 c4 28          	add    $0x28,%rsp
  402d6c:	c3                   	retq   
  402d6d:	0f 1f 00             	nopl   (%rax)
  402d70:	48 89 d1             	mov    %rdx,%rcx
  402d73:	e8 38 fe ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402d78:	85 c0                	test   %eax,%eax
  402d7a:	74 e9                	je     402d65 <__mingw_GetSectionCount+0x15>
  402d7c:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  402d80:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  402d86:	44 89 c0             	mov    %r8d,%eax
  402d89:	48 83 c4 28          	add    $0x28,%rsp
  402d8d:	c3                   	retq   
  402d8e:	66 90                	xchg   %ax,%ax

0000000000402d90 <_FindPESectionExec>:
  402d90:	48 83 ec 28          	sub    $0x28,%rsp
  402d94:	4c 8b 05 65 26 00 00 	mov    0x2665(%rip),%r8        # 405400 <.refptr.__image_base__>
  402d9b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402da1:	48 89 ca             	mov    %rcx,%rdx
  402da4:	75 52                	jne    402df8 <_FindPESectionExec+0x68>
  402da6:	4c 89 c1             	mov    %r8,%rcx
  402da9:	e8 02 fe ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402dae:	85 c0                	test   %eax,%eax
  402db0:	74 46                	je     402df8 <_FindPESectionExec+0x68>
  402db2:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  402db6:	4c 01 c1             	add    %r8,%rcx
  402db9:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  402dbd:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402dc2:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402dc6:	85 c9                	test   %ecx,%ecx
  402dc8:	74 2e                	je     402df8 <_FindPESectionExec+0x68>
  402dca:	83 e9 01             	sub    $0x1,%ecx
  402dcd:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402dd1:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  402dd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ddd:	00 00 00 
  402de0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  402de4:	74 09                	je     402def <_FindPESectionExec+0x5f>
  402de6:	48 85 d2             	test   %rdx,%rdx
  402de9:	74 0f                	je     402dfa <_FindPESectionExec+0x6a>
  402deb:	48 83 ea 01          	sub    $0x1,%rdx
  402def:	48 83 c0 28          	add    $0x28,%rax
  402df3:	48 39 c8             	cmp    %rcx,%rax
  402df6:	75 e8                	jne    402de0 <_FindPESectionExec+0x50>
  402df8:	31 c0                	xor    %eax,%eax
  402dfa:	48 83 c4 28          	add    $0x28,%rsp
  402dfe:	c3                   	retq   
  402dff:	90                   	nop

0000000000402e00 <_GetPEImageBase>:
  402e00:	48 83 ec 28          	sub    $0x28,%rsp
  402e04:	48 8b 15 f5 25 00 00 	mov    0x25f5(%rip),%rdx        # 405400 <.refptr.__image_base__>
  402e0b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402e10:	75 1e                	jne    402e30 <_GetPEImageBase+0x30>
  402e12:	48 89 d1             	mov    %rdx,%rcx
  402e15:	e8 96 fd ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402e1a:	85 c0                	test   %eax,%eax
  402e1c:	b8 00 00 00 00       	mov    $0x0,%eax
  402e21:	48 0f 45 c2          	cmovne %rdx,%rax
  402e25:	48 83 c4 28          	add    $0x28,%rsp
  402e29:	c3                   	retq   
  402e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e30:	31 c0                	xor    %eax,%eax
  402e32:	48 83 c4 28          	add    $0x28,%rsp
  402e36:	c3                   	retq   
  402e37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e3e:	00 00 

0000000000402e40 <_IsNonwritableInCurrentImage>:
  402e40:	48 83 ec 28          	sub    $0x28,%rsp
  402e44:	4c 8b 05 b5 25 00 00 	mov    0x25b5(%rip),%r8        # 405400 <.refptr.__image_base__>
  402e4b:	31 c0                	xor    %eax,%eax
  402e4d:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  402e53:	48 89 ca             	mov    %rcx,%rdx
  402e56:	74 08                	je     402e60 <_IsNonwritableInCurrentImage+0x20>
  402e58:	48 83 c4 28          	add    $0x28,%rsp
  402e5c:	c3                   	retq   
  402e5d:	0f 1f 00             	nopl   (%rax)
  402e60:	4c 89 c1             	mov    %r8,%rcx
  402e63:	e8 48 fd ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402e68:	85 c0                	test   %eax,%eax
  402e6a:	74 ec                	je     402e58 <_IsNonwritableInCurrentImage+0x18>
  402e6c:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  402e70:	48 89 d1             	mov    %rdx,%rcx
  402e73:	4c 29 c1             	sub    %r8,%rcx
  402e76:	49 01 c0             	add    %rax,%r8
  402e79:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  402e7e:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  402e83:	85 d2                	test   %edx,%edx
  402e85:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  402e8a:	74 31                	je     402ebd <_IsNonwritableInCurrentImage+0x7d>
  402e8c:	83 ea 01             	sub    $0x1,%edx
  402e8f:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402e93:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e9f:	00 
  402ea0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402ea4:	4c 39 c1             	cmp    %r8,%rcx
  402ea7:	4c 89 c2             	mov    %r8,%rdx
  402eaa:	72 08                	jb     402eb4 <_IsNonwritableInCurrentImage+0x74>
  402eac:	03 50 08             	add    0x8(%rax),%edx
  402eaf:	48 39 d1             	cmp    %rdx,%rcx
  402eb2:	72 10                	jb     402ec4 <_IsNonwritableInCurrentImage+0x84>
  402eb4:	48 83 c0 28          	add    $0x28,%rax
  402eb8:	4c 39 c8             	cmp    %r9,%rax
  402ebb:	75 e3                	jne    402ea0 <_IsNonwritableInCurrentImage+0x60>
  402ebd:	31 c0                	xor    %eax,%eax
  402ebf:	48 83 c4 28          	add    $0x28,%rsp
  402ec3:	c3                   	retq   
  402ec4:	8b 40 24             	mov    0x24(%rax),%eax
  402ec7:	f7 d0                	not    %eax
  402ec9:	c1 e8 1f             	shr    $0x1f,%eax
  402ecc:	48 83 c4 28          	add    $0x28,%rsp
  402ed0:	c3                   	retq   
  402ed1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402ed6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402edd:	00 00 00 

0000000000402ee0 <__mingw_enum_import_library_names>:
  402ee0:	48 83 ec 28          	sub    $0x28,%rsp
  402ee4:	4c 8b 1d 15 25 00 00 	mov    0x2515(%rip),%r11        # 405400 <.refptr.__image_base__>
  402eeb:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402ef1:	41 89 c9             	mov    %ecx,%r9d
  402ef4:	75 58                	jne    402f4e <__mingw_enum_import_library_names+0x6e>
  402ef6:	4c 89 d9             	mov    %r11,%rcx
  402ef9:	e8 b2 fc ff ff       	callq  402bb0 <_ValidateImageBase.part.0>
  402efe:	85 c0                	test   %eax,%eax
  402f00:	74 4c                	je     402f4e <__mingw_enum_import_library_names+0x6e>
  402f02:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  402f06:	4c 01 d8             	add    %r11,%rax
  402f09:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  402f0f:	85 d2                	test   %edx,%edx
  402f11:	74 3b                	je     402f4e <__mingw_enum_import_library_names+0x6e>
  402f13:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  402f17:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  402f1c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  402f20:	85 c0                	test   %eax,%eax
  402f22:	74 2a                	je     402f4e <__mingw_enum_import_library_names+0x6e>
  402f24:	83 e8 01             	sub    $0x1,%eax
  402f27:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402f2b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  402f30:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  402f34:	4c 39 d2             	cmp    %r10,%rdx
  402f37:	4d 89 d0             	mov    %r10,%r8
  402f3a:	72 09                	jb     402f45 <__mingw_enum_import_library_names+0x65>
  402f3c:	44 03 41 08          	add    0x8(%rcx),%r8d
  402f40:	4c 39 c2             	cmp    %r8,%rdx
  402f43:	72 10                	jb     402f55 <__mingw_enum_import_library_names+0x75>
  402f45:	48 83 c1 28          	add    $0x28,%rcx
  402f49:	48 39 c1             	cmp    %rax,%rcx
  402f4c:	75 e2                	jne    402f30 <__mingw_enum_import_library_names+0x50>
  402f4e:	31 c0                	xor    %eax,%eax
  402f50:	48 83 c4 28          	add    $0x28,%rsp
  402f54:	c3                   	retq   
  402f55:	4c 01 da             	add    %r11,%rdx
  402f58:	75 0e                	jne    402f68 <__mingw_enum_import_library_names+0x88>
  402f5a:	eb f2                	jmp    402f4e <__mingw_enum_import_library_names+0x6e>
  402f5c:	0f 1f 40 00          	nopl   0x0(%rax)
  402f60:	41 83 e9 01          	sub    $0x1,%r9d
  402f64:	48 83 c2 14          	add    $0x14,%rdx
  402f68:	8b 4a 04             	mov    0x4(%rdx),%ecx
  402f6b:	85 c9                	test   %ecx,%ecx
  402f6d:	75 07                	jne    402f76 <__mingw_enum_import_library_names+0x96>
  402f6f:	8b 42 0c             	mov    0xc(%rdx),%eax
  402f72:	85 c0                	test   %eax,%eax
  402f74:	74 d8                	je     402f4e <__mingw_enum_import_library_names+0x6e>
  402f76:	45 85 c9             	test   %r9d,%r9d
  402f79:	7f e5                	jg     402f60 <__mingw_enum_import_library_names+0x80>
  402f7b:	8b 42 0c             	mov    0xc(%rdx),%eax
  402f7e:	4c 01 d8             	add    %r11,%rax
  402f81:	48 83 c4 28          	add    $0x28,%rsp
  402f85:	c3                   	retq   
  402f86:	90                   	nop
  402f87:	90                   	nop
  402f88:	90                   	nop
  402f89:	90                   	nop
  402f8a:	90                   	nop
  402f8b:	90                   	nop
  402f8c:	90                   	nop
  402f8d:	90                   	nop
  402f8e:	90                   	nop
  402f8f:	90                   	nop

0000000000402f90 <___chkstk_ms>:
  402f90:	51                   	push   %rcx
  402f91:	50                   	push   %rax
  402f92:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402f98:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402f9d:	72 19                	jb     402fb8 <___chkstk_ms+0x28>
  402f9f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402fa6:	48 83 09 00          	orq    $0x0,(%rcx)
  402faa:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402fb0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402fb6:	77 e7                	ja     402f9f <___chkstk_ms+0xf>
  402fb8:	48 29 c1             	sub    %rax,%rcx
  402fbb:	48 83 09 00          	orq    $0x0,(%rcx)
  402fbf:	58                   	pop    %rax
  402fc0:	59                   	pop    %rcx
  402fc1:	c3                   	retq   
  402fc2:	90                   	nop
  402fc3:	90                   	nop
  402fc4:	90                   	nop
  402fc5:	90                   	nop
  402fc6:	90                   	nop
  402fc7:	90                   	nop
  402fc8:	90                   	nop
  402fc9:	90                   	nop
  402fca:	90                   	nop
  402fcb:	90                   	nop
  402fcc:	90                   	nop
  402fcd:	90                   	nop
  402fce:	90                   	nop
  402fcf:	90                   	nop

0000000000402fd0 <vfprintf>:
  402fd0:	ff 25 96 63 00 00    	jmpq   *0x6396(%rip)        # 40936c <__imp_vfprintf>
  402fd6:	90                   	nop
  402fd7:	90                   	nop

0000000000402fd8 <strncmp>:
  402fd8:	ff 25 86 63 00 00    	jmpq   *0x6386(%rip)        # 409364 <__imp_strncmp>
  402fde:	90                   	nop
  402fdf:	90                   	nop

0000000000402fe0 <strlen>:
  402fe0:	ff 25 76 63 00 00    	jmpq   *0x6376(%rip)        # 40935c <__imp_strlen>
  402fe6:	90                   	nop
  402fe7:	90                   	nop

0000000000402fe8 <signal>:
  402fe8:	ff 25 66 63 00 00    	jmpq   *0x6366(%rip)        # 409354 <__imp_signal>
  402fee:	90                   	nop
  402fef:	90                   	nop

0000000000402ff0 <puts>:
  402ff0:	ff 25 56 63 00 00    	jmpq   *0x6356(%rip)        # 40934c <__imp_puts>
  402ff6:	90                   	nop
  402ff7:	90                   	nop

0000000000402ff8 <printf>:
  402ff8:	ff 25 46 63 00 00    	jmpq   *0x6346(%rip)        # 409344 <__imp_printf>
  402ffe:	90                   	nop
  402fff:	90                   	nop

0000000000403000 <memcpy>:
  403000:	ff 25 36 63 00 00    	jmpq   *0x6336(%rip)        # 40933c <__imp_memcpy>
  403006:	90                   	nop
  403007:	90                   	nop

0000000000403008 <malloc>:
  403008:	ff 25 26 63 00 00    	jmpq   *0x6326(%rip)        # 409334 <__imp_malloc>
  40300e:	90                   	nop
  40300f:	90                   	nop

0000000000403010 <fwrite>:
  403010:	ff 25 16 63 00 00    	jmpq   *0x6316(%rip)        # 40932c <__imp_fwrite>
  403016:	90                   	nop
  403017:	90                   	nop

0000000000403018 <free>:
  403018:	ff 25 06 63 00 00    	jmpq   *0x6306(%rip)        # 409324 <__imp_free>
  40301e:	90                   	nop
  40301f:	90                   	nop

0000000000403020 <fprintf>:
  403020:	ff 25 f6 62 00 00    	jmpq   *0x62f6(%rip)        # 40931c <__imp_fprintf>
  403026:	90                   	nop
  403027:	90                   	nop

0000000000403028 <exit>:
  403028:	ff 25 e6 62 00 00    	jmpq   *0x62e6(%rip)        # 409314 <__imp_exit>
  40302e:	90                   	nop
  40302f:	90                   	nop

0000000000403030 <calloc>:
  403030:	ff 25 d6 62 00 00    	jmpq   *0x62d6(%rip)        # 40930c <__imp_calloc>
  403036:	90                   	nop
  403037:	90                   	nop

0000000000403038 <abort>:
  403038:	ff 25 c6 62 00 00    	jmpq   *0x62c6(%rip)        # 409304 <__imp_abort>
  40303e:	90                   	nop
  40303f:	90                   	nop

0000000000403040 <_onexit>:
  403040:	ff 25 b6 62 00 00    	jmpq   *0x62b6(%rip)        # 4092fc <__imp__onexit>
  403046:	90                   	nop
  403047:	90                   	nop

0000000000403048 <_initterm>:
  403048:	ff 25 a6 62 00 00    	jmpq   *0x62a6(%rip)        # 4092f4 <__imp__initterm>
  40304e:	90                   	nop
  40304f:	90                   	nop

0000000000403050 <_cexit>:
  403050:	ff 25 8e 62 00 00    	jmpq   *0x628e(%rip)        # 4092e4 <__imp__cexit>
  403056:	90                   	nop
  403057:	90                   	nop

0000000000403058 <_amsg_exit>:
  403058:	ff 25 7e 62 00 00    	jmpq   *0x627e(%rip)        # 4092dc <__imp__amsg_exit>
  40305e:	90                   	nop
  40305f:	90                   	nop

0000000000403060 <__setusermatherr>:
  403060:	ff 25 66 62 00 00    	jmpq   *0x6266(%rip)        # 4092cc <__imp___setusermatherr>
  403066:	90                   	nop
  403067:	90                   	nop

0000000000403068 <__set_app_type>:
  403068:	ff 25 56 62 00 00    	jmpq   *0x6256(%rip)        # 4092c4 <__imp___set_app_type>
  40306e:	90                   	nop
  40306f:	90                   	nop

0000000000403070 <__lconv_init>:
  403070:	ff 25 46 62 00 00    	jmpq   *0x6246(%rip)        # 4092bc <__imp___lconv_init>
  403076:	90                   	nop
  403077:	90                   	nop

0000000000403078 <__getmainargs>:
  403078:	ff 25 26 62 00 00    	jmpq   *0x6226(%rip)        # 4092a4 <__imp___getmainargs>
  40307e:	90                   	nop
  40307f:	90                   	nop

0000000000403080 <__C_specific_handler>:
  403080:	ff 25 16 62 00 00    	jmpq   *0x6216(%rip)        # 40929c <__imp___C_specific_handler>
  403086:	90                   	nop
  403087:	90                   	nop
  403088:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40308f:	00 

0000000000403090 <__acrt_iob_func>:
  403090:	53                   	push   %rbx
  403091:	48 83 ec 20          	sub    $0x20,%rsp
  403095:	89 cb                	mov    %ecx,%ebx
  403097:	e8 54 00 00 00       	callq  4030f0 <__iob_func>
  40309c:	89 d9                	mov    %ebx,%ecx
  40309e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  4030a2:	48 c1 e2 04          	shl    $0x4,%rdx
  4030a6:	48 01 d0             	add    %rdx,%rax
  4030a9:	48 83 c4 20          	add    $0x20,%rsp
  4030ad:	5b                   	pop    %rbx
  4030ae:	c3                   	retq   
  4030af:	90                   	nop

00000000004030b0 <_get_invalid_parameter_handler>:
  4030b0:	48 8b 05 99 58 00 00 	mov    0x5899(%rip),%rax        # 408950 <handler>
  4030b7:	c3                   	retq   
  4030b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030bf:	00 

00000000004030c0 <_set_invalid_parameter_handler>:
  4030c0:	48 89 c8             	mov    %rcx,%rax
  4030c3:	48 87 05 86 58 00 00 	xchg   %rax,0x5886(%rip)        # 408950 <handler>
  4030ca:	c3                   	retq   
  4030cb:	90                   	nop
  4030cc:	90                   	nop
  4030cd:	90                   	nop
  4030ce:	90                   	nop
  4030cf:	90                   	nop

00000000004030d0 <__p__acmdln>:
  4030d0:	48 8b 05 49 23 00 00 	mov    0x2349(%rip),%rax        # 405420 <.refptr.__imp__acmdln>
  4030d7:	48 8b 00             	mov    (%rax),%rax
  4030da:	c3                   	retq   
  4030db:	90                   	nop
  4030dc:	90                   	nop
  4030dd:	90                   	nop
  4030de:	90                   	nop
  4030df:	90                   	nop

00000000004030e0 <__p__fmode>:
  4030e0:	48 8b 05 49 23 00 00 	mov    0x2349(%rip),%rax        # 405430 <.refptr.__imp__fmode>
  4030e7:	48 8b 00             	mov    (%rax),%rax
  4030ea:	c3                   	retq   
  4030eb:	90                   	nop
  4030ec:	90                   	nop
  4030ed:	90                   	nop
  4030ee:	90                   	nop
  4030ef:	90                   	nop

00000000004030f0 <__iob_func>:
  4030f0:	ff 25 be 61 00 00    	jmpq   *0x61be(%rip)        # 4092b4 <__imp___iob_func>
  4030f6:	90                   	nop
  4030f7:	90                   	nop
  4030f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4030ff:	00 

0000000000403100 <VirtualQuery>:
  403100:	ff 25 86 61 00 00    	jmpq   *0x6186(%rip)        # 40928c <__imp_VirtualQuery>
  403106:	90                   	nop
  403107:	90                   	nop

0000000000403108 <VirtualProtect>:
  403108:	ff 25 76 61 00 00    	jmpq   *0x6176(%rip)        # 409284 <__imp_VirtualProtect>
  40310e:	90                   	nop
  40310f:	90                   	nop

0000000000403110 <UnhandledExceptionFilter>:
  403110:	ff 25 66 61 00 00    	jmpq   *0x6166(%rip)        # 40927c <__imp_UnhandledExceptionFilter>
  403116:	90                   	nop
  403117:	90                   	nop

0000000000403118 <TlsGetValue>:
  403118:	ff 25 56 61 00 00    	jmpq   *0x6156(%rip)        # 409274 <__imp_TlsGetValue>
  40311e:	90                   	nop
  40311f:	90                   	nop

0000000000403120 <TerminateProcess>:
  403120:	ff 25 46 61 00 00    	jmpq   *0x6146(%rip)        # 40926c <__imp_TerminateProcess>
  403126:	90                   	nop
  403127:	90                   	nop

0000000000403128 <Sleep>:
  403128:	ff 25 36 61 00 00    	jmpq   *0x6136(%rip)        # 409264 <__imp_Sleep>
  40312e:	90                   	nop
  40312f:	90                   	nop

0000000000403130 <SetUnhandledExceptionFilter>:
  403130:	ff 25 26 61 00 00    	jmpq   *0x6126(%rip)        # 40925c <__imp_SetUnhandledExceptionFilter>
  403136:	90                   	nop
  403137:	90                   	nop

0000000000403138 <RtlVirtualUnwind>:
  403138:	ff 25 16 61 00 00    	jmpq   *0x6116(%rip)        # 409254 <__imp_RtlVirtualUnwind>
  40313e:	90                   	nop
  40313f:	90                   	nop

0000000000403140 <RtlLookupFunctionEntry>:
  403140:	ff 25 06 61 00 00    	jmpq   *0x6106(%rip)        # 40924c <__imp_RtlLookupFunctionEntry>
  403146:	90                   	nop
  403147:	90                   	nop

0000000000403148 <RtlCaptureContext>:
  403148:	ff 25 f6 60 00 00    	jmpq   *0x60f6(%rip)        # 409244 <__imp_RtlCaptureContext>
  40314e:	90                   	nop
  40314f:	90                   	nop

0000000000403150 <RtlAddFunctionTable>:
  403150:	ff 25 e6 60 00 00    	jmpq   *0x60e6(%rip)        # 40923c <__imp_RtlAddFunctionTable>
  403156:	90                   	nop
  403157:	90                   	nop

0000000000403158 <QueryPerformanceCounter>:
  403158:	ff 25 d6 60 00 00    	jmpq   *0x60d6(%rip)        # 409234 <__imp_QueryPerformanceCounter>
  40315e:	90                   	nop
  40315f:	90                   	nop

0000000000403160 <LeaveCriticalSection>:
  403160:	ff 25 c6 60 00 00    	jmpq   *0x60c6(%rip)        # 40922c <__imp_LeaveCriticalSection>
  403166:	90                   	nop
  403167:	90                   	nop

0000000000403168 <InitializeCriticalSection>:
  403168:	ff 25 b6 60 00 00    	jmpq   *0x60b6(%rip)        # 409224 <__imp_InitializeCriticalSection>
  40316e:	90                   	nop
  40316f:	90                   	nop

0000000000403170 <GetTickCount>:
  403170:	ff 25 a6 60 00 00    	jmpq   *0x60a6(%rip)        # 40921c <__imp_GetTickCount>
  403176:	90                   	nop
  403177:	90                   	nop

0000000000403178 <GetSystemTimeAsFileTime>:
  403178:	ff 25 96 60 00 00    	jmpq   *0x6096(%rip)        # 409214 <__imp_GetSystemTimeAsFileTime>
  40317e:	90                   	nop
  40317f:	90                   	nop

0000000000403180 <GetStartupInfoA>:
  403180:	ff 25 86 60 00 00    	jmpq   *0x6086(%rip)        # 40920c <__imp_GetStartupInfoA>
  403186:	90                   	nop
  403187:	90                   	nop

0000000000403188 <GetLastError>:
  403188:	ff 25 76 60 00 00    	jmpq   *0x6076(%rip)        # 409204 <__imp_GetLastError>
  40318e:	90                   	nop
  40318f:	90                   	nop

0000000000403190 <GetCurrentThreadId>:
  403190:	ff 25 66 60 00 00    	jmpq   *0x6066(%rip)        # 4091fc <__imp_GetCurrentThreadId>
  403196:	90                   	nop
  403197:	90                   	nop

0000000000403198 <GetCurrentProcessId>:
  403198:	ff 25 56 60 00 00    	jmpq   *0x6056(%rip)        # 4091f4 <__imp_GetCurrentProcessId>
  40319e:	90                   	nop
  40319f:	90                   	nop

00000000004031a0 <GetCurrentProcess>:
  4031a0:	ff 25 46 60 00 00    	jmpq   *0x6046(%rip)        # 4091ec <__imp_GetCurrentProcess>
  4031a6:	90                   	nop
  4031a7:	90                   	nop

00000000004031a8 <EnterCriticalSection>:
  4031a8:	ff 25 36 60 00 00    	jmpq   *0x6036(%rip)        # 4091e4 <__imp_EnterCriticalSection>
  4031ae:	90                   	nop
  4031af:	90                   	nop

00000000004031b0 <DeleteCriticalSection>:
  4031b0:	ff 25 26 60 00 00    	jmpq   *0x6026(%rip)        # 4091dc <__IAT_start__>
  4031b6:	90                   	nop
  4031b7:	90                   	nop
  4031b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4031bf:	00 

00000000004031c0 <__report_error>:
  4031c0:	56                   	push   %rsi
  4031c1:	53                   	push   %rbx
  4031c2:	48 83 ec 38          	sub    $0x38,%rsp
  4031c6:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  4031cb:	48 89 cb             	mov    %rcx,%rbx
  4031ce:	b9 02 00 00 00       	mov    $0x2,%ecx
  4031d3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  4031d8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  4031dd:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  4031e2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4031e7:	e8 a4 fe ff ff       	callq  403090 <__acrt_iob_func>
  4031ec:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  4031f2:	ba 01 00 00 00       	mov    $0x1,%edx
  4031f7:	48 8d 0d 82 20 00 00 	lea    0x2082(%rip),%rcx        # 405280 <.rdata>
  4031fe:	49 89 c1             	mov    %rax,%r9
  403201:	e8 0a fe ff ff       	callq  403010 <fwrite>
  403206:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40320b:	b9 02 00 00 00       	mov    $0x2,%ecx
  403210:	e8 7b fe ff ff       	callq  403090 <__acrt_iob_func>
  403215:	48 89 da             	mov    %rbx,%rdx
  403218:	48 89 c1             	mov    %rax,%rcx
  40321b:	49 89 f0             	mov    %rsi,%r8
  40321e:	e8 ad fd ff ff       	callq  402fd0 <vfprintf>
  403223:	e8 10 fe ff ff       	callq  403038 <abort>
  403228:	90                   	nop
  403229:	90                   	nop
  40322a:	90                   	nop
  40322b:	90                   	nop
  40322c:	90                   	nop
  40322d:	90                   	nop
  40322e:	90                   	nop
  40322f:	90                   	nop

0000000000403230 <register_frame_ctor>:
  403230:	e9 fb e2 ff ff       	jmpq   401530 <__gcc_register_frame>
  403235:	90                   	nop
  403236:	90                   	nop
  403237:	90                   	nop
  403238:	90                   	nop
  403239:	90                   	nop
  40323a:	90                   	nop
  40323b:	90                   	nop
  40323c:	90                   	nop
  40323d:	90                   	nop
  40323e:	90                   	nop
  40323f:	90                   	nop

0000000000403240 <__CTOR_LIST__>:
  403240:	ff                   	(bad)  
  403241:	ff                   	(bad)  
  403242:	ff                   	(bad)  
  403243:	ff                   	(bad)  
  403244:	ff                   	(bad)  
  403245:	ff                   	(bad)  
  403246:	ff                   	(bad)  
  403247:	ff                   	.byte 0xff

0000000000403248 <.ctors.65535>:
  403248:	30 32                	xor    %dh,(%rdx)
  40324a:	40 00 00             	add    %al,(%rax)
	...

0000000000403258 <__DTOR_LIST__>:
  403258:	ff                   	(bad)  
  403259:	ff                   	(bad)  
  40325a:	ff                   	(bad)  
  40325b:	ff                   	(bad)  
  40325c:	ff                   	(bad)  
  40325d:	ff                   	(bad)  
  40325e:	ff                   	(bad)  
  40325f:	ff 00                	incl   (%rax)
  403261:	00 00                	add    %al,(%rax)
  403263:	00 00                	add    %al,(%rax)
  403265:	00 00                	add    %al,(%rax)
	...
