; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	evex:BYTE
COMM	ZEROLOCALS:BYTE
_DATA	ENDS
_DATA	SEGMENT
$SG11418 DB	'$$$%05u', 00H
_DATA	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	sprintf
PUBLIC	AddLinnumDataRef
PUBLIC	LinnumInit
PUBLIC	LinnumFini
PUBLIC	QueueDeleteLinnum
EXTRN	__stdio_common_vsprintf:PROC
EXTRN	EmitWarn:PROC
EXTRN	LclAlloc:PROC
EXTRN	SymFind:PROC
EXTRN	GetLineNumber:PROC
EXTRN	SetSymSegOfs:PROC
EXTRN	GetCurrOffset:PROC
EXTRN	TypeFromClassName:PROC
EXTRN	CreateProc:PROC
EXTRN	AddPublicData:PROC
EXTRN	omf_check_flush:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	Parse_Pass:DWORD
EXTRN	write_to_file:BYTE
EXTRN	CurrProc:QWORD
EXTRN	LinnumQueue:BYTE
EXTRN	procidx:DWORD
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
_BSS	SEGMENT
dmyproc	DQ	01H DUP (?)
lastLineNumber DD 01H DUP (?)
_BSS	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsnprintf_l DD imagerel $LN4
	DD	imagerel $LN4+102
	DD	imagerel $unwind$_vsnprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsprintf_l DD imagerel $LN6
	DD	imagerel $LN6+98
	DD	imagerel $unwind$_vsprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$sprintf DD imagerel $LN8
	DD	imagerel $LN8+90
	DD	imagerel $unwind$sprintf
pdata	ENDS
pdata	SEGMENT
$pdata$AddLinnumDataRef DD imagerel $LN23
	DD	imagerel $LN23+683
	DD	imagerel $unwind$AddLinnumDataRef
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$AddLinnumData DD imagerel AddLinnumData
	DD	imagerel AddLinnumData+181
	DD	imagerel $unwind$AddLinnumData
pdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$AddLinnumData DD 020601H
	DD	030023206H
xdata	ENDS
xdata	SEGMENT
$unwind$AddLinnumDataRef DD 060f01H
	DD	09640fH
	DD	08340fH
	DD	0700b520fH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$sprintf DD 041601H
	DD	070125216H
	DD	030106011H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsnprintf_l DD 081401H
	DD	0a6414H
	DD	095414H
	DD	083414H
	DD	070105214H
xdata	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\linnum.c
;	COMDAT AddLinnumData
_TEXT	SEGMENT
data$ = 48
AddLinnumData PROC					; COMDAT

; 40   : {

	push	rbx
	sub	rsp, 32					; 00000020H

; 41   :     struct qdesc *q;
; 42   :    
; 43   : #if COFF_SUPPORT
; 44   :     if ( Options.output_format == OFORMAT_COFF ) {

	cmp	DWORD PTR Options+144, 2
	mov	rbx, rcx
	jne	SHORT $LN2@AddLinnumD

; 45   :         q = (struct qdesc *)CurrSeg->e.seginfo->LinnumQueue;

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rdx, QWORD PTR [rax+96]
	mov	r8, QWORD PTR [rdx+56]

; 46   :         if ( q == NULL ) {

	test	r8, r8
	jne	SHORT $LN3@AddLinnumD

; 47   :             q = LclAlloc( sizeof( struct qdesc ) );

	lea	ecx, QWORD PTR [r8+16]
	call	LclAlloc

; 48   :             CurrSeg->e.seginfo->LinnumQueue = q;

	mov	rcx, QWORD PTR ModuleInfo+432
	mov	r8, rax
	mov	rdx, QWORD PTR [rcx+96]
	mov	QWORD PTR [rdx+56], rax

; 49   :             q->head = NULL;

	mov	QWORD PTR [rax], 0

; 50   :         }
; 51   :     }

	jmp	SHORT $LN3@AddLinnumD
$LN2@AddLinnumD:

; 52   :     else
; 53   : #endif
; 54   :         q = &LinnumQueue;

	lea	r8, OFFSET FLAT:LinnumQueue
$LN3@AddLinnumD:

; 55   : 
; 56   :     data->next = NULL;

	mov	QWORD PTR [rbx], 0

; 57   :     if ( q->head == NULL)

	cmp	QWORD PTR [r8], 0
	jne	SHORT $LN5@AddLinnumD

; 58   :         q->head = q->tail = data;

	mov	QWORD PTR [r8], rbx

; 70   :           q->tail = data;

	mov	QWORD PTR [r8+8], rbx

; 71   :         }
; 72   :       }
; 73   : #endif
; 74   :     }
; 75   : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
$LN5@AddLinnumD:

; 59   :     else {
; 60   :       if (ModuleInfo.Ofssize == USE32) {

	cmp	BYTE PTR ModuleInfo+404, 1
	jne	SHORT $LN7@AddLinnumD

; 61   :         if ((q->tail && ((uint_32)q->tail < 0x00FFFFFF))) {

	mov	rax, QWORD PTR [r8+8]
	test	rax, rax
	je	SHORT $LN10@AddLinnumD
	cmp	eax, 16777215				; 00ffffffH
	jae	SHORT $LN10@AddLinnumD

; 62   :           ((struct line_num_info *)q->tail)->next = data;

	mov	QWORD PTR [rax], rbx

; 70   :           q->tail = data;

	mov	QWORD PTR [r8+8], rbx

; 71   :         }
; 72   :       }
; 73   : #endif
; 74   :     }
; 75   : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
$LN7@AddLinnumD:

; 63   :           q->tail = data;
; 64   :           }
; 65   :         }
; 66   : #if AMD64_SUPPORT
; 67   :       else{
; 68   :         if (q->tail && ((uint_64)q->tail < 0x00007FFFFFFFFFFF)) {

	mov	rcx, QWORD PTR [r8+8]
	mov	rdx, 140737488355325			; 00007ffffffffffdH
	lea	rax, QWORD PTR [rcx-1]
	cmp	rax, rdx
	ja	SHORT $LN10@AddLinnumD

; 69   :           ((struct line_num_info *)q->tail)->next = data;

	mov	QWORD PTR [rcx], rbx

; 70   :           q->tail = data;

	mov	QWORD PTR [r8+8], rbx
$LN10@AddLinnumD:

; 71   :         }
; 72   :       }
; 73   : #endif
; 74   :     }
; 75   : }

	add	rsp, 32					; 00000020H
	pop	rbx
	ret	0
AddLinnumData ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\linnum.c
_TEXT	SEGMENT
queue$ = 8
QueueDeleteLinnum PROC

; 217  :     struct line_num_info    *curr;
; 218  :     struct line_num_info    *next;
; 219  : 
; 220  :     if ( queue == NULL )

	test	rcx, rcx
	je	SHORT $LN14@QueueDelet

; 221  :         return;
; 222  :     curr = queue->head;

	mov	rax, QWORD PTR [rcx]

; 223  :     for( ; curr ; curr = next ) {

	test	rax, rax
	je	SHORT $LN14@QueueDelet
	movzx	edx, BYTE PTR ModuleInfo+404
	mov	r8, -34359738367			; fffffff800000001H
	mov	r9, 140703128616960			; 00007ff800000000H
$LL4@QueueDelet:

; 224  :       if (ModuleInfo.Ofssize == USE32) {

	cmp	dl, 1
	jne	SHORT $LN6@QueueDelet

; 225  :           if (((uint_32) curr > 0x00FFFFFF) || ((uint_32)curr < 0x07FFFF))

	lea	ecx, DWORD PTR [rax-524287]
	cmp	ecx, 16252928				; 00f80000H

; 226  :             break;
; 227  :       }

	jmp	SHORT $LN20@QueueDelet
$LN6@QueueDelet:

; 228  : #if AMD64_SUPPORT
; 229  :       else {
; 230  :         if (((uint_64)curr > 0x00007FFFFFFFFFFF)|| ((uint_64)curr < 0x00007FFFFFFFF))

	lea	rcx, QWORD PTR [rax+r8]
	cmp	rcx, r9
$LN20@QueueDelet:
	ja	SHORT $LN14@QueueDelet

; 223  :     for( ; curr ; curr = next ) {

	mov	rax, QWORD PTR [rax]
	test	rax, rax
	jne	SHORT $LL4@QueueDelet
$LN14@QueueDelet:

; 231  :           break;
; 232  :       }
; 233  : #endif
; 234  :         next = curr->next;
; 235  :         LclFree( curr );
; 236  :     }
; 237  :     return;
; 238  : }

	ret	0
QueueDeleteLinnum ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\linnum.c
_TEXT	SEGMENT
LinnumFini PROC

; 246  : #if COFF_SUPPORT
; 247  :     if ( dmyproc ) {

	mov	rdx, QWORD PTR dmyproc
	test	rdx, rdx
	je	SHORT $LN2@LinnumFini

; 248  :         dmyproc->total_size =

	mov	rax, QWORD PTR [rdx+24]
	mov	rcx, QWORD PTR [rax+96]
	mov	eax, DWORD PTR [rcx+12]
	sub	eax, DWORD PTR [rdx+16]
	mov	DWORD PTR [rdx+56], eax
$LN2@LinnumFini:

; 249  :             ((struct dsym *)dmyproc->segment)->e.seginfo->current_loc -
; 250  :             dmyproc->offset;
; 251  :         DebugMsg(("LinnumFini: last dummy proc size=%Xh\n"));
; 252  :     }
; 253  : #endif
; 254  : }

	ret	0
LinnumFini ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\linnum.c
_TEXT	SEGMENT
LinnumInit PROC

; 259  :     lastLineNumber = 0;

	xor	eax, eax
	mov	DWORD PTR lastLineNumber, eax

; 260  : #if COFF_SUPPORT
; 261  :     dmyproc = NULL;

	mov	QWORD PTR dmyproc, rax

; 262  : #endif
; 263  : }

	ret	0
LinnumInit ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\linnum.c
_TEXT	SEGMENT
procname$1 = 32
srcfile$ = 64
line_num$ = 72
AddLinnumDataRef PROC

; 85   : {

$LN23:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rsi
	push	rdi
	sub	rsp, 48					; 00000030H

; 86   :     struct line_num_info    *curr;
; 87   : 
; 88   : #if COFF_SUPPORT
; 89   :     /* COFF line number info is related to functions/procedures. Since
; 90   :      * assembly allows code lines outside of procs, "dummy" procs must
; 91   :      * be generated. A dummy proc lasts until
; 92   :      * - a true PROC is detected or
; 93   :      * - the source file changes or
; 94   :      * - the segment/section changes ( added in v2.11 )
; 95   :      */
; 96   :     if ( Options.output_format == OFORMAT_COFF &&
; 97   :         CurrProc == NULL &&

	cmp	DWORD PTR Options+144, 2
	mov	edi, edx
	mov	esi, ecx
	jne	$LN20@AddLinnumD
	cmp	QWORD PTR CurrProc, 0
	jne	$LN20@AddLinnumD
	mov	r8, QWORD PTR dmyproc
	test	r8, r8
	je	SHORT $LN4@AddLinnumD
	mov	rax, QWORD PTR [r8+64]
	movzx	ecx, WORD PTR [rax+14]
	cmp	ecx, esi
	jne	SHORT $LN3@AddLinnumD
	mov	rax, QWORD PTR ModuleInfo+432
	cmp	QWORD PTR [r8+24], rax
	je	$LN20@AddLinnumD
$LN3@AddLinnumD:

; 98   :         ( dmyproc == NULL ||
; 99   :         dmyproc->debuginfo->file != srcfile ||
; 100  :         dmyproc->segment != (struct asym *)CurrSeg ) ) {
; 101  :         char procname[12];
; 102  :         if ( dmyproc ) {
; 103  :             /**/myassert( dmyproc->segment );
; 104  :             dmyproc->total_size =

	mov	rax, QWORD PTR [r8+24]
	mov	rcx, QWORD PTR [rax+96]
	mov	eax, DWORD PTR [rcx+12]
	sub	eax, DWORD PTR [r8+16]
	mov	DWORD PTR [r8+56], eax
$LN4@AddLinnumD:

; 105  :                 ((struct dsym *)dmyproc->segment)->e.seginfo->current_loc -
; 106  :                 dmyproc->offset;
; 107  :         }
; 108  :         sprintf( procname, "$$$%05u", procidx );

	mov	r8d, DWORD PTR procidx
	lea	rdx, OFFSET FLAT:$SG11418
	lea	rcx, QWORD PTR procname$1[rsp]
	call	sprintf

; 109  :         DebugMsg1(("AddLinnumDataRef(src=%u.%u): CurrProc==NULL, dmyproc=%s searching proc=%s\n", srcfile, line_num, dmyproc ? dmyproc->name : "NULL", procname ));
; 110  :         dmyproc = SymSearch( procname );

	lea	rcx, QWORD PTR procname$1[rsp]
	call	SymFind
	mov	QWORD PTR dmyproc, rax

; 111  : 
; 112  :         /* in pass 1, create the proc */
; 113  :         if ( dmyproc == NULL ) {

	test	rax, rax
	jne	SHORT $LN5@AddLinnumD

; 114  :             dmyproc = CreateProc( NULL, procname, SYM_INTERNAL );

	lea	r8d, QWORD PTR [rax+1]
	xor	ecx, ecx
	lea	rdx, QWORD PTR procname$1[rsp]
	call	CreateProc

; 115  :             DebugMsg1(("AddLinnumDataRef: new proc %s created\n", procname ));
; 116  :             dmyproc->isproc = TRUE; /* flag is usually set inside ParseProc() */
; 117  :             dmyproc->included = TRUE;
; 118  :             AddPublicData( dmyproc );

	mov	rcx, rax
	mov	QWORD PTR dmyproc, rax
	or	BYTE PTR [rax+41], 72			; 00000048H
	call	AddPublicData

; 119  :         } else

	mov	rax, QWORD PTR dmyproc
	jmp	SHORT $LN6@AddLinnumD
$LN5@AddLinnumD:

; 120  :             procidx++; /* for passes > 1, adjust procidx */

	inc	DWORD PTR procidx
$LN6@AddLinnumD:

; 121  : 
; 122  :         /* if the symbols isn't a PROC, the symbol name has been used
; 123  :          * by the user - bad! A warning should be displayed */
; 124  :         if ( dmyproc->isproc == TRUE ) {

	test	BYTE PTR [rax+41], 8
	je	SHORT $LN20@AddLinnumD

; 125  :             SetSymSegOfs( dmyproc );

	mov	rcx, rax
	call	SetSymSegOfs

; 126  :             dmyproc->Ofssize = ModuleInfo.Ofssize;

	movzx	eax, BYTE PTR ModuleInfo+404
	mov	rcx, QWORD PTR dmyproc
	mov	BYTE PTR [rcx+44], al

; 127  :             dmyproc->langtype = ModuleInfo.langtype;

	mov	eax, DWORD PTR ModuleInfo+364
	mov	DWORD PTR [rcx+76], eax

; 128  :             if ( write_to_file == TRUE ) {

	cmp	BYTE PTR write_to_file, 1
	jne	SHORT $LN20@AddLinnumD

; 129  :                 curr = LclAlloc( sizeof( struct line_num_info ) );

	mov	ecx, 24
	call	LclAlloc

; 130  :                 curr->sym = dmyproc;

	mov	rcx, QWORD PTR dmyproc
	mov	rbx, rax
	mov	QWORD PTR [rax+16], rcx

; 131  :                 curr->line_number = GetLineNumber();

	call	GetLineNumber

; 132  :                 curr->file = srcfile;

	mov	ecx, esi

; 133  :                 curr->number = 0;

	mov	DWORD PTR [rbx+8], 0
	shl	ecx, 20
	and	eax, 1048575				; 000fffffH
	or	eax, ecx

; 134  :                 DebugMsg1(("AddLinnumDataRef: CURRPROC=NULL, sym=%s, calling AddLinnumData(src=%u.%u)\n", curr->sym->name, curr->file, curr->line_number ));
; 135  :                 AddLinnumData( curr );

	mov	rcx, rbx
	mov	DWORD PTR [rbx+12], eax
	call	AddLinnumData
$LN20@AddLinnumD:

; 136  :             }
; 137  :         }
; 138  :     }
; 139  : #endif
; 140  : 
; 141  :     if(  line_num && ( write_to_file == FALSE || lastLineNumber == line_num )) {

	test	edi, edi
	je	SHORT $LN9@AddLinnumD
	cmp	BYTE PTR write_to_file, 0
	je	$LN1@AddLinnumD
	cmp	DWORD PTR lastLineNumber, edi
	je	$LN1@AddLinnumD
$LN9@AddLinnumD:

; 142  : #ifdef DEBUG_OUT
; 143  :         if ( write_to_file == TRUE )
; 144  :             DebugMsg1(("AddLinnumDataRef(src=%u.%u) line skipped, lastline=%u\n", srcfile, line_num, lastLineNumber ));
; 145  : #endif
; 146  :         return;
; 147  :     }
; 148  :     DebugMsg1(("AddLinnumDataRef(src=%u.%u): currofs=%Xh, CurrProc=%s, GeneratedCode=%u\n", srcfile, line_num, GetCurrOffset(), CurrProc ? CurrProc->sym.name : "NULL", ModuleInfo.GeneratedCode ));
; 149  : 
; 150  :     curr = LclAlloc( sizeof( struct line_num_info ) );

	mov	ecx, 24
	call	LclAlloc
	mov	rbx, rax

; 151  :     curr->number = line_num;

	mov	DWORD PTR [rax+8], edi

; 152  : #if COFF_SUPPORT
; 153  :     if ( line_num == 0 ) { /* happens for COFF only */

	test	edi, edi
	jne	$LN11@AddLinnumD

; 154  :         /* changed v2.03 (CurrProc might have been NULL) */
; 155  :         /* if ( Options.output_format == OFORMAT_COFF && CurrProc->sym.public == FALSE ) { */
; 156  :         /* v2.09: avoid duplicates, check for pass 1 */
; 157  :         //if ( Options.output_format == OFORMAT_COFF && CurrProc && CurrProc->sym.public == FALSE ) {
; 158  :         if ( Parse_Pass == PASS_1 &&
; 159  :             Options.output_format == OFORMAT_COFF && CurrProc && CurrProc->sym.ispublic == FALSE ) {

	cmp	DWORD PTR Parse_Pass, edi
	jne	SHORT $LN21@AddLinnumD
	cmp	DWORD PTR Options+144, 2
	jne	SHORT $LN21@AddLinnumD
	mov	rcx, QWORD PTR CurrProc
	test	rcx, rcx
	je	SHORT $LN13@AddLinnumD
	test	BYTE PTR [rcx+40], 128			; 00000080H
	jne	SHORT $LN13@AddLinnumD

; 160  :             CurrProc->sym.included = TRUE;

	or	BYTE PTR [rcx+41], 64			; 00000040H

; 161  :             AddPublicData( (struct asym *)CurrProc );

	mov	rcx, QWORD PTR CurrProc
	call	AddPublicData
$LN21@AddLinnumD:
	mov	rcx, QWORD PTR CurrProc
$LN13@AddLinnumD:

; 162  :         }
; 163  :         /* changed v2.03 */
; 164  :         /* curr->sym = (struct asym *)CurrProc; */
; 165  :         curr->sym = ( CurrProc ? (struct asym *)CurrProc : dmyproc );

	mov	rax, QWORD PTR dmyproc
	test	rcx, rcx
	cmovne	rax, rcx
	mov	QWORD PTR [rbx+16], rax

; 166  :         curr->line_number = GetLineNumber();

	call	GetLineNumber

; 167  :         curr->file        = srcfile;
; 168  :         /* set the function's size! */
; 169  :         if ( dmyproc ) {

	mov	rdx, QWORD PTR dmyproc
	and	eax, 1048575				; 000fffffH
	mov	ecx, esi
	shl	ecx, 20
	or	eax, ecx
	mov	DWORD PTR [rbx+12], eax
	test	rdx, rdx
	je	SHORT $LN14@AddLinnumD

; 170  :             /**/myassert( dmyproc->segment );
; 171  :             dmyproc->total_size =

	mov	rax, QWORD PTR [rdx+24]

; 172  :                 ((struct dsym *)dmyproc->segment)->e.seginfo->current_loc -
; 173  :                 dmyproc->offset;
; 174  :             dmyproc = NULL;

	mov	QWORD PTR dmyproc, 0
	mov	rcx, QWORD PTR [rax+96]
	mov	eax, DWORD PTR [rcx+12]
	sub	eax, DWORD PTR [rdx+16]
	mov	DWORD PTR [rdx+56], eax
$LN14@AddLinnumD:

; 175  :         }
; 176  :         /* v2.11: write a 0x7fff line item if prologue exists */
; 177  :         if ( CurrProc && CurrProc->e.procinfo->size_prolog ) {

	mov	rax, QWORD PTR CurrProc
	test	rax, rax
	je	SHORT $LN12@AddLinnumD
	mov	rax, QWORD PTR [rax+96]
	cmp	BYTE PTR [rax+85], 0
	je	SHORT $LN12@AddLinnumD

; 178  :             DebugMsg1(("AddLinnumDataRef: calling AddLinnumData(src=%u.%u) sym=%s\n", curr->file, curr->line_number, curr->sym->name ));
; 179  :             AddLinnumData( curr );

	mov	rcx, rbx
	call	AddLinnumData

; 180  :             curr = LclAlloc( sizeof( struct line_num_info ) );

	mov	ecx, 24
	call	LclAlloc
	mov	rbx, rax

; 181  :             curr->number = GetLineNumber();

	call	GetLineNumber
	mov	DWORD PTR [rbx+8], eax
$LN11@AddLinnumD:

; 182  :             curr->offset = GetCurrOffset();
; 183  :             curr->srcfile = srcfile;
; 184  :         }
; 185  :     } else {
; 186  : #endif
; 187  :         curr->offset = GetCurrOffset();

	call	GetCurrOffset

; 188  :         curr->srcfile = srcfile;

	mov	DWORD PTR [rbx+16], esi
	mov	DWORD PTR [rbx+12], eax
$LN12@AddLinnumD:

; 189  : #if COFF_SUPPORT
; 190  :     }
; 191  : #endif
; 192  :     lastLineNumber = line_num;
; 193  : 
; 194  :     /* v2.11: added, improved multi source support for CV.
; 195  :      * Also, the size of line number info could have become > 1024,
; 196  :      * ( even > 4096, thus causing an "internal error in omfint.c" )
; 197  :      */
; 198  :     if ( Options.output_format == OFORMAT_OMF )

	cmp	DWORD PTR Options+144, 1
	mov	DWORD PTR lastLineNumber, edi
	jne	SHORT $LN16@AddLinnumD

; 199  :         omf_check_flush( curr );

	mov	rcx, rbx
	call	omf_check_flush
$LN16@AddLinnumD:

; 200  : 
; 201  :     /* v2.10: warning if line-numbers for segments without class code! */
; 202  :     if ( CurrSeg->e.seginfo->linnum_init == FALSE ) {

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rcx, QWORD PTR [rax+96]
	movzx	eax, BYTE PTR [rcx+107]
	test	al, 64					; 00000040H
	jne	SHORT $LN18@AddLinnumD

; 203  :         CurrSeg->e.seginfo->linnum_init = TRUE;

	or	al, 64					; 00000040H
	mov	BYTE PTR [rcx+107], al

; 204  :         if ( TypeFromClassName( CurrSeg, CurrSeg->e.seginfo->clsym ) != SEGTYPE_CODE ) {

	mov	rcx, QWORD PTR ModuleInfo+432
	mov	rdx, QWORD PTR [rcx+96]
	mov	rdx, QWORD PTR [rdx+80]
	call	TypeFromClassName
	cmp	eax, 1
	je	SHORT $LN18@AddLinnumD

; 205  :             EmitWarn( 2, LINNUM_INFO_FOR_SEGMENT_WITHOUT_CLASS_CODE, CurrSeg->sym.name );

	mov	r8, QWORD PTR ModuleInfo+432
	mov	edx, 187				; 000000bbH
	mov	ecx, 2
	mov	r8, QWORD PTR [r8+8]
	call	EmitWarn
$LN18@AddLinnumD:

; 206  :         }
; 207  :     }
; 208  :     DebugMsg1(("AddLinnumDataRef: calling AddLinnumData(src=%u.%u ofs=%X)\n", curr->number == 0 ? curr->file : curr->srcfile, curr->number, curr->offset ));
; 209  :     AddLinnumData( curr );

	mov	rcx, rbx
	call	AddLinnumData
$LN1@AddLinnumD:

; 210  : 
; 211  :     return;
; 212  : }

	mov	rbx, QWORD PTR [rsp+64]
	mov	rsi, QWORD PTR [rsp+72]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
AddLinnumDataRef ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT sprintf
_TEXT	SEGMENT
_Buffer$ = 80
_Format$ = 88
sprintf	PROC						; COMDAT

; 1776 : {

$LN8:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rbx
	push	rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, rdx

; 1777 :     int _Result;
; 1778 :     va_list _ArgList;
; 1779 :     __crt_va_start(_ArgList, _Format);

	lea	rsi, QWORD PTR _Format$[rsp+8]
	mov	rdi, rcx

; 1780 : 
; 1781 :     #pragma warning(push)
; 1782 :     #pragma warning(disable: 4996) // Deprecation
; 1783 :     _Result = _vsprintf_l(_Buffer, _Format, NULL, _ArgList);

	call	__local_stdio_printf_options
	mov	r9, rbx
	mov	QWORD PTR [rsp+40], rsi
	or	rbx, -1
	mov	QWORD PTR [rsp+32], 0
	mov	r8, rbx
	mov	rdx, rdi
	mov	rcx, QWORD PTR [rax]
	or	rcx, 1
	call	__stdio_common_vsprintf
	test	eax, eax
	cmovs	eax, ebx

; 1784 :     #pragma warning(pop)
; 1785 : 
; 1786 :     __crt_va_end(_ArgList);
; 1787 :     return _Result;
; 1788 : }

	add	rsp, 48					; 00000030H
	pop	rdi
	pop	rsi
	pop	rbx
	ret	0
sprintf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsprintf_l
_TEXT	SEGMENT
_Buffer$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vsprintf_l PROC					; COMDAT

; 1455 : {

$LN6:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx

; 1456 :     #pragma warning(push)
; 1457 :     #pragma warning(disable: 4996) // Deprecation
; 1458 :     return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);

	call	__local_stdio_printf_options
	mov	QWORD PTR [rsp+40], rbx
	mov	r9, rsi
	or	rbx, -1
	mov	QWORD PTR [rsp+32], rdi
	mov	r8, rbx
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	or	rcx, 1
	call	__stdio_common_vsprintf

; 1459 :     #pragma warning(pop)
; 1460 : }

	mov	rbp, QWORD PTR [rsp+72]
	test	eax, eax
	mov	rsi, QWORD PTR [rsp+80]
	cmovs	eax, ebx
	mov	rbx, QWORD PTR [rsp+64]
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vsprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsnprintf_l
_TEXT	SEGMENT
_Buffer$ = 64
_BufferCount$ = 72
_Format$ = 80
_Locale$ = 88
_ArgList$ = 96
_vsnprintf_l PROC					; COMDAT

; 1385 : {

$LN4:
	mov	QWORD PTR [rsp+8], rbx
	mov	QWORD PTR [rsp+16], rbp
	mov	QWORD PTR [rsp+24], rsi
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rbx, r9
	mov	rdi, r8
	mov	rsi, rdx
	mov	rbp, rcx

; 1386 :     int const _Result = __stdio_common_vsprintf(

	call	__local_stdio_printf_options
	mov	r9, rdi
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, QWORD PTR [rax]
	mov	rax, QWORD PTR _ArgList$[rsp]
	or	rcx, 1
	mov	QWORD PTR [rsp+40], rax
	mov	QWORD PTR [rsp+32], rbx
	call	__stdio_common_vsprintf

; 1387 :         _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS | _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION,
; 1388 :         _Buffer, _BufferCount, _Format, _Locale, _ArgList);
; 1389 : 
; 1390 :     return _Result < 0 ? -1 : _Result;
; 1391 : }

	mov	rbx, QWORD PTR [rsp+64]
	or	ecx, -1
	mov	rbp, QWORD PTR [rsp+72]
	test	eax, eax
	mov	rsi, QWORD PTR [rsp+80]
	cmovs	eax, ecx
	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vsnprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\corecrt_stdio_config.h
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END