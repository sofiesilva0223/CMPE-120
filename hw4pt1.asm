;CMPE 102
;Problem 1: Write a program to copy an array of type byte and size 5 into another array of the same size and type.
;Group members: Sofia Silva,enter name, enter name
;Source Code
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data    
list1 BYTE 1, 2, 3, 4, 5	;list1 is the original array
list2 BYTE ?, ?, ?, ?, ?	;list2 is the array that will copy the inside of array1
.code
main PROC
	mov ecx, 5	
	mov esi, OFFSET list1
	mov edi, OFFSET list2
loop1:
	mov al,[esi]
	mov [edi],al
	inc esi
	inc edi
	dec ecx
	jnz loop1
	INVOKE ExitProcess,0
main ENDP
END main
