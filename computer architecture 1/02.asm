global_main
extern_printf
section.data
;%08X displaysan8-digithexadecimalvalue.
format db"EAX=0x%08X",10, 0
section.text
_main:
;EAXisa32-bitCPUregister.
;Storehexadecimal12345678insideit.
moveax,0x12345678
;Push thenumberthatprintf willdisplay.
pusheax
;Push theaddressoftheformatstring.
pushformat
;Displaytheresult.
call_printf
;Removethetwoparameters fromthestack.
addesp,8
;Return0.
xoreax,eax
ret