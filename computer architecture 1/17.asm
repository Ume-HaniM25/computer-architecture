global_main
extern_printf
section.data
number db0
format db"ValueloadedintoBL=%d",10,0
section.text
_main:
;Store42inmemory.
movbyte[number],42
;Read thebytefrommemory
;andplaceitinsideBL.
movbl,[number]
;ConvertBLto32bitsfor printf.
movzxeax,bl
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret