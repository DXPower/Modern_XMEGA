	.text
	.section	.progmem.data,"a",@progbits
	.globl	init_leds               ; -- Begin function init_leds
	.p2align	1
	.type	init_leds,@function
init_leds:                              ; @init_leds
.Lfunc_begin0:
; %bb.0:
	ldi	r24, 16
.Ltmp0:
	sts	1633, r24
	sts	1638, r24
	ldi	r24, 64
	sts	1633, r24
	sts	1637, r24
	ret
.Ltmp1:
.Lfunc_end0:
	.size	init_leds, .Lfunc_end0-init_leds
                                        ; -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1~18.04.2 " ; string offset=0
.Linfo_string1:
	.asciz	"src/led.c"             ; string offset=39
.Linfo_string2:
	.asciz	"/mnt/c/Users/myaka/Documents/GitHub/AVR" ; string offset=49
.Linfo_string3:
	.asciz	"DIR"                   ; string offset=89
.Linfo_string4:
	.asciz	"unsigned char"         ; string offset=93
.Linfo_string5:
	.asciz	"uint8_t"               ; string offset=107
.Linfo_string6:
	.asciz	"register8_t"           ; string offset=115
.Linfo_string7:
	.asciz	"DIRSET"                ; string offset=127
.Linfo_string8:
	.asciz	"DIRCLR"                ; string offset=134
.Linfo_string9:
	.asciz	"DIRTGL"                ; string offset=141
.Linfo_string10:
	.asciz	"OUT"                   ; string offset=148
.Linfo_string11:
	.asciz	"OUTSET"                ; string offset=152
.Linfo_string12:
	.asciz	"OUTCLR"                ; string offset=159
.Linfo_string13:
	.asciz	"OUTTGL"                ; string offset=166
.Linfo_string14:
	.asciz	"IN"                    ; string offset=173
.Linfo_string15:
	.asciz	"INTCTRL"               ; string offset=176
.Linfo_string16:
	.asciz	"INT0MASK"              ; string offset=184
.Linfo_string17:
	.asciz	"INT1MASK"              ; string offset=193
.Linfo_string18:
	.asciz	"INTFLAGS"              ; string offset=202
.Linfo_string19:
	.asciz	"reserved_0x0D"         ; string offset=211
.Linfo_string20:
	.asciz	"REMAP"                 ; string offset=225
.Linfo_string21:
	.asciz	"reserved_0x0F"         ; string offset=231
.Linfo_string22:
	.asciz	"PIN0CTRL"              ; string offset=245
.Linfo_string23:
	.asciz	"PIN1CTRL"              ; string offset=254
.Linfo_string24:
	.asciz	"PIN2CTRL"              ; string offset=263
.Linfo_string25:
	.asciz	"PIN3CTRL"              ; string offset=272
.Linfo_string26:
	.asciz	"PIN4CTRL"              ; string offset=281
.Linfo_string27:
	.asciz	"PIN5CTRL"              ; string offset=290
.Linfo_string28:
	.asciz	"PIN6CTRL"              ; string offset=299
.Linfo_string29:
	.asciz	"PIN7CTRL"              ; string offset=308
.Linfo_string30:
	.asciz	"PORT_struct"           ; string offset=317
.Linfo_string31:
	.asciz	"PORT_t"                ; string offset=329
.Linfo_string32:
	.asciz	"init_leds"             ; string offset=336
	.section	.debug_abbrev,"",@progbits
	.byte	1                       ; Abbreviation Code
	.byte	17                      ; DW_TAG_compile_unit
	.byte	1                       ; DW_CHILDREN_yes
	.byte	37                      ; DW_AT_producer
	.byte	14                      ; DW_FORM_strp
	.byte	19                      ; DW_AT_language
	.byte	5                       ; DW_FORM_data2
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	16                      ; DW_AT_stmt_list
	.byte	23                      ; DW_FORM_sec_offset
	.byte	27                      ; DW_AT_comp_dir
	.byte	14                      ; DW_FORM_strp
	.byte	17                      ; DW_AT_low_pc
	.byte	1                       ; DW_FORM_addr
	.byte	18                      ; DW_AT_high_pc
	.byte	6                       ; DW_FORM_data4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	2                       ; Abbreviation Code
	.byte	15                      ; DW_TAG_pointer_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	3                       ; Abbreviation Code
	.byte	22                      ; DW_TAG_typedef
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	5                       ; DW_FORM_data2
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	4                       ; Abbreviation Code
	.byte	19                      ; DW_TAG_structure_type
	.byte	1                       ; DW_CHILDREN_yes
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	11                      ; DW_AT_byte_size
	.byte	11                      ; DW_FORM_data1
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	5                       ; DW_FORM_data2
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	5                       ; Abbreviation Code
	.byte	13                      ; DW_TAG_member
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	5                       ; DW_FORM_data2
	.byte	56                      ; DW_AT_data_member_location
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	6                       ; Abbreviation Code
	.byte	22                      ; DW_TAG_typedef
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	7                       ; Abbreviation Code
	.byte	53                      ; DW_TAG_volatile_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	8                       ; Abbreviation Code
	.byte	36                      ; DW_TAG_base_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	62                      ; DW_AT_encoding
	.byte	11                      ; DW_FORM_data1
	.byte	11                      ; DW_AT_byte_size
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	9                       ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	0                       ; DW_CHILDREN_no
	.byte	17                      ; DW_AT_low_pc
	.byte	1                       ; DW_FORM_addr
	.byte	18                      ; DW_AT_high_pc
	.byte	6                       ; DW_FORM_data4
	.byte	64                      ; DW_AT_frame_base
	.byte	24                      ; DW_FORM_exprloc
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	0                       ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                       ; DWARF version number
	.long	.debug_abbrev           ; Offset Into Abbrev. Section
	.byte	2                       ; Address Size (in bytes)
	.byte	1                       ; Abbrev [1] 0xb:0x19f DW_TAG_compile_unit
	.long	.Linfo_string0          ; DW_AT_producer
	.short	12                      ; DW_AT_language
	.long	.Linfo_string1          ; DW_AT_name
	.long	.Lline_table_start0     ; DW_AT_stmt_list
	.long	.Linfo_string2          ; DW_AT_comp_dir
	.short	.Lfunc_begin0           ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 ; DW_AT_high_pc
	.byte	2                       ; Abbrev [2] 0x24:0x5 DW_TAG_pointer_type
	.long	41                      ; DW_AT_type
	.byte	3                       ; Abbrev [3] 0x29:0xc DW_TAG_typedef
	.long	53                      ; DW_AT_type
	.long	.Linfo_string31         ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.short	1798                    ; DW_AT_decl_line
	.byte	4                       ; Abbrev [4] 0x35:0x142 DW_TAG_structure_type
	.long	.Linfo_string30         ; DW_AT_name
	.byte	24                      ; DW_AT_byte_size
	.byte	2                       ; DW_AT_decl_file
	.short	1772                    ; DW_AT_decl_line
	.byte	5                       ; Abbrev [5] 0x3e:0xd DW_TAG_member
	.long	.Linfo_string3          ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1774                    ; DW_AT_decl_line
	.byte	0                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x4b:0xd DW_TAG_member
	.long	.Linfo_string7          ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1775                    ; DW_AT_decl_line
	.byte	1                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x58:0xd DW_TAG_member
	.long	.Linfo_string8          ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1776                    ; DW_AT_decl_line
	.byte	2                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x65:0xd DW_TAG_member
	.long	.Linfo_string9          ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1777                    ; DW_AT_decl_line
	.byte	3                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x72:0xd DW_TAG_member
	.long	.Linfo_string10         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1778                    ; DW_AT_decl_line
	.byte	4                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x7f:0xd DW_TAG_member
	.long	.Linfo_string11         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1779                    ; DW_AT_decl_line
	.byte	5                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x8c:0xd DW_TAG_member
	.long	.Linfo_string12         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1780                    ; DW_AT_decl_line
	.byte	6                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x99:0xd DW_TAG_member
	.long	.Linfo_string13         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1781                    ; DW_AT_decl_line
	.byte	7                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xa6:0xd DW_TAG_member
	.long	.Linfo_string14         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1782                    ; DW_AT_decl_line
	.byte	8                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xb3:0xd DW_TAG_member
	.long	.Linfo_string15         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1783                    ; DW_AT_decl_line
	.byte	9                       ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xc0:0xd DW_TAG_member
	.long	.Linfo_string16         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1784                    ; DW_AT_decl_line
	.byte	10                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xcd:0xd DW_TAG_member
	.long	.Linfo_string17         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1785                    ; DW_AT_decl_line
	.byte	11                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xda:0xd DW_TAG_member
	.long	.Linfo_string18         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1786                    ; DW_AT_decl_line
	.byte	12                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xe7:0xd DW_TAG_member
	.long	.Linfo_string19         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1787                    ; DW_AT_decl_line
	.byte	13                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0xf4:0xd DW_TAG_member
	.long	.Linfo_string20         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1788                    ; DW_AT_decl_line
	.byte	14                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x101:0xd DW_TAG_member
	.long	.Linfo_string21         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1789                    ; DW_AT_decl_line
	.byte	15                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x10e:0xd DW_TAG_member
	.long	.Linfo_string22         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1790                    ; DW_AT_decl_line
	.byte	16                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x11b:0xd DW_TAG_member
	.long	.Linfo_string23         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1791                    ; DW_AT_decl_line
	.byte	17                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x128:0xd DW_TAG_member
	.long	.Linfo_string24         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1792                    ; DW_AT_decl_line
	.byte	18                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x135:0xd DW_TAG_member
	.long	.Linfo_string25         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1793                    ; DW_AT_decl_line
	.byte	19                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x142:0xd DW_TAG_member
	.long	.Linfo_string26         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1794                    ; DW_AT_decl_line
	.byte	20                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x14f:0xd DW_TAG_member
	.long	.Linfo_string27         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1795                    ; DW_AT_decl_line
	.byte	21                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x15c:0xd DW_TAG_member
	.long	.Linfo_string28         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1796                    ; DW_AT_decl_line
	.byte	22                      ; DW_AT_data_member_location
	.byte	5                       ; Abbrev [5] 0x169:0xd DW_TAG_member
	.long	.Linfo_string29         ; DW_AT_name
	.long	375                     ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.short	1797                    ; DW_AT_decl_line
	.byte	23                      ; DW_AT_data_member_location
	.byte	0                       ; End Of Children Mark
	.byte	6                       ; Abbrev [6] 0x177:0xb DW_TAG_typedef
	.long	386                     ; DW_AT_type
	.long	.Linfo_string6          ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	84                      ; DW_AT_decl_line
	.byte	7                       ; Abbrev [7] 0x182:0x5 DW_TAG_volatile_type
	.long	391                     ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x187:0xb DW_TAG_typedef
	.long	402                     ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	126                     ; DW_AT_decl_line
	.byte	8                       ; Abbrev [8] 0x192:0x7 DW_TAG_base_type
	.long	.Linfo_string4          ; DW_AT_name
	.byte	8                       ; DW_AT_encoding
	.byte	1                       ; DW_AT_byte_size
	.byte	9                       ; Abbrev [9] 0x199:0x10 DW_TAG_subprogram
	.short	.Lfunc_begin0           ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 ; DW_AT_high_pc
	.byte	2                       ; DW_AT_frame_base
	.byte	144
	.byte	32
	.long	.Linfo_string32         ; DW_AT_name
	.byte	3                       ; DW_AT_decl_file
	.byte	5                       ; DW_AT_decl_line
                                        ; DW_AT_external
	.byte	0                       ; End Of Children Mark
.Ldebug_info_end0:
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
	.section	.debug_line,"",@progbits
.Lline_table_start0:
