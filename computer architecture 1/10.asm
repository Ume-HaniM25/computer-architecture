global_main
extern_printf
section.data
format db"AfterDEC,EBX= %d",10,0
section.text
_main:
;Startwith10.
movebx,10
;DECmeansdecreasebyone.
decebx
;EBXnowcontains9.
pushebx
pushformat
call_printf
addesp,8
xoreax,eax
ret