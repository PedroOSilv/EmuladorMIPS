    void printInt(int x);
    void printChar(char x);
    void printString(char x[]);
    void printNewLine();
    void troca(int *xp, int *yp);
    int readChar(void);
    int verificaVetor(int tabuleiro[3][3], int n);
    
    void guardv0( int (*fptr)(void), int* retorno )
    {
        __asm__(
            "sw $2, 0($sp)\n"
        );
        *retorno = fptr();
        __asm__(
            "lw $2, 0($sp)\n"
        );
    }
    
    
    int main(void) {
        int n = 3;
        int c = 0;
        int resposta;
        int count = 11;
        int conseguiu = 0;
        char msg[11];
        msg[0] = 'C';
        msg[1] = 'o';
        msg[2] = 'n';
        msg[3] = 's';
        msg[4] = 'e';
        msg[5] = 'g';
        msg[6] = 'u';
        msg[7] = 'i';
        msg[8] = 'u';
        msg[9] = '!';
        msg[10] = '\n';


        int tabuleiro[n][n];
        int setInicial[n*n];
        int pvX = 0;
        int pvY = 1;

        setInicial[0] = '1';
        setInicial[1] = '2';
        setInicial[2] = '3';
        setInicial[3] = ' ';
        setInicial[4] = '4';
        setInicial[5] = '6';
        setInicial[6] = '7';
        setInicial[7] = '5';
        setInicial[8] = '8';

        //quando compilo no compiler explorer mudo a utilização dos registradores $2
        //devido ao fato de o syscall usar este mesmo registrador
        //então compilo para gerar o código mips e mudo todos os registradores de $2 para $26


        //fazer ajuste no final da main no demo.asm para interromper a execução do programa

        for (int i=0; i<n; i++ ){
            for (int j=0; j<n; j++ ){
                // tabuleiro[i][j] = i+j;
                tabuleiro[i][j] = setInicial[c];
                c++;
            }
        }
        

        for (int i=0; i<n; i++ ){
            for (int j=0; j<n; j++ ){
                printChar(tabuleiro[i][j]);
                printChar(' ');
            }
            printNewLine();
        }

        //aqui começa a interação com o usuario
        //usaremos as teclas w, a, s e d, para movimentar o espaço em branco no tabuleiro.
        // w -> cima
        // a -> esquerda
        // d -> direita
        // s -> baixo
        while (conseguiu == 0){
            int comando;
            guardv0(readChar, &comando);
            // printChar(comando);
            if (comando == 'a'){
                if (pvX>0){
                    troca(&tabuleiro[pvY][pvX],&tabuleiro[pvY][pvX-1]);
                    pvX--;
                }
            }else if(comando == 'd'){
                if (pvX<n-1){
                    troca(&tabuleiro[pvY][pvX],&tabuleiro[pvY][pvX+1]);
                    pvX++;
                }
            }else if(comando == 'w'){
                if (pvY>0){
                    troca(&tabuleiro[pvY-1][pvX],&tabuleiro[pvY][pvX]);
                    pvY--;
                }
            }else if(comando == 's'){
                if (pvY<n-1){
                    troca(&tabuleiro[pvY+1][pvX],&tabuleiro[pvY][pvX]);
                    pvY++;
                }
            }

            //imprimir matriz
            resposta =verificaVetor(tabuleiro,n);
            
            if (resposta == 8){
                conseguiu = 1;
                
                for (int i = 0; i < count; i++){
                    printChar(msg[i]);
                }
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

    void troca(int *xp, int *yp)
    {
        int temp = *xp;
        *xp = *yp;
        *yp = temp;
    }

    int readChar(void){
        int input;

        __asm__(
            "\n"
            "li $v0, 12\n\t"
            "syscall  \n"
            "move %0, $v0"
            : "=r" (input)        // MIPS system call to print integer
        );
        printNewLine();
        printNewLine();


        return input;
    }

    int verificaVetor(int tabuleiro[3][3], int n){
        int correto[(n*n)-1];
        int c = 0;
        char caractere;
        int elemento;
        correto[0] = 1;
        correto[1] = 2;
        correto[2] = 3;
        correto[3] = 4;
        correto[4] = 5;
        correto[5] = 6;
        correto[6] = 7;
        correto[7] = 8;

        for (int i=0; i<n; i++ ){
            for (int j=0; j<n; j++ ){
                if (tabuleiro[i][j] != ' '){
                    caractere = tabuleiro[i][j];
                    elemento = caractere - '0';
                    printInt(elemento);
                    if(elemento == correto[c]){
                        c++;
                    }
                }else{
                    printChar(' ');
                }
                
                printChar(' ');
            }
            printNewLine();
        }
        return c;
    }

