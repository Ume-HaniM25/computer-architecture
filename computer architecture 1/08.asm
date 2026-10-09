global_main
extern_printf
section.data
format db"30-10=%d",10, 0
section.text
_main:
moveax,30
movebx,10
;CalculateEAX-EBX.
subeax,ebx
;EAXnowcontains20.
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret