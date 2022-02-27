INCLUDE Irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC
	mov eax, 1000h
	add eax, 4000h
	sub eax, 2000h
	call DumpRegs
	exit

main ENDP
END main