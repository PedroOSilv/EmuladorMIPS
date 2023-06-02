// #[1] a instrucao mul (0x1C) eh uma instrucao I, porem requer 3 registradores
// achei que era um pseudointrucao, porem no MARS esta como se fosse e o binario gerado a inclui,
// decidi implementar mesmo assim por compatibilidade com a demo
// #[2] algo parecido ocorre com multu, que eh uma multiplicacao unsigned
// de apenas dois registradores, porem eh considerada um operacao R
#include <cstdio>
#include <cstdlib>
#include "Emulador.h"

word PC;
word HI;
word LO;
word REG[32] = {0};
word &V0 = REG[2];
word &V1 = REG[3];
word &A0 = REG[4];
word &A1 = REG[5];
word &A2 = REG[6];
word &A3 = REG[7];
word &GP = REG[28];
word &SP = REG[29];
word &RA = REG[31];
byte MEM[16384] = {0};

int main(int argc, char const *argv[])
{
    if(argc != 3){
        printf("Usage: %s <text.bin> <data.bin>\n", argv[0]);
        return 1;
    }

    if(!load_mem(argv[1], argv[2])){
        printf("Error loading memory\n");
        return 1;
    }

    word instruction;
    PC = 0x00000000;
    HI = 0x00000000;
    LO = 0x00000000;
    GP = 0x1800;
    SP = 0x00003ffc;

    while (true)
    {
        if(SP < 0x00003000){
            printf("Stack overflow\n");
            break;
        }

        // busca a instrução, big endian
        instruction = MEM[PC];
        instruction |= MEM[PC + 1] << 8;
        instruction |= MEM[PC + 2] << 16;
        instruction |= MEM[PC + 3] << 24;

        // executa a instrução
        if(PC > 0x00003ffc){
            break;
        }
        else{
            execute(instruction);
        }
    }

    print_reg_mem();

    return 0;
}

inline void execute(word instruction){
    // extrai o opcode
    byte opcode = (unsigned)instruction >> 26;

    // identifica o tipo de instrução
    switch (opcode)
    {
    case 0:
        // instruções do tipo R
        R_inst(instruction);
        break;
    case 2:
        // j
        PC = (instruction & 0x03FFFFFF) << 2;
        break;
    case 3:
        // jal
        RA = PC + 4;
        PC = (instruction & 0x03FFFFFF) << 2;
        break;
    default:
        // instruções do tipo I
        I_inst(instruction, opcode);
        // incrementa o PC
        PC += 4;
        break;
    }

}

void R_inst(word instruction){
    // extrai os campos
    byte rs = (instruction >> 21) & 0x1F;
    byte rt = (instruction >> 16) & 0x1F;
    byte rd = (instruction >> 11) & 0x1F;
    byte shamt = (instruction >> 6) & 0x1F;
    byte funct = instruction & 0x3F;

    switch (funct)
    {
    case 0x00:
        // sll
        REG[rd] = (unsigned)REG[rt] << shamt;
        break;
    case 0x02:
        // srl
        REG[rd] = (unsigned)REG[rt] >> shamt;
        break;
    case 0x03:
        // sra
        REG[rd] = (int)REG[rt] >> shamt;
        break;
    case 0x08:
        // jr
        PC = REG[rs];
        break;
    case 0x0C:
        // syscall
        syscall();
        break;
    case 0x10:
        // mfhi
        REG[rd] = HI;
        break;
    case 0x12:
        // mflo
        REG[rd] = LO;
        break;
    case 0x18:
        // mult
        LO = REG[rs] * REG[rt];
        HI = ((int64_t)REG[rs] * (int64_t)REG[rt]) >> 32;
        break;
    case 0x1A:
        // div
        LO = REG[rs] / REG[rt];
        HI = REG[rs] % REG[rt];
        break;
    case 0x19:
        // multu, ver nota #[2]
        LO = (unsigned)REG[rs] * (unsigned)REG[rt];
        HI = ((uint64_t)REG[rs] * (uint64_t)REG[rt]) >> 32;
        break;
    case 0x20:
        // add
        REG[rd] = REG[rs] + REG[rt];
        break;
    case 0x21:
        // addu
        REG[rd] = (unsigned)REG[rs] + (unsigned)REG[rt];
        break;
    case 0x22:
        // sub
        REG[rd] = REG[rs] - REG[rt];
        break;
    case 0x23:
        // subu
        REG[rd] = (unsigned)REG[rs] - (unsigned)REG[rt];
        break;
    case 0x24:
        // and
        REG[rd] = REG[rs] & REG[rt];
        break;
    case 0x25:
        // or
        REG[rd] = REG[rs] | REG[rt];
        break;
    case 0x27:
        // nor
        REG[rd] = !(REG[rs] | REG[rt]);
    case 0x2A:
        //slt
        REG[rd] = REG[rs] < REG[rt];
        break;
    default:
       printf("R type opcode nao reconhecido: PC: %d %08X %X\n", PC, instruction, funct);
    }

    if(funct != 0x08){
        // incrementa o PC
        PC += 4;
    }
}

void I_inst(word instruction, byte opcode){
    // extrai os campos
    byte rs = (instruction >> 21) & 0x1F;
    byte rt = (instruction >> 16) & 0x1F;
    word temp_rs;
    word &mul_res = temp_rs;
    int16_t immediate = instruction & 0xFFFF;

    // identifica o tipo de instrução
    switch (opcode)
    {
    case 0x01:
        //bqez
        if(REG[rs] >+ 0){
          PC += immediate << 2;
        }
    case 0x04:
        // beq
        if(REG[rs] == REG[rt]){
            PC += immediate << 2;
        }
        break;
    case 0x05:
        // bne
        if(REG[rs] != REG[rt]){
            PC += immediate << 2;
        }
        break;
    case 0x06:
        // blez
        if(REG[rs] <= 0){
            PC += immediate << 2;
        }
        break;
    case 0x08:
        // addi
        REG[rt] = REG[rs] + immediate;
        break;
    case 0x09:
        // addiu
        REG[rt] = (unsigned)REG[rs] + (unsigned)immediate;
        break;
    case 0x0A:
        // slti
        REG[rt] = REG[rs] < immediate;
        break;
    case 0x0B:
        // sltiu
        REG[rt] = (unsigned)REG[rs] < (unsigned)immediate;
        break;
    case 0x0C:
        // andi
        REG[rt] = REG[rs] & immediate;
        break;
    case 0x0D:
        // ori
        REG[rt] = REG[rs] | immediate;
        break;
    case 0x0F:
        // lui
        REG[rt] = immediate;
        break;
    case 0x1C:
        // mul $0, $1, $2; mult $1 e $2, escreve HIGH em $0, ver nota em #[1]
        mul_res = (instruction >> 11) & 0x1F;
        LO = REG[mul_res] = REG[rt] * REG[rs];
        HI = ((int64_t)REG[rs] * (int64_t)REG[rt]) >> 32;
        break;
    case 0x23:
        // lw
        temp_rs = REG[rs];
        REG[rt] = MEM[temp_rs + immediate] << 24;
        REG[rt] |= MEM[temp_rs + immediate + 1] << 16;
        REG[rt] |= MEM[temp_rs + immediate + 2] << 8;
        REG[rt] |= MEM[temp_rs + immediate + 3];
        break;
    case 0x21:
        // lh
        temp_rs = REG[rs];
        REG[rt] = MEM[temp_rs + immediate] << 8;
        REG[rt] |= MEM[temp_rs + immediate + 1];
        break;
    case 0x20:
        // lb
        REG[rt] = MEM[REG[rs] + immediate];
        break;    
    case 0x24:
        // lbu
        REG[rt] = (unsigned)MEM[REG[rs] + immediate];
        break;
    case 0x2B:
        // sw
        MEM[REG[rs] + immediate] = (unsigned)REG[rt] >> 24;
        MEM[REG[rs] + immediate + 1] = (REG[rt] >> 16) & 0xFF;
        MEM[REG[rs] + immediate + 2] = (REG[rt] >> 8) & 0xFF;
        MEM[REG[rs] + immediate + 3] = REG[rt] & 0xFF;
        break;
    case 0x29:
        // sh
        MEM[REG[rs] + immediate] = REG[rt] >> 8;
        MEM[REG[rs] + immediate + 1] = REG[rt];
        break;
    case 0x28:
        // sb
        MEM[REG[rs] + immediate] = REG[rt];
        break;
    default:
       printf("I type opcode nao reconhecido: PC: %d %08X %X\n", PC, instruction, opcode);
    }
}

inline void syscall(){
    word addr = A0;

    switch (REG[2])
    {
        case 1:
            // print integer
            printf("%d", A0);
            break;
        case 4:
        {
            // print string
            byte c;
            while((c = MEM[addr++]) != '\0')
                printf("%c", c);
            
            break;
        }
        case 5:
            // read integer
            scanf("%d", &V0);
            break;
        case 8:
            // read string
            scanf("%s", MEM + A0);
            break;
        case 10:
            // exit
            print_reg_mem();
            exit(0);
            break;
        case 11:
            // print character
            printf("%c", A0);
            break;
        case 12:
            // read character
            char c;
            scanf("%c", &c);
            V0 = (int)c;
            break;
        case 34:
            // print integer in hexadecimal
            printf("%x", A0);
            break;
        case 35:
            // print integer in binary
            for(int i = 0; i < (int)sizeof(word); i++)
                printf("%d", (A0 >> i) & 1);
            break;
        case 36:
            // print integer as unsigned
            printf("%u", A0);
            break;
        default:
            break;
    }
}

inline bool load_mem(char const* text, char const* data){
    FILE *text_file = fopen(text, "rb"); //até 4KB
    FILE *data_file = fopen(data, "rb"); //até 4KB

    int text_size, data_size;
    FILE * file_end;

    file_end = fopen(text, "rb");
    fseek(file_end, 0, SEEK_END);
    text_size = ftell(file_end);
    fclose(file_end);

    file_end = fopen(data, "rb");
    fseek(file_end, 0, SEEK_END);
    data_size = ftell(file_end);
    fclose(file_end);

    if(text_file == NULL || data_file == NULL){
        printf("Error opening files\n");
        return 0;
    }

    // inicializa a memória de texto
    fread(MEM, sizeof(byte), text_size, text_file);
    fread(MEM + 0x2000, sizeof(byte), data_size, data_file);
    fclose(text_file);
    fclose(data_file);

    return 1;
}

inline void print_reg_mem(){
    word i;

    for(i = 0; i < 32; i++){
        printf("$%d\t%d\n", i, REG[i]);
    }
    for(i = 0; i < 1024; i++){
        printf("Mem[%x] 0x%x\t0x%x\t0x%x\t0x%x\n", i, MEM[i], MEM[i+1], MEM[i+2], MEM[i+3]);
    }
}
