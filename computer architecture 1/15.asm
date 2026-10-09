global_main
extern_printf
section.data
format db"AL=%d,BL=%d", 10,0
section.text
_main:
moval,10
movbl,20
;BeforeXCHG:
;
;AL= 10
;BL= 20
xchgal,bl
;AfterXCHG:
;
;AL= 20
;BL= 10
movzxecx,bl
movzxeax,al
pushecx
pusheax
pushformat
call_printf
addesp,12
xoreax,eax
ret