// MyCppProgram.cpp
#include <iostream>

int main() {
    std::cout << "Hello from C++!" << std::endl;
    return 0;
}

extern "C" {
    void runCppMain() {
        main();
    }
}
