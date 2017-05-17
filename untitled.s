;iPhone 6
; int addFunction(int a, int b) {
;   int c = a + b;
;   return c;
; }



_addFunction:                           ; @addFunction
Lfunc_begin0:
	.loc	1 12 0                  ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:12:0
	.cfi_startproc
; BB#0:
	sub	sp, sp, #16             ; =16
Ltmp1:
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
Ltmp2:
	.loc	1 13 11 prologue_end    ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:13:11
	ldr	w0, [sp, #12]
	.loc	1 13 15 is_stmt 0       ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:13:15
	ldr	w1, [sp, #8]
	.loc	1 13 13                 ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:13:13
	add		w0, w0, w1
	.loc	1 13 7                  ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:13:7
	str	w0, [sp, #4]
	.loc	1 14 10 is_stmt 1       ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:14:10
	ldr	w0, [sp, #4]
	.loc	1 14 3 is_stmt 0        ; /Users/Phil/Desktop/notes/ARMTests/ARM iOS/ARM iOS/main.m:14:3
	add	sp, sp, #16             ; =16
	ret
Ltmp3:
Lfunc_end0: