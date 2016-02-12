﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\DUII\TachSetupScreens.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_MaxRPMPaint
PUBLIC	_DisplayMaxRPM
PUBLIC	_PowerEndPaint
PUBLIC	_DisplayPowerEnd
PUBLIC	_CylindersPaint
PUBLIC	_DisplayCylinders
PUBLIC	_RedlinePaint
PUBLIC	_DisplayRedline
PUBLIC	_WarningRPMPaint
PUBLIC	_DisplayWarningRPM
PUBLIC	_TachSetupScreenList
PUBLIC	_apCylinders
_DATA	SEGMENT
COMM	_RPMListData:BYTE:03fcH
COMM	_RPMListPtrs:DWORD:0aaH
COMM	_rpmListStart:DWORD
_TachSetupScreenList DD 00H
	DD	FLAT:_DisplayWarningRPM
	DD	FLAT:_WarningRPMPaint
	DD	01H
	DD	FLAT:_DisplayRedline
	DD	FLAT:_RedlinePaint
	DD	02H
	DD	FLAT:_DisplayCylinders
	DD	FLAT:_CylindersPaint
	DD	03H
	DD	FLAT:_DisplayPowerEnd
	DD	FLAT:_PowerEndPaint
	DD	04H
	DD	FLAT:_DisplayMaxRPM
	DD	FLAT:_MaxRPMPaint
	DD	0ffffffffH
	DD	00H
	DD	00H
$SG18630 DB	'2 stroke', 00H
	ORG $+3
$SG18631 DB	'ECU / 1', 00H
$SG18632 DB	'2', 00H
	ORG $+2
$SG18633 DB	'3', 00H
	ORG $+2
$SG18634 DB	'4', 00H
	ORG $+2
$SG18635 DB	'5', 00H
	ORG $+2
$SG18636 DB	'6', 00H
	ORG $+2
$SG18637 DB	'8', 00H
	ORG $+2
$SG18638 DB	'10', 00H
	ORG $+1
$SG18639 DB	'12', 00H
	ORG $+1
$SG18640 DB	'16', 00H
	ORG $+1
_apCylinders DD	FLAT:$SG18630
	DD	FLAT:$SG18631
	DD	FLAT:$SG18632
	DD	FLAT:$SG18633
	DD	FLAT:$SG18634
	DD	FLAT:$SG18635
	DD	FLAT:$SG18636
	DD	FLAT:$SG18637
	DD	FLAT:$SG18638
	DD	FLAT:$SG18639
	DD	FLAT:$SG18640
	DD	00H
$SG18724 DB	'Select RPM', 00H
	ORG $+1
$SG18738 DB	'%d', 00H
	ORG $+1
$SG18744 DB	'Select RPM', 00H
	ORG $+1
$SG18748 DB	'Select Cylinders', 00H
	ORG $+3
$SG18757 DB	'Select RPM', 00H
_DATA	ENDS
PUBLIC	_CylindersToIndex
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\duii\tachsetupscreens.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _CylindersToIndex
_TEXT	SEGMENT
_cyl$ = 8						; size = 1
_CylindersToIndex PROC					; COMDAT
; Line 146
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 147
	movzx	eax, BYTE PTR _cyl$[ebp]
	cmp	eax, 6
	jg	SHORT $LN10@CylindersT
; Line 148
	mov	al, BYTE PTR _cyl$[ebp]
	jmp	SHORT $LN11@CylindersT
	jmp	SHORT $LN11@CylindersT
$LN10@CylindersT:
; Line 149
	movzx	eax, BYTE PTR _cyl$[ebp]
	cmp	eax, 8
	jne	SHORT $LN8@CylindersT
; Line 150
	mov	al, 7
	jmp	SHORT $LN11@CylindersT
	jmp	SHORT $LN11@CylindersT
$LN8@CylindersT:
; Line 151
	movzx	eax, BYTE PTR _cyl$[ebp]
	cmp	eax, 10					; 0000000aH
	jne	SHORT $LN6@CylindersT
; Line 152
	mov	al, 8
	jmp	SHORT $LN11@CylindersT
	jmp	SHORT $LN11@CylindersT
$LN6@CylindersT:
; Line 153
	movzx	eax, BYTE PTR _cyl$[ebp]
	cmp	eax, 12					; 0000000cH
	jne	SHORT $LN4@CylindersT
; Line 154
	mov	al, 9
	jmp	SHORT $LN11@CylindersT
	jmp	SHORT $LN11@CylindersT
$LN4@CylindersT:
; Line 155
	movzx	eax, BYTE PTR _cyl$[ebp]
	cmp	eax, 16					; 00000010H
	jne	SHORT $LN2@CylindersT
; Line 156
	mov	al, 10					; 0000000aH
	jmp	SHORT $LN11@CylindersT
	jmp	SHORT $LN11@CylindersT
$LN2@CylindersT:
; Line 157
	xor	al, al
$LN11@CylindersT:
; Line 158
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_CylindersToIndex ENDP
_TEXT	ENDS
PUBLIC	_IndexToCylinders
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _IndexToCylinders
_TEXT	SEGMENT
_index$ = 8						; size = 1
_IndexToCylinders PROC					; COMDAT
; Line 161
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 162
	movzx	eax, BYTE PTR _index$[ebp]
	cmp	eax, 6
	jg	SHORT $LN10@IndexToCyl
; Line 163
	mov	al, BYTE PTR _index$[ebp]
	jmp	SHORT $LN11@IndexToCyl
	jmp	SHORT $LN11@IndexToCyl
$LN10@IndexToCyl:
; Line 164
	movzx	eax, BYTE PTR _index$[ebp]
	cmp	eax, 7
	jne	SHORT $LN8@IndexToCyl
; Line 165
	mov	al, 8
	jmp	SHORT $LN11@IndexToCyl
	jmp	SHORT $LN11@IndexToCyl
$LN8@IndexToCyl:
; Line 166
	movzx	eax, BYTE PTR _index$[ebp]
	cmp	eax, 8
	jne	SHORT $LN6@IndexToCyl
; Line 167
	mov	al, 10					; 0000000aH
	jmp	SHORT $LN11@IndexToCyl
	jmp	SHORT $LN11@IndexToCyl
$LN6@IndexToCyl:
; Line 168
	movzx	eax, BYTE PTR _index$[ebp]
	cmp	eax, 9
	jne	SHORT $LN4@IndexToCyl
; Line 169
	mov	al, 12					; 0000000cH
	jmp	SHORT $LN11@IndexToCyl
	jmp	SHORT $LN11@IndexToCyl
$LN4@IndexToCyl:
; Line 170
	movzx	eax, BYTE PTR _index$[ebp]
	cmp	eax, 10					; 0000000aH
	jne	SHORT $LN2@IndexToCyl
; Line 171
	mov	al, 16					; 00000010H
	jmp	SHORT $LN11@IndexToCyl
	jmp	SHORT $LN11@IndexToCyl
$LN2@IndexToCyl:
; Line 172
	xor	al, al
$LN11@IndexToCyl:
; Line 173
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_IndexToCylinders ENDP
_TEXT	ENDS
PUBLIC	_GetCylindersText
EXTRN	_vehicleData:BYTE
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GetCylindersText
_TEXT	SEGMENT
_GetCylindersText PROC					; COMDAT
; Line 176
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 177
	movzx	eax, BYTE PTR _vehicleData+13
	push	eax
	call	_CylindersToIndex
	add	esp, 4
	movzx	ecx, al
	mov	eax, DWORD PTR _apCylinders[ecx*4]
; Line 178
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GetCylindersText ENDP
_TEXT	ENDS
PUBLIC	_GetTachSetupWindowHandle
_BSS	SEGMENT
_hTachSetupScreens DD 01H DUP (?)
; Function compile flags: /Odtp /RTCsu /ZI
_BSS	ENDS
;	COMDAT _GetTachSetupWindowHandle
_TEXT	SEGMENT
_GetTachSetupWindowHandle PROC				; COMDAT
; Line 182
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 183
	mov	eax, DWORD PTR _hTachSetupScreens
; Line 184
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GetTachSetupWindowHandle ENDP
_TEXT	ENDS
PUBLIC	_SetTachSetupWindowHandle
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SetTachSetupWindowHandle
_TEXT	SEGMENT
_hWin$ = 8						; size = 4
_SetTachSetupWindowHandle PROC				; COMDAT
; Line 187
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 188
	mov	eax, DWORD PTR _hWin$[ebp]
	mov	DWORD PTR _hTachSetupScreens, eax
; Line 189
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_SetTachSetupWindowHandle ENDP
_TEXT	ENDS
PUBLIC	_TachSetupIgnoreNextKeyRelease
PUBLIC	_TachSetupScreensCallback
EXTRN	_WM_DefaultProc:PROC
EXTRN	_pressingbutton_semaphore:DWORD
EXTRN	_LISTWHEEL_SetSel:PROC
EXTRN	_LISTWHEEL_GetPos:PROC
EXTRN	_abs:PROC
EXTRN	_LISTWHEEL_GetVelocity:PROC
EXTRN	_WM_GetId:PROC
EXTRN	_DrawSignalStrength:PROC
EXTRN	_GetLastScreen:PROC
EXTRN	_GetScreenType:PROC
EXTRN	_WM_InvalidateRect:PROC
EXTRN	_BannerRect:QWORD
EXTRN	_WM_RestartTimer:PROC
EXTRN	_hScreenTimer:DWORD
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _TachSetupScreensCallback
_TEXT	SEGMENT
tv176 = -232						; size = 4
tv91 = -232						; size = 4
tv84 = -232						; size = 4
tv64 = -232						; size = 4
_Sel$ = -32						; size = 4
_Id$ = -20						; size = 4
_NCode$ = -8						; size = 4
_pMsg$ = 8						; size = 4
_TachSetupScreensCallback PROC				; COMDAT
; Line 192
	push	ebp
	mov	ebp, esp
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-232]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 200
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR tv64[ebp], ecx
	cmp	DWORD PTR tv64[ebp], 38			; 00000026H
	jg	SHORT $LN30@TachSetupS
	cmp	DWORD PTR tv64[ebp], 38			; 00000026H
	je	$LN20@TachSetupS
	cmp	DWORD PTR tv64[ebp], 1
	je	SHORT $LN23@TachSetupS
	cmp	DWORD PTR tv64[ebp], 15			; 0000000fH
	je	SHORT $LN22@TachSetupS
	jmp	$LN1@TachSetupS
$LN30@TachSetupS:
	cmp	DWORD PTR tv64[ebp], 275		; 00000113H
	je	SHORT $LN25@TachSetupS
	jmp	$LN1@TachSetupS
$LN25@TachSetupS:
; Line 203
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	cmp	ecx, DWORD PTR _hScreenTimer
	jne	SHORT $LN24@TachSetupS
; Line 205
	push	125					; 0000007dH
	mov	eax, DWORD PTR _hScreenTimer
	push	eax
	call	_WM_RestartTimer
	add	esp, 8
; Line 206
	push	OFFSET _BannerRect
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	_WM_InvalidateRect
	add	esp, 8
$LN24@TachSetupS:
; Line 208
	jmp	$LN28@TachSetupS
$LN23@TachSetupS:
; Line 211
	call	_TachSetupIgnoreNextKeyRelease
; Line 212
	jmp	$LN28@TachSetupS
$LN22@TachSetupS:
; Line 215
	call	_GetScreenType
	cmp	eax, 9
	jne	SHORT $LN21@TachSetupS
; Line 218
	mov	esi, esp
	mov	eax, DWORD PTR _hTachSetupScreens
	push	eax
	push	9
	call	_GetLastScreen
	add	esp, 4
	imul	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR _TachSetupScreenList[eax+8]
	call	ecx
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 219
	call	_DrawSignalStrength
$LN21@TachSetupS:
; Line 221
	jmp	$LN28@TachSetupS
$LN20@TachSetupS:
; Line 224
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_GetId
	add	esp, 4
	mov	DWORD PTR _Id$[ebp], eax
; Line 225
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _NCode$[ebp], ecx
; Line 226
	mov	eax, DWORD PTR _NCode$[ebp]
	mov	DWORD PTR tv84[ebp], eax
	cmp	DWORD PTR tv84[ebp], 1
	je	$LN7@TachSetupS
	cmp	DWORD PTR tv84[ebp], 2
	je	$LN2@TachSetupS
	cmp	DWORD PTR tv84[ebp], 4
	je	SHORT $LN17@TachSetupS
	jmp	$LN18@TachSetupS
$LN17@TachSetupS:
; Line 229
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetVelocity
	add	esp, 4
	push	eax
	call	_abs
	add	esp, 4
	cmp	eax, 1
	jg	$LN16@TachSetupS
; Line 231
	mov	eax, DWORD PTR _Id$[ebp]
	mov	DWORD PTR tv91[ebp], eax
	mov	ecx, DWORD PTR tv91[ebp]
	sub	ecx, 608				; 00000260H
	mov	DWORD PTR tv91[ebp], ecx
	cmp	DWORD PTR tv91[ebp], 5
	ja	$LN16@TachSetupS
	mov	edx, DWORD PTR tv91[ebp]
	jmp	DWORD PTR $LN31@TachSetupS[edx*4]
$LN13@TachSetupS:
; Line 234
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetPos
	add	esp, 4
	mov	DWORD PTR _Sel$[ebp], eax
	mov	edx, DWORD PTR _Sel$[ebp]
	add	edx, DWORD PTR _rpmListStart
	imul	edx, 50					; 00000032H
	mov	DWORD PTR _vehicleData+32, edx
	mov	eax, DWORD PTR _vehicleData+32
	mov	DWORD PTR _vehicleData+28, eax
; Line 235
	mov	eax, DWORD PTR _Sel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pMsg$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_LISTWHEEL_SetSel
	add	esp, 8
; Line 236
	jmp	$LN16@TachSetupS
$LN12@TachSetupS:
; Line 238
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetPos
	add	esp, 4
	mov	DWORD PTR _Sel$[ebp], eax
	mov	edx, DWORD PTR _Sel$[ebp]
	add	edx, DWORD PTR _rpmListStart
	imul	edx, 50					; 00000032H
	mov	DWORD PTR _vehicleData+36, edx
; Line 239
	mov	eax, DWORD PTR _Sel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pMsg$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_LISTWHEEL_SetSel
	add	esp, 8
; Line 240
	jmp	$LN16@TachSetupS
$LN11@TachSetupS:
; Line 242
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetPos
	add	esp, 4
	push	eax
	call	_IndexToCylinders
	add	esp, 4
	mov	BYTE PTR _vehicleData+13, al
	movzx	edx, BYTE PTR _vehicleData+13
	push	edx
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_SetSel
	add	esp, 8
; Line 243
	jmp	$LN16@TachSetupS
$LN10@TachSetupS:
; Line 245
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetPos
	add	esp, 4
	mov	DWORD PTR _Sel$[ebp], eax
	mov	edx, DWORD PTR _Sel$[ebp]
	add	edx, DWORD PTR _rpmListStart
	imul	edx, 50					; 00000032H
	mov	DWORD PTR _vehicleData+24, edx
; Line 246
	mov	eax, DWORD PTR _Sel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pMsg$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_LISTWHEEL_SetSel
	add	esp, 8
; Line 247
	jmp	SHORT $LN16@TachSetupS
$LN9@TachSetupS:
; Line 249
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetPos
	add	esp, 4
	mov	DWORD PTR _Sel$[ebp], eax
	mov	edx, DWORD PTR _Sel$[ebp]
	add	edx, DWORD PTR _rpmListStart
	imul	edx, 50					; 00000032H
	mov	DWORD PTR _vehicleData+28, edx
; Line 250
	mov	eax, DWORD PTR _Sel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pMsg$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_LISTWHEEL_SetSel
	add	esp, 8
; Line 251
	jmp	SHORT $LN16@TachSetupS
$LN8@TachSetupS:
; Line 253
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_LISTWHEEL_GetPos
	add	esp, 4
	mov	DWORD PTR _Sel$[ebp], eax
	mov	edx, DWORD PTR _Sel$[ebp]
	add	edx, DWORD PTR _rpmListStart
	imul	edx, 100				; 00000064H
	mov	DWORD PTR _vehicleData+20, edx
; Line 254
	mov	eax, DWORD PTR _Sel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pMsg$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_LISTWHEEL_SetSel
	add	esp, 8
$LN16@TachSetupS:
; Line 258
	jmp	SHORT $LN18@TachSetupS
$LN7@TachSetupS:
; Line 262
	mov	eax, DWORD PTR _Id$[ebp]
	mov	DWORD PTR tv176[ebp], eax
	cmp	DWORD PTR tv176[ebp], 608		; 00000260H
	jl	SHORT $LN3@TachSetupS
	cmp	DWORD PTR tv176[ebp], 613		; 00000265H
	jle	SHORT $LN4@TachSetupS
	jmp	SHORT $LN3@TachSetupS
$LN4@TachSetupS:
; Line 271
	mov	DWORD PTR _pressingbutton_semaphore, 1
; Line 272
	jmp	SHORT $LN5@TachSetupS
$LN3@TachSetupS:
; Line 275
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	call	_WM_DefaultProc
	add	esp, 4
$LN5@TachSetupS:
; Line 277
	jmp	SHORT $LN18@TachSetupS
$LN2@TachSetupS:
; Line 280
	mov	DWORD PTR _pressingbutton_semaphore, 0
$LN18@TachSetupS:
; Line 283
	jmp	SHORT $LN28@TachSetupS
$LN1@TachSetupS:
; Line 286
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	call	_WM_DefaultProc
	add	esp, 4
$LN28@TachSetupS:
; Line 288
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 232				; 000000e8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN31@TachSetupS:
	DD	$LN13@TachSetupS
	DD	$LN12@TachSetupS
	DD	$LN11@TachSetupS
	DD	$LN10@TachSetupS
	DD	$LN8@TachSetupS
	DD	$LN9@TachSetupS
_TachSetupScreensCallback ENDP
_TEXT	ENDS
PUBLIC	_BuildRPMList
EXTRN	_DisplayStdListScreen:PROC
_BSS	SEGMENT
_hWarningRPMListWheel DD 01H DUP (?)
; Function compile flags: /Odtp /RTCsu /ZI
_BSS	ENDS
;	COMDAT _DisplayWarningRPM
_TEXT	SEGMENT
_end$ = -20						; size = 4
_rpm$ = -8						; size = 4
_hParent$ = 8						; size = 4
_DisplayWarningRPM PROC					; COMDAT
; Line 291
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 294
	mov	eax, DWORD PTR _vehicleData+24
	mov	DWORD PTR _rpm$[ebp], eax
	cmp	DWORD PTR _rpm$[ebp], 0
	jne	SHORT $LN3@DisplayWar
; Line 295
	mov	eax, DWORD PTR _vehicleData+32
	sub	eax, 2000				; 000007d0H
	mov	DWORD PTR _rpm$[ebp], eax
$LN3@DisplayWar:
; Line 297
	mov	eax, DWORD PTR _vehicleData+36
	sub	eax, DWORD PTR _rpm$[ebp]
	cdq
	mov	ecx, 50					; 00000032H
	idiv	ecx
	cmp	eax, 170				; 000000aaH
	jle	SHORT $LN2@DisplayWar
; Line 299
	mov	eax, DWORD PTR _vehicleData+32
	sub	eax, 1000				; 000003e8H
	mov	DWORD PTR _rpm$[ebp], eax
	mov	eax, DWORD PTR _rpm$[ebp]
	cdq
	mov	ecx, 50					; 00000032H
	idiv	ecx
	mov	DWORD PTR _rpmListStart, eax
; Line 300
	mov	eax, DWORD PTR _vehicleData+32
	add	eax, 1000				; 000003e8H
	mov	DWORD PTR _end$[ebp], eax
; Line 302
	jmp	SHORT $LN1@DisplayWar
$LN2@DisplayWar:
; Line 304
	mov	eax, DWORD PTR _rpm$[ebp]
	cdq
	mov	ecx, 50					; 00000032H
	idiv	ecx
	mov	DWORD PTR _rpmListStart, eax
; Line 305
	mov	eax, DWORD PTR _vehicleData+36
	mov	DWORD PTR _end$[ebp], eax
$LN1@DisplayWar:
; Line 307
	push	50					; 00000032H
	mov	eax, DWORD PTR _end$[ebp]
	push	eax
	mov	ecx, DWORD PTR _rpm$[ebp]
	push	ecx
	call	_BuildRPMList
	add	esp, 12					; 0000000cH
; Line 310
	push	OFFSET $SG18724
	push	0
	mov	eax, DWORD PTR _vehicleData+32
	cdq
	mov	ecx, 50					; 00000032H
	idiv	ecx
	sub	eax, DWORD PTR _rpmListStart
	push	eax
	push	OFFSET _hWarningRPMListWheel
	push	608					; 00000260H
	push	OFFSET _RPMListPtrs
	mov	edx, DWORD PTR _hParent$[ebp]
	push	edx
	call	_DisplayStdListScreen
	add	esp, 28					; 0000001cH
; Line 311
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_DisplayWarningRPM ENDP
_TEXT	ENDS
EXTRN	_sprintf:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _BuildRPMList
_TEXT	SEGMENT
_i$ = -8						; size = 4
_rpm$ = 8						; size = 4
_end$ = 12						; size = 4
_increment$ = 16					; size = 4
_BuildRPMList PROC					; COMDAT
; Line 314
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 317
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN5@BuildRPMLi
$LN4@BuildRPMLi:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN5@BuildRPMLi:
	cmp	DWORD PTR _i$[ebp], 170			; 000000aaH
	jge	SHORT $LN3@BuildRPMLi
; Line 319
	mov	eax, DWORD PTR _rpm$[ebp]
	cmp	eax, DWORD PTR _end$[ebp]
	jle	SHORT $LN2@BuildRPMLi
; Line 320
	jmp	SHORT $LN3@BuildRPMLi
; Line 321
	jmp	SHORT $LN1@BuildRPMLi
$LN2@BuildRPMLi:
; Line 323
	mov	eax, DWORD PTR _rpm$[ebp]
	push	eax
	push	OFFSET $SG18738
	mov	ecx, DWORD PTR _i$[ebp]
	imul	ecx, 6
	add	ecx, OFFSET _RPMListData
	push	ecx
	call	_sprintf
	add	esp, 12					; 0000000cH
; Line 324
	mov	eax, DWORD PTR _i$[ebp]
	imul	eax, 6
	add	eax, OFFSET _RPMListData
	mov	ecx, DWORD PTR _i$[ebp]
	mov	DWORD PTR _RPMListPtrs[ecx*4], eax
; Line 325
	mov	eax, DWORD PTR _rpm$[ebp]
	add	eax, DWORD PTR _increment$[ebp]
	mov	DWORD PTR _rpm$[ebp], eax
$LN1@BuildRPMLi:
; Line 327
	jmp	SHORT $LN4@BuildRPMLi
$LN3@BuildRPMLi:
; Line 328
	mov	eax, DWORD PTR _i$[ebp]
	mov	DWORD PTR _RPMListPtrs[eax*4], 0
; Line 329
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_BuildRPMList ENDP
_TEXT	ENDS
_BSS	SEGMENT
_hRedlineListWheel DD 01H DUP (?)
; Function compile flags: /Odtp /RTCsu /ZI
_BSS	ENDS
;	COMDAT _DisplayRedline
_TEXT	SEGMENT
_end$ = -20						; size = 4
_rpm$ = -8						; size = 4
_hParent$ = 8						; size = 4
_DisplayRedline PROC					; COMDAT
; Line 332
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 335
	mov	eax, DWORD PTR _vehicleData+32
	mov	DWORD PTR _rpm$[ebp], eax
	mov	eax, DWORD PTR _rpm$[ebp]
	cdq
	mov	ecx, 50					; 00000032H
	idiv	ecx
	mov	DWORD PTR _rpmListStart, eax
; Line 336
	mov	eax, DWORD PTR _vehicleData+20
	mov	DWORD PTR _end$[ebp], eax
; Line 337
	push	50					; 00000032H
	mov	eax, DWORD PTR _end$[ebp]
	push	eax
	mov	ecx, DWORD PTR _rpm$[ebp]
	push	ecx
	call	_BuildRPMList
	add	esp, 12					; 0000000cH
; Line 340
	push	OFFSET $SG18744
	push	0
	mov	eax, DWORD PTR _vehicleData+36
	cdq
	mov	ecx, 50					; 00000032H
	idiv	ecx
	sub	eax, DWORD PTR _rpmListStart
	push	eax
	push	OFFSET _hRedlineListWheel
	push	609					; 00000261H
	push	OFFSET _RPMListPtrs
	mov	edx, DWORD PTR _hParent$[ebp]
	push	edx
	call	_DisplayStdListScreen
	add	esp, 28					; 0000001cH
; Line 341
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_DisplayRedline ENDP
_TEXT	ENDS
_BSS	SEGMENT
_hCylindersListWheel DD 01H DUP (?)
; Function compile flags: /Odtp /RTCsu /ZI
_BSS	ENDS
;	COMDAT _DisplayCylinders
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_DisplayCylinders PROC					; COMDAT
; Line 344
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 346
	push	OFFSET $SG18748
	push	0
	movzx	eax, BYTE PTR _vehicleData+13
	push	eax
	call	_CylindersToIndex
	add	esp, 4
	movzx	ecx, al
	push	ecx
	push	OFFSET _hCylindersListWheel
	push	610					; 00000262H
	push	OFFSET _apCylinders
	mov	edx, DWORD PTR _hParent$[ebp]
	push	edx
	call	_DisplayStdListScreen
	add	esp, 28					; 0000001cH
; Line 347
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_DisplayCylinders ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _DisplayPowerEnd
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_DisplayPowerEnd PROC					; COMDAT
; Line 351
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 352
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_DisplayPowerEnd ENDP
_TEXT	ENDS
_BSS	SEGMENT
_hMaxRPMListWheel DD 01H DUP (?)
; Function compile flags: /Odtp /RTCsu /ZI
_BSS	ENDS
;	COMDAT _DisplayMaxRPM
_TEXT	SEGMENT
_end$ = -20						; size = 4
_rpm$ = -8						; size = 4
_hParent$ = 8						; size = 4
_DisplayMaxRPM PROC					; COMDAT
; Line 355
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 358
	mov	eax, DWORD PTR _vehicleData+36
	cdq
	mov	ecx, 100				; 00000064H
	idiv	ecx
	imul	edx, 100				; 00000064H
	mov	DWORD PTR _rpm$[ebp], edx
	mov	eax, DWORD PTR _rpm$[ebp]
	cdq
	mov	ecx, 100				; 00000064H
	idiv	ecx
	mov	DWORD PTR _rpmListStart, eax
; Line 359
	mov	DWORD PTR _end$[ebp], 20000		; 00004e20H
; Line 360
	push	100					; 00000064H
	mov	eax, DWORD PTR _end$[ebp]
	push	eax
	mov	ecx, DWORD PTR _rpm$[ebp]
	push	ecx
	call	_BuildRPMList
	add	esp, 12					; 0000000cH
; Line 363
	push	OFFSET $SG18757
	push	0
	mov	eax, DWORD PTR _vehicleData+20
	cdq
	mov	ecx, 100				; 00000064H
	idiv	ecx
	sub	eax, DWORD PTR _rpmListStart
	push	eax
	push	OFFSET _hMaxRPMListWheel
	push	612					; 00000264H
	push	OFFSET _RPMListPtrs
	mov	edx, DWORD PTR _hParent$[ebp]
	push	edx
	call	_DisplayStdListScreen
	add	esp, 28					; 0000001cH
; Line 364
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_DisplayMaxRPM ENDP
_TEXT	ENDS
EXTRN	_bmWarningRPM:BYTE
EXTRN	_bmSingleSpinner:BYTE
EXTRN	_GUI_DrawBitmap:PROC
EXTRN	_bmBackgroundWithPanel:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _WarningRPMPaint
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_WarningRPMPaint PROC					; COMDAT
; Line 368
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 369
	push	0
	push	0
	push	OFFSET _bmBackgroundWithPanel
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 370
	push	42					; 0000002aH
	push	240					; 000000f0H
	push	OFFSET _bmSingleSpinner
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 371
	push	0
	push	60					; 0000003cH
	push	OFFSET _bmWarningRPM
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 372
	push	229					; 000000e5H
	push	0
	push	0
	call	_GetNavigationArrow
	add	esp, 4
	push	eax
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 373
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WarningRPMPaint ENDP
_TEXT	ENDS
EXTRN	_bmRedlineRPM:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _RedlinePaint
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_RedlinePaint PROC					; COMDAT
; Line 376
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 377
	push	0
	push	0
	push	OFFSET _bmBackgroundWithPanel
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 378
	push	42					; 0000002aH
	push	240					; 000000f0H
	push	OFFSET _bmSingleSpinner
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 379
	push	0
	push	60					; 0000003cH
	push	OFFSET _bmRedlineRPM
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 380
	push	229					; 000000e5H
	push	0
	push	1
	call	_GetNavigationArrow
	add	esp, 4
	push	eax
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 381
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_RedlinePaint ENDP
_TEXT	ENDS
EXTRN	_bmEngineCylinders:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _CylindersPaint
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_CylindersPaint PROC					; COMDAT
; Line 384
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 385
	push	0
	push	0
	push	OFFSET _bmBackgroundWithPanel
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 386
	push	42					; 0000002aH
	push	240					; 000000f0H
	push	OFFSET _bmSingleSpinner
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 387
	push	0
	push	60					; 0000003cH
	push	OFFSET _bmEngineCylinders
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 388
	push	229					; 000000e5H
	push	0
	push	2
	call	_GetNavigationArrow
	add	esp, 4
	push	eax
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 389
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_CylindersPaint ENDP
_TEXT	ENDS
EXTRN	_bmPowerBandEnd:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _PowerEndPaint
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_PowerEndPaint PROC					; COMDAT
; Line 392
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 393
	push	0
	push	0
	push	OFFSET _bmBackgroundWithPanel
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 394
	push	42					; 0000002aH
	push	240					; 000000f0H
	push	OFFSET _bmSingleSpinner
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 395
	push	0
	push	60					; 0000003cH
	push	OFFSET _bmPowerBandEnd
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 396
	push	229					; 000000e5H
	push	0
	push	3
	call	_GetNavigationArrow
	add	esp, 4
	push	eax
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 397
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_PowerEndPaint ENDP
_TEXT	ENDS
EXTRN	_bmMaxRPM:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _MaxRPMPaint
_TEXT	SEGMENT
_hParent$ = 8						; size = 4
_MaxRPMPaint PROC					; COMDAT
; Line 400
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 401
	push	0
	push	0
	push	OFFSET _bmBackgroundWithPanel
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 402
	push	42					; 0000002aH
	push	240					; 000000f0H
	push	OFFSET _bmSingleSpinner
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 403
	push	0
	push	60					; 0000003cH
	push	OFFSET _bmMaxRPM
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 404
	push	229					; 000000e5H
	push	0
	push	4
	call	_GetNavigationArrow
	add	esp, 4
	push	eax
	call	_GUI_DrawBitmap
	add	esp, 12					; 0000000cH
; Line 405
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_MaxRPMPaint ENDP
_TEXT	ENDS
EXTRN	_bmleftarrow:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GetNavigationArrow
_TEXT	SEGMENT
_screen$ = 8						; size = 4
_GetNavigationArrow PROC				; COMDAT
; Line 408
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 409
	mov	eax, OFFSET _bmleftarrow
; Line 410
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GetNavigationArrow ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _TachSetupIgnoreNextKeyRelease
_TEXT	SEGMENT
_TachSetupIgnoreNextKeyRelease PROC			; COMDAT
; Line 413
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 415
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_TachSetupIgnoreNextKeyRelease ENDP
_TEXT	ENDS
END