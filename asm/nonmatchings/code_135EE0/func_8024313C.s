.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024313C
/* 13647C 8024313C 3C028016 */  lui       $v0, %hi(D_80159D50)
/* 136480 80243140 24429D50 */  addiu     $v0, $v0, %lo(D_80159D50)
/* 136484 80243144 00042140 */  sll       $a0, $a0, 5
/* 136488 80243148 00822021 */  addu      $a0, $a0, $v0
/* 13648C 8024314C 9083001C */  lbu       $v1, 0x1c($a0)
/* 136490 80243150 8FA5002C */  lw        $a1, 0x2c($sp)
/* 136494 80243154 28620010 */  slti      $v0, $v1, 0x10
/* 136498 80243158 50400006 */  beql      $v0, $zero, .L80243174
/* 13649C 8024315C ACA00000 */   sw       $zero, ($a1)
/* 1364A0 80243160 00031900 */  sll       $v1, $v1, 4
/* 1364A4 80243164 240200FF */  addiu     $v0, $zero, 0xff
/* 1364A8 80243168 00431023 */  subu      $v0, $v0, $v1
/* 1364AC 8024316C 03E00008 */  jr        $ra
/* 1364B0 80243170 ACA20000 */   sw       $v0, ($a1)
.L80243174:
/* 1364B4 80243174 90820000 */  lbu       $v0, ($a0)
/* 1364B8 80243178 304200F7 */  andi      $v0, $v0, 0xf7
/* 1364BC 8024317C 34420004 */  ori       $v0, $v0, 4
/* 1364C0 80243180 03E00008 */  jr        $ra
/* 1364C4 80243184 A0820000 */   sb       $v0, ($a0)