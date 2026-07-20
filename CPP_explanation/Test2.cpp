#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include <cstring>

class MyString
{

private:
    char *Letters;
    int size;

public:
    // NOTE: If a custom constructor is defined, the compiler will NOT automatically
    // generate the default constructor. It must be explicitly defined if needed.
    MyString() : size(0),
                 Letters(nullptr)
    {
        std::cout << "default constructor called" << std::endl;
    }
    MyString(const char *L) : size(std::strlen(L)),
                              Letters(new char[size + 1])
    {
        std::memcpy(Letters, L, size + 1);
        std::cout << "custom constructor called" << std::endl;
    }

    void printt()
    {
        // so important to not print nullprt
        if (Letters != nullptr)
            std::cout << Letters << std::endl;
    }
};

int main()
{
    MyString saif;
    MyString Ahmed("AHMED TEST");

    saif.printt();
    Ahmed.printt();
}