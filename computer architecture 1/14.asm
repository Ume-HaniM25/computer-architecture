global_main
extern_printf
section.data
zeroMessagedb"Nocommon1 bitswerefound.",10,0
commonMessagedb"Common1bitswerefound.",10,0
section.text
_main:
;AL= 11110000
moval,0xF0
;BL= 00001111
movbl,0x0F
;TEST performsabitwiseAND
;butdoesnotsavetheanswer.
;ItonlychangesCPUflags.
testal,bl
;Jump iftheresultwaszero.
jzno_common_bits
common_bits:
pushcommonMessage
call_printf
addesp,4
jmpfinished
no_common_bits:
push zeroMessage
call _printf
add esp, 4
finished:
xor eax, eax
ret