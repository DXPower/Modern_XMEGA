	.text
	.section	.progmem.data,"a",@progbits
	.globl	main                    ; -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   ; @main
.Lfunc_begin0:
; %bb.0:
	;DEBUG_VALUE: PinControl:this <- undef
	;DEBUG_VALUE: Set<false>:this <- undef
	ldi	r24, 16
.Ltmp0:
	;DEBUG_VALUE: main:x <- 0
	sts	1637, r24
.Ltmp1:
	sts	1633, r24
	ldi	r24, 32
.Ltmp2:
	;DEBUG_VALUE: Set<false>:this <- undef
	;DEBUG_VALUE: PinControl:this <- undef
	sts	1637, r24
.Ltmp3:
	sts	1633, r24
	ldi	r24, 64
.Ltmp4:
	;DEBUG_VALUE: Set<false>:this <- undef
	;DEBUG_VALUE: PinControl:this <- undef
	sts	1637, r24
.Ltmp5:
	sts	1633, r24
	ldi	r24, 0
	ldi	r25, 0
	ldi	r18, 48
	ldi	r19, 117
	ldi	r20, 96
	ldi	r21, 234
	rjmp	LBB0_4
.Ltmp6:
LBB0_1:                                 ;   in Loop: Header=BB0_4 Depth=1
	;DEBUG_VALUE: main:x <- $r25r24
	ldi	r22, 48
	ldi	r23, 64
.Ltmp7:
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	;DEBUG_VALUE: main:x <- $r25r24
	sts	1637, r23
	sts	1638, r22
.Ltmp8:
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	;DEBUG_VALUE: main:x <- $r25r24
	adiw	r24, 1
.Ltmp9:
	;DEBUG_VALUE: main:x <- $r25r24
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: main:x <- $r25r24
	cp	r24, r18
	cpc	r25, r19
	breq	LBB0_1
.Ltmp10:
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	;DEBUG_VALUE: main:x <- $r25r24
	cp	r24, r20
	cpc	r25, r21
	brne	LBB0_3
.Ltmp11:
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=1
	;DEBUG_VALUE: main:x <- $r25r24
	ldi	r22, 80
	ldi	r23, 32
.Ltmp12:
	;DEBUG_VALUE: SetPinsBinary<'\x03', uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x05', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x06', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x04', uP::Direction::OUTPUT, uP::Active::LOW> >:pins <- undef
	;DEBUG_VALUE: SetPinsBinary<'\x03', uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x05', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x06', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x04', uP::Direction::OUTPUT, uP::Active::LOW> >:pins <- undef
	;DEBUG_VALUE: SetPinsBinary<'\x03', uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x05', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x06', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\x04', uP::Direction::OUTPUT, uP::Active::LOW> >:pins <- undef
	rjmp	LBB0_2
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ; -- End function
	.section	".linker-options","e",@llvm_linker_options
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1~18.04.2 " ; string offset=0
.Linfo_string1:
	.asciz	"src/main.cpp"          ; string offset=39
.Linfo_string2:
	.asciz	"/mnt/c/Users/myaka/Documents/GitHub/AVR" ; string offset=52
.Linfo_string3:
	.asciz	"uP"                    ; string offset=92
.Linfo_string4:
	.asciz	"unsigned char"         ; string offset=95
.Linfo_string5:
	.asciz	"Value"                 ; string offset=109
.Linfo_string6:
	.asciz	"Pins"                  ; string offset=115
.Linfo_string7:
	.asciz	"portLoc"               ; string offset=120
.Linfo_string8:
	.asciz	"location"              ; string offset=128
.Linfo_string9:
	.asciz	"unsigned int"          ; string offset=137
.Linfo_string10:
	.asciz	"uint16_t"              ; string offset=150
.Linfo_string11:
	.asciz	"uintptr_t"             ; string offset=159
.Linfo_string12:
	.asciz	"Peripheral"            ; string offset=169
.Linfo_string13:
	.asciz	"_ZN2uP10PeripheralI11PORT_structLj1632EE3GetEv" ; string offset=180
.Linfo_string14:
	.asciz	"Get"                   ; string offset=227
.Linfo_string15:
	.asciz	"DIR"                   ; string offset=231
.Linfo_string16:
	.asciz	"uint8_t"               ; string offset=235
.Linfo_string17:
	.asciz	"register8_t"           ; string offset=243
.Linfo_string18:
	.asciz	"DIRSET"                ; string offset=255
.Linfo_string19:
	.asciz	"DIRCLR"                ; string offset=262
.Linfo_string20:
	.asciz	"DIRTGL"                ; string offset=269
.Linfo_string21:
	.asciz	"OUT"                   ; string offset=276
.Linfo_string22:
	.asciz	"OUTSET"                ; string offset=280
.Linfo_string23:
	.asciz	"OUTCLR"                ; string offset=287
.Linfo_string24:
	.asciz	"OUTTGL"                ; string offset=294
.Linfo_string25:
	.asciz	"IN"                    ; string offset=301
.Linfo_string26:
	.asciz	"INTCTRL"               ; string offset=304
.Linfo_string27:
	.asciz	"INT0MASK"              ; string offset=312
.Linfo_string28:
	.asciz	"INT1MASK"              ; string offset=321
.Linfo_string29:
	.asciz	"INTFLAGS"              ; string offset=330
.Linfo_string30:
	.asciz	"reserved_0x0D"         ; string offset=339
.Linfo_string31:
	.asciz	"REMAP"                 ; string offset=353
.Linfo_string32:
	.asciz	"reserved_0x0F"         ; string offset=359
.Linfo_string33:
	.asciz	"PIN0CTRL"              ; string offset=373
.Linfo_string34:
	.asciz	"PIN1CTRL"              ; string offset=382
.Linfo_string35:
	.asciz	"PIN2CTRL"              ; string offset=391
.Linfo_string36:
	.asciz	"PIN3CTRL"              ; string offset=400
.Linfo_string37:
	.asciz	"PIN4CTRL"              ; string offset=409
.Linfo_string38:
	.asciz	"PIN5CTRL"              ; string offset=418
.Linfo_string39:
	.asciz	"PIN6CTRL"              ; string offset=427
.Linfo_string40:
	.asciz	"PIN7CTRL"              ; string offset=436
.Linfo_string41:
	.asciz	"PORT_struct"           ; string offset=445
.Linfo_string42:
	.asciz	"_ZNK2uP10PeripheralI11PORT_structLj1632EEptEv" ; string offset=457
.Linfo_string43:
	.asciz	"operator->"            ; string offset=503
.Linfo_string44:
	.asciz	"Peripheral_t"          ; string offset=514
.Linfo_string45:
	.asciz	"Location"              ; string offset=527
.Linfo_string46:
	.asciz	"Peripheral<PORT_struct, 1632>" ; string offset=536
.Linfo_string47:
	.asciz	"PinControl"            ; string offset=566
.Linfo_string48:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EE3SetEb" ; string offset=577
.Linfo_string49:
	.asciz	"Set"                   ; string offset=678
.Linfo_string50:
	.asciz	"bool"                  ; string offset=682
.Linfo_string51:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EE6ToggleEv" ; string offset=687
.Linfo_string52:
	.asciz	"Toggle"                ; string offset=791
.Linfo_string53:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EE4ReadEv" ; string offset=798
.Linfo_string54:
	.asciz	"Read"                  ; string offset=900
.Linfo_string55:
	.asciz	"_ZN2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EE11GetPortAddrEv" ; string offset=905
.Linfo_string56:
	.asciz	"GetPortAddr"           ; string offset=1014
.Linfo_string57:
	.asciz	"PortLoc"               ; string offset=1026
.Linfo_string58:
	.asciz	"Pos"                   ; string offset=1034
.Linfo_string59:
	.asciz	"int"                   ; string offset=1038
.Linfo_string60:
	.asciz	"INPUT"                 ; string offset=1042
.Linfo_string61:
	.asciz	"OUTPUT"                ; string offset=1048
.Linfo_string62:
	.asciz	"Direction"             ; string offset=1055
.Linfo_string63:
	.asciz	"Dir"                   ; string offset=1065
.Linfo_string64:
	.asciz	"LOW"                   ; string offset=1069
.Linfo_string65:
	.asciz	"HIGH"                  ; string offset=1073
.Linfo_string66:
	.asciz	"Active"                ; string offset=1078
.Linfo_string67:
	.asciz	"Act"                   ; string offset=1085
.Linfo_string68:
	.asciz	"PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x05', uP::Direction::OUTPUT, uP::Active::LOW>" ; string offset=1089
.Linfo_string69:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh6ELNS_9DirectionE1ELNS_6ActiveE0EE3SetEb" ; string offset=1183
.Linfo_string70:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh6ELNS_9DirectionE1ELNS_6ActiveE0EE6ToggleEv" ; string offset=1284
.Linfo_string71:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh6ELNS_9DirectionE1ELNS_6ActiveE0EE4ReadEv" ; string offset=1388
.Linfo_string72:
	.asciz	"_ZN2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh6ELNS_9DirectionE1ELNS_6ActiveE0EE11GetPortAddrEv" ; string offset=1490
.Linfo_string73:
	.asciz	"PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x06', uP::Direction::OUTPUT, uP::Active::LOW>" ; string offset=1599
.Linfo_string74:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh4ELNS_9DirectionE1ELNS_6ActiveE0EE3SetEb" ; string offset=1693
.Linfo_string75:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh4ELNS_9DirectionE1ELNS_6ActiveE0EE6ToggleEv" ; string offset=1794
.Linfo_string76:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh4ELNS_9DirectionE1ELNS_6ActiveE0EE4ReadEv" ; string offset=1898
.Linfo_string77:
	.asciz	"_ZN2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh4ELNS_9DirectionE1ELNS_6ActiveE0EE11GetPortAddrEv" ; string offset=2000
.Linfo_string78:
	.asciz	"PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x04', uP::Direction::OUTPUT, uP::Active::LOW>" ; string offset=2109
.Linfo_string79:
	.asciz	"_ZN2uP13SetPinsBinaryILh5EJNS_10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EEENS1_IS4_Lh6ELS5_1ELS6_0EEENS1_IS4_Lh4ELS5_1ELS6_0EEEEEEvDpRKT0_" ; string offset=2203
.Linfo_string80:
	.asciz	"SetPinsBinary<'\\x05', uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x05', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x06', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x04', uP::Direction::OUTPUT, uP::Active::LOW> >" ; string offset=2385
.Linfo_string81:
	.asciz	"_ZN2uP13SetPinsBinaryILh3EJNS_10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EEENS1_IS4_Lh6ELS5_1ELS6_0EEENS1_IS4_Lh4ELS5_1ELS6_0EEEEEEvDpRKT0_" ; string offset=2705
.Linfo_string82:
	.asciz	"SetPinsBinary<'\\x03', uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x05', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x06', uP::Direction::OUTPUT, uP::Active::LOW>, uP::PinControl<uP::Peripheral<PORT_struct, 1632>, '\\x04', uP::Direction::OUTPUT, uP::Active::LOW> >" ; string offset=2887
.Linfo_string83:
	.asciz	"position"              ; string offset=3207
.Linfo_string84:
	.asciz	"PinNum_t"              ; string offset=3216
.Linfo_string85:
	.asciz	"direction"             ; string offset=3225
.Linfo_string86:
	.asciz	"activation"            ; string offset=3235
.Linfo_string87:
	.asciz	"mask"                  ; string offset=3246
.Linfo_string88:
	.asciz	"invMask"               ; string offset=3251
.Linfo_string89:
	.asciz	"Pin"                   ; string offset=3259
.Linfo_string90:
	.asciz	"Pin<'\\x04', uP::Direction::OUTPUT, uP::Active::LOW>" ; string offset=3263
.Linfo_string91:
	.asciz	"Pin<'\\x05', uP::Direction::OUTPUT, uP::Active::LOW>" ; string offset=3315
.Linfo_string92:
	.asciz	"Pin<'\\x06', uP::Direction::OUTPUT, uP::Active::LOW>" ; string offset=3367
.Linfo_string93:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh4ELNS_9DirectionE1ELNS_6ActiveE0EE3SetILb0EEEvv" ; string offset=3419
.Linfo_string94:
	.asciz	"Set<false>"            ; string offset=3527
.Linfo_string95:
	.asciz	"this"                  ; string offset=3538
.Linfo_string96:
	.asciz	"_ZN2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh4ELNS_9DirectionE1ELNS_6ActiveE0EEC2Ev" ; string offset=3543
.Linfo_string97:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EE3SetILb0EEEvv" ; string offset=3641
.Linfo_string98:
	.asciz	"_ZN2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh5ELNS_9DirectionE1ELNS_6ActiveE0EEC2Ev" ; string offset=3749
.Linfo_string99:
	.asciz	"_ZNK2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh6ELNS_9DirectionE1ELNS_6ActiveE0EE3SetILb0EEEvv" ; string offset=3847
.Linfo_string100:
	.asciz	"_ZN2uP10PinControlINS_10PeripheralI11PORT_structLj1632EEELh6ELNS_9DirectionE1ELNS_6ActiveE0EEC2Ev" ; string offset=3955
.Linfo_string101:
	.asciz	"main"                  ; string offset=4053
.Linfo_string102:
	.asciz	"x"                     ; string offset=4058
.Linfo_string103:
	.asciz	"redLed"                ; string offset=4060
.Linfo_string104:
	.asciz	"greenLed"              ; string offset=4067
.Linfo_string105:
	.asciz	"blueLed"               ; string offset=4076
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.short	.Ltmp0-.Lfunc_begin0
	.short	.Ltmp6-.Lfunc_begin0
	.short	2                       ; Loc expr size
	.byte	48                      ; DW_OP_lit0
	.byte	159                     ; DW_OP_stack_value
	.short	.Ltmp6-.Lfunc_begin0
	.short	.Lfunc_end0-.Lfunc_begin0
	.short	1                       ; Loc expr size
	.byte	104                     ; DW_OP_reg24
	.short	0
	.short	0
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
	.byte	57                      ; DW_TAG_namespace
	.byte	1                       ; DW_CHILDREN_yes
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	3                       ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	110                     ; DW_AT_linkage_name
	.byte	14                      ; DW_FORM_strp
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	4                       ; Abbreviation Code
	.byte	48                      ; DW_TAG_template_value_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	28                      ; DW_AT_const_value
	.byte	15                      ; DW_FORM_udata
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	5                       ; Abbreviation Code
	.ascii	"\207\202\001"          ; DW_TAG_GNU_template_parameter_pack
	.byte	1                       ; DW_CHILDREN_yes
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	6                       ; Abbreviation Code
	.byte	47                      ; DW_TAG_template_type_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	7                       ; Abbreviation Code
	.byte	5                       ; DW_TAG_formal_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	8                       ; Abbreviation Code
	.byte	19                      ; DW_TAG_structure_type
	.byte	1                       ; DW_CHILDREN_yes
	.byte	54                      ; DW_AT_calling_convention
	.byte	11                      ; DW_FORM_data1
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	11                      ; DW_AT_byte_size
	.byte	11                      ; DW_FORM_data1
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	9                       ; Abbreviation Code
	.byte	13                      ; DW_TAG_member
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	56                      ; DW_AT_data_member_location
	.byte	11                      ; DW_FORM_data1
	.byte	50                      ; DW_AT_accessibility
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	10                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	11                      ; Abbreviation Code
	.byte	5                       ; DW_TAG_formal_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	52                      ; DW_AT_artificial
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	12                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	110                     ; DW_AT_linkage_name
	.byte	14                      ; DW_FORM_strp
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	13                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	0                       ; DW_CHILDREN_no
	.byte	110                     ; DW_AT_linkage_name
	.byte	14                      ; DW_FORM_strp
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	14                      ; Abbreviation Code
	.byte	47                      ; DW_TAG_template_type_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	15                      ; Abbreviation Code
	.byte	48                      ; DW_TAG_template_value_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	28                      ; DW_AT_const_value
	.byte	13                      ; DW_FORM_sdata
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	16                      ; Abbreviation Code
	.byte	13                      ; DW_TAG_member
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	17                      ; Abbreviation Code
	.byte	4                       ; DW_TAG_enumeration_type
	.byte	1                       ; DW_CHILDREN_yes
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	109                     ; DW_AT_enum_class
	.byte	25                      ; DW_FORM_flag_present
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	11                      ; DW_AT_byte_size
	.byte	11                      ; DW_FORM_data1
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	18                      ; Abbreviation Code
	.byte	40                      ; DW_TAG_enumerator
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	28                      ; DW_AT_const_value
	.byte	13                      ; DW_FORM_sdata
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	19                      ; Abbreviation Code
	.byte	13                      ; DW_TAG_member
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	28                      ; DW_AT_const_value
	.byte	13                      ; DW_FORM_sdata
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	20                      ; Abbreviation Code
	.byte	13                      ; DW_TAG_member
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	60                      ; DW_AT_declaration
	.byte	25                      ; DW_FORM_flag_present
	.byte	28                      ; DW_AT_const_value
	.byte	15                      ; DW_FORM_udata
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	21                      ; Abbreviation Code
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
	.byte	22                      ; Abbreviation Code
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
	.byte	23                      ; Abbreviation Code
	.byte	38                      ; DW_TAG_const_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	24                      ; Abbreviation Code
	.byte	15                      ; DW_TAG_pointer_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	25                      ; Abbreviation Code
	.byte	16                      ; DW_TAG_reference_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	26                      ; Abbreviation Code
	.byte	19                      ; DW_TAG_structure_type
	.byte	1                       ; DW_CHILDREN_yes
	.byte	54                      ; DW_AT_calling_convention
	.byte	11                      ; DW_FORM_data1
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
	.byte	27                      ; Abbreviation Code
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
	.byte	28                      ; Abbreviation Code
	.byte	53                      ; DW_TAG_volatile_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	29                      ; Abbreviation Code
	.byte	58                      ; DW_TAG_imported_module
	.byte	0                       ; DW_CHILDREN_no
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	24                      ; DW_AT_import
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	30                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	71                      ; DW_AT_specification
	.byte	19                      ; DW_FORM_ref4
	.byte	32                      ; DW_AT_inline
	.byte	11                      ; DW_FORM_data1
	.byte	100                     ; DW_AT_object_pointer
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	31                      ; Abbreviation Code
	.byte	5                       ; DW_TAG_formal_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	52                      ; DW_AT_artificial
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	32                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	110                     ; DW_AT_linkage_name
	.byte	14                      ; DW_FORM_strp
	.byte	71                      ; DW_AT_specification
	.byte	19                      ; DW_FORM_ref4
	.byte	32                      ; DW_AT_inline
	.byte	11                      ; DW_FORM_data1
	.byte	100                     ; DW_AT_object_pointer
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	33                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	17                      ; DW_AT_low_pc
	.byte	1                       ; DW_FORM_addr
	.byte	18                      ; DW_AT_high_pc
	.byte	6                       ; DW_FORM_data4
	.byte	64                      ; DW_AT_frame_base
	.byte	24                      ; DW_FORM_exprloc
	.ascii	"\227B"                 ; DW_AT_GNU_all_call_sites
	.byte	25                      ; DW_FORM_flag_present
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
	.byte	34                      ; Abbreviation Code
	.byte	52                      ; DW_TAG_variable
	.byte	0                       ; DW_CHILDREN_no
	.byte	2                       ; DW_AT_location
	.byte	23                      ; DW_FORM_sec_offset
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
	.byte	35                      ; Abbreviation Code
	.byte	52                      ; DW_TAG_variable
	.byte	0                       ; DW_CHILDREN_no
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
	.byte	36                      ; Abbreviation Code
	.byte	29                      ; DW_TAG_inlined_subroutine
	.byte	1                       ; DW_CHILDREN_yes
	.byte	49                      ; DW_AT_abstract_origin
	.byte	19                      ; DW_FORM_ref4
	.byte	17                      ; DW_AT_low_pc
	.byte	1                       ; DW_FORM_addr
	.byte	18                      ; DW_AT_high_pc
	.byte	6                       ; DW_FORM_data4
	.byte	88                      ; DW_AT_call_file
	.byte	11                      ; DW_FORM_data1
	.byte	89                      ; DW_AT_call_line
	.byte	11                      ; DW_FORM_data1
	.byte	87                      ; DW_AT_call_column
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	37                      ; Abbreviation Code
	.byte	5                       ; DW_TAG_formal_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	49                      ; DW_AT_abstract_origin
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
	.byte	1                       ; Abbrev [1] 0xb:0x819 DW_TAG_compile_unit
	.long	.Linfo_string0          ; DW_AT_producer
	.short	33                      ; DW_AT_language
	.long	.Linfo_string1          ; DW_AT_name
	.long	.Lline_table_start0     ; DW_AT_stmt_list
	.long	.Linfo_string2          ; DW_AT_comp_dir
	.short	.Lfunc_begin0           ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 ; DW_AT_high_pc
	.byte	2                       ; Abbrev [2] 0x24:0x46e DW_TAG_namespace
	.long	.Linfo_string3          ; DW_AT_name
	.byte	3                       ; Abbrev [3] 0x29:0x3a DW_TAG_subprogram
	.long	.Linfo_string79         ; DW_AT_linkage_name
	.long	.Linfo_string80         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	151                     ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	4                       ; Abbrev [4] 0x34:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	5                       ; DW_AT_const_value
	.byte	5                       ; Abbrev [5] 0x3e:0x15 DW_TAG_GNU_template_parameter_pack
	.long	.Linfo_string6          ; DW_AT_name
	.byte	6                       ; Abbrev [6] 0x43:0x5 DW_TAG_template_type_parameter
	.long	99                      ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x48:0x5 DW_TAG_template_type_parameter
	.long	416                     ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x4d:0x5 DW_TAG_template_type_parameter
	.long	593                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	7                       ; Abbrev [7] 0x53:0x5 DW_TAG_formal_parameter
	.long	1645                    ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0x58:0x5 DW_TAG_formal_parameter
	.long	1650                    ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0x5d:0x5 DW_TAG_formal_parameter
	.long	1655                    ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x63:0xb1 DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string68         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	4                       ; DW_AT_decl_file
	.byte	26                      ; DW_AT_decl_line
	.byte	9                       ; Abbrev [9] 0x6c:0xd DW_TAG_member
	.long	.Linfo_string7          ; DW_AT_name
	.long	276                     ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	31                      ; DW_AT_decl_line
	.byte	0                       ; DW_AT_data_member_location
	.byte	3                       ; DW_AT_accessibility
                                        ; DW_ACCESS_private
	.byte	10                      ; Abbrev [10] 0x79:0xd DW_TAG_subprogram
	.long	.Linfo_string47         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	34                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x80:0x5 DW_TAG_formal_parameter
	.long	1586                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x86:0x16 DW_TAG_subprogram
	.long	.Linfo_string48         ; DW_AT_linkage_name
	.long	.Linfo_string49         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	52                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x91:0x5 DW_TAG_formal_parameter
	.long	1591                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	7                       ; Abbrev [7] 0x96:0x5 DW_TAG_formal_parameter
	.long	1601                    ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x9c:0x11 DW_TAG_subprogram
	.long	.Linfo_string51         ; DW_AT_linkage_name
	.long	.Linfo_string52         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	57                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0xa7:0x5 DW_TAG_formal_parameter
	.long	1591                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	12                      ; Abbrev [12] 0xad:0x15 DW_TAG_subprogram
	.long	.Linfo_string53         ; DW_AT_linkage_name
	.long	.Linfo_string54         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	61                      ; DW_AT_decl_line
	.long	1601                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0xbc:0x5 DW_TAG_formal_parameter
	.long	1591                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	13                      ; Abbrev [13] 0xc2:0xf DW_TAG_subprogram
	.long	.Linfo_string55         ; DW_AT_linkage_name
	.long	.Linfo_string56         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	65                      ; DW_AT_decl_line
	.long	1182                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	14                      ; Abbrev [14] 0xd1:0x9 DW_TAG_template_type_parameter
	.long	276                     ; DW_AT_type
	.long	.Linfo_string57         ; DW_AT_name
	.byte	4                       ; Abbrev [4] 0xda:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string58         ; DW_AT_name
	.byte	5                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0xe4:0xa DW_TAG_template_value_parameter
	.long	366                     ; DW_AT_type
	.long	.Linfo_string63         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0xee:0xa DW_TAG_template_value_parameter
	.long	391                     ; DW_AT_type
	.long	.Linfo_string67         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	3                       ; Abbrev [3] 0xf8:0x1b DW_TAG_subprogram
	.long	.Linfo_string97         ; DW_AT_linkage_name
	.long	.Linfo_string94         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	44                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	4                       ; Abbrev [4] 0x103:0xa DW_TAG_template_value_parameter
	.long	1601                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	11                      ; Abbrev [11] 0x10d:0x5 DW_TAG_formal_parameter
	.long	1591                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x114:0x5a DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string46         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	2                       ; DW_AT_decl_file
	.byte	9                       ; DW_AT_decl_line
	.byte	16                      ; Abbrev [16] 0x11d:0xb DW_TAG_member
	.long	.Linfo_string8          ; DW_AT_name
	.long	1177                    ; DW_AT_type
	.byte	2                       ; DW_AT_decl_file
	.byte	10                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	10                      ; Abbrev [10] 0x128:0xd DW_TAG_subprogram
	.long	.Linfo_string12         ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	12                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x12f:0x5 DW_TAG_formal_parameter
	.long	1211                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	13                      ; Abbrev [13] 0x135:0xf DW_TAG_subprogram
	.long	.Linfo_string13         ; DW_AT_linkage_name
	.long	.Linfo_string14         ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	14                      ; DW_AT_decl_line
	.long	1216                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	12                      ; Abbrev [12] 0x144:0x15 DW_TAG_subprogram
	.long	.Linfo_string42         ; DW_AT_linkage_name
	.long	.Linfo_string43         ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
	.long	1571                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x153:0x5 DW_TAG_formal_parameter
	.long	1576                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	14                      ; Abbrev [14] 0x159:0x9 DW_TAG_template_type_parameter
	.long	1221                    ; DW_AT_type
	.long	.Linfo_string44         ; DW_AT_name
	.byte	4                       ; Abbrev [4] 0x162:0xb DW_TAG_template_value_parameter
	.long	1204                    ; DW_AT_type
	.long	.Linfo_string45         ; DW_AT_name
	.ascii	"\340\f"                ; DW_AT_const_value
	.byte	0                       ; End Of Children Mark
	.byte	17                      ; Abbrev [17] 0x16e:0x19 DW_TAG_enumeration_type
	.long	1608                    ; DW_AT_type
                                        ; DW_AT_enum_class
	.long	.Linfo_string62         ; DW_AT_name
	.byte	2                       ; DW_AT_byte_size
	.byte	2                       ; DW_AT_decl_file
	.byte	24                      ; DW_AT_decl_line
	.byte	18                      ; Abbrev [18] 0x17a:0x6 DW_TAG_enumerator
	.long	.Linfo_string60         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	18                      ; Abbrev [18] 0x180:0x6 DW_TAG_enumerator
	.long	.Linfo_string61         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	0                       ; End Of Children Mark
	.byte	17                      ; Abbrev [17] 0x187:0x19 DW_TAG_enumeration_type
	.long	1608                    ; DW_AT_type
                                        ; DW_AT_enum_class
	.long	.Linfo_string66         ; DW_AT_name
	.byte	2                       ; DW_AT_byte_size
	.byte	2                       ; DW_AT_decl_file
	.byte	19                      ; DW_AT_decl_line
	.byte	18                      ; Abbrev [18] 0x193:0x6 DW_TAG_enumerator
	.long	.Linfo_string64         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	18                      ; Abbrev [18] 0x199:0x6 DW_TAG_enumerator
	.long	.Linfo_string65         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x1a0:0xb1 DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string73         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	4                       ; DW_AT_decl_file
	.byte	26                      ; DW_AT_decl_line
	.byte	9                       ; Abbrev [9] 0x1a9:0xd DW_TAG_member
	.long	.Linfo_string7          ; DW_AT_name
	.long	276                     ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	31                      ; DW_AT_decl_line
	.byte	0                       ; DW_AT_data_member_location
	.byte	3                       ; DW_AT_accessibility
                                        ; DW_ACCESS_private
	.byte	10                      ; Abbrev [10] 0x1b6:0xd DW_TAG_subprogram
	.long	.Linfo_string47         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	34                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x1bd:0x5 DW_TAG_formal_parameter
	.long	1615                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x1c3:0x16 DW_TAG_subprogram
	.long	.Linfo_string69         ; DW_AT_linkage_name
	.long	.Linfo_string49         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	52                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x1ce:0x5 DW_TAG_formal_parameter
	.long	1620                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	7                       ; Abbrev [7] 0x1d3:0x5 DW_TAG_formal_parameter
	.long	1601                    ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x1d9:0x11 DW_TAG_subprogram
	.long	.Linfo_string70         ; DW_AT_linkage_name
	.long	.Linfo_string52         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	57                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x1e4:0x5 DW_TAG_formal_parameter
	.long	1620                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	12                      ; Abbrev [12] 0x1ea:0x15 DW_TAG_subprogram
	.long	.Linfo_string71         ; DW_AT_linkage_name
	.long	.Linfo_string54         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	61                      ; DW_AT_decl_line
	.long	1601                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x1f9:0x5 DW_TAG_formal_parameter
	.long	1620                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	13                      ; Abbrev [13] 0x1ff:0xf DW_TAG_subprogram
	.long	.Linfo_string72         ; DW_AT_linkage_name
	.long	.Linfo_string56         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	65                      ; DW_AT_decl_line
	.long	1182                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	14                      ; Abbrev [14] 0x20e:0x9 DW_TAG_template_type_parameter
	.long	276                     ; DW_AT_type
	.long	.Linfo_string57         ; DW_AT_name
	.byte	4                       ; Abbrev [4] 0x217:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string58         ; DW_AT_name
	.byte	6                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x221:0xa DW_TAG_template_value_parameter
	.long	366                     ; DW_AT_type
	.long	.Linfo_string63         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x22b:0xa DW_TAG_template_value_parameter
	.long	391                     ; DW_AT_type
	.long	.Linfo_string67         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	3                       ; Abbrev [3] 0x235:0x1b DW_TAG_subprogram
	.long	.Linfo_string99         ; DW_AT_linkage_name
	.long	.Linfo_string94         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	44                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	4                       ; Abbrev [4] 0x240:0xa DW_TAG_template_value_parameter
	.long	1601                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	11                      ; Abbrev [11] 0x24a:0x5 DW_TAG_formal_parameter
	.long	1620                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x251:0xb1 DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string78         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	4                       ; DW_AT_decl_file
	.byte	26                      ; DW_AT_decl_line
	.byte	9                       ; Abbrev [9] 0x25a:0xd DW_TAG_member
	.long	.Linfo_string7          ; DW_AT_name
	.long	276                     ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	31                      ; DW_AT_decl_line
	.byte	0                       ; DW_AT_data_member_location
	.byte	3                       ; DW_AT_accessibility
                                        ; DW_ACCESS_private
	.byte	10                      ; Abbrev [10] 0x267:0xd DW_TAG_subprogram
	.long	.Linfo_string47         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	34                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x26e:0x5 DW_TAG_formal_parameter
	.long	1630                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x274:0x16 DW_TAG_subprogram
	.long	.Linfo_string74         ; DW_AT_linkage_name
	.long	.Linfo_string49         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	52                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x27f:0x5 DW_TAG_formal_parameter
	.long	1635                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	7                       ; Abbrev [7] 0x284:0x5 DW_TAG_formal_parameter
	.long	1601                    ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x28a:0x11 DW_TAG_subprogram
	.long	.Linfo_string75         ; DW_AT_linkage_name
	.long	.Linfo_string52         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	57                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x295:0x5 DW_TAG_formal_parameter
	.long	1635                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	12                      ; Abbrev [12] 0x29b:0x15 DW_TAG_subprogram
	.long	.Linfo_string76         ; DW_AT_linkage_name
	.long	.Linfo_string54         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	61                      ; DW_AT_decl_line
	.long	1601                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x2aa:0x5 DW_TAG_formal_parameter
	.long	1635                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	13                      ; Abbrev [13] 0x2b0:0xf DW_TAG_subprogram
	.long	.Linfo_string77         ; DW_AT_linkage_name
	.long	.Linfo_string56         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	65                      ; DW_AT_decl_line
	.long	1182                    ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	14                      ; Abbrev [14] 0x2bf:0x9 DW_TAG_template_type_parameter
	.long	276                     ; DW_AT_type
	.long	.Linfo_string57         ; DW_AT_name
	.byte	4                       ; Abbrev [4] 0x2c8:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string58         ; DW_AT_name
	.byte	4                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x2d2:0xa DW_TAG_template_value_parameter
	.long	366                     ; DW_AT_type
	.long	.Linfo_string63         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x2dc:0xa DW_TAG_template_value_parameter
	.long	391                     ; DW_AT_type
	.long	.Linfo_string67         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	3                       ; Abbrev [3] 0x2e6:0x1b DW_TAG_subprogram
	.long	.Linfo_string93         ; DW_AT_linkage_name
	.long	.Linfo_string94         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	44                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	4                       ; Abbrev [4] 0x2f1:0xa DW_TAG_template_value_parameter
	.long	1601                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	11                      ; Abbrev [11] 0x2fb:0x5 DW_TAG_formal_parameter
	.long	1635                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x302:0x3a DW_TAG_subprogram
	.long	.Linfo_string81         ; DW_AT_linkage_name
	.long	.Linfo_string82         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	151                     ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	4                       ; Abbrev [4] 0x30d:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	3                       ; DW_AT_const_value
	.byte	5                       ; Abbrev [5] 0x317:0x15 DW_TAG_GNU_template_parameter_pack
	.long	.Linfo_string6          ; DW_AT_name
	.byte	6                       ; Abbrev [6] 0x31c:0x5 DW_TAG_template_type_parameter
	.long	99                      ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x321:0x5 DW_TAG_template_type_parameter
	.long	416                     ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x326:0x5 DW_TAG_template_type_parameter
	.long	593                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	7                       ; Abbrev [7] 0x32c:0x5 DW_TAG_formal_parameter
	.long	1645                    ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0x331:0x5 DW_TAG_formal_parameter
	.long	1650                    ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0x336:0x5 DW_TAG_formal_parameter
	.long	1655                    ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x33c:0x6e DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string90         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	4                       ; DW_AT_decl_file
	.byte	13                      ; DW_AT_decl_line
	.byte	16                      ; Abbrev [16] 0x345:0xb DW_TAG_member
	.long	.Linfo_string83         ; DW_AT_name
	.long	1660                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	14                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	16                      ; Abbrev [16] 0x350:0xb DW_TAG_member
	.long	.Linfo_string85         ; DW_AT_name
	.long	1665                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	19                      ; Abbrev [19] 0x35b:0xc DW_TAG_member
	.long	.Linfo_string86         ; DW_AT_name
	.long	1670                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	16                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	0                       ; DW_AT_const_value
	.byte	20                      ; Abbrev [20] 0x367:0xc DW_TAG_member
	.long	.Linfo_string87         ; DW_AT_name
	.long	1675                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	18                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	16                      ; DW_AT_const_value
	.byte	16                      ; Abbrev [16] 0x373:0xb DW_TAG_member
	.long	.Linfo_string88         ; DW_AT_name
	.long	1675                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	19                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	10                      ; Abbrev [10] 0x37e:0xd DW_TAG_subprogram
	.long	.Linfo_string89         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	22                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x385:0x5 DW_TAG_formal_parameter
	.long	1680                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	4                       ; Abbrev [4] 0x38b:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string58         ; DW_AT_name
	.byte	4                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x395:0xa DW_TAG_template_value_parameter
	.long	366                     ; DW_AT_type
	.long	.Linfo_string63         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x39f:0xa DW_TAG_template_value_parameter
	.long	391                     ; DW_AT_type
	.long	.Linfo_string67         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	0                       ; End Of Children Mark
	.byte	21                      ; Abbrev [21] 0x3aa:0xb DW_TAG_typedef
	.long	1560                    ; DW_AT_type
	.long	.Linfo_string84         ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	6                       ; DW_AT_decl_line
	.byte	8                       ; Abbrev [8] 0x3b5:0x6e DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string91         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	4                       ; DW_AT_decl_file
	.byte	13                      ; DW_AT_decl_line
	.byte	16                      ; Abbrev [16] 0x3be:0xb DW_TAG_member
	.long	.Linfo_string83         ; DW_AT_name
	.long	1660                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	14                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	16                      ; Abbrev [16] 0x3c9:0xb DW_TAG_member
	.long	.Linfo_string85         ; DW_AT_name
	.long	1665                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	19                      ; Abbrev [19] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string86         ; DW_AT_name
	.long	1670                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	16                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	0                       ; DW_AT_const_value
	.byte	20                      ; Abbrev [20] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string87         ; DW_AT_name
	.long	1675                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	18                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	32                      ; DW_AT_const_value
	.byte	16                      ; Abbrev [16] 0x3ec:0xb DW_TAG_member
	.long	.Linfo_string88         ; DW_AT_name
	.long	1675                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	19                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	10                      ; Abbrev [10] 0x3f7:0xd DW_TAG_subprogram
	.long	.Linfo_string89         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	22                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x3fe:0x5 DW_TAG_formal_parameter
	.long	1685                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	4                       ; Abbrev [4] 0x404:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string58         ; DW_AT_name
	.byte	5                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x40e:0xa DW_TAG_template_value_parameter
	.long	366                     ; DW_AT_type
	.long	.Linfo_string63         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x418:0xa DW_TAG_template_value_parameter
	.long	391                     ; DW_AT_type
	.long	.Linfo_string67         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	0                       ; End Of Children Mark
	.byte	8                       ; Abbrev [8] 0x423:0x6e DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string92         ; DW_AT_name
	.byte	1                       ; DW_AT_byte_size
	.byte	4                       ; DW_AT_decl_file
	.byte	13                      ; DW_AT_decl_line
	.byte	16                      ; Abbrev [16] 0x42c:0xb DW_TAG_member
	.long	.Linfo_string83         ; DW_AT_name
	.long	1660                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	14                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	16                      ; Abbrev [16] 0x437:0xb DW_TAG_member
	.long	.Linfo_string85         ; DW_AT_name
	.long	1665                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	19                      ; Abbrev [19] 0x442:0xc DW_TAG_member
	.long	.Linfo_string86         ; DW_AT_name
	.long	1670                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	16                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	0                       ; DW_AT_const_value
	.byte	20                      ; Abbrev [20] 0x44e:0xc DW_TAG_member
	.long	.Linfo_string87         ; DW_AT_name
	.long	1675                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	18                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	64                      ; DW_AT_const_value
	.byte	16                      ; Abbrev [16] 0x45a:0xb DW_TAG_member
	.long	.Linfo_string88         ; DW_AT_name
	.long	1675                    ; DW_AT_type
	.byte	4                       ; DW_AT_decl_file
	.byte	19                      ; DW_AT_decl_line
                                        ; DW_AT_external
                                        ; DW_AT_declaration
	.byte	10                      ; Abbrev [10] 0x465:0xd DW_TAG_subprogram
	.long	.Linfo_string89         ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	22                      ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	.byte	11                      ; Abbrev [11] 0x46c:0x5 DW_TAG_formal_parameter
	.long	1690                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	4                       ; Abbrev [4] 0x472:0xa DW_TAG_template_value_parameter
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string58         ; DW_AT_name
	.byte	6                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x47c:0xa DW_TAG_template_value_parameter
	.long	366                     ; DW_AT_type
	.long	.Linfo_string63         ; DW_AT_name
	.byte	1                       ; DW_AT_const_value
	.byte	15                      ; Abbrev [15] 0x486:0xa DW_TAG_template_value_parameter
	.long	391                     ; DW_AT_type
	.long	.Linfo_string67         ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	22                      ; Abbrev [22] 0x492:0x7 DW_TAG_base_type
	.long	.Linfo_string4          ; DW_AT_name
	.byte	8                       ; DW_AT_encoding
	.byte	1                       ; DW_AT_byte_size
	.byte	23                      ; Abbrev [23] 0x499:0x5 DW_TAG_const_type
	.long	1182                    ; DW_AT_type
	.byte	21                      ; Abbrev [21] 0x49e:0xb DW_TAG_typedef
	.long	1193                    ; DW_AT_type
	.long	.Linfo_string11         ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	151                     ; DW_AT_decl_line
	.byte	21                      ; Abbrev [21] 0x4a9:0xb DW_TAG_typedef
	.long	1204                    ; DW_AT_type
	.long	.Linfo_string10         ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	128                     ; DW_AT_decl_line
	.byte	22                      ; Abbrev [22] 0x4b4:0x7 DW_TAG_base_type
	.long	.Linfo_string9          ; DW_AT_name
	.byte	7                       ; DW_AT_encoding
	.byte	2                       ; DW_AT_byte_size
	.byte	24                      ; Abbrev [24] 0x4bb:0x5 DW_TAG_pointer_type
	.long	276                     ; DW_AT_type
	.byte	25                      ; Abbrev [25] 0x4c0:0x5 DW_TAG_reference_type
	.long	1221                    ; DW_AT_type
	.byte	26                      ; Abbrev [26] 0x4c5:0x143 DW_TAG_structure_type
	.byte	5                       ; DW_AT_calling_convention
	.long	.Linfo_string41         ; DW_AT_name
	.byte	24                      ; DW_AT_byte_size
	.byte	3                       ; DW_AT_decl_file
	.short	1772                    ; DW_AT_decl_line
	.byte	27                      ; Abbrev [27] 0x4cf:0xd DW_TAG_member
	.long	.Linfo_string15         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1774                    ; DW_AT_decl_line
	.byte	0                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x4dc:0xd DW_TAG_member
	.long	.Linfo_string18         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1775                    ; DW_AT_decl_line
	.byte	1                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x4e9:0xd DW_TAG_member
	.long	.Linfo_string19         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1776                    ; DW_AT_decl_line
	.byte	2                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x4f6:0xd DW_TAG_member
	.long	.Linfo_string20         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1777                    ; DW_AT_decl_line
	.byte	3                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x503:0xd DW_TAG_member
	.long	.Linfo_string21         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1778                    ; DW_AT_decl_line
	.byte	4                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x510:0xd DW_TAG_member
	.long	.Linfo_string22         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1779                    ; DW_AT_decl_line
	.byte	5                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x51d:0xd DW_TAG_member
	.long	.Linfo_string23         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1780                    ; DW_AT_decl_line
	.byte	6                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x52a:0xd DW_TAG_member
	.long	.Linfo_string24         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1781                    ; DW_AT_decl_line
	.byte	7                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x537:0xd DW_TAG_member
	.long	.Linfo_string25         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1782                    ; DW_AT_decl_line
	.byte	8                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x544:0xd DW_TAG_member
	.long	.Linfo_string26         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1783                    ; DW_AT_decl_line
	.byte	9                       ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x551:0xd DW_TAG_member
	.long	.Linfo_string27         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1784                    ; DW_AT_decl_line
	.byte	10                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x55e:0xd DW_TAG_member
	.long	.Linfo_string28         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1785                    ; DW_AT_decl_line
	.byte	11                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x56b:0xd DW_TAG_member
	.long	.Linfo_string29         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1786                    ; DW_AT_decl_line
	.byte	12                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x578:0xd DW_TAG_member
	.long	.Linfo_string30         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1787                    ; DW_AT_decl_line
	.byte	13                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x585:0xd DW_TAG_member
	.long	.Linfo_string31         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1788                    ; DW_AT_decl_line
	.byte	14                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x592:0xd DW_TAG_member
	.long	.Linfo_string32         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1789                    ; DW_AT_decl_line
	.byte	15                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x59f:0xd DW_TAG_member
	.long	.Linfo_string33         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1790                    ; DW_AT_decl_line
	.byte	16                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5ac:0xd DW_TAG_member
	.long	.Linfo_string34         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1791                    ; DW_AT_decl_line
	.byte	17                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5b9:0xd DW_TAG_member
	.long	.Linfo_string35         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1792                    ; DW_AT_decl_line
	.byte	18                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5c6:0xd DW_TAG_member
	.long	.Linfo_string36         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1793                    ; DW_AT_decl_line
	.byte	19                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5d3:0xd DW_TAG_member
	.long	.Linfo_string37         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1794                    ; DW_AT_decl_line
	.byte	20                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5e0:0xd DW_TAG_member
	.long	.Linfo_string38         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1795                    ; DW_AT_decl_line
	.byte	21                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5ed:0xd DW_TAG_member
	.long	.Linfo_string39         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1796                    ; DW_AT_decl_line
	.byte	22                      ; DW_AT_data_member_location
	.byte	27                      ; Abbrev [27] 0x5fa:0xd DW_TAG_member
	.long	.Linfo_string40         ; DW_AT_name
	.long	1544                    ; DW_AT_type
	.byte	3                       ; DW_AT_decl_file
	.short	1797                    ; DW_AT_decl_line
	.byte	23                      ; DW_AT_data_member_location
	.byte	0                       ; End Of Children Mark
	.byte	21                      ; Abbrev [21] 0x608:0xb DW_TAG_typedef
	.long	1555                    ; DW_AT_type
	.long	.Linfo_string17         ; DW_AT_name
	.byte	3                       ; DW_AT_decl_file
	.byte	84                      ; DW_AT_decl_line
	.byte	28                      ; Abbrev [28] 0x613:0x5 DW_TAG_volatile_type
	.long	1560                    ; DW_AT_type
	.byte	21                      ; Abbrev [21] 0x618:0xb DW_TAG_typedef
	.long	1170                    ; DW_AT_type
	.long	.Linfo_string16         ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	126                     ; DW_AT_decl_line
	.byte	24                      ; Abbrev [24] 0x623:0x5 DW_TAG_pointer_type
	.long	1221                    ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x628:0x5 DW_TAG_pointer_type
	.long	1581                    ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x62d:0x5 DW_TAG_const_type
	.long	276                     ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x632:0x5 DW_TAG_pointer_type
	.long	99                      ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x637:0x5 DW_TAG_pointer_type
	.long	1596                    ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x63c:0x5 DW_TAG_const_type
	.long	99                      ; DW_AT_type
	.byte	22                      ; Abbrev [22] 0x641:0x7 DW_TAG_base_type
	.long	.Linfo_string50         ; DW_AT_name
	.byte	2                       ; DW_AT_encoding
	.byte	1                       ; DW_AT_byte_size
	.byte	22                      ; Abbrev [22] 0x648:0x7 DW_TAG_base_type
	.long	.Linfo_string59         ; DW_AT_name
	.byte	5                       ; DW_AT_encoding
	.byte	2                       ; DW_AT_byte_size
	.byte	24                      ; Abbrev [24] 0x64f:0x5 DW_TAG_pointer_type
	.long	416                     ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x654:0x5 DW_TAG_pointer_type
	.long	1625                    ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x659:0x5 DW_TAG_const_type
	.long	416                     ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x65e:0x5 DW_TAG_pointer_type
	.long	593                     ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x663:0x5 DW_TAG_pointer_type
	.long	1640                    ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x668:0x5 DW_TAG_const_type
	.long	593                     ; DW_AT_type
	.byte	25                      ; Abbrev [25] 0x66d:0x5 DW_TAG_reference_type
	.long	1596                    ; DW_AT_type
	.byte	25                      ; Abbrev [25] 0x672:0x5 DW_TAG_reference_type
	.long	1625                    ; DW_AT_type
	.byte	25                      ; Abbrev [25] 0x677:0x5 DW_TAG_reference_type
	.long	1640                    ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x67c:0x5 DW_TAG_const_type
	.long	938                     ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x681:0x5 DW_TAG_const_type
	.long	366                     ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x686:0x5 DW_TAG_const_type
	.long	391                     ; DW_AT_type
	.byte	23                      ; Abbrev [23] 0x68b:0x5 DW_TAG_const_type
	.long	1560                    ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x690:0x5 DW_TAG_pointer_type
	.long	828                     ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x695:0x5 DW_TAG_pointer_type
	.long	949                     ; DW_AT_type
	.byte	24                      ; Abbrev [24] 0x69a:0x5 DW_TAG_pointer_type
	.long	1059                    ; DW_AT_type
	.byte	29                      ; Abbrev [29] 0x69f:0x7 DW_TAG_imported_module
	.byte	5                       ; DW_AT_decl_file
	.byte	8                       ; DW_AT_decl_line
	.long	36                      ; DW_AT_import
	.byte	30                      ; Abbrev [30] 0x6a6:0x1e DW_TAG_subprogram
	.long	742                     ; DW_AT_specification
	.byte	1                       ; DW_AT_inline
	.long	1722                    ; DW_AT_object_pointer
	.byte	4                       ; Abbrev [4] 0x6b0:0xa DW_TAG_template_value_parameter
	.long	1601                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	31                      ; Abbrev [31] 0x6ba:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string95         ; DW_AT_name
	.long	1732                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	24                      ; Abbrev [24] 0x6c4:0x5 DW_TAG_pointer_type
	.long	1640                    ; DW_AT_type
	.byte	32                      ; Abbrev [32] 0x6c9:0x18 DW_TAG_subprogram
	.long	.Linfo_string96         ; DW_AT_linkage_name
	.long	615                     ; DW_AT_specification
	.byte	1                       ; DW_AT_inline
	.long	1751                    ; DW_AT_object_pointer
	.byte	31                      ; Abbrev [31] 0x6d7:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string95         ; DW_AT_name
	.long	1761                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	24                      ; Abbrev [24] 0x6e1:0x5 DW_TAG_pointer_type
	.long	593                     ; DW_AT_type
	.byte	30                      ; Abbrev [30] 0x6e6:0x1e DW_TAG_subprogram
	.long	248                     ; DW_AT_specification
	.byte	1                       ; DW_AT_inline
	.long	1786                    ; DW_AT_object_pointer
	.byte	4                       ; Abbrev [4] 0x6f0:0xa DW_TAG_template_value_parameter
	.long	1601                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	31                      ; Abbrev [31] 0x6fa:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string95         ; DW_AT_name
	.long	1796                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	24                      ; Abbrev [24] 0x704:0x5 DW_TAG_pointer_type
	.long	1596                    ; DW_AT_type
	.byte	32                      ; Abbrev [32] 0x709:0x18 DW_TAG_subprogram
	.long	.Linfo_string98         ; DW_AT_linkage_name
	.long	121                     ; DW_AT_specification
	.byte	1                       ; DW_AT_inline
	.long	1815                    ; DW_AT_object_pointer
	.byte	31                      ; Abbrev [31] 0x717:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string95         ; DW_AT_name
	.long	1825                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	24                      ; Abbrev [24] 0x721:0x5 DW_TAG_pointer_type
	.long	99                      ; DW_AT_type
	.byte	30                      ; Abbrev [30] 0x726:0x1e DW_TAG_subprogram
	.long	565                     ; DW_AT_specification
	.byte	1                       ; DW_AT_inline
	.long	1850                    ; DW_AT_object_pointer
	.byte	4                       ; Abbrev [4] 0x730:0xa DW_TAG_template_value_parameter
	.long	1601                    ; DW_AT_type
	.long	.Linfo_string5          ; DW_AT_name
	.byte	0                       ; DW_AT_const_value
	.byte	31                      ; Abbrev [31] 0x73a:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string95         ; DW_AT_name
	.long	1860                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	24                      ; Abbrev [24] 0x744:0x5 DW_TAG_pointer_type
	.long	1625                    ; DW_AT_type
	.byte	32                      ; Abbrev [32] 0x749:0x18 DW_TAG_subprogram
	.long	.Linfo_string100        ; DW_AT_linkage_name
	.long	438                     ; DW_AT_specification
	.byte	1                       ; DW_AT_inline
	.long	1879                    ; DW_AT_object_pointer
	.byte	31                      ; Abbrev [31] 0x757:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string95         ; DW_AT_name
	.long	1889                    ; DW_AT_type
                                        ; DW_AT_artificial
	.byte	0                       ; End Of Children Mark
	.byte	24                      ; Abbrev [24] 0x761:0x5 DW_TAG_pointer_type
	.long	416                     ; DW_AT_type
	.byte	33                      ; Abbrev [33] 0x766:0xbd DW_TAG_subprogram
	.short	.Lfunc_begin0           ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 ; DW_AT_high_pc
	.byte	2                       ; DW_AT_frame_base
	.byte	144
	.byte	32
                                        ; DW_AT_GNU_all_call_sites
	.long	.Linfo_string101        ; DW_AT_name
	.byte	5                       ; DW_AT_decl_file
	.byte	11                      ; DW_AT_decl_line
	.long	1608                    ; DW_AT_type
                                        ; DW_AT_external
	.byte	34                      ; Abbrev [34] 0x77a:0xf DW_TAG_variable
	.long	.Ldebug_loc0            ; DW_AT_location
	.long	.Linfo_string102        ; DW_AT_name
	.byte	5                       ; DW_AT_decl_file
	.byte	12                      ; DW_AT_decl_line
	.long	1193                    ; DW_AT_type
	.byte	35                      ; Abbrev [35] 0x789:0xb DW_TAG_variable
	.long	.Linfo_string103        ; DW_AT_name
	.byte	5                       ; DW_AT_decl_file
	.byte	14                      ; DW_AT_decl_line
	.long	593                     ; DW_AT_type
	.byte	35                      ; Abbrev [35] 0x794:0xb DW_TAG_variable
	.long	.Linfo_string104        ; DW_AT_name
	.byte	5                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
	.long	99                      ; DW_AT_type
	.byte	35                      ; Abbrev [35] 0x79f:0xb DW_TAG_variable
	.long	.Linfo_string105        ; DW_AT_name
	.byte	5                       ; DW_AT_decl_file
	.byte	16                      ; DW_AT_decl_line
	.long	416                     ; DW_AT_type
	.byte	36                      ; Abbrev [36] 0x7aa:0x28 DW_TAG_inlined_subroutine
	.long	1737                    ; DW_AT_abstract_origin
	.short	.Ltmp0                  ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0           ; DW_AT_high_pc
	.byte	5                       ; DW_AT_call_file
	.byte	14                      ; DW_AT_call_line
	.byte	19                      ; DW_AT_call_column
	.byte	37                      ; Abbrev [37] 0x7b8:0x5 DW_TAG_formal_parameter
	.long	1751                    ; DW_AT_abstract_origin
	.byte	36                      ; Abbrev [36] 0x7bd:0x14 DW_TAG_inlined_subroutine
	.long	1702                    ; DW_AT_abstract_origin
	.short	.Ltmp0                  ; DW_AT_low_pc
	.long	.Ltmp1-.Ltmp0           ; DW_AT_high_pc
	.byte	4                       ; DW_AT_call_file
	.byte	36                      ; DW_AT_call_line
	.byte	17                      ; DW_AT_call_column
	.byte	37                      ; Abbrev [37] 0x7cb:0x5 DW_TAG_formal_parameter
	.long	1722                    ; DW_AT_abstract_origin
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	36                      ; Abbrev [36] 0x7d2:0x28 DW_TAG_inlined_subroutine
	.long	1801                    ; DW_AT_abstract_origin
	.short	.Ltmp2                  ; DW_AT_low_pc
	.long	.Ltmp4-.Ltmp2           ; DW_AT_high_pc
	.byte	5                       ; DW_AT_call_file
	.byte	15                      ; DW_AT_call_line
	.byte	21                      ; DW_AT_call_column
	.byte	37                      ; Abbrev [37] 0x7e0:0x5 DW_TAG_formal_parameter
	.long	1815                    ; DW_AT_abstract_origin
	.byte	36                      ; Abbrev [36] 0x7e5:0x14 DW_TAG_inlined_subroutine
	.long	1766                    ; DW_AT_abstract_origin
	.short	.Ltmp2                  ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp2           ; DW_AT_high_pc
	.byte	4                       ; DW_AT_call_file
	.byte	36                      ; DW_AT_call_line
	.byte	17                      ; DW_AT_call_column
	.byte	37                      ; Abbrev [37] 0x7f3:0x5 DW_TAG_formal_parameter
	.long	1786                    ; DW_AT_abstract_origin
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	36                      ; Abbrev [36] 0x7fa:0x28 DW_TAG_inlined_subroutine
	.long	1865                    ; DW_AT_abstract_origin
	.short	.Ltmp4                  ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp4           ; DW_AT_high_pc
	.byte	5                       ; DW_AT_call_file
	.byte	16                      ; DW_AT_call_line
	.byte	20                      ; DW_AT_call_column
	.byte	37                      ; Abbrev [37] 0x808:0x5 DW_TAG_formal_parameter
	.long	1879                    ; DW_AT_abstract_origin
	.byte	36                      ; Abbrev [36] 0x80d:0x14 DW_TAG_inlined_subroutine
	.long	1830                    ; DW_AT_abstract_origin
	.short	.Ltmp4                  ; DW_AT_low_pc
	.long	.Ltmp5-.Ltmp4           ; DW_AT_high_pc
	.byte	4                       ; DW_AT_call_file
	.byte	36                      ; DW_AT_call_line
	.byte	17                      ; DW_AT_call_column
	.byte	37                      ; Abbrev [37] 0x81b:0x5 DW_TAG_formal_parameter
	.long	1850                    ; DW_AT_abstract_origin
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
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
