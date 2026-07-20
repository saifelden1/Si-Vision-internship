#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include <cstring>
class MyQueue;
class Child
{

private:
    int num;

public:
    Child();
    Child(int num);
    friend MyQueue &operator<<(const MyQueue &q1, const MyQueue &q2);// first param is not const because we are editing it 
    friend MyQueue &operator<<(const MyQueue &q, const Child &c);
};
