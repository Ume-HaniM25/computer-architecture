global_main
extern_printf
section.data
format db"10+5=%d",10,0
section.text
_main:
;Startwith10.
moval,10
;Add5toAL.
addal,5
;ALnowcontains15.
;Convertthe8-bitresultto 32bits.
movzxeax,al
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret