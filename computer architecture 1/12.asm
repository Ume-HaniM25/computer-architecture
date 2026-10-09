global_main
extern_printf
section.data
format db"Result=%d",10,0
section.text
_main:
;Decimal5:
;00000101
moval,5
;Decimal8:
;00001000
oral, 8
;Result:
;00001101
;Decimal13.
movzxeax,al
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret