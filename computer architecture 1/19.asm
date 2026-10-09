global_main
extern_printf
section.data
format db"EAX=0x%08X,EBX=0x%08X",10,0
section.text
_main:
;PutavalueintoEAX.
moveax,0x12345678
;PUSH placesEAXonthestack.
pusheax
;POPremovesthetopvalue
;from thestackandplaces it
;insideEBX.
popebx
;Both registersnowcontain
;thesamevalue.
pushebx
pusheax
pushformat
call_printf
addesp,12
xoreax,eax
ret