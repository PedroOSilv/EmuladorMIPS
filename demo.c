    void printChar(char x); 
    void troca(int *xp, int *yp); 
    int readChar(void);
    int verificaVetor(int tabuleiro[3][3], int n);
    void guardv0Read(int* retorno);
    void guardv0Print(char ch);
    void guardv0Troca(int *a, int*b);
    int guardv0VerificaVetor(int *retorno, int tabuleiro[3][3],int n);
    
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
        msg[10] = 10;

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
                guardv0Print(tabuleiro[i][j]);
                guardv0Print(' ');
            }
            guardv0Print('\n');
        }

        //aqui começa a interação com o usuario
        //usaremos as teclas w, a, s e d, para movimentar o espaço em branco no tabuleiro.
        // w -> cima
        // a -> esquerda
        // d -> direita
        // s -> baixo
        while (conseguiu == 0){
            int comando;
            guardv0Read(&comando);
            // printChar(comando);
            if (comando == 'a'){
                if (pvX>0){
                    guardv0Troca(&tabuleiro[pvY][pvX],&tabuleiro[pvY][pvX-1]);
                    pvX--;
                }
            }else if(comando == 'd'){
                if (pvX<n-1){
                    guardv0Troca(&tabuleiro[pvY][pvX],&tabuleiro[pvY][pvX+1]);
                    pvX++;
                }
            }else if(comando == 'w'){
                if (pvY>0){
                    guardv0Troca(&tabuleiro[pvY-1][pvX],&tabuleiro[pvY][pvX]);
                    pvY--;
                }
            }else if(comando == 's'){
                if (pvY<n-1){
                    guardv0Troca(&tabuleiro[pvY+1][pvX],&tabuleiro[pvY][pvX]);
                    pvY++;
                }
            }

            //imprimir matriz
            guardv0VerificaVetor(&resposta,tabuleiro,n);
            
            if (resposta == 8){
                conseguiu = 1;
                
                for (int i = 0; i < count; i++){
                    guardv0Print(msg[i]);
                }
            }

            guardv0Print('\n');
            
        }
        __asm__(
            "addi $v0,$zero,10\n"
            "syscall"
        );

        return 0;
    }

    void guardv0Print(char ch){
        __asm__(
        "sw $2, 0($sp)\n"
        );

        
        printChar(ch);

        __asm__(
            "lw $2, 0($sp)\n"
        );
    }
    void guardv0Troca(int *a, int*b){
        __asm__(
        "sw $2, 0($sp)\n"
        );

        
        troca(a,b);

        __asm__(
            "lw $2, 0($sp)\n"
        );
    }
    void guardv0Read(int* retorno){
        __asm__(
            "sw $2, 0($sp)\n"
        );

        
        *retorno = readChar();
        

        __asm__(
            "lw $2, 0($sp)\n"
        );
    }
    int guardv0VerificaVetor(int *retorno,int tabuleiro[3][3],int n){
        __asm__(
        "sw $2, 0($sp)\n"
        );
        
        *retorno = verificaVetor(tabuleiro,n);
        __asm__(
        "lw $2, 0($sp)\n"
        );
        return 0;
    }
    void printChar(char x){
        __asm__(
            
            "sw $3, 0($sp)\n"
            "add $3,$zero,%0\n"
            "ori $v0, $zero, 11\n\t"
            "add $a0, $3, $zero\n"
            "syscall\n"
            "lw $3, 0($sp)"         // MIPS system call to print char
            :
            : "r" (x)
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
            : "=r" (input)        // MIPS system call to read char
        );
        guardv0Print(10);
        guardv0Print(10);


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
                    printChar(caractere);
                    if(elemento == correto[c]){
                        c++;
                    }
                }else{
                    guardv0Print(' ');
                }
                
                guardv0Print(' ');
            }
            guardv0Print('\n');
        }
        return c;
    }
