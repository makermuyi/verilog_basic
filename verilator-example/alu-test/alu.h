#ifndef _ALU_H_
#define _ALU_H_

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "Vtop.h"
#include "verilated.h"

/* extern function declaration */
void cycle(Vtop *tb, uint32_t in1, uint32_t in2, uint8_t alu_op);

#endif /* _ALU_H_ */
