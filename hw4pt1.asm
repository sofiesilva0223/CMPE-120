;Problem 1: Write a program to copy an array of type byte and size 5 into anther array of the same size and type.
;Group members: Sofia Silva,enter name, enter name
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
.data    
array1 BYTE 1, 2, 3, 4, 5	;array1 is the original array
array2 BYTE 5 dup(?)		;array2 is the array that will copy the inside of array1
.code
main PROC
	mov esi, OFFSET array1
	mov edi, OFFSET array2
	mov al, 5				;size of 5 is stored in the al register
loop1:
	 mov ah,[esi]
	 mov [edi],ah
	 add esi, 2
	 add edi, 2
	 dec al
jnz loop1
	INVOKE ExitProcess,0
main ENDP
END main
