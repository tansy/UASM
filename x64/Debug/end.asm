; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	evex:BYTE
COMM	ZEROLOCALS:BYTE
_DATA	ENDS
_BSS	SEGMENT
$SG11146 DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG11050 DB	'mov %r,DGROUP', 00H
	ORG $+2
$SG11051 DB	'mov %r,%r', 00H
	ORG $+2
$SG11058 DB	'cli', 00H
$SG11052 DB	'mov %r,%r', 00H
	ORG $+2
$SG11061 DB	'sti', 00H
$SG11053 DB	'sub %r,%r', 00H
	ORG $+2
$SG11075 DB	'push 1', 00H
	ORG $+5
$SG11054 DB	'shl %r,1', 00H
	ORG $+7
$SG11055 DB	'shl %r,1', 00H
	ORG $+7
$SG11056 DB	'shl %r,1', 00H
	ORG $+7
$SG11057 DB	'shl %r,1', 00H
	ORG $+7
$SG11059 DB	'mov %r,%r', 00H
	ORG $+6
$SG11060 DB	'add %r,%r', 00H
	ORG $+6
$SG11063 DB	'mov %r,DGROUP', 00H
	ORG $+2
$SG11064 DB	'mov %r,%r', 00H
	ORG $+6
$SG11065 DB	'mov %r,%r', 00H
	ORG $+6
$SG11066 DB	'sub %r,%r', 00H
	ORG $+6
$SG11067 DB	'shl %r,4', 00H
	ORG $+7
$SG11068 DB	'mov %r,%r', 00H
	ORG $+6
$SG11069 DB	'add %r,%r', 00H
	ORG $+6
$SG11071 DB	'mov %r,DGROUP', 00H
	ORG $+2
$SG11072 DB	'mov %r,%r', 00H
	ORG $+6
$SG11074 DB	'mov %r,0', 00H
	ORG $+7
$SG11076 DB	'push %r', 00H
$SG11077 DB	'call DOSEXIT', 00H
	ORG $+3
$SG11079 DB	'mov %r,4ch', 00H
	ORG $+5
$SG11080 DB	'int 21h', 00H
$SG11107 DB	'org 100h', 00H
	ORG $+3
$SG11108 DB	'%s::', 00H
	ORG $+7
$SG11122 DB	'mov %r,%s', 00H
	ORG $+6
$SG11126 DB	'mov %r,4C00h + %u', 00H
	ORG $+6
$SG11127 DB	'mov %r,%s', 00H
	ORG $+6
$SG11128 DB	'mov %r,4Ch', 00H
	ORG $+5
$SG11143 DB	'EndDirective enter', 0aH, 00H
	ORG $+4
$SG11154 DB	'EndDirective: start label=%s, add=%Xh', 0aH, 00H
	ORG $+1
$SG11165 DB	'EndDirective: start symbol=NULL', 0aH, 00H
	ORG $+7
$SG11162 DB	'EndDirective: start address invalid, opndx.kind=%X indir'
	DB	'ect=%u', 0aH, 00H
$SG11168 DB	'EndDirective: start address invalid, sym->state=%X', 0aH
	DB	00H
	ORG $+4
$SG11169 DB	'EndDirective: start address not a code label, mem_type=%'
	DB	'Xh', 0aH, 00H
_DATA	ENDS
CONST	SEGMENT
StartupDosNear0 DQ FLAT:$SG11050
	DW	0bH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11051
	DW	01cH
	DW	0bH
	ORG $+4
	DQ	FLAT:$SG11052
	DW	0cH
	DW	01bH
	ORG $+4
	DQ	FLAT:$SG11053
	DW	0cH
	DW	0bH
	ORG $+4
	DQ	FLAT:$SG11054
	DW	0cH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11055
	DW	0cH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11056
	DW	0cH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11057
	DW	0cH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11058
	DW	00H
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11059
	DW	01bH
	DW	0bH
	ORG $+4
	DQ	FLAT:$SG11060
	DW	0dH
	DW	0cH
	ORG $+4
	DQ	FLAT:$SG11061
	DW	00H
	DW	00H
	ORG $+4
StartupDosNear1 DQ FLAT:$SG11063
	DW	09H
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11064
	DW	01cH
	DW	09H
	ORG $+4
	DQ	FLAT:$SG11065
	DW	0cH
	DW	01bH
	ORG $+4
	DQ	FLAT:$SG11066
	DW	0cH
	DW	09H
	ORG $+4
	DQ	FLAT:$SG11067
	DW	0cH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11068
	DW	01bH
	DW	09H
	ORG $+4
	DQ	FLAT:$SG11069
	DW	0dH
	DW	0cH
	ORG $+4
StartupDosFar DQ FLAT:$SG11071
	DW	0bH
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11072
	DW	01cH
	DW	0bH
	ORG $+4
ExitOS2	DQ	FLAT:$SG11074
	DW	05H
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11075
	DW	00H
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11076
	DW	09H
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11077
	DW	00H
	DW	00H
	ORG $+4
ExitDos	DQ	FLAT:$SG11079
	DW	05H
	DW	00H
	ORG $+4
	DQ	FLAT:$SG11080
	DW	00H
	DW	00H
	ORG $+4
szStartAddr DB	'@Startup', 00H
CONST	ENDS
PUBLIC	StartupExitDirective
PUBLIC	EndDirective
EXTRN	DoDebugMsg:PROC
EXTRN	DoDebugMsg1:PROC
EXTRN	EmitError:PROC
EXTRN	EmitErr:PROC
EXTRN	EmitWarn:PROC
EXTRN	SegmentModuleExit:PROC
EXTRN	AddPublicData:PROC
EXTRN	AddLineQueue:PROC
EXTRN	AddLineQueueX:PROC
EXTRN	RunLineQueue:PROC
EXTRN	EvalOperand:PROC
EXTRN	LstWriteSrcLine:PROC
EXTRN	ProcCheckOpen:PROC
EXTRN	idata_fixup:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	Parse_Pass:DWORD
EXTRN	InstrTable:BYTE
EXTRN	optable_idx:BYTE
EXTRN	CurrStruct:QWORD
EXTRN	__security_cookie:QWORD
pdata	SEGMENT
$pdata$StartupExitDirective DD imagerel $LN32
	DD	imagerel $LN32+947
	DD	imagerel $unwind$StartupExitDirective
$pdata$EndDirective DD imagerel $LN26
	DD	imagerel $LN26+1113
	DD	imagerel $unwind$EndDirective
pdata	ENDS
xdata	SEGMENT
$unwind$StartupExitDirective DD 021001H
	DD	0190110H
$unwind$EndDirective DD 022219H
	DD	0290110H
	DD	imagerel __GSHandlerCheck
	DD	0130H
xdata	ENDS
; Function compile flags: /Odtp
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\end.c
_TEXT	SEGMENT
opndx$ = 48
CodeInfo$1 = 160
__$ArrayPad$ = 304
i$ = 336
tokenarray$ = 344
EndDirective PROC

; 190  : {

$LN26:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 328				; 00000148H
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax

; 191  :     struct expr         opndx;
; 192  : 
; 193  :     DebugMsg1(("EndDirective enter\n"));

	lea	rcx, OFFSET FLAT:$SG11143
	call	DoDebugMsg1

; 194  : 
; 195  :     i++; /* skip directive */

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 196  : 
; 197  :     /* v2.08: END may generate code, so write listing first */
; 198  :     LstWriteSrcLine();

	call	LstWriteSrcLine

; 199  : 
; 200  :     /* v2.05: first parse the arguments. this allows
; 201  :      * SegmentModuleExit() later to run generated code.
; 202  :      */
; 203  :     if( ModuleInfo.StartupDirectiveFound ) {

	mov	eax, DWORD PTR ModuleInfo+408
	shr	eax, 15
	and	eax, 1
	test	eax, eax
	je	$LN4@EndDirecti

; 204  :         /* start label behind END ignored if .STARTUP has been found */
; 205  :         if( i < Token_Count && Parse_Pass == PASS_1 ) {

	mov	eax, DWORD PTR ModuleInfo+496
	cmp	DWORD PTR i$[rsp], eax
	jge	SHORT $LN5@EndDirecti
	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN5@EndDirecti

; 206  :             EmitWarn( 2, START_ADDRESS_IGNORED );

	mov	edx, 242				; 000000f2H
	mov	ecx, 2
	call	EmitWarn
$LN5@EndDirecti:

; 207  :         }
; 208  :         i = Token_Count + 1;

	mov	eax, DWORD PTR ModuleInfo+496
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 209  :         tokenarray[i].token = T_ID;

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	BYTE PTR [rcx+rax], 8

; 210  :         tokenarray[i].string_ptr = (char *)szStartAddr;

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	lea	rdx, OFFSET FLAT:szStartAddr
	mov	QWORD PTR [rcx+rax+8], rdx

; 211  :         tokenarray[i+1].token = T_FINAL;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	cdqe
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	BYTE PTR [rcx+rax], 0

; 212  :         tokenarray[i+1].string_ptr = "";

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	cdqe
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	lea	rdx, OFFSET FLAT:$SG11146
	mov	QWORD PTR [rcx+rax+8], rdx

; 213  :         Token_Count = i+1;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR ModuleInfo+496, eax
$LN4@EndDirecti:

; 214  :     }
; 215  :     /* v2.11: flag EXPF_NOUNDEF added - will return ERROR if start label isn't defined */
; 216  :     if( EvalOperand( &i, tokenarray, Token_Count, &opndx, EXPF_NOUNDEF ) == ERROR ) {

	mov	BYTE PTR [rsp+32], 2
	lea	r9, QWORD PTR opndx$[rsp]
	mov	r8d, DWORD PTR ModuleInfo+496
	mov	rdx, QWORD PTR tokenarray$[rsp]
	lea	rcx, QWORD PTR i$[rsp]
	call	EvalOperand
	cmp	eax, -1
	jne	SHORT $LN6@EndDirecti

; 217  :         return( ERROR );

	mov	eax, -1
	jmp	$LN1@EndDirecti
$LN6@EndDirecti:

; 218  :     }
; 219  :     if( tokenarray[i].token != T_FINAL ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	je	SHORT $LN7@EndDirecti

; 220  :         return( EmitErr( SYNTAX_ERROR_EX, tokenarray[i].tokpos ) );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rdx, QWORD PTR [rcx+rax+24]
	mov	ecx, 209				; 000000d1H
	call	EmitErr
	jmp	$LN1@EndDirecti
$LN7@EndDirecti:

; 221  :     }
; 222  : 
; 223  :     if ( CurrStruct ) {

	cmp	QWORD PTR CurrStruct, 0
	je	SHORT $LN8@EndDirecti
$LN2@EndDirecti:

; 224  :         while ( CurrStruct->next )

	mov	rax, QWORD PTR CurrStruct
	cmp	QWORD PTR [rax+112], 0
	je	SHORT $LN3@EndDirecti

; 225  :             CurrStruct = CurrStruct->next;

	mov	rax, QWORD PTR CurrStruct
	mov	rax, QWORD PTR [rax+112]
	mov	QWORD PTR CurrStruct, rax
	jmp	SHORT $LN2@EndDirecti
$LN3@EndDirecti:

; 226  :         EmitErr( UNMATCHED_BLOCK_NESTING, CurrStruct->sym.name );

	mov	rax, QWORD PTR CurrStruct
	mov	rdx, QWORD PTR [rax+8]
	mov	ecx, 142				; 0000008eH
	call	EmitErr
$LN8@EndDirecti:

; 227  :     }
; 228  :     /* v2.10: check for open PROCedures */
; 229  :     ProcCheckOpen();

	call	ProcCheckOpen

; 230  : 
; 231  :     /* check type of start label. Must be a symbolic code label, internal or external */
; 232  :     if ( opndx.kind == EXPR_ADDR && opndx.indirect == FALSE &&
; 233  :         ( opndx.mem_type == MT_NEAR || opndx.mem_type == MT_FAR || ( opndx.mem_type == MT_EMPTY && opndx.instr == T_OFFSET ) ) &&
; 234  :         opndx.sym && (  opndx.sym->state == SYM_INTERNAL || opndx.sym->state == SYM_EXTERNAL ) ) {

	cmp	DWORD PTR opndx$[rsp+60], 1
	jne	$LN9@EndDirecti
	mov	eax, DWORD PTR opndx$[rsp+72]
	and	eax, 1
	test	eax, eax
	jne	$LN9@EndDirecti
	cmp	DWORD PTR opndx$[rsp+64], 129		; 00000081H
	je	SHORT $LN11@EndDirecti
	cmp	DWORD PTR opndx$[rsp+64], 130		; 00000082H
	je	SHORT $LN11@EndDirecti
	cmp	DWORD PTR opndx$[rsp+64], 192		; 000000c0H
	jne	$LN9@EndDirecti
	cmp	DWORD PTR opndx$[rsp+56], 241		; 000000f1H
	jne	$LN9@EndDirecti
$LN11@EndDirecti:
	cmp	QWORD PTR opndx$[rsp+80], 0
	je	$LN9@EndDirecti
	mov	rax, QWORD PTR opndx$[rsp+80]
	cmp	DWORD PTR [rax+40], 1
	je	SHORT $LN12@EndDirecti
	mov	rax, QWORD PTR opndx$[rsp+80]
	cmp	DWORD PTR [rax+40], 2
	jne	$LN9@EndDirecti
$LN12@EndDirecti:

; 235  : 
; 236  :         DebugMsg(("EndDirective: start label=%s, add=%" I32_SPEC "Xh\n", opndx.sym->name, opndx.value ));

	mov	r8d, DWORD PTR opndx$[rsp]
	mov	rax, QWORD PTR opndx$[rsp+80]
	mov	rdx, QWORD PTR [rax+8]
	lea	rcx, OFFSET FLAT:$SG11154
	call	DoDebugMsg

; 237  : 
; 238  :         if ( Options.output_format == OFORMAT_OMF ) {

	cmp	DWORD PTR Options+160, 1
	jne	$LN13@EndDirecti

; 239  :             struct code_info    CodeInfo;
; 240  :             /* fixme: no need to create the fixup here, should be done in omf_write_modend() */
; 241  :             //CodeInfo.token = T_NULL; /* v2.09: T_NULL has no entry in optable_idx[] */
; 242  :             //CodeInfo.pinstr = &InstrTable[IndexFromToken( T_NULL )];
; 243  :             CodeInfo.opnd[0].InsFixup = NULL;

	mov	eax, 24
	imul	rax, rax, 0
	mov	QWORD PTR CodeInfo$1[rsp+rax+48], 0

; 244  :             CodeInfo.token = T_NOP;

	mov	DWORD PTR CodeInfo$1[rsp+24], 643	; 00000283H

; 245  :             CodeInfo.pinstr = &InstrTable[IndexFromToken( T_NOP )];

	mov	eax, 2
	imul	rax, rax, 188				; 000000bcH
	lea	rcx, OFFSET FLAT:optable_idx
	movzx	eax, WORD PTR [rcx+rax]
	imul	rax, rax, 14
	lea	rcx, OFFSET FLAT:InstrTable
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR CodeInfo$1[rsp+16], rax

; 246  :             CodeInfo.flags = 0;

	mov	BYTE PTR CodeInfo$1[rsp+142], 0

; 247  :             CodeInfo.mem_type = MT_EMPTY;

	mov	DWORD PTR CodeInfo$1[rsp+28], 192	; 000000c0H

; 248  :             idata_fixup( &CodeInfo, 0, &opndx );

	lea	r8, QWORD PTR opndx$[rsp]
	xor	edx, edx
	lea	rcx, QWORD PTR CodeInfo$1[rsp]
	call	idata_fixup

; 249  : #if FASTMEM==0
; 250  :             LclFree( ModuleInfo.g.start_fixup );
; 251  : #endif
; 252  :             ModuleInfo.g.start_fixup = CodeInfo.opnd[0].InsFixup;

	mov	eax, 24
	imul	rax, rax, 0
	mov	rax, QWORD PTR CodeInfo$1[rsp+rax+48]
	mov	QWORD PTR ModuleInfo+208, rax

; 253  :             ModuleInfo.g.start_displ = opndx.value;

	mov	eax, DWORD PTR opndx$[rsp]
	mov	DWORD PTR ModuleInfo+216, eax

; 254  :         } else {

	jmp	SHORT $LN14@EndDirecti
$LN13@EndDirecti:

; 255  :             /* Masm silently ignores start for -coff if an offset was given */
; 256  :             //if ( opndx.value )
; 257  :             //   emit a warning
; 258  : 
; 259  :             if ( opndx.sym->state != SYM_EXTERNAL && opndx.sym->ispublic == FALSE ) {

	mov	rax, QWORD PTR opndx$[rsp+80]
	cmp	DWORD PTR [rax+40], 2
	je	SHORT $LN15@EndDirecti
	mov	rax, QWORD PTR opndx$[rsp+80]
	movzx	eax, BYTE PTR [rax+48]
	shr	al, 7
	and	al, 1
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN15@EndDirecti

; 260  :                 opndx.sym->ispublic = TRUE;

	mov	rax, QWORD PTR opndx$[rsp+80]
	movzx	eax, BYTE PTR [rax+48]
	or	al, 128					; 00000080H
	mov	rcx, QWORD PTR opndx$[rsp+80]
	mov	BYTE PTR [rcx+48], al

; 261  :                 AddPublicData( opndx.sym );

	mov	rcx, QWORD PTR opndx$[rsp+80]
	call	AddPublicData
$LN15@EndDirecti:

; 262  :             }
; 263  :             ModuleInfo.g.start_label = opndx.sym;

	mov	rax, QWORD PTR opndx$[rsp+80]
	mov	QWORD PTR ModuleInfo+208, rax
$LN14@EndDirecti:

; 264  :         }

	jmp	$LN10@EndDirecti
$LN9@EndDirecti:

; 265  :     } else if ( opndx.kind != EXPR_EMPTY ) {

	cmp	DWORD PTR opndx$[rsp+60], -2
	je	$LN16@EndDirecti

; 266  : #ifdef DEBUG_OUT
; 267  :         if ( opndx.kind != EXPR_ADDR || opndx.indirect == TRUE ) {

	cmp	DWORD PTR opndx$[rsp+60], 1
	jne	SHORT $LN19@EndDirecti
	mov	eax, DWORD PTR opndx$[rsp+72]
	and	eax, 1
	cmp	eax, 1
	jne	SHORT $LN17@EndDirecti
$LN19@EndDirecti:

; 268  :             DebugMsg(("EndDirective: start address invalid, opndx.kind=%X indirect=%u\n", opndx.kind, opndx.indirect ));

	mov	eax, DWORD PTR opndx$[rsp+72]
	and	eax, 1
	mov	r8d, eax
	mov	edx, DWORD PTR opndx$[rsp+60]
	lea	rcx, OFFSET FLAT:$SG11162
	call	DoDebugMsg
	jmp	SHORT $LN18@EndDirecti
$LN17@EndDirecti:

; 269  :         } else if ( opndx.sym == NULL ) {

	cmp	QWORD PTR opndx$[rsp+80], 0
	jne	SHORT $LN20@EndDirecti

; 270  :             DebugMsg(("EndDirective: start symbol=NULL\n" ));

	lea	rcx, OFFSET FLAT:$SG11165
	call	DoDebugMsg
	jmp	SHORT $LN21@EndDirecti
$LN20@EndDirecti:

; 271  :         } else if ( opndx.sym->state != SYM_INTERNAL && opndx.sym->state != SYM_EXTERNAL ) {

	mov	rax, QWORD PTR opndx$[rsp+80]
	cmp	DWORD PTR [rax+40], 1
	je	SHORT $LN22@EndDirecti
	mov	rax, QWORD PTR opndx$[rsp+80]
	cmp	DWORD PTR [rax+40], 2
	je	SHORT $LN22@EndDirecti

; 272  :             DebugMsg(("EndDirective: start address invalid, sym->state=%X\n", opndx.sym->state ));

	mov	rax, QWORD PTR opndx$[rsp+80]
	mov	edx, DWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG11168
	call	DoDebugMsg

; 273  :         } else {

	jmp	SHORT $LN23@EndDirecti
$LN22@EndDirecti:

; 274  :             DebugMsg(("EndDirective: start address not a code label, mem_type=%Xh\n", opndx.mem_type ));

	mov	edx, DWORD PTR opndx$[rsp+64]
	lea	rcx, OFFSET FLAT:$SG11169
	call	DoDebugMsg
$LN23@EndDirecti:
$LN21@EndDirecti:
$LN18@EndDirecti:

; 275  :         }
; 276  : #endif
; 277  :         return( EmitError( OPERAND_MUST_BE_RELOCATABLE ) );

	mov	ecx, 188				; 000000bcH
	call	EmitError
	jmp	SHORT $LN1@EndDirecti
$LN16@EndDirecti:
$LN10@EndDirecti:

; 278  :     }
; 279  : 
; 280  :     /* close open segments */
; 281  :     SegmentModuleExit();

	call	SegmentModuleExit

; 282  : 
; 283  :     if ( ModuleInfo.g.EndDirHook )

	cmp	QWORD PTR ModuleInfo+296, 0
	je	SHORT $LN24@EndDirecti

; 284  :         ModuleInfo.g.EndDirHook( &ModuleInfo );

	lea	rcx, OFFSET FLAT:ModuleInfo
	call	QWORD PTR ModuleInfo+296
$LN24@EndDirecti:

; 285  : 
; 286  :     ModuleInfo.EndDirFound = TRUE;

	mov	eax, DWORD PTR ModuleInfo+408
	bts	eax, 16
	mov	DWORD PTR ModuleInfo+408, eax

; 287  : 
; 288  :     return( NOT_ERROR );

	xor	eax, eax
$LN1@EndDirecti:

; 289  : }

	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 328				; 00000148H
	ret	0
EndDirective ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\end.c
_TEXT	SEGMENT
count$ = 48
p$ = 56
tv80 = 64
rc$ = 68
j$ = 72
opndx$ = 80
i$ = 208
tokenarray$ = 216
StartupExitDirective PROC

; 96   : {

$LN32:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 200				; 000000c8H

; 97   :     int         count;
; 98   :     ret_code    rc = NOT_ERROR;

	mov	DWORD PTR rc$[rsp], 0

; 99   :     int         j;
; 100  :     const struct code_line *p;
; 101  :     struct expr opndx;
; 102  : 
; 103  :     LstWriteSrcLine();

	call	LstWriteSrcLine

; 104  : 
; 105  :     if( ModuleInfo.model == MODEL_NONE ) {

	cmp	DWORD PTR ModuleInfo+360, 0
	jne	SHORT $LN10@StartupExi

; 106  :         return( EmitError( MODEL_IS_NOT_DECLARED ) );

	mov	ecx, 96					; 00000060H
	call	EmitError
	jmp	$LN1@StartupExi
$LN10@StartupExi:

; 107  :     }
; 108  :     if ( ModuleInfo.Ofssize > USE16 ) {

	movzx	eax, BYTE PTR ModuleInfo+404
	test	eax, eax
	jle	SHORT $LN11@StartupExi

; 109  :         return( EmitErr( DOES_NOT_WORK_WITH_32BIT_SEGMENTS, tokenarray[i].string_ptr ) );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rdx, QWORD PTR [rcx+rax+8]
	mov	ecx, 221				; 000000ddH
	call	EmitErr
	jmp	$LN1@StartupExi
$LN11@StartupExi:

; 110  :     }
; 111  : 
; 112  :     switch( tokenarray[i].tokval ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	eax, DWORD PTR [rcx+rax+16]
	mov	DWORD PTR tv80[rsp], eax
	cmp	DWORD PTR tv80[rsp], 345		; 00000159H
	je	$LN21@StartupExi
	cmp	DWORD PTR tv80[rsp], 346		; 0000015aH
	je	SHORT $LN12@StartupExi
	jmp	$LN2@StartupExi
$LN12@StartupExi:

; 113  :     case T_DOT_STARTUP:
; 114  :         count = 0;

	mov	DWORD PTR count$[rsp], 0

; 115  :         /* for tiny model, set current PC to 100h. */
; 116  :         if ( ModuleInfo.model == MODEL_TINY )

	cmp	DWORD PTR ModuleInfo+360, 1
	jne	SHORT $LN13@StartupExi

; 117  :             AddLineQueue( "org 100h" );

	lea	rcx, OFFSET FLAT:$SG11107
	call	AddLineQueue
$LN13@StartupExi:

; 118  :         AddLineQueueX( "%s::", szStartAddr );

	lea	rdx, OFFSET FLAT:szStartAddr
	lea	rcx, OFFSET FLAT:$SG11108
	call	AddLineQueueX

; 119  :         if( ModuleInfo.ostype == OPSYS_DOS ) {

	cmp	DWORD PTR ModuleInfo+368, 0
	jne	$LN14@StartupExi

; 120  :             if ( ModuleInfo.model == MODEL_TINY )

	cmp	DWORD PTR ModuleInfo+360, 1
	jne	SHORT $LN15@StartupExi

; 121  :                 ;

	jmp	$LN16@StartupExi
$LN15@StartupExi:

; 122  :             else {
; 123  :                 if( ModuleInfo.distance == STACK_NEAR ) {

	cmp	DWORD PTR ModuleInfo+356, 0
	jne	SHORT $LN17@StartupExi

; 124  :                     if ( ( ModuleInfo.cpu & M_CPUMSK ) <= M_8086 ) {

	movsx	eax, WORD PTR ModuleInfo+388
	and	eax, 127				; 0000007fH
	cmp	eax, 1
	jg	SHORT $LN19@StartupExi

; 125  :                         p = StartupDosNear0;

	lea	rax, OFFSET FLAT:StartupDosNear0
	mov	QWORD PTR p$[rsp], rax

; 126  :                         count = sizeof( StartupDosNear0 ) / sizeof( StartupDosNear0[0] );

	mov	DWORD PTR count$[rsp], 12

; 127  :                     } else {

	jmp	SHORT $LN20@StartupExi
$LN19@StartupExi:

; 128  :                         p = StartupDosNear1;

	lea	rax, OFFSET FLAT:StartupDosNear1
	mov	QWORD PTR p$[rsp], rax

; 129  :                         count = sizeof( StartupDosNear1 ) / sizeof( StartupDosNear1[0] );

	mov	DWORD PTR count$[rsp], 7
$LN20@StartupExi:

; 130  :                     }
; 131  :                 } else {

	jmp	SHORT $LN18@StartupExi
$LN17@StartupExi:

; 132  :                     p = StartupDosFar;

	lea	rax, OFFSET FLAT:StartupDosFar
	mov	QWORD PTR p$[rsp], rax

; 133  :                     count = sizeof( StartupDosFar ) / sizeof( StartupDosFar[0] );

	mov	DWORD PTR count$[rsp], 2
$LN18@StartupExi:

; 134  :                 }
; 135  :                 for ( ; count ; count--, p++ )

	jmp	SHORT $LN6@StartupExi
$LN4@StartupExi:
	mov	eax, DWORD PTR count$[rsp]
	dec	eax
	mov	DWORD PTR count$[rsp], eax
	mov	rax, QWORD PTR p$[rsp]
	add	rax, 16
	mov	QWORD PTR p$[rsp], rax
$LN6@StartupExi:
	cmp	DWORD PTR count$[rsp], 0
	je	SHORT $LN5@StartupExi

; 136  :                     AddLineQueueX( (char *)p->src, p->r1, p->r2 );

	mov	rax, QWORD PTR p$[rsp]
	movsx	eax, WORD PTR [rax+10]
	mov	rcx, QWORD PTR p$[rsp]
	movsx	ecx, WORD PTR [rcx+8]
	mov	r8d, eax
	mov	edx, ecx
	mov	rax, QWORD PTR p$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	AddLineQueueX
	jmp	SHORT $LN4@StartupExi
$LN5@StartupExi:
$LN16@StartupExi:
$LN14@StartupExi:

; 137  :             }
; 138  :         }
; 139  :         ModuleInfo.StartupDirectiveFound = TRUE;

	mov	eax, DWORD PTR ModuleInfo+408
	bts	eax, 15
	mov	DWORD PTR ModuleInfo+408, eax

; 140  :         i++; /* skip directive token */

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 141  :         break;

	jmp	$LN2@StartupExi
$LN21@StartupExi:

; 142  :     case T_DOT_EXIT:
; 143  :         if( ModuleInfo.ostype == OPSYS_DOS ) {

	cmp	DWORD PTR ModuleInfo+368, 0
	jne	SHORT $LN22@StartupExi

; 144  :             p = ExitDos;

	lea	rax, OFFSET FLAT:ExitDos
	mov	QWORD PTR p$[rsp], rax

; 145  :             count = sizeof( ExitDos ) / sizeof( ExitDos[0] );

	mov	DWORD PTR count$[rsp], 2

; 146  :         } else {

	jmp	SHORT $LN23@StartupExi
$LN22@StartupExi:

; 147  :             p = ExitOS2;

	lea	rax, OFFSET FLAT:ExitOS2
	mov	QWORD PTR p$[rsp], rax

; 148  :             count = sizeof( ExitOS2 ) / sizeof( ExitOS2[0] );

	mov	DWORD PTR count$[rsp], 4
$LN23@StartupExi:

; 149  :         }
; 150  :         i++; /* skip directive token */

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 151  :         if ( tokenarray[i].token != T_FINAL ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	je	$LN24@StartupExi

; 152  :             if( ModuleInfo.ostype == OPSYS_OS2 ) {

	cmp	DWORD PTR ModuleInfo+368, 1
	jne	SHORT $LN25@StartupExi

; 153  :                 AddLineQueueX( "mov %r,%s", T_AX, tokenarray[i].tokpos );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	r8, QWORD PTR [rcx+rax+24]
	mov	edx, 9
	lea	rcx, OFFSET FLAT:$SG11122
	call	AddLineQueueX

; 154  :                 i = Token_Count;

	mov	eax, DWORD PTR ModuleInfo+496
	mov	DWORD PTR i$[rsp], eax

; 155  :             } else {

	jmp	$LN26@StartupExi
$LN25@StartupExi:

; 156  :                 j = i;

	mov	eax, DWORD PTR i$[rsp]
	mov	DWORD PTR j$[rsp], eax

; 157  :                 if ( EvalOperand( &i, tokenarray, Token_Count, &opndx, 0 ) == ERROR )

	mov	BYTE PTR [rsp+32], 0
	lea	r9, QWORD PTR opndx$[rsp]
	mov	r8d, DWORD PTR ModuleInfo+496
	mov	rdx, QWORD PTR tokenarray$[rsp]
	lea	rcx, QWORD PTR i$[rsp]
	call	EvalOperand
	cmp	eax, -1
	jne	SHORT $LN27@StartupExi

; 158  :                     return( ERROR );

	mov	eax, -1
	jmp	$LN1@StartupExi
$LN27@StartupExi:

; 159  :                 if ( opndx.kind == EXPR_CONST && opndx.value < 0x100 ) {

	cmp	DWORD PTR opndx$[rsp+60], 0
	jne	SHORT $LN28@StartupExi
	cmp	DWORD PTR opndx$[rsp], 256		; 00000100H
	jge	SHORT $LN28@StartupExi

; 160  :                     AddLineQueueX( "mov %r,4C00h + %u", T_AX, opndx.value );

	mov	r8d, DWORD PTR opndx$[rsp]
	mov	edx, 9
	lea	rcx, OFFSET FLAT:$SG11126
	call	AddLineQueueX

; 161  :                 } else {

	jmp	SHORT $LN29@StartupExi
$LN28@StartupExi:

; 162  :                     AddLineQueueX( "mov %r,%s", T_AL, tokenarray[j].tokpos );

	movsxd	rax, DWORD PTR j$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	r8, QWORD PTR [rcx+rax+24]
	mov	edx, 1
	lea	rcx, OFFSET FLAT:$SG11127
	call	AddLineQueueX

; 163  :                     AddLineQueueX( "mov %r,4Ch", T_AH );

	mov	edx, 5
	lea	rcx, OFFSET FLAT:$SG11128
	call	AddLineQueueX
$LN29@StartupExi:
$LN26@StartupExi:

; 164  :                 }
; 165  :             }
; 166  :             p++;

	mov	rax, QWORD PTR p$[rsp]
	add	rax, 16
	mov	QWORD PTR p$[rsp], rax

; 167  :             count--;

	mov	eax, DWORD PTR count$[rsp]
	dec	eax
	mov	DWORD PTR count$[rsp], eax
$LN24@StartupExi:

; 168  :         }
; 169  : 
; 170  :         for( ; count ; count--, p++ ) {

	jmp	SHORT $LN9@StartupExi
$LN7@StartupExi:
	mov	eax, DWORD PTR count$[rsp]
	dec	eax
	mov	DWORD PTR count$[rsp], eax
	mov	rax, QWORD PTR p$[rsp]
	add	rax, 16
	mov	QWORD PTR p$[rsp], rax
$LN9@StartupExi:
	cmp	DWORD PTR count$[rsp], 0
	je	SHORT $LN8@StartupExi

; 171  :             AddLineQueueX( (char *)p->src, p->r1, p->r2 );

	mov	rax, QWORD PTR p$[rsp]
	movsx	eax, WORD PTR [rax+10]
	mov	rcx, QWORD PTR p$[rsp]
	movsx	ecx, WORD PTR [rcx+8]
	mov	r8d, eax
	mov	edx, ecx
	mov	rax, QWORD PTR p$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	AddLineQueueX

; 172  :         }

	jmp	SHORT $LN7@StartupExi
$LN8@StartupExi:
$LN2@StartupExi:

; 173  :         break;
; 174  :     }
; 175  : 
; 176  :     if ( tokenarray[i].token != T_FINAL ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	je	SHORT $LN30@StartupExi

; 177  :         EmitErr( SYNTAX_ERROR_EX, tokenarray[i].tokpos );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rdx, QWORD PTR [rcx+rax+24]
	mov	ecx, 209				; 000000d1H
	call	EmitErr

; 178  :         rc = ERROR;

	mov	DWORD PTR rc$[rsp], -1
$LN30@StartupExi:

; 179  :     }
; 180  : 
; 181  :     RunLineQueue();

	call	RunLineQueue

; 182  : 
; 183  :     return( rc );

	mov	eax, DWORD PTR rc$[rsp]
$LN1@StartupExi:

; 184  : }

	add	rsp, 200				; 000000c8H
	ret	0
StartupExitDirective ENDP
_TEXT	ENDS
END
