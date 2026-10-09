global_main
extern_printf
section.data
format db"AfterINC,EAX= %d",10,0
section.text
_main:
;Startwith9.
moveax,9
;INCmeansincreasebyone.
inceax
;EAXnowcontains10.
pusheax
pushformat
call_printf
addesp,8
xoreax,eax
ret