	.text
	.section	.progmem.data,"a",@progbits
	.globl	main                    ; -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   ; @main
.Lfunc_begin0:
; %bb.0:
	push	r28
	push	r29
	in	r28, 61
	in	r29, 62
	sbiw	r28, 4
	in	r0, 63
	cli
	out	62, r29
	out	63, r0
	out	61, r28
	ldi	r24, 0
	ldi	r25, 0
	std	Y+3, r24
	std	Y+4, r25
.Ltmp0:
	std	Y+1, r24
	std	Y+2, r25
	call	init_leds
	rjmp	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
.Ltmp1:
	ldd	r24, Y+1
	ldd	r25, Y+2
	movw	r30, r24
	adiw	r30, 1
	std	Y+1, r30
	std	Y+2, r31
	ldi	r18, 96
	ldi	r19, 234
.Ltmp2:
	cp	r24, r18
	cpc	r25, r19
	brne	LBB0_3
	rjmp	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldi	r24, 80
.Ltmp3:
	sts	1639, r24
	rjmp	LBB0_3
.Ltmp4:
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	rjmp	LBB0_1
.Ltmp5:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ; -- End function
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1~18.04.2 " ; string offset=0
.Linfo_string1:
	.asciz	"src/main.c"            ; string offset=39
.Linfo_string2:
	.asciz	"/mnt/c/Users/myaka/Documents/GitHub/AVR" ; string offset=50
.Linfo_string3:
	.asciz	"DIR"                   ; string offset=90
.Linfo_string4:
	.asciz	"unsigned char"         ; string offset=94
.Linfo_string5:
	.asciz	"uint8_t"               ; string offset=108
.Linfo_string6:
	.asciz	"register8_t"           ; string offset=116
.Linfo_string7:
	.asciz	"DIRSET"                ; string offset=128
.Linfo_string8:
	.asciz	"DIRCLR"                ; string offset=135
.Linfo_string9:
	.asciz	"DIRTGL"                ; string offset=142
.Linfo_string10:
	.asciz	"OUT"                   ; string offset=149
.Linfo_string11:
	.asciz	"OUTSET"                ; string offset=153
.Linfo_string12:
	.asciz	"OUTCLR"                ; string offset=160
.Linfo_string13:
	.asciz	"OUTTGL"                ; string offset=167
.Linfo_string14:
	.asciz	"IN"                    ; string offset=174
.Linfo_string15:
	.asciz	"INTCTRL"               ; string offset=177
.Linfo_string16:
	.asciz	"INT0MASK"              ; string offset=185
.Linfo_string17:
	.asciz	"INT1MASK"              ; string offset=194
.Linfo_string18:
	.asciz	"INTFLAGS"              ; string offset=203
.Linfo_string19:
	.asciz	"reserved_0x0D"         ; string offset=212
.Linfo_string20:
	.asciz	"REMAP"                 ; string offset=226
.Linfo_string21:
	.asciz	"reserved_0x0F"         ; string offset=232
.Linfo_string22:
	.asciz	"PIN0CTRL"              ; string offset=246
.Linfo_string23:
	.asciz	"PIN1CTRL"              ; string offset=255
.Linfo_string24:
	.asciz	"PIN2CTRL"              ; string offset=264
.Linfo_string25:
	.asciz	"PIN3CTRL"              ; string offset=273
.Linfo_string26:
	.asciz	"PIN4CTRL"              ; string offset=282
.Linfo_string27:
	.asciz	"PIN5CTRL"              ; string offset=291
.Linfo_string28:
	.asciz	"PIN6CTRL"              ; string offset=300
.Linfo_string29:
	.asciz	"PIN7CTRL"              ; string offset=309
.Linfo_string30:
	.asciz	"PORT_struct"           ; string offset=318
.Linfo_string31:
	.asciz	"PORT_t"                ; string offset=330
.Linfo_string32:
	.asciz	"main"                  ; string offset=337
.Linfo_string33:
	.asciz	"int"                   ; string offset=342
.Linfo_string34:
	.asciz	"x"                     ; string offset=346
.Linfo_string35:
	.asciz	"unsigned int"          ; string offset=348
.Linfo_string36:
	.asciz	"uint16_t"              ; string offset=361
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
	.byte	1                       ; DW_CHILDREN_yes
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
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	10                      ; Abbreviation Code
	.byte	52                      ; DW_TAG_variable
	.byte	0                       ; DW_CHILDREN_no
	.byte	2                       ; DW_AT_location
	.byte	24                      ; DW_FORM_exprloc
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
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
	.byte	1                       ; Abbrev [1] 0xb:0x1ca DW_TAG_compile_unit
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
	.byte	9                       ; Abbrev [9] 0x199:0x22 DW_TAG_subprogram
	.short	.Lfunc_begin0           ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 ; DW_AT_high_pc
	.byte	1                       ; DW_AT_frame_base
	.byte	108
	.long	.Linfo_string32         ; DW_AT_name
	.byte	3                       ; DW_AT_decl_file
	.byte	5                       ; DW_AT_decl_line
	.long	443                     ; DW_AT_type
                                        ; DW_AT_external
	.byte	10                      ; Abbrev [10] 0x1ac:0xe DW_TAG_variable
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	0
	.long	.Linfo_string34         ; DW_AT_name
	.byte	3                       ; DW_AT_decl_file
	.byte	6                       ; DW_AT_decl_line
	.long	450                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x1bb:0x7 DW_TAG_base_type
	.long	.Linfo_string33         ; DW_AT_name
	.byte	5                       ; DW_AT_encoding
	.byte	2                       ; DW_AT_byte_size
	.byte	6                       ; Abbrev [6] 0x1c2:0xb DW_TAG_typedef
	.long	461                     ; DW_AT_type
	.long	.Linfo_string36         ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	128                     ; DW_AT_decl_line
	.byte	8                       ; Abbrev [8] 0x1cd:0x7 DW_TAG_base_type
	.long	.Linfo_string35         ; DW_AT_name
	.byte	7                       ; DW_AT_encoding
	.byte	2                       ; DW_AT_byte_size
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
