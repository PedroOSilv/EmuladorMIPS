
int main(void){
    char c;
    char name[] = "insira um caracter: ";

    printString(name);
    c = readChar();
    printChar(c);
    
}

void printChar(char x){
    __asm__(
        "ori $v0, $zero, 11\n\t"
        "add $a0, %0, $zero\n"
        "syscall"         // MIPS system call to print integer
        :
        : "r" (x)
    );
}

void printString(char x[]){
    __asm__(
        "ori $v0, $zero, 4\n\t"
        "add $a0, %0, $zero\n"
        "syscall"         // MIPS system call to print integer
        :
        : "r" (x)
    );
}
void printNewLine(){
    __asm__(
        "ori $v0, $zero, 11\n\t"
        "addi $a0, $zero, 10 \n"
        "syscall"         // MIPS system call to print integer
    );
}

int readChar(void){
    int input;
    __asm__(
        "li $v0, 12\n\t"
        "syscall  \n"
        "move %0, $v0"
        : "=r" (input)        // MIPS system call to print integer
    );

    return input;

}

