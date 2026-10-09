global_main
extern_printf
section.data
;Createonebytecontaining10.
number db10
format db"Newmemoryvalue = %d",10,0
section.text
_main:
;Put5intoBL.
movbl,5
;AddBLtothebytestored inmemory.
;
;Memoryinitiallycontains 10.
;BLcontains5.
;
;10+ 5=15
addbyte[number],bl
;Read thenewmemoryvalue.
movzxeax,byte[number]
pusheax
pushformat
call_printf
addesp,8
xor eax, eax
ret