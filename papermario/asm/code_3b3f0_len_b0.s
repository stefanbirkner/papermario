
.section .text8005FFF0, "ax"

/* 03B3F0 8005FFF0 02261025 */  or    $v0, $s1, $a2
/* 03B3F4 8005FFF4 0801801E */  j     func_80060078
/* 03B3F8 8005FFF8 00000000 */   nop   

/* 03B3FC 8005FFFC 1082000E */  beq   $a0, $v0, .L80060038
/* 03B400 80060000 02261025 */   or    $v0, $s1, $a2
/* 03B404 80060004 0801801E */  j     func_80060078
/* 03B408 80060008 00000000 */   nop   

/* 03B40C 8006000C 3C03800B */  lui   $v1, 0x800b
/* 03B410 80060010 00651821 */  addu  $v1, $v1, $a1
/* 03B414 80060014 90631D49 */  lbu   $v1, 0x1d49($v1)
/* 03B418 80060018 24020002 */  addiu $v0, $zero, 2
/* 03B41C 8006001C 14620016 */  bne   $v1, $v0, .L80060078
/* 03B420 80060020 02261025 */   or    $v0, $s1, $a2
/* 03B424 80060024 3C01800B */  lui   $at, 0x800b
/* 03B428 80060028 00250821 */  addu  $at, $at, $a1
/* 03B42C 8006002C A0221D47 */  sb    $v0, 0x1d47($at)
/* 03B430 80060030 0801801E */  j     func_80060078
/* 03B434 80060034 00000000 */   nop   

.L80060038:
/* 03B438 80060038 3C01800B */  lui   $at, 0x800b
/* 03B43C 8006003C 00250821 */  addu  $at, $at, $a1
/* 03B440 80060040 A0221D47 */  sb    $v0, 0x1d47($at)
/* 03B444 80060044 3C02800B */  lui   $v0, 0x800b
/* 03B448 80060048 00451021 */  addu  $v0, $v0, $a1
/* 03B44C 8006004C 90421D49 */  lbu   $v0, 0x1d49($v0)
/* 03B450 80060050 14440006 */  bne   $v0, $a0, .L8006006C
/* 03B454 80060054 00000000 */   nop   
/* 03B458 80060058 3C01800B */  lui   $at, 0x800b
/* 03B45C 8006005C 00250821 */  addu  $at, $at, $a1
/* 03B460 80060060 A0231D48 */  sb    $v1, 0x1d48($at)
/* 03B464 80060064 0801801E */  j     func_80060078
/* 03B468 80060068 00000000 */   nop   

.L8006006C:
/* 03B46C 8006006C 3C01800B */  lui   $at, 0x800b
/* 03B470 80060070 00250821 */  addu  $at, $at, $a1
/* 03B474 80060074 A0201D48 */  sb    $zero, 0x1d48($at)
func_80060078:
.L80060078:
/* 03B478 80060078 0C018250 */  jal   osSetIntMask
/* 03B47C 8006007C 00E0202D */   daddu $a0, $a3, $zero
/* 03B480 80060080 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03B484 80060084 8FB10014 */  lw    $s1, 0x14($sp)
/* 03B488 80060088 8FB00010 */  lw    $s0, 0x10($sp)
/* 03B48C 8006008C 03E00008 */  jr    $ra
/* 03B490 80060090 27BD0020 */   addiu $sp, $sp, 0x20

/* 03B494 80060094 00000000 */  nop   
/* 03B498 80060098 00000000 */  nop   
/* 03B49C 8006009C 00000000 */  nop   