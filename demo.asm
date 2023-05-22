main:
        addiu   $sp,$sp,-168
        sw      $31,164($sp)
        sw      $fp,160($sp)
        sw      $23,156($sp)
        sw      $22,152($sp)
        sw      $21,148($sp)
        sw      $20,144($sp)
        sw      $19,140($sp)
        sw      $18,136($sp)
        sw      $17,132($sp)
        sw      $16,128($sp)
        move    $fp,$sp
        move    $26,$sp
        sw      $26,120($fp)
        li      $26,3                        # 0x3
        sw      $26,52($fp)
        sw      $0,48($fp)
        li      $26,11                 # 0xb
        sw      $26,56($fp)
        sw      $0,44($fp)
        li      $26,67                 # 0x43
        sb      $26,88($fp)
        li      $26,111                  # 0x6f
        sb      $26,89($fp)
        li      $26,110                  # 0x6e
        sb      $26,90($fp)
        li      $26,115                  # 0x73
        sb      $26,91($fp)
        li      $26,101                  # 0x65
        sb      $26,92($fp)
        li      $26,103                  # 0x67
        sb      $26,93($fp)
        li      $26,117                  # 0x75
        sb      $26,94($fp)
        li      $26,105                  # 0x69
        sb      $26,95($fp)
        li      $26,117                  # 0x75
        sb      $26,96($fp)
        li      $26,33                 # 0x21
        sb      $26,97($fp)
        li      $26,10                 # 0xa
        sb      $26,98($fp)
        lw      $17,52($fp)
        lw      $3,52($fp)
        addiu   $26,$17,-1
        sw      $26,60($fp)
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
        sw      $26,64($fp)
        move    $26,$17
        sw      $26,116($fp)
        sw      $0,112($fp)
        sw      $3,124($fp)
        move    $26,$3
        sw      $26,108($fp)
        sw      $0,104($fp)
        lw      $5,116($fp)
        lw      $4,112($fp)
        move    $3,$4
        lw      $15,108($fp)
        lw      $14,104($fp)
        move    $26,$15
        mul     $3,$3,$26
        sw      $15,108($fp)
        sw      $14,104($fp)
        move    $26,$14
        move    $15,$5
        move    $14,$4
        move    $4,$15
        mul     $26,$26,$4
        addu    $4,$3,$26
        move    $3,$15
        lw      $14,108($fp)
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
        lw      $5,124($fp)
        move    $26,$5
        move    $21,$26
        move    $20,$0
        mul     $3,$22,$21
        mul     $26,$20,$23
        addu    $4,$3,$26
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
        mul     $26,$3,$26
        sll     $26,$26,2
        addiu   $26,$26,7
        srl     $26,$26,3
        sll     $26,$26,3
        subu    $sp,$sp,$26
        addiu   $26,$sp,16
        addiu   $26,$26,3
        srl     $26,$26,2
        sll     $26,$26,2
        sw      $26,68($fp)
        lw      $26,52($fp)
        mul     $26,$26,$26
        addiu   $3,$26,-1
        sw      $3,72($fp)
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
        sw      $26,76($fp)
        sw      $0,40($fp)
        li      $26,1                        # 0x1
        sw      $26,36($fp)
        lw      $26,76($fp)
        li      $3,49                 # 0x31
        sw      $3,0($26)
        lw      $26,76($fp)
        li      $3,50                 # 0x32
        sw      $3,4($26)
        lw      $26,76($fp)
        li      $3,51                 # 0x33
        sw      $3,8($26)
        lw      $26,76($fp)
        li      $3,32                 # 0x20
        sw      $3,12($26)
        lw      $26,76($fp)
        li      $3,52                 # 0x34
        sw      $3,16($26)
        lw      $26,76($fp)
        li      $3,54                 # 0x36
        sw      $3,20($26)
        lw      $26,76($fp)
        li      $3,55                 # 0x37
        sw      $3,24($26)
        lw      $26,76($fp)
        li      $3,53                 # 0x35
        sw      $3,28($26)
        lw      $26,76($fp)
        li      $3,56                 # 0x38
        sw      $3,32($26)
        sw      $0,32($fp)
        b       .L2
        nop

.L5:
        sw      $0,28($fp)
        b       .L3
        nop

.L4:
        srl     $5,$16,2
        lw      $3,76($fp)
        lw      $26,48($fp)
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $3,0($26)
        lw      $4,68($fp)
        lw      $26,32($fp)
        mul     $5,$5,$26
        lw      $26,28($fp)
        addu    $26,$5,$26
        sll     $26,$26,2
        addu    $26,$4,$26
        sw      $3,0($26)
        lw      $26,48($fp)
        addiu   $26,$26,1
        sw      $26,48($fp)
        lw      $26,28($fp)
        addiu   $26,$26,1
        sw      $26,28($fp)
.L3:
        lw      $3,28($fp)
        lw      $26,52($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L4
        nop

        lw      $26,32($fp)
        addiu   $26,$26,1
        sw      $26,32($fp)
.L2:
        lw      $3,32($fp)
        lw      $26,52($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L5
        nop

        sw      $0,24($fp)
        b       .L6
        nop

.L9:
        sw      $0,20($fp)
        b       .L7
        nop

.L8:
        srl     $4,$16,2
        lw      $3,68($fp)
        lw      $26,24($fp)
        mul     $4,$4,$26
        lw      $26,20($fp)
        addu    $26,$4,$26
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $26,0($26)
        move    $4,$26
        jal     printChar
        nop

        li      $4,32                 # 0x20
        jal     printChar
        nop

        lw      $26,20($fp)
        addiu   $26,$26,1
        sw      $26,20($fp)
.L7:
        lw      $3,20($fp)
        lw      $26,52($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L8
        nop

        jal     printNewLine
        nop

        lw      $26,24($fp)
        addiu   $26,$26,1
        sw      $26,24($fp)
.L6:
        lw      $3,24($fp)
        lw      $26,52($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L9
        nop

        b       .L10
        nop

.L18:
        jal     readChar
        nop

        sb      $26,80($fp)
        lbu     $3,80($fp)
        li      $26,97                 # 0x61
        bne     $3,$26,.L11
        nop

        lw      $26,40($fp)
        blez    $26,.L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        mul     $3,$3,$26
        lw      $26,40($fp)
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $6,$3,$26
        srl     $4,$16,2
        lw      $26,40($fp)
        addiu   $26,$26,-1
        lw      $3,36($fp)
        mul     $3,$4,$3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $26,$3,$26
        move    $5,$26
        move    $4,$6
        jal     troca
        nop

        lw      $26,40($fp)
        addiu   $26,$26,-1
        sw      $26,40($fp)
        b       .L12
        nop

.L11:
        lbu     $3,80($fp)
        li      $26,100                  # 0x64
        bne     $3,$26,.L13
        nop

        lw      $26,52($fp)
        addiu   $26,$26,-1
        lw      $3,40($fp)
        slt     $26,$3,$26
        beq     $26,$0,.L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        mul     $3,$3,$26
        lw      $26,40($fp)
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $6,$3,$26
        srl     $4,$16,2
        lw      $26,40($fp)
        addiu   $26,$26,1
        lw      $3,36($fp)
        mul     $3,$4,$3
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $26,$3,$26
        move    $5,$26
        move    $4,$6
        jal     troca
        nop

        lw      $26,40($fp)
        addiu   $26,$26,1
        sw      $26,40($fp)
        b       .L12
        nop

.L13:
        lbu     $3,80($fp)
        li      $26,119                  # 0x77
        bne     $3,$26,.L14
        nop

        lw      $26,36($fp)
        blez    $26,.L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        addiu   $26,$26,-1
        mul     $3,$3,$26
        lw      $26,40($fp)
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $4,$3,$26
        srl     $3,$16,2
        lw      $26,36($fp)
        mul     $3,$3,$26
        lw      $26,40($fp)
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $26,$3,$26
        move    $5,$26
        jal     troca
        nop

        lw      $26,36($fp)
        addiu   $26,$26,-1
        sw      $26,36($fp)
        b       .L12
        nop

.L14:
        lbu     $3,80($fp)
        li      $26,115                  # 0x73
        bne     $3,$26,.L12
        nop

        lw      $26,52($fp)
        addiu   $26,$26,-1
        lw      $3,36($fp)
        slt     $26,$3,$26
        beq     $26,$0,.L12
        nop

        srl     $3,$16,2
        lw      $26,36($fp)
        addiu   $26,$26,1
        mul     $3,$3,$26
        lw      $26,40($fp)
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $4,$3,$26
        srl     $3,$16,2
        lw      $26,36($fp)
        mul     $3,$3,$26
        lw      $26,40($fp)
        addu    $26,$3,$26
        sll     $26,$26,2
        lw      $3,68($fp)
        addu    $26,$3,$26
        move    $5,$26
        jal     troca
        nop

        lw      $26,36($fp)
        addiu   $26,$26,1
        sw      $26,36($fp)
.L12:
        lw      $26,68($fp)
        lw      $5,52($fp)
        move    $4,$26
        jal     verificaVetor
        nop

        sw      $26,84($fp)
        lw      $3,84($fp)
        li      $26,8                        # 0x8
        bne     $3,$26,.L15
        nop

        li      $26,1                        # 0x1
        sw      $26,44($fp)
        sw      $0,16($fp)
        b       .L16
        nop

.L17:
        lw      $26,16($fp)
        addiu   $3,$fp,16
        addu    $26,$3,$26
        lbu     $26,72($26)
        move    $4,$26
        jal     printChar
        nop

        lw      $26,16($fp)
        addiu   $26,$26,1
        sw      $26,16($fp)
.L16:
        lw      $3,16($fp)
        lw      $26,56($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L17
        nop

.L15:
        jal     printNewLine
        nop

.L10:
        lw      $26,44($fp)
        beq     $26,$0,.L18
        nop

        move    $26,$0
        lw      $sp,120($fp)
        move    $sp,$fp
        lw      $31,164($sp)
        lw      $fp,160($sp)
        lw      $23,156($sp)
        lw      $22,152($sp)
        lw      $21,148($sp)
        lw      $20,144($sp)
        lw      $19,140($sp)
        lw      $18,136($sp)
        lw      $17,132($sp)
        lw      $16,128($sp)
        addiu   $sp,$sp,168
        addi    $v0, $zero, 10
        syscall

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
        addiu   $sp,$sp,-16
        sw      $fp,12($sp)
        move    $fp,$sp
        sw      $4,16($fp)
        sw      $5,20($fp)
        lw      $26,16($fp)
        lw      $26,0($26)
        sw      $26,0($fp)
        lw      $26,20($fp)
        lw      $3,0($26)
        lw      $26,16($fp)
        sw      $3,0($26)
        lw      $26,20($fp)
        lw      $3,0($fp)
        sw      $3,0($26)
        nop
        move    $sp,$fp
        lw      $fp,12($sp)
        addiu   $sp,$sp,16
        jr      $31
        nop

readChar:
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        li $v0, 12
        syscall  
move $26, $v0
        sw      $26,16($fp)
        jal     printNewLine
        jal     printNewLine
        lw      $26,16($fp)
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        jr      $31
verificaVetor:
        addiu   $sp,$sp,-64
        sw      $31,60($sp)
        sw      $fp,56($sp)
        sw      $16,52($sp)
        move    $fp,$sp
        sw      $4,64($fp)
        sw      $5,68($fp)
        move    $4,$sp
        move    $16,$4
        lw      $4,68($fp)
        mul     $4,$4,$4
        addiu   $4,$4,-1
        addiu   $5,$4,-1
        sw      $5,28($fp)
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
        sw      $26,32($fp)
        sw      $0,24($fp)
        lw      $26,32($fp)
        li      $3,1                        # 0x1
        sw      $3,0($26)
        lw      $26,32($fp)
        li      $3,2                        # 0x2
        sw      $3,4($26)
        lw      $26,32($fp)
        li      $3,3                        # 0x3
        sw      $3,8($26)
        lw      $26,32($fp)
        li      $3,4                        # 0x4
        sw      $3,12($26)
        lw      $26,32($fp)
        li      $3,5                        # 0x5
        sw      $3,16($26)
        lw      $26,32($fp)
        li      $3,6                        # 0x6
        sw      $3,20($26)
        lw      $26,32($fp)
        li      $3,7                        # 0x7
        sw      $3,24($26)
        lw      $26,32($fp)
        li      $3,8                        # 0x8
        sw      $3,28($26)
        sw      $0,20($fp)
        b       .L28
        nop

.L33:
        sw      $0,16($fp)
        b       .L29
        nop

.L32:
        lw      $3,20($fp)
        move    $26,$3
        sll     $26,$26,1
        addu    $26,$26,$3
        sll     $26,$26,2
        move    $3,$26
        lw      $26,64($fp)
        addu    $3,$26,$3
        lw      $26,16($fp)
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $3,0($26)
        li      $26,32                 # 0x20
        beq     $3,$26,.L30
        nop

        lw      $3,20($fp)
        move    $26,$3
        sll     $26,$26,1
        addu    $26,$26,$3
        sll     $26,$26,2
        move    $3,$26
        lw      $26,64($fp)
        addu    $3,$26,$3
        lw      $26,16($fp)
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $26,0($26)
        sb      $26,36($fp)
        lbu     $26,36($fp)
        addiu   $26,$26,-48
        sw      $26,40($fp)
        lw      $4,40($fp)
        jal     printInt
        nop

        lw      $3,32($fp)
        lw      $26,24($fp)
        sll     $26,$26,2
        addu    $26,$3,$26
        lw      $26,0($26)
        lw      $3,40($fp)
        bne     $3,$26,.L31
        nop

        lw      $26,24($fp)
        addiu   $26,$26,1
        sw      $26,24($fp)
        b       .L31
        nop

.L30:
        li      $4,32                 # 0x20
        jal     printChar
        nop

.L31:
        li      $4,32                 # 0x20
        jal     printChar
        nop

        lw      $26,16($fp)
        addiu   $26,$26,1
        sw      $26,16($fp)
.L29:
        lw      $3,16($fp)
        lw      $26,68($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L32
        nop

        jal     printNewLine
        nop

        lw      $26,20($fp)
        addiu   $26,$26,1
        sw      $26,20($fp)
.L28:
        lw      $3,20($fp)
        lw      $26,68($fp)
        slt     $26,$3,$26
        bne     $26,$0,.L33
        nop

        lw      $26,24($fp)
        move    $sp,$16
        move    $sp,$fp
        lw      $31,60($sp)
        lw      $fp,56($sp)
        lw      $16,52($sp)
        addiu   $sp,$sp,64
        jr      $31
        nop