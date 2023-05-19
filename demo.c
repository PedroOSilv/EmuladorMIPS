int main(void) {
    int n = 3;
    int tabuleiro[n][n];

    //quando compilo no compiler explorer mudo a utilização dos registradores $2
    //devido ao fato de o syscall usar este mesmo registrador
    //então compilo para gerar o código mips e mudo todos os registradores de $2 para $20
    for (int i=0; i<n; i++ ){
        for (int j=0; j<n; j++ ){
            tabuleiro[i][j] = i+j;
        }
    }
    

    for (int i=0; i<n; i++ ){
        for (int j=0; j<n; j++ ){
            printInt(tabuleiro[i][j]);
            printChar(' ');
        }
        printNewLine();
    }

    return 0;
}

void printInt(int x){
    __asm__(
        "ori $v0, $zero, 1\n\t"
        "add $a0, %0, $zero\n"
        "syscall"         // MIPS system call to print integer
        :
        : "r" (x)
    );
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

