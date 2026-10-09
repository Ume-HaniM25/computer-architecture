global_main
extern_printf
section.data
equalMessagedb"Thenumbersareequal.",10,0
notEqualMessagedb"Thenumbersarenotequal.",10,0
section.text
_main:
moval,10
movbl,10
;CMPinternallyperforms:
;AL- BL
;
;Theresultisnotstored.
;CPUflagsareupdatedinstead.
cmpal,bl
;JEmeansJumpifEqual.
;ItcheckstheZeroFlag.
jenumbers_are_equal
numbers_are_not_equal:
pushnotEqualMessage
call_printf
addesp,4
jmpfinished
numbers_are_equal:
pushequalMessage
call _printf
add esp, 4
finished:
xor eax, eax
ret