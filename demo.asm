main:
        addiu   $sp,$sp,-176
        sw      $31,172($sp)
        sw      $fp,168($sp)
        sw      $23,164($sp)
        sw      $22,160($sp)
        sw      $21,156($sp)
        sw      $20,152($sp)
        sw      $19,148($sp)
        sw      $18,144($sp)
        sw      $17,140($sp)
        sw      $16,136($sp)
        move    $fp,$sp
        move    $26,$sp
        sw      $26,128($fp)
        li      $26,3                        # 0x3
        sw      $26,60($fp)
        sw      $0,24($fp)
        li      $26,11                 # 0xb
        sw      $26,64($fp)
        sw      $0,28($fp)
        li      $26,67                 # 0x43
        sb      $26,96($fp)
        li      $26,111                  # 0x6f
        sb      $26,97($fp)
        li      $26,110                  # 0x6e
        sb      $26,98($fp)
        li      $26,115                  # 0x73
        sb      $26,99($fp)
        li      $26,101                  # 0x65
        sb      $26,100($fp)
        li      $26,103                  # 0x67
        sb      $26,101($fp)
        li      $26,117                  # 0x75
        sb      $26,102($fp)
        li      $26,105                  # 0x69
        sb      $26,103($fp)
        li      $26,117                  # 0x75
        sb      $26,104($fp)
        li      $26,33                 # 0x21
        sb      $26,105($fp)
        li      $26,10                 # 0xa
        sb      $26,106($fp)
        lw      $17,60($fp)
        lw      $3,60($fp)
        addiu   $26,$17,-1
        sw      $26,68($fp)
        move    $26,$17
        move    $15,$26
        move    $14,$0
        srl     $26,$15,27
        sll     $4,$14,5
        or      $4,$26,$4
        sll     $5,$15,5
        move    $26,$17
        sll     $16,$26,2
        addiu   $26,$3,-1
        sw      $26,72($fp)
        move    $26,$17
        sw      $26,124($fp)
        sw      $0,120($fp)
        sw      $3,132($fp)
        move    $26,$3
        sw      $26,116($fp)
        sw      $0,112($fp)
        lw      $5,124($fp)
        lw      $4,120($fp)
        nop
        move    $3,$4
        lw      $15,116($fp)
        lw      $14,112($fp)
        move    $26,$15
        mult    $3,$26
        mflo    $26
        sw      $15,116($fp)
        sw      $14,112($fp)
        move    $3,$14
        move    $15,$5
        move    $14,$4
        move    $4,$15
        mult    $3,$4
        mflo    $3
        addu    $4,$26,$3
        move    $3,$15
        lw      $14,116($fp)
        nop
        multu   $3,$14
        mflo    $3
        mfhi    $26
        addu    $4,$4,$26
        move    $26,$4
        srl     $4,$3,27
        sll     $12,$26,5
        or      $12,$4,$12
        sll     $13,$3,5
        move    $26,$17
        move    $23,$26
        move    $22,$0
        lw      $5,132($fp)
        nop
        move    $26,$5
        move    $21,$26
        move    $20,$0
        mult    $22,$21
        mflo    $26
        nop
        nop
        mult    $20,$23
        mflo    $3
        addu    $4,$26,$3
        nop
        multu   $23,$21
        mflo    $3
        mfhi    $26
        addu    $4,$4,$26
        move    $26,$4
        srl     $4,$3,27
        sll     $10,$26,5
        or      $10,$4,$10
        sll     $11,$3,5
        move    $3,$17
        move    $26,$5
        mult    $3,$26
        mflo    $26
        sll     $26,$26,2
        addiu   $26,$26,7
        srl     $26,$26,3
        sll     $26,$26,3
        subu    $sp,$sp,$26
        addiu   $26,$sp,16
        addiu   $26,$26,3
        srl     $26,$26,2
        sll     $26,$26,2
        sw      $26,76($fp)
        lw      $26,60($fp)
        nop
        mult    $26,$26
        mflo    $26
        addiu   $3,$26,-1
        sw      $3,80($fp)
        move    $3,$26
        move    $19,$3
        move    $18,$0
        srl     $3,$19,27
        sll     $8,$18,5
        or      $8,$3,$8
        sll     $9,$19,5
        move    $3,$26
        move    $25,$3
        move    $24,$0
        srl     $3,$25,27
        sll     $6,$24,5
        or      $6,$3,$6
        sll     $7,$25,5
        sll     $26,$26,2
        addiu   $26,$26,7
        srl     $26,$26,3
        sll     $26,$26,3
        subu    $sp,$sp,$26
        addiu   $26,$sp,16
        addiu   $26,$26,3
        srl     $26,$26,2
        sll     $26,$26,2
        sw      $26,84($fp)
        sw      $0,32($fp)
        li      $26,1                        # 0x1
        sw      $26,36($fp)
        lw      $26,84($fp)
        li      $3,49                 # 0x31
        sw      $3,0($26)
        lw      $26,84($fp)
        li      $3,50                 # 0x32
        sw      $3,4($26)
        lw      $26,84($fp)
        li      $3,51                 # 0x33
        sw      $3,8($26)
        lw      $26,84($fp)
        li      $3,32                 # 0x20
        sw      $3,12($26)
        lw      $26,84($fp)
        li      $3,52                 # 0x34
        sw      $3,16($26)
        lw      $26,84($fp)
        li      $3,54                 # 0x36
        sw      $3,20($26)
        lw      $26,84($fp)
        li      $3,55                 # 0x37
        sw      $3,24($26)
        lw      $26,84($fp)
        li      $3,53                 # 0x35
        sw      $3,28($26)
        lw      $26,84($fp)
        li      $3,56                 # 0x38
        sw      $3,32($26)
        sw      $0,40($fp)
        b       $L2
        nop

$L5:
        sw      $0,44($fp)
        b       $L3
        nop

$L4:
        srl     $5,$16,2
        lw      $3,84($fp)
        lw      $26,24($fp)
        nop
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $3,0($26)
        lw      $4,76($fp)
        lw      $26,40($fp)
        nop
        mult    $5,$26
        lw      $26,44($fp)
        mflo    $5
        addu    $26,$5,$26
        sll     $26,$26,2
        addu    $26,$4,$26
        sw      $3,0($26)
        lw      $26,24($fp)
        nop
        addiu   $26,$26,1
        sw      $26,24($fp)
        lw      $26,44($fp)
        nop
        addiu   $26,$26,1
        sw      $26,44($fp)
$L3:
        lw      $3,44($fp)
        lw      $26,60($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L4
        nop

        lw      $26,40($fp)
        nop
        addiu   $26,$26,1
        sw      $26,40($fp)
$L2:
        lw      $3,40($fp)
        lw      $26,60($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L5
        nop

        sw      $0,48($fp)
        b       $L6
        nop

$L9:
        sw      $0,52($fp)
        b       $L7
        nop

$L8:
        srl     $4,$16,2
        lw      $3,76($fp)
        lw      $26,48($fp)
        nop
        mult    $4,$26
        lw      $26,52($fp)
        mflo    $4
        addu    $26,$4,$26
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $26,0($26)
        nop
        move    $4,$26
        jal     printChar
        nop

        li      $4,32                 # 0x20
        jal     printChar
        nop

        lw      $26,52($fp)
        nop
        addiu   $26,$26,1
        sw      $26,52($fp)
$L7:
        lw      $3,52($fp)
        lw      $26,60($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L8
        nop

        jal     printNewLine
        nop

        lw      $26,48($fp)
        nop
        addiu   $26,$26,1
        sw      $26,48($fp)
$L6:
        lw      $3,48($fp)
        lw      $26,60($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L9
        nop

        b       $L10
        nop

$L18:
        jal     readChar
        nop

        sb      $26,88($fp)
        lb      $3,88($fp)
        li      $26,97                 # 0x61
        bne     $3,$26,$L11
        nop

        lw      $26,32($fp)
        nop
        blez    $26,$L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        nop
        mult    $3,$26
        lw      $26,32($fp)
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $6,$3,$26
        srl     $4,$16,2
        lw      $26,32($fp)
        nop
        addiu   $26,$26,-1
        lw      $3,36($fp)
        nop
        mult    $4,$3
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $26,$3,$26
        move    $5,$26
        move    $4,$6
        jal     troca
        nop

        lw      $26,32($fp)
        nop
        addiu   $26,$26,-1
        sw      $26,32($fp)
        b       $L12
        nop

$L11:
        lb      $3,88($fp)
        li      $26,100                  # 0x64
        bne     $3,$26,$L13
        nop

        lw      $26,60($fp)
        nop
        addiu   $26,$26,-1
        lw      $3,32($fp)
        nop
        slt     $26,$3,$26
        beq     $26,$0,$L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        nop
        mult    $3,$26
        lw      $26,32($fp)
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $6,$3,$26
        srl     $4,$16,2
        lw      $26,32($fp)
        nop
        addiu   $26,$26,1
        lw      $3,36($fp)
        nop
        mult    $4,$3
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $26,$3,$26
        move    $5,$26
        move    $4,$6
        jal     troca
        nop

        lw      $26,32($fp)
        nop
        addiu   $26,$26,1
        sw      $26,32($fp)
        b       $L12
        nop

$L13:
        lb      $3,88($fp)
        li      $26,119                  # 0x77
        bne     $3,$26,$L14
        nop

        lw      $26,36($fp)
        nop
        blez    $26,$L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        nop
        addiu   $26,$26,-1
        mult    $3,$26
        lw      $26,32($fp)
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $4,$3,$26
        srl     $3,$16,2
        lw      $26,36($fp)
        nop
        mult    $3,$26
        lw      $26,32($fp)
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $26,$3,$26
        move    $5,$26
        jal     troca
        nop

        lw      $26,36($fp)
        nop
        addiu   $26,$26,-1
        sw      $26,36($fp)
        b       $L12
        nop

$L14:
        lb      $3,88($fp)
        li      $26,115                  # 0x73
        bne     $3,$26,$L12
        nop

        lw      $26,60($fp)
        nop
        addiu   $26,$26,-1
        lw      $3,36($fp)
        nop
        slt     $26,$3,$26
        beq     $26,$0,$L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        nop
        addiu   $26,$26,1
        mult    $3,$26
        lw      $26,32($fp)
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $4,$3,$26
        srl     $3,$16,2
        lw      $26,36($fp)
        nop
        mult    $3,$26
        lw      $26,32($fp)
        mflo    $3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,76($fp)
        nop
        addu    $26,$3,$26
        move    $5,$26
        jal     troca
        nop

        lw      $26,36($fp)
        nop
        addiu   $26,$26,1
        sw      $26,36($fp)
$L12:
        lw      $5,60($fp)
        lw      $4,76($fp)
        jal     verificaVetor
        nop

        sw      $26,92($fp)
        lw      $3,92($fp)
        li      $26,8                        # 0x8
        bne     $3,$26,$L15
        nop

        li      $26,1                        # 0x1
        sw      $26,28($fp)
        sw      $0,56($fp)
        b       $L16
        nop

$L17:
        lw      $26,56($fp)
        addiu   $3,$fp,24
        addu    $26,$3,$26
        lb      $26,72($26)
        nop
        move    $4,$26
        jal     printChar
        nop

        lw      $26,56($fp)
        nop
        addiu   $26,$26,1
        sw      $26,56($fp)
$L16:
        lw      $3,56($fp)
        lw      $26,64($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L17
        nop

$L15:
        jal     printNewLine
        nop

$L10:
        lw      $26,28($fp)
        nop
        beq     $26,$0,$L18
        nop

        move    $26,$0
        lw      $sp,128($fp)
        move    $sp,$fp
        lw      $31,172($sp)
        lw      $fp,168($sp)
        lw      $23,164($sp)
        lw      $22,160($sp)
        lw      $21,156($sp)
        lw      $20,152($sp)
        lw      $19,148($sp)
        lw      $18,144($sp)
        lw      $17,140($sp)
        lw      $16,136($sp)
        addiu   $sp,$sp,176
        jr      $31
        nop

printInt:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        sw      $4,8($fp)
        lw      $26,8($fp)
        ori $v0, $zero, 1
        add $a0, $26, $zero
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
        move    $26,$4
        sb      $26,8($fp)
        lbu     $26,8($fp)
        ori $v0, $zero, 11
        add $a0, $26, $zero
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
        lw      $26,8($fp)
        ori $v0, $zero, 4
        add $a0, $26, $zero
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
troca:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        lw      $26,24($fp)
        nop
        lw      $26,0($26)
        nop
        sw      $26,8($fp)
        lw      $26,28($fp)
        nop
        lw      $3,0($26)
        lw      $26,24($fp)
        nop
        sw      $3,0($26)
        lw      $26,28($fp)
        lw      $3,8($fp)
        nop
        sw      $3,0($26)
        nop
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        jr      $31
        nop

readChar:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        li $v0, 12
        syscall  
move $26, $v0
        sw      $26,24($fp)
        jal     printNewLine
        jal     printNewLine
        lw      $26,24($fp)
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        jr      $31
verificaVetor:
        addiu   $sp,$sp,-72
        sw      $31,68($sp)
        sw      $fp,64($sp)
        sw      $16,60($sp)
        move    $fp,$sp
        sw      $4,72($fp)
        sw      $5,76($fp)
        move    $4,$sp
        move    $16,$4
        lw      $4,76($fp)
        nop
        mult    $4,$4
        mflo    $4
        addiu   $4,$4,-1
        addiu   $5,$4,-1
        sw      $5,36($fp)
        move    $5,$4
        move    $11,$5
        move    $10,$0
        srl     $5,$11,27
        sll     $6,$10,5
        or      $6,$5,$6
        sll     $7,$11,5
        move    $5,$4
        move    $9,$5
        move    $8,$0
        srl     $5,$9,27
        sll     $26,$8,5
        or      $26,$5,$26
        sll     $3,$9,5
        move    $26,$4
        sll     $26,$26,2
        addiu   $26,$26,7
        srl     $26,$26,3
        sll     $26,$26,3
        subu    $sp,$sp,$26
        addiu   $26,$sp,16
        addiu   $26,$26,3
        srl     $26,$26,2
        sll     $26,$26,2
        sw      $26,40($fp)
        sw      $0,24($fp)
        lw      $26,40($fp)
        li      $3,1                        # 0x1
        sw      $3,0($26)
        lw      $26,40($fp)
        li      $3,2                        # 0x2
        sw      $3,4($26)
        lw      $26,40($fp)
        li      $3,3                        # 0x3
        sw      $3,8($26)
        lw      $26,40($fp)
        li      $3,4                        # 0x4
        sw      $3,12($26)
        lw      $26,40($fp)
        li      $3,5                        # 0x5
        sw      $3,16($26)
        lw      $26,40($fp)
        li      $3,6                        # 0x6
        sw      $3,20($26)
        lw      $26,40($fp)
        li      $3,7                        # 0x7
        sw      $3,24($26)
        lw      $26,40($fp)
        li      $3,8                        # 0x8
        sw      $3,28($26)
        sw      $0,28($fp)
        b       $L28
        nop

$L33:
        sw      $0,32($fp)
        b       $L29
        nop

$L32:
        lw      $3,28($fp)
        nop
        move    $26,$3
        sll     $26,$26,1
        addu    $26,$26,$3
        sll     $26,$26,2
        move    $3,$26
        lw      $26,72($fp)
        nop
        addu    $3,$26,$3
        lw      $26,32($fp)
        nop
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $3,0($26)
        li      $26,32                 # 0x20
        beq     $3,$26,$L30
        nop

        lw      $3,28($fp)
        nop
        move    $26,$3
        sll     $26,$26,1
        addu    $26,$26,$3
        sll     $26,$26,2
        move    $3,$26
        lw      $26,72($fp)
        nop
        addu    $3,$26,$3
        lw      $26,32($fp)
        nop
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $26,0($26)
        nop
        sb      $26,44($fp)
        lb      $26,44($fp)
        nop
        addiu   $26,$26,-48
        sw      $26,48($fp)
        lw      $4,48($fp)
        jal     printInt
        nop

        lw      $3,40($fp)
        lw      $26,24($fp)
        nop
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $26,0($26)
        lw      $3,48($fp)
        nop
        bne     $3,$26,$L31
        nop

        lw      $26,24($fp)
        nop
        addiu   $26,$26,1
        sw      $26,24($fp)
        b       $L31
        nop

$L30:
        li      $4,32                 # 0x20
        jal     printChar
        nop

$L31:
        li      $4,32                 # 0x20
        jal     printChar
        nop

        lw      $26,32($fp)
        nop
        addiu   $26,$26,1
        sw      $26,32($fp)
$L29:
        lw      $3,32($fp)
        lw      $26,76($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L32
        nop

        jal     printNewLine
        nop

        lw      $26,28($fp)
        nop
        addiu   $26,$26,1
        sw      $26,28($fp)
$L28:
        lw      $3,28($fp)
        lw      $26,76($fp)
        nop
        slt     $26,$3,$26
        bne     $26,$0,$L33
        nop

        lw      $26,24($fp)
        move    $sp,$16
        move    $sp,$fp
        lw      $31,68($sp)
        lw      $fp,64($sp)
        lw      $16,60($sp)
        addiu   $sp,$sp,72
        jr      $31
        nop