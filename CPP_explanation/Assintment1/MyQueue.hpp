#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include <cstring>

class Child;
class MyQueue
{

private:
    int size;

public:
    MyQueue();
    MyQueue(int size);
    MyQueue(const MyQueue &other);
    int GetSize(); // getter
    int SetSize(); // setter
    MyQueue &operator*(const MyQueue &q);
    MyQueue &operator++(const MyQueue &q);
    friend MyQueue &operator<<(const MyQueue &q1, const MyQueue &q2); 
    friend MyQueue &operator<<(const MyQueue &q, const Child &c);
};
