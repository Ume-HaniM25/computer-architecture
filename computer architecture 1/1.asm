global_main
extern_printf
section.data
;%dtellsprintftodisplayadecimalnumber.
;10createsanewline.
;0markstheendofthestring.
format db"ValueinAL=%d", 10,0
section.text
_main:
;Putdecimal10intoAL.
;ALisan8-bitregister.
moval,10
;printfworkswithlargervalues.
;MOVZXcopiesALintoEAXandfills
;theremainingbitswithzeros.
movzxeax,al
;Functionparametersarepushedonto
;thestackfromrighttoleft.
pusheax
;Push theaddressoftheformatstring.
pushformat
;Call theprintffunction.
call_printf
3
; Two 32-bit values were pushed.
; Each value used 4 bytes.
; Remove 8 bytes from the stack.
add esp, 8
; Return 0 from the program.
xor e