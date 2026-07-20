#include <stdio.h>
#include <iostream>
 int UnusedFunction() {
    int x = 5;
    
    return x;
}
  int sivisionVar __attribute__((section("sivision"))) = 42;

int main() {
    int a = 10;
    int b = 20;

  
    //test 
    a = UnusedFunction();


    printf("Hello, World!\n");
    std::cout << a << std::endl;
    return 0;
}