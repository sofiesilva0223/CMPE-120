;CMPE 102, Lab Week-5
;Problem 2: Write a program to copy an array of type word and size 5 into another array of the same size and type.
;Group members: Sofia Silva, Isaac Kim, Inderpreet Singh
;Source Code
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data    
list1 WORD 1, 2, 3, 4, 5	;list1 is the original array
list2 WORD ?, ?, ?, ?, ?	;list2 is the array that will copy the inside of array1
.code
main PROC
	mov ecx, 5	
	mov esi, OFFSET list1
	mov edi, OFFSET list2
loop1:
	mov ax,[esi]
	mov [edi],ax
	add esi, 2
  	add edi, 2
	dec ecx
	jnz loop1
	INVOKE ExitProcess,0
main ENDP
END main
