global_main
extern_printf
section.data
format db"AL=%d,BL=%d", 10,0
section.text
_main:
;Store10insideAL.
moval,10
;Copy ALintoBL.
movbl,al
;ConvertBLtoa32-bitvalue.
;StoreittemporarilyinECX.
movzxecx,bl
;ConvertALtoa32-bitvalue.
;StoreitinEAX.
movzxeax,al
;printfargumentsarepushed
;from righttoleft.
pushecx
pusheax
pushformat
call_printf
;Threevalueswerepushed.
;3x4=12bytes.
addesp,12
7
xor eax, eax
ret