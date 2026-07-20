#include <iostream>

#include "helper.hpp"

int main() {
    const int sum = add(2, 3);
    const std::string message = make_message("LLDB");

    std::cout << message << '\n';
    std::cout << "2 + 3 = " << sum << '\n';

    return 0;
}
