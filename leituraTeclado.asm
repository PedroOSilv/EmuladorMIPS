main:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        jal     readChar
        nop

        sb      $21,24($fp)
        lb      $21,24($fp)
        nop
        move    $4,$21
        jal     printChar
        nop

        move    $21,$0
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        jr      $31
        nop

printChar:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        move    $21,$4
        sb      $21,8($fp)
        lbu     $21,8($fp)
        ori $v0, $zero, 11
        add $a0, $21, $zero
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
        lw      $21,8($fp)
        ori $v0, $zero, 4
        add $a0, $21, $zero
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
readChar:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        li $v0, 12
        syscall  
move $21, $v0
        sw      $21,8($fp)
        lw      $21,8($fp)
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        jr      $31