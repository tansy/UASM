; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	evex:BYTE
_DATA	ENDS
PUBLIC	atofloat
PUBLIC	__real@3810000000000000
PUBLIC	__real@47efffffe0000000
PUBLIC	__real@bff0000000000000
EXTRN	_errno:PROC
EXTRN	strtod:PROC
EXTRN	EmitErr:PROC
EXTRN	EmitWarn:PROC
EXTRN	strtotb:PROC
EXTRN	myatoi128:PROC
EXTRN	memset:PROC
EXTRN	Parse_Pass:DWORD
EXTRN	_fltused:DWORD
pdata	SEGMENT
$pdata$atofloat DD imagerel $LN30
	DD	imagerel $LN30+133
	DD	imagerel $unwind$atofloat
$pdata$0$atofloat DD imagerel $LN30+133
	DD	imagerel $LN30+367
	DD	imagerel $chain$0$atofloat
$pdata$1$atofloat DD imagerel $LN30+367
	DD	imagerel $LN30+388
	DD	imagerel $chain$1$atofloat
pdata	ENDS
;	COMDAT __real@bff0000000000000
CONST	SEGMENT
__real@bff0000000000000 DQ 0bff0000000000000r	; -1
CONST	ENDS
;	COMDAT __real@47efffffe0000000
CONST	SEGMENT
__real@47efffffe0000000 DQ 047efffffe0000000r	; 3.40282e+38
CONST	ENDS
;	COMDAT __real@3810000000000000
CONST	SEGMENT
__real@3810000000000000 DQ 03810000000000000r	; 1.17549e-38
CONST	ENDS
xdata	SEGMENT
$unwind$atofloat DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
$chain$0$atofloat DD 020521H
	DD	026805H
	DD	imagerel $LN30
	DD	imagerel $LN30+133
	DD	imagerel $unwind$atofloat
$chain$1$atofloat DD 021H
	DD	imagerel $LN30
	DD	imagerel $LN30+133
	DD	imagerel $unwind$atofloat
xdata	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\atofloat.c
_TEXT	SEGMENT
out$ = 64
inp$ = 72
size$ = 80
negative$ = 88
ftype$ = 96
atofloat PROC

; 26   : {

$LN30:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H

; 27   :     //const char *inp;
; 28   :     double  double_value;
; 29   :     float   float_value;
; 30   : 
; 31   :     /* v2.04: accept and handle 'real number designator' */
; 32   :     if ( ftype ) {

	cmp	BYTE PTR ftype$[rsp], 0
	movzx	ebp, r9b
	mov	esi, r8d
	mov	rbx, rdx
	mov	rdi, rcx
	je	SHORT $LN7@atofloat

; 33   :         uint_8 *p;
; 34   :         uint_8 *end;
; 35   :         /* convert hex string with float "designator" to float.
; 36   :          * this is supposed to work with real4, real8 and real10.
; 37   :          * v2.11: use myatoi128() for conversion ( this function
; 38   :          *        always initializes and reads a 16-byte number ).
; 39   :          *        then check that the number fits in the variable.
; 40   :          */
; 41   :         myatoi128( inp, (uint_64 *)out, 16, strlen( inp ) - 1 );

	or	rax, -1
	npad	4
$LL27@atofloat:
	cmp	BYTE PTR [rdx+rax+1], 0
	lea	rax, QWORD PTR [rax+1]
	jne	SHORT $LL27@atofloat
	mov	rdx, rcx
	lea	r9d, DWORD PTR [rax-1]
	mov	rcx, rbx
	mov	r8d, 16
	call	myatoi128

; 42   :         for ( p = (uint_8 *)out + size, end = (uint_8 *)out + 16; p < end; p++ )

	lea	rax, QWORD PTR [rdi+rsi]
	lea	rcx, QWORD PTR [rdi+16]
	cmp	rax, rcx
	jae	$LN5@atofloat
$LL4@atofloat:

; 43   :             if ( *p != NULLC ) {

	cmp	BYTE PTR [rax], 0
	jne	SHORT $LN22@atofloat

; 42   :         for ( p = (uint_8 *)out + size, end = (uint_8 *)out + 16; p < end; p++ )

	inc	rax
	cmp	rax, rcx
	jb	SHORT $LL4@atofloat

; 43   :             if ( *p != NULLC ) {

	jmp	$LN5@atofloat
$LN22@atofloat:

; 44   :                 EmitErr( INVALID_DATA_INITIALIZER, inp );

	mov	rdx, rbx
	mov	ecx, 231				; 000000e7H
	call	EmitErr

; 45   :                 break;
; 46   :             }
; 47   :     } else {

	jmp	$LN5@atofloat
$LN7@atofloat:
	movaps	XMMWORD PTR [rsp+32], xmm6

; 48   :         switch ( size ) {

	cmp	esi, 4
	je	$LN10@atofloat
	cmp	esi, 8
	je	SHORT $LN14@atofloat
	cmp	esi, 10
	je	SHORT $LN17@atofloat

; 89   :         default:
; 90   :             /* sizes != 4,8 or 10 aren't accepted.
; 91   :              * Masm ignores silently, HJWasm also unless -W4 is set.
; 92   :              */
; 93   :             if ( Parse_Pass == PASS_1 )

	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN19@atofloat

; 94   :                 EmitWarn( 4, FP_INITIALIZER_IGNORED );

	mov	edx, 74					; 0000004aH
	lea	ecx, QWORD PTR [rdx-70]
	call	EmitWarn
$LN19@atofloat:

; 95   :             memset( (char *)out, 0, size );

	mov	r8, rsi
	xor	edx, edx
	mov	rcx, rdi
	call	memset
	jmp	$LN28@atofloat
$LN17@atofloat:

; 86   :         case 10:
; 87   :             strtotb( inp, (struct TB_LD *)out, negative );

	mov	rdx, rcx
	movzx	r8d, bpl
	mov	rcx, rbx
	call	strtotb

; 88   :             break;

	jmp	$LN28@atofloat
$LN14@atofloat:

; 73   :             break;
; 74   :         case 8:
; 75   :             errno = 0; /* v2.11: init errno; errno is set on over- and under-flow */

	call	_errno

; 76   :             double_value = strtod( inp, NULL );

	xor	edx, edx
	mov	rcx, rbx
	mov	DWORD PTR [rax], 0
	call	strtod
	movaps	xmm6, xmm0

; 77   :             /* v2.11: check added */
; 78   :             if ( errno == ERANGE ) {

	call	_errno
	cmp	DWORD PTR [rax], 34			; 00000022H
	jne	SHORT $LN15@atofloat

; 79   :                 DebugMsg(("atofloat(%s, 8): magnitude too large\n", inp ));
; 80   :                 EmitErr( MAGNITUDE_TOO_LARGE_FOR_SPECIFIED_SIZE );

	mov	ecx, 76					; 0000004cH
	call	EmitErr
$LN15@atofloat:

; 81   :             }
; 82   :             if( negative )

	test	bpl, bpl
	je	SHORT $LN16@atofloat

; 83   :                 double_value *= -1;

	mulsd	xmm6, QWORD PTR __real@bff0000000000000
$LN16@atofloat:

; 84   :             *(double *)out = double_value;

	movsd	QWORD PTR [rdi], xmm6

; 85   :             break;

	jmp	SHORT $LN28@atofloat
$LN10@atofloat:

; 49   :         case 4:
; 50   : #if USESTRTOF
; 51   :             errno = 0;
; 52   :             float_value = strtof( inp, NULL );
; 53   :             if ( errno == ERANGE ) {
; 54   :                 DebugMsg(("atofloat(%s, 4): magnitude too large\n", inp ));
; 55   :                 EmitErr( MAGNITUDE_TOO_LARGE_FOR_SPECIFIED_SIZE );
; 56   :             }
; 57   :             if( negative )
; 58   :                 float_value *= -1;
; 59   : #else
; 60   :             double_value = strtod( inp, NULL );

	xor	edx, edx
	mov	rcx, rbx
	call	strtod

; 61   :             /* v2.06: check FLT_MAX added */
; 62   :             /* v2.11: check FLT_MIN (min positive value) added */
; 63   :             //if ( double_value > FLT_MAX )
; 64   :             if ( double_value > FLT_MAX || ( double_value < FLT_MIN && double_value != 0 ) ) {

	comisd	xmm0, QWORD PTR __real@47efffffe0000000
	movaps	xmm6, xmm0
	ja	SHORT $LN26@atofloat
	movsd	xmm1, QWORD PTR __real@3810000000000000
	comisd	xmm1, xmm0
	jbe	SHORT $LN11@atofloat
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jp	SHORT $LN26@atofloat
	je	SHORT $LN11@atofloat
$LN26@atofloat:

; 65   :                 DebugMsg(("atofloat(%s, 4): magnitude too large; FLT_MAX=%e FLT_MIN=%e\n", inp, FLT_MAX, FLT_MIN ));
; 66   :                 EmitErr( MAGNITUDE_TOO_LARGE_FOR_SPECIFIED_SIZE );

	mov	ecx, 76					; 0000004cH
	call	EmitErr
$LN11@atofloat:

; 67   :             }
; 68   :             if( negative )

	test	bpl, bpl
	je	SHORT $LN13@atofloat

; 69   :                 double_value *= -1;

	mulsd	xmm6, QWORD PTR __real@bff0000000000000
$LN13@atofloat:
	xorps	xmm0, xmm0

; 70   :             float_value = double_value;

	cvtsd2ss xmm0, xmm6

; 71   : #endif
; 72   :             *(float *)out = float_value;

	movss	DWORD PTR [rdi], xmm0
$LN28@atofloat:
	movaps	xmm6, XMMWORD PTR [rsp+32]
$LN5@atofloat:

; 96   :         }
; 97   :     }
; 98   :     return;
; 99   : }

	mov	rbx, QWORD PTR [rsp+64]
	mov	rbp, QWORD PTR [rsp+72]
	mov	rsi, QWORD PTR [rsp+80]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
atofloat ENDP
_TEXT	ENDS
END
