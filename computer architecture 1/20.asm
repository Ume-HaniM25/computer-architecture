global_main
extern_printf
section.data
;Reserveonebyteforthefinalresult.
result db0
;printfwilldisplaythree decimalnumbers.
format db"AL=%d,BL=%d,Memory=%d",10,0
section.text
_main:
;------------------------------------------------
;Step 1
;Put10intoAL.
;------------------------------------------------
moval,10
;------------------------------------------------
;Step 2
;Add20.
;
;10+ 20=30
;------------------------------------------------
addal,20

;------------------------------------------------
;Step 3
;Subtract5.
;
;30- 5=25
;------------------------------------------------
subal,5
;------------------------------------------------
;Step 4
;StoreALinmemory.
;
;Memorynowcontains25.
;------------------------------------------------
mov[result],al
;------------------------------------------------
;Step 5
;Read thevaluefrommemoryintoBL.
;------------------------------------------------
movbl,[result]
;------------------------------------------------
;Preparevaluesforprintf.
;
;printfuses32-bitintegerparameters.
;------------------------------------------------
movzxeax,al
movzxecx,bl
movzxedx,byte[result]
;------------------------------------------------
;printfargumentsmustbepushed
;from righttoleft.
;
;formatcontains:
;
;AL= %d,BL=%d,Memory=%d
;
;Thereforewepush:
;
;Memory
;BL
;AL
;formataddress
;------------------------------------------------
pushedx
pushecx
pusheax
pushformat
call_printf
;------------------------------------------------
;Four 32-bitparameterswere pushed.
;
;4x4bytes=16bytes.
;
;RestoreESP.
;------------------------------------------------
addesp,16
;------------------------------------------------
;Return0toWindows.
;------------------------------------------------
xoreax,eax
ret