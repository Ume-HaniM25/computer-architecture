global_main
extern_printf
section.data
format db"AL=%d,BL=%d", 10,0
section.text
_main:
;Store10inAL.
moval,10
;Store20inBL.
movbl,20
;AddthecontentsofBLto AL.
addal,bl
;ALnowcontains30.
;BLstillcontains20.
movzxecx,bl
movzxeax,al
pushecx
pusheax
pushformat
call_printf
addesp,12
xoreax,eax
ret