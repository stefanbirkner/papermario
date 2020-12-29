.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240708_9C3018
/* 9C3018 80240708 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 9C301C 8024070C AFBF0014 */  sw        $ra, 0x14($sp)
/* 9C3020 80240710 AFB00010 */  sw        $s0, 0x10($sp)
/* 9C3024 80240714 8C900084 */  lw        $s0, 0x84($a0)
/* 9C3028 80240718 8602004C */  lh        $v0, 0x4c($s0)
/* 9C302C 8024071C 44826000 */  mtc1      $v0, $f12
/* 9C3030 80240720 00000000 */  nop       
/* 9C3034 80240724 0C00A8BB */  jal       sin_deg
/* 9C3038 80240728 46806320 */   cvt.s.w  $f12, $f12
/* 9C303C 8024072C 3C013F80 */  lui       $at, 0x3f80
/* 9C3040 80240730 44811000 */  mtc1      $at, $f2
/* 9C3044 80240734 00000000 */  nop       
/* 9C3048 80240738 46020000 */  add.s     $f0, $f0, $f2
/* 9C304C 8024073C 46000000 */  add.s     $f0, $f0, $f0
/* 9C3050 80240740 C6020024 */  lwc1      $f2, 0x24($s0)
/* 9C3054 80240744 8602004C */  lh        $v0, 0x4c($s0)
/* 9C3058 80240748 46001080 */  add.s     $f2, $f2, $f0
/* 9C305C 8024074C 24420008 */  addiu     $v0, $v0, 8
/* 9C3060 80240750 44826000 */  mtc1      $v0, $f12
/* 9C3064 80240754 00000000 */  nop       
/* 9C3068 80240758 46806320 */  cvt.s.w   $f12, $f12
/* 9C306C 8024075C 0C00A6C9 */  jal       clamp_angle
/* 9C3070 80240760 E6020004 */   swc1     $f2, 4($s0)
/* 9C3074 80240764 4600010D */  trunc.w.s $f4, $f0
/* 9C3078 80240768 44022000 */  mfc1      $v0, $f4
/* 9C307C 8024076C 00000000 */  nop       
/* 9C3080 80240770 A602004C */  sh        $v0, 0x4c($s0)
/* 9C3084 80240774 3C028011 */  lui       $v0, %hi(gPlayerStatus)
/* 9C3088 80240778 2442EFC8 */  addiu     $v0, $v0, %lo(gPlayerStatus)
/* 9C308C 8024077C C44C0028 */  lwc1      $f12, 0x28($v0)
/* 9C3090 80240780 C44E0030 */  lwc1      $f14, 0x30($v0)
/* 9C3094 80240784 8E060018 */  lw        $a2, 0x18($s0)
/* 9C3098 80240788 0C00A7B5 */  jal       dist2D
/* 9C309C 8024078C 8E070020 */   lw       $a3, 0x20($s0)
/* 9C30A0 80240790 3C0141F0 */  lui       $at, 0x41f0
/* 9C30A4 80240794 44811000 */  mtc1      $at, $f2
/* 9C30A8 80240798 00000000 */  nop       
/* 9C30AC 8024079C 4602003E */  c.le.s    $f0, $f2
/* 9C30B0 802407A0 00000000 */  nop       
/* 9C30B4 802407A4 45000002 */  bc1f      .L802407B0
/* 9C30B8 802407A8 24020003 */   addiu    $v0, $zero, 3
/* 9C30BC 802407AC A602004E */  sh        $v0, 0x4e($s0)
.L802407B0:
/* 9C30C0 802407B0 8E020054 */  lw        $v0, 0x54($s0)
/* 9C30C4 802407B4 C6000018 */  lwc1      $f0, 0x18($s0)
/* 9C30C8 802407B8 8C42000C */  lw        $v0, 0xc($v0)
/* 9C30CC 802407BC E4400004 */  swc1      $f0, 4($v0)
/* 9C30D0 802407C0 8E020054 */  lw        $v0, 0x54($s0)
/* 9C30D4 802407C4 C6000004 */  lwc1      $f0, 4($s0)
/* 9C30D8 802407C8 8C42000C */  lw        $v0, 0xc($v0)
/* 9C30DC 802407CC E4400008 */  swc1      $f0, 8($v0)
/* 9C30E0 802407D0 8E020054 */  lw        $v0, 0x54($s0)
/* 9C30E4 802407D4 C6000020 */  lwc1      $f0, 0x20($s0)
/* 9C30E8 802407D8 8C42000C */  lw        $v0, 0xc($v0)
/* 9C30EC 802407DC E440000C */  swc1      $f0, 0xc($v0)
/* 9C30F0 802407E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 9C30F4 802407E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 9C30F8 802407E8 0000102D */  daddu     $v0, $zero, $zero
/* 9C30FC 802407EC 03E00008 */  jr        $ra
/* 9C3100 802407F0 27BD0018 */   addiu    $sp, $sp, 0x18