main:
        addiu   $sp,$sp,-80
        sw      $31,76($sp)
        sw      $fp,72($sp)
        sw      $19,68($sp)
        sw      $18,64($sp)
        sw      $17,60($sp)
        sw      $16,56($sp)
        move    $fp,$sp
        move    $16,$sp
        move    $19,$16
        li      $16,3                 # 0x3
        sw      $16,40($fp)
        lw      $16,40($fp)
        lw      $17,40($fp)
        addiu   $18,$16,-1
        sw      $18,44($fp)
        move    $18,$16
        move    $25,$18
        move    $24,$0
        srl     $18,$25,27
        sll     $20,$24,5
        or      $20,$18,$20
        sll     $3,$25,5
        move    $20,$16
        sll     $18,$20,2
        addiu   $20,$17,-1
        sw      $20,48($fp)
        move    $20,$16
        move    $15,$20
        move    $14,$0
        move    $20,$17
        move    $13,$20
        move    $12,$0
        mult    $14,$13
        mflo    $20
        nop
        nop
        mult    $12,$15
        mflo    $3
        addu    $24,$20,$3
        nop
        multu   $15,$13
        mflo    $3
        mfhi    $20
        addu    $12,$24,$20
        move    $20,$12
        srl     $12,$3,27
        sll     $6,$20,5
        or      $6,$12,$6
        sll     $7,$3,5
        move    $20,$16
        move    $11,$20
        move    $10,$0
        move    $20,$17
        move    $9,$20
        move    $8,$0
        mult    $10,$9
        mflo    $20
        nop
        nop
        mult    $8,$11
        mflo    $3
        addu    $6,$20,$3
        nop
        multu   $11,$9
        mflo    $3
        mfhi    $20
        addu    $6,$6,$20
        move    $20,$6
        srl     $6,$3,27
        sll     $4,$20,5
        or      $4,$6,$4
        sll     $5,$3,5
        move    $3,$16
        move    $20,$17
        mult    $3,$20
        mflo    $20
        sll     $20,$20,2
        addiu   $20,$20,7
        srl     $20,$20,3
        sll     $20,$20,3
        subu    $sp,$sp,$20
        addiu   $20,$sp,16
        addiu   $20,$20,3
        srl     $20,$20,2
        sll     $20,$20,2
        sw      $20,52($fp)
        sw      $0,24($fp)
        b       $L2
        nop

$L5:
        sw      $0,28($fp)
        b       $L3
        nop

$L4:
        srl     $5,$18,2
        lw      $3,24($fp)
        lw      $20,28($fp)
        nop
        addu    $3,$3,$20
        lw      $4,52($fp)
        lw      $20,24($fp)
        nop
        mult    $5,$20
        lw      $20,28($fp)
        mflo    $5
        addu    $20,$5,$20
        sll     $20,$20,2
        addu    $20,$4,$20
        sw      $3,0($20)
        lw      $20,28($fp)
        nop
        addiu   $20,$20,1
        sw      $20,28($fp)
$L3:
        lw      $3,28($fp)
        lw      $20,40($fp)
        nop
        slt     $20,$3,$20
        bne     $20,$0,$L4
        nop

        lw      $20,24($fp)
        nop
        addiu   $20,$20,1
        sw      $20,24($fp)
$L2:
        lw      $3,24($fp)
        lw      $20,40($fp)
        nop
        slt     $20,$3,$20
        bne     $20,$0,$L5
        nop

        sw      $0,32($fp)
        b       $L6
        nop

$L9:
        sw      $0,36($fp)
        b       $L7
        nop

$L8:
        srl     $4,$18,2
        lw      $3,52($fp)
        lw      $20,32($fp)
        nop
        mult    $4,$20
        lw      $20,36($fp)
        mflo    $4
        addu    $20,$4,$20
        sll     $20,$20,2
        addu    $20,$3,$20
        lw      $20,0($20)
        nop
        move    $4,$20
        jal     printInt
        nop

        li      $4,32                 # 0x20
        jal     printChar
        nop

        lw      $20,36($fp)
        nop
        addiu   $20,$20,1
        sw      $20,36($fp)
$L7:
        lw      $3,36($fp)
        lw      $20,40($fp)
        nop
        slt     $20,$3,$20
        bne     $20,$0,$L8
        nop

        jal     printNewLine
        nop

        lw      $20,32($fp)
        nop
        addiu   $20,$20,1
        sw      $20,32($fp)
$L6:
        lw      $3,32($fp)
        lw      $20,40($fp)
        nop
        slt     $20,$3,$20
        bne     $20,$0,$L9
        nop

        move    $20,$0
        move    $sp,$19
        move    $sp,$fp
        lw      $31,76($sp)
        lw      $fp,72($sp)
        lw      $19,68($sp)
        lw      $18,64($sp)
        lw      $17,60($sp)
        lw      $16,56($sp)
        addiu   $sp,$sp,80
        jr      $31
        nop

printInt:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        sw      $4,8($fp)
        lw      $20,8($fp)
        ori $v0, $zero, 1
        add $a0, $20, $zero
syscall
        nop
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $31
printChar:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        move    $20,$4
        sb      $20,8($fp)
        lbu     $20,8($fp)
        ori $v0, $zero, 11
        add $a0, $20, $zero
syscall
        nop
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $31
printString:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        sw      $4,8($fp)
        lw      $20,8($fp)
        ori $v0, $zero, 4
        add $a0, $20, $zero
syscall
        nop
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $31
printNewLine:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        ori $v0, $zero, 11
        addi $a0, $zero, 10 
syscall
        nop
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $31