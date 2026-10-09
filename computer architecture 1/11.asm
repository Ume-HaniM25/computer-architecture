global_main
extern_printf
section.data
format db"Result=0x%02X",10,0
section.text
_main:
;AAinbinaryis:
;10101010
moval,0xAA
;0Finbinaryis:
;00001111
andal,0x0F
;Result:
;00001010
;This ishexadecimal0A.
movzxeax,al
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret