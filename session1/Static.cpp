#include <stdio.h>
#include <iostream>
static int staticFunction()
{
    int x = 5;
    return x;
}
 
int staticvar __attribute__((section("sivision"))) = 42;

