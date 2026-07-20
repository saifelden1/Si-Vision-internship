#include <iostream>
#include <stdint.h>
#include <stdio.h>

int main()
{

    uint8_t VarX = 10;
    uint32_t* Ptr = (uint32_t*)&VarX;
    *Ptr = 0xABCDABCD;
    std::cout << "test" << std::endl;
return 0;
}