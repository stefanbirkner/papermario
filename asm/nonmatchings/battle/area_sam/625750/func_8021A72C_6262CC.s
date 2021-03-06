.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8021A72C_6262CC
/* 6262CC 8021A72C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 6262D0 8021A730 AFB10014 */  sw        $s1, 0x14($sp)
/* 6262D4 8021A734 0080882D */  daddu     $s1, $a0, $zero
/* 6262D8 8021A738 AFBF0020 */  sw        $ra, 0x20($sp)
/* 6262DC 8021A73C AFB3001C */  sw        $s3, 0x1c($sp)
/* 6262E0 8021A740 AFB20018 */  sw        $s2, 0x18($sp)
/* 6262E4 8021A744 AFB00010 */  sw        $s0, 0x10($sp)
/* 6262E8 8021A748 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 6262EC 8021A74C 8E30000C */  lw        $s0, 0xc($s1)
/* 6262F0 8021A750 8E050000 */  lw        $a1, ($s0)
/* 6262F4 8021A754 0C0B1EAF */  jal       get_variable
/* 6262F8 8021A758 26100004 */   addiu    $s0, $s0, 4
/* 6262FC 8021A75C 3C036666 */  lui       $v1, 0x6666
/* 626300 8021A760 34636667 */  ori       $v1, $v1, 0x6667
/* 626304 8021A764 00430018 */  mult      $v0, $v1
/* 626308 8021A768 000217C3 */  sra       $v0, $v0, 0x1f
/* 62630C 8021A76C 3C0140C9 */  lui       $at, 0x40c9
/* 626310 8021A770 34210FD0 */  ori       $at, $at, 0xfd0
/* 626314 8021A774 44810000 */  mtc1      $at, $f0
/* 626318 8021A778 00003810 */  mfhi      $a3
/* 62631C 8021A77C 00071883 */  sra       $v1, $a3, 2
/* 626320 8021A780 00621823 */  subu      $v1, $v1, $v0
/* 626324 8021A784 44836000 */  mtc1      $v1, $f12
/* 626328 8021A788 00000000 */  nop
/* 62632C 8021A78C 46806320 */  cvt.s.w   $f12, $f12
/* 626330 8021A790 46006302 */  mul.s     $f12, $f12, $f0
/* 626334 8021A794 00000000 */  nop
/* 626338 8021A798 3C0143B4 */  lui       $at, 0x43b4
/* 62633C 8021A79C 44810000 */  mtc1      $at, $f0
/* 626340 8021A7A0 3C014100 */  lui       $at, 0x4100
/* 626344 8021A7A4 44811000 */  mtc1      $at, $f2
/* 626348 8021A7A8 46006303 */  div.s     $f12, $f12, $f0
/* 62634C 8021A7AC 46026302 */  mul.s     $f12, $f12, $f2
/* 626350 8021A7B0 00000000 */  nop
/* 626354 8021A7B4 8E120000 */  lw        $s2, ($s0)
/* 626358 8021A7B8 26100004 */  addiu     $s0, $s0, 4
/* 62635C 8021A7BC 8E130000 */  lw        $s3, ($s0)
/* 626360 8021A7C0 0C00A85B */  jal       sin_rad
/* 626364 8021A7C4 8E100004 */   lw       $s0, 4($s0)
/* 626368 8021A7C8 0220202D */  daddu     $a0, $s1, $zero
/* 62636C 8021A7CC 3C014120 */  lui       $at, 0x4120
/* 626370 8021A7D0 44811000 */  mtc1      $at, $f2
/* 626374 8021A7D4 0240282D */  daddu     $a1, $s2, $zero
/* 626378 8021A7D8 46020502 */  mul.s     $f20, $f0, $f2
/* 62637C 8021A7DC 00000000 */  nop
/* 626380 8021A7E0 0C0B2026 */  jal       set_variable
/* 626384 8021A7E4 0000302D */   daddu    $a2, $zero, $zero
/* 626388 8021A7E8 0220202D */  daddu     $a0, $s1, $zero
/* 62638C 8021A7EC 4600A10D */  trunc.w.s $f4, $f20
/* 626390 8021A7F0 44062000 */  mfc1      $a2, $f4
/* 626394 8021A7F4 0C0B2026 */  jal       set_variable
/* 626398 8021A7F8 0260282D */   daddu    $a1, $s3, $zero
/* 62639C 8021A7FC 0220202D */  daddu     $a0, $s1, $zero
/* 6263A0 8021A800 0200282D */  daddu     $a1, $s0, $zero
/* 6263A4 8021A804 0C0B2026 */  jal       set_variable
/* 6263A8 8021A808 0000302D */   daddu    $a2, $zero, $zero
/* 6263AC 8021A80C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 6263B0 8021A810 8FB3001C */  lw        $s3, 0x1c($sp)
/* 6263B4 8021A814 8FB20018 */  lw        $s2, 0x18($sp)
/* 6263B8 8021A818 8FB10014 */  lw        $s1, 0x14($sp)
/* 6263BC 8021A81C 8FB00010 */  lw        $s0, 0x10($sp)
/* 6263C0 8021A820 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 6263C4 8021A824 24020002 */  addiu     $v0, $zero, 2
/* 6263C8 8021A828 03E00008 */  jr        $ra
/* 6263CC 8021A82C 27BD0030 */   addiu    $sp, $sp, 0x30
