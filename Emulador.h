#include <stdint.h>

using byte = __uint8_t;
using word = __int32_t;

bool load_mem(char const* text, char const* data);
void execute(word instruction);
void R_inst(word instruction);
void I_inst(word instruction, byte opcode);
void syscall();
void print_reg_mem();
