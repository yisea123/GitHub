﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\WM\WM_SetDesktopColor.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_WM_SetDesktopColorEx
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_WM__ahDesktopWin:DWORD
EXTRN	_WM__aBkColor:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\wm\wm_setdesktopcolor.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _WM_SetDesktopColorEx
_TEXT	SEGMENT
_r$ = -8						; size = 4
_Color$ = 8						; size = 4
_LayerIndex$ = 12					; size = 4
_WM_SetDesktopColorEx PROC				; COMDAT
; Line 37
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
; Line 38
	mov	DWORD PTR _r$[ebp], 268435455		; 0fffffffH
; Line 39
	cmp	DWORD PTR _LayerIndex$[ebp], 1
	jae	SHORT $LN1@WM_SetDesk
; Line 40
	mov	eax, DWORD PTR _LayerIndex$[ebp]
	mov	ecx, DWORD PTR _WM__aBkColor[eax*4]
	mov	DWORD PTR _r$[ebp], ecx
; Line 41
	mov	eax, DWORD PTR _LayerIndex$[ebp]
	mov	ecx, DWORD PTR _Color$[ebp]
	mov	DWORD PTR _WM__aBkColor[eax*4], ecx
; Line 42
	mov	eax, DWORD PTR _LayerIndex$[ebp]
	mov	ecx, DWORD PTR _WM__ahDesktopWin[eax*4]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@WM_SetDesk:
; Line 44
	mov	eax, DWORD PTR _r$[ebp]
; Line 45
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_SetDesktopColorEx ENDP
_TEXT	ENDS
PUBLIC	_WM_SetDesktopColor
EXTRN	_GUI_Context:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _WM_SetDesktopColor
_TEXT	SEGMENT
_Color$ = 8						; size = 4
_WM_SetDesktopColor PROC				; COMDAT
; Line 51
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
; Line 52
	movzx	eax, BYTE PTR _GUI_Context+17
	push	eax
	mov	ecx, DWORD PTR _Color$[ebp]
	push	ecx
	call	_WM_SetDesktopColorEx
	add	esp, 8
; Line 53
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_SetDesktopColor ENDP
_TEXT	ENDS
PUBLIC	_WM_SetDesktopColors
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _WM_SetDesktopColors
_TEXT	SEGMENT
_i$ = -8						; size = 4
_Color$ = 8						; size = 4
_WM_SetDesktopColors PROC				; COMDAT
; Line 59
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
; Line 61
	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN3@WM_SetDesk@2
$LN2@WM_SetDesk@2:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN3@WM_SetDesk@2:
	cmp	DWORD PTR _i$[ebp], 1
	jge	SHORT $LN4@WM_SetDesk@2
; Line 62
	mov	eax, DWORD PTR _i$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Color$[ebp]
	push	ecx
	call	_WM_SetDesktopColorEx
	add	esp, 8
; Line 63
	jmp	SHORT $LN2@WM_SetDesk@2
$LN4@WM_SetDesk@2:
; Line 64
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_SetDesktopColors ENDP
_TEXT	ENDS
END