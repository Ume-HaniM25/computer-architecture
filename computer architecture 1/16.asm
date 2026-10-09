global_main
extern_printf
section.data
;Reserveonebyteinmemory.
;Itsstartingvalueis0.
number db0
format db"Valueinmemory=%d",10,0
section.text
_main:
;Storedecimal42atthememory
;locationcallednumber.
movbyte[number],42
;Read thebytefrommemory and
;convertittoa32-bitvalue.
movzxeax,byte[number]
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret