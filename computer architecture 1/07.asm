global_main
extern_printf
section.data
format db"20-5=%d",10,0
section.text
_main:
;Store20insideAL.
moval,20
;Subtract5.
subal,5
;ALnowcontains15.
movzxeax,al
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret