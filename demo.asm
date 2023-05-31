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
        move    $2,$sp
        sw      $2,120($fp)
        li      $2,3                        # 0x3
        sw      $2,52($fp)
        sw      $0,48($fp)
        li      $2,11                 # 0xb
        sw      $2,56($fp)
        sw      $0,44($fp)
        li      $2,67                 # 0x43
        sb      $2,84($fp)
        li      $2,111                  # 0x6f
        sb      $2,85($fp)
        li      $2,110                  # 0x6e
        sb      $2,86($fp)
        li      $2,115                  # 0x73
        sb      $2,87($fp)
        li      $2,101                  # 0x65
        sb      $2,88($fp)
        li      $2,103                  # 0x67
        sb      $2,89($fp)
        li      $2,117                  # 0x75
        sb      $2,90($fp)
        li      $2,105                  # 0x69
        sb      $2,91($fp)
        li      $2,117                  # 0x75
        sb      $2,92($fp)
        li      $2,33                 # 0x21
        sb      $2,93($fp)
        li      $2,10                 # 0xa
        sb      $2,94($fp)
        lw      $17,52($fp)
        lw      $3,52($fp)
        addiu   $2,$17,-1
        sw      $2,60($fp)
        move    $2,$17
        move    $15,$2
        move    $14,$0
        srl     $2,$15,27
        sll     $4,$14,5
        or      $4,$2,$4
        sll     $5,$15,5
        move    $2,$17
        sll     $16,$2,2
        addiu   $2,$3,-1
        sw      $2,64($fp)
        move    $2,$17
        sw      $2,116($fp)
        sw      $0,112($fp)
        sw      $3,124($fp)
        move    $2,$3
        sw      $2,108($fp)
        sw      $0,104($fp)
        lw      $5,116($fp)
        lw      $4,112($fp)
        move    $3,$4
        lw      $15,108($fp)
        lw      $14,104($fp)
        move    $2,$15
        mul     $3,$3,$2
        sw      $15,108($fp)
        sw      $14,104($fp)
        move    $2,$14
        move    $15,$5
        move    $14,$4
        move    $4,$15
        mul     $2,$2,$4
        addu    $4,$3,$2
        move    $3,$15
        lw      $14,108($fp)
        multu   $3,$14
        mflo    $3
        mfhi    $2
        addu    $4,$4,$2
        move    $2,$4
        srl     $4,$3,27
        sll     $12,$2,5
        or      $12,$4,$12
        sll     $13,$3,5
        move    $2,$17
        move    $23,$2
        move    $22,$0
        lw      $5,124($fp)
        move    $2,$5
        move    $21,$2
        move    $20,$0
        mul     $3,$22,$21
        mul     $2,$20,$23
        addu    $4,$3,$2
        multu   $23,$21
        mflo    $3
        mfhi    $2
        addu    $4,$4,$2
        move    $2,$4
        srl     $4,$3,27
        sll     $10,$2,5
        or      $10,$4,$10
        sll     $11,$3,5
        move    $3,$17
        move    $2,$5
        mul     $2,$3,$2
        sll     $2,$2,2
        addiu   $2,$2,7
        srl     $2,$2,3
        sll     $2,$2,3
        subu    $sp,$sp,$2
        addiu   $2,$sp,16
        addiu   $2,$2,3
        srl     $2,$2,2
        sll     $2,$2,2
        sw      $2,68($fp)
        lw      $2,52($fp)
        mul     $2,$2,$2
        addiu   $3,$2,-1
        sw      $3,72($fp)
        move    $3,$2
        move    $19,$3
        move    $18,$0
        srl     $3,$19,27
        sll     $8,$18,5
        or      $8,$3,$8
        sll     $9,$19,5
        move    $3,$2
        move    $25,$3
        move    $24,$0
        srl     $3,$25,27
        sll     $6,$24,5
        or      $6,$3,$6
        sll     $7,$25,5
        sll     $2,$2,2
        addiu   $2,$2,7
        srl     $2,$2,3
        sll     $2,$2,3
        subu    $sp,$sp,$2
        addiu   $2,$sp,16
        addiu   $2,$2,3
        srl     $2,$2,2
        sll     $2,$2,2
        sw      $2,76($fp)
        sw      $0,40($fp)
        li      $2,1                        # 0x1
        sw      $2,36($fp)
        lw      $2,76($fp)
        li      $3,49                 # 0x31
        sw      $3,0($2)
        lw      $2,76($fp)
        li      $3,50                 # 0x32
        sw      $3,4($2)
        lw      $2,76($fp)
        li      $3,51                 # 0x33
        sw      $3,8($2)
        lw      $2,76($fp)
        li      $3,32                 # 0x20
        sw      $3,12($2)
        lw      $2,76($fp)
        li      $3,52                 # 0x34
        sw      $3,16($2)
        lw      $2,76($fp)
        li      $3,54                 # 0x36
        sw      $3,20($2)
        lw      $2,76($fp)
        li      $3,55                 # 0x37
        sw      $3,24($2)
        lw      $2,76($fp)
        li      $3,53                 # 0x35
        sw      $3,28($2)
        lw      $2,76($fp)
        li      $3,56                 # 0x38
        sw      $3,32($2)
        sw      $0,32($fp)
        b       .L2
.L5:
        sw      $0,28($fp)
        b       .L3
.L4:
        srl     $5,$16,2
        lw      $3,76($fp)
        lw      $2,48($fp)
        sll     $2,$2,2
        addu    $2,$3,$2
        lw      $3,0($2)
        lw      $4,68($fp)
        lw      $2,32($fp)
        mul     $5,$5,$2
        lw      $2,28($fp)
        addu    $2,$5,$2
        sll     $2,$2,2
        addu    $2,$4,$2
        sw      $3,0($2)
        lw      $2,48($fp)
        addiu   $2,$2,1
        sw      $2,48($fp)
        lw      $2,28($fp)
        addiu   $2,$2,1
        sw      $2,28($fp)
.L3:
        lw      $3,28($fp)
        lw      $2,52($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L4
        lw      $2,32($fp)
        addiu   $2,$2,1
        sw      $2,32($fp)
.L2:
        lw      $3,32($fp)
        lw      $2,52($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L5
        sw      $0,24($fp)
        b       .L6
.L9:
        sw      $0,20($fp)
        b       .L7
.L8:
        srl     $4,$16,2
        lw      $3,68($fp)
        lw      $2,24($fp)
        mul     $4,$4,$2
        lw      $2,20($fp)
        addu    $2,$4,$2
        sll     $2,$2,2
        addu    $2,$3,$2
        lw      $2,0($2)
        andi    $2,$2,0x00ff
        move    $4,$2
        jal     guardv0Print
        li      $4,32                 # 0x20
        jal     guardv0Print
        lw      $2,20($fp)
        addiu   $2,$2,1
        sw      $2,20($fp)
.L7:
        lw      $3,20($fp)
        lw      $2,52($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L8
        li      $4,10                 # 0xa
        jal     guardv0Print
        lw      $2,24($fp)
        addiu   $2,$2,1
        sw      $2,24($fp)
.L6:
        lw      $3,24($fp)
        lw      $2,52($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L9
        b       .L10
.L18:
        addiu   $2,$fp,96
        move    $4,$2
        jal     guardv0Read
        lw      $3,96($fp)
        li      $2,97                 # 0x61
        bne     $3,$2,.L11
        lw      $2,40($fp)
        blez    $2,.L12
        srl     $3,$16,2
        lw      $2,36($fp)
        mul     $3,$3,$2
        lw      $2,40($fp)
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $6,$3,$2
        srl     $4,$16,2
        lw      $2,40($fp)
        addiu   $2,$2,-1
        lw      $3,36($fp)
        mul     $3,$4,$3
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $2,$3,$2
        move    $5,$2
        move    $4,$6
        jal     guardv0Troca
        lw      $2,40($fp)
        addiu   $2,$2,-1
        sw      $2,40($fp)
        b       .L12
.L11:
        lw      $3,96($fp)
        li      $2,100                  # 0x64
        bne     $3,$2,.L13
        lw      $2,52($fp)
        addiu   $2,$2,-1
        lw      $3,40($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L12
        srl     $3,$16,2
        lw      $2,36($fp)
        mul     $3,$3,$2
        lw      $2,40($fp)
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $6,$3,$2
        srl     $4,$16,2
        lw      $2,40($fp)
        addiu   $2,$2,1
        lw      $3,36($fp)
        mul     $3,$4,$3
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $2,$3,$2
        move    $5,$2
        move    $4,$6
        jal     guardv0Troca
        lw      $2,40($fp)
        addiu   $2,$2,1
        sw      $2,40($fp)
        b       .L12
.L13:
        lw      $3,96($fp)
        li      $2,119                  # 0x77
        bne     $3,$2,.L14
        lw      $2,36($fp)
        blez    $2,.L12
        srl     $3,$16,2
        lw      $2,36($fp)
        addiu   $2,$2,-1
        mul     $3,$3,$2
        lw      $2,40($fp)
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $4,$3,$2
        srl     $3,$16,2
        lw      $2,36($fp)
        mul     $3,$3,$2
        lw      $2,40($fp)
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $2,$3,$2
        move    $5,$2
        jal     guardv0Troca
        lw      $2,36($fp)
        addiu   $2,$2,-1
        sw      $2,36($fp)
        b       .L12
.L14:
        lw      $3,96($fp)
        li      $2,115                  # 0x73
        bne     $3,$2,.L12
        lw      $2,52($fp)
        addiu   $2,$2,-1
        lw      $3,36($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L12
        srl     $3,$16,2
        lw      $2,36($fp)
        addiu   $2,$2,1
        mul     $3,$3,$2
        lw      $2,40($fp)
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $4,$3,$2
        srl     $3,$16,2
        lw      $2,36($fp)
        mul     $3,$3,$2
        lw      $2,40($fp)
        addu    $2,$3,$2
        sll     $2,$2,2
        lw      $3,68($fp)
        addu    $2,$3,$2
        move    $5,$2
        jal     guardv0Troca
        lw      $2,36($fp)
        addiu   $2,$2,1
        sw      $2,36($fp)
.L12:
        lw      $2,68($fp)
        addiu   $3,$fp,80
        lw      $6,52($fp)
        move    $5,$2
        move    $4,$3
        jal     guardv0VerificaVetor
        lw      $3,80($fp)
        li      $2,8                        # 0x8
        bne     $3,$2,.L15
        li      $2,1                        # 0x1
        sw      $2,44($fp)
        sw      $0,16($fp)
        b       .L16
.L17:
        lw      $2,16($fp)
        addiu   $3,$fp,16
        addu    $2,$3,$2
        lbu     $2,68($2)
        move    $4,$2
        jal     guardv0Print
        lw      $2,16($fp)
        addiu   $2,$2,1
        sw      $2,16($fp)
.L16:
        lw      $3,16($fp)
        lw      $2,56($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L17
.L15:
        li      $4,10                 # 0xa
        jal     guardv0Print
.L10:
        lw      $2,44($fp)
        beq     $2,$0,.L18
        addi $v0,$zero,10
syscall
        move    $2,$0
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
        jr      $31
guardv0Print:
        addiu   $sp,$sp,-24
        sw      $31,20($sp)
        sw      $fp,16($sp)
        move    $fp,$sp
        move    $2,$4
        sb      $2,24($fp)
        sw $2, 0($sp)

        lbu     $2,24($fp)
        move    $4,$2
        jal     printChar
        lw $2, 0($sp)

        nop
        move    $sp,$fp
        lw      $31,20($sp)
        lw      $fp,16($sp)
        addiu   $sp,$sp,24
        jr      $31
guardv0Troca:
        addiu   $sp,$sp,-24
        sw      $31,20($sp)
        sw      $fp,16($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        sw $2, 0($sp)

        lw      $5,28($fp)
        lw      $4,24($fp)
        jal     troca
        lw $2, 0($sp)

        nop
        move    $sp,$fp
        lw      $31,20($sp)
        lw      $fp,16($sp)
        addiu   $sp,$sp,24
        jr      $31
guardv0Read:
        addiu   $sp,$sp,-24
        sw      $31,20($sp)
        sw      $fp,16($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw $2, 0($sp)

        jal     readChar
        move    $3,$2
        lw      $2,24($fp)
        sw      $3,0($2)
        lw $2, 0($sp)

        nop
        move    $sp,$fp
        lw      $31,20($sp)
        lw      $fp,16($sp)
        addiu   $sp,$sp,24
        jr      $31
guardv0VerificaVetor:
        addiu   $sp,$sp,-24
        sw      $31,20($sp)
        sw      $fp,16($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        sw      $6,32($fp)
        sw $2, 0($sp)

        lw      $5,32($fp)
        lw      $4,28($fp)
        jal     verificaVetor
        move    $3,$2
        lw      $2,24($fp)
        sw      $3,0($2)
        lw $2, 0($sp)

        move    $2,$0
        move    $sp,$fp
        lw      $31,20($sp)
        lw      $fp,16($sp)
        addiu   $sp,$sp,24
        jr      $31
printChar:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        move    $2,$4
        sb      $2,8($fp)
        lbu     $2,8($fp)
        sw $3, 0($sp)
add $3,$zero,$2
ori $v0, $zero, 11
        add $a0, $3, $zero
syscall
lw $3, 0($sp)
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
        lw      $2,16($fp)
        lw      $2,0($2)
        sw      $2,0($fp)
        lw      $2,20($fp)
        lw      $3,0($2)
        lw      $2,16($fp)
        sw      $3,0($2)
        lw      $2,20($fp)
        lw      $3,0($fp)
        sw      $3,0($2)
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
move $2, $v0
        sw      $2,16($fp)
        li      $4,10                 # 0xa
        jal     guardv0Print
        li      $4,10                 # 0xa
        jal     guardv0Print
        lw      $2,16($fp)
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
        sll     $2,$8,5
        or      $2,$5,$2
        sll     $3,$9,5
        move    $2,$4
        sll     $2,$2,2
        addiu   $2,$2,7
        srl     $2,$2,3
        sll     $2,$2,3
        subu    $sp,$sp,$2
        addiu   $2,$sp,16
        addiu   $2,$2,3
        srl     $2,$2,2
        sll     $2,$2,2
        sw      $2,32($fp)
        sw      $0,24($fp)
        lw      $2,32($fp)
        li      $3,1                        # 0x1
        sw      $3,0($2)
        lw      $2,32($fp)
        li      $3,2                        # 0x2
        sw      $3,4($2)
        lw      $2,32($fp)
        li      $3,3                        # 0x3
        sw      $3,8($2)
        lw      $2,32($fp)
        li      $3,4                        # 0x4
        sw      $3,12($2)
        lw      $2,32($fp)
        li      $3,5                        # 0x5
        sw      $3,16($2)
        lw      $2,32($fp)
        li      $3,6                        # 0x6
        sw      $3,20($2)
        lw      $2,32($fp)
        li      $3,7                        # 0x7
        sw      $3,24($2)
        lw      $2,32($fp)
        li      $3,8                        # 0x8
        sw      $3,28($2)
        sw      $0,20($fp)
        b       .L30
        nop

.L35:
        sw      $0,16($fp)
        b       .L31
        nop

.L34:
        lw      $3,20($fp)
        move    $2,$3
        sll     $2,$2,1
        addu    $2,$2,$3
        sll     $2,$2,2
        move    $3,$2
        lw      $2,64($fp)
        addu    $3,$2,$3
        lw      $2,16($fp)
        sll     $2,$2,2
        addu    $2,$3,$2
        lw      $3,0($2)
        li      $2,32                 # 0x20
        beq     $3,$2,.L32
        nop

        lw      $3,20($fp)
        move    $2,$3
        sll     $2,$2,1
        addu    $2,$2,$3
        sll     $2,$2,2
        move    $3,$2
        lw      $2,64($fp)
        addu    $3,$2,$3
        lw      $2,16($fp)
        sll     $2,$2,2
        addu    $2,$3,$2
        lw      $2,0($2)
        sb      $2,36($fp)
        lbu     $2,36($fp)
        addiu   $2,$2,-48
        sw      $2,40($fp)
        lbu     $2,36($fp)
        move    $4,$2
        jal     printChar
        nop

        lw      $3,32($fp)
        lw      $2,24($fp)
        sll     $2,$2,2
        addu    $2,$3,$2
        lw      $2,0($2)
        lw      $3,40($fp)
        bne     $3,$2,.L33
        nop

        lw      $2,24($fp)
        addiu   $2,$2,1
        sw      $2,24($fp)
        b       .L33
        nop

.L32:
        li      $4,32                 # 0x20
        jal     guardv0Print
        nop

.L33:
        li      $4,32                 # 0x20
        jal     guardv0Print
        nop

        lw      $2,16($fp)
        addiu   $2,$2,1
        sw      $2,16($fp)
.L31:
        lw      $3,16($fp)
        lw      $2,68($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L34
        nop

        li      $4,10                 # 0xa
        jal     guardv0Print
        nop

        lw      $2,20($fp)
        addiu   $2,$2,1
        sw      $2,20($fp)
.L30:
        lw      $3,20($fp)
        lw      $2,68($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L35
        nop

        lw      $2,24($fp)
        move    $sp,$16
        move    $sp,$fp
        lw      $31,60($sp)
        lw      $fp,56($sp)
        lw      $16,52($sp)
        addiu   $sp,$sp,64
        jr      $31
        nop