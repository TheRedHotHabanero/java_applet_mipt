#include <jni.h>
#include <iostream>
#include "MyCppWrapper.h"

int main();

extern "C" {
    JNIEXPORT void JNICALL Java_MyCppWrapper_runCppMain(JNIEnv *, jobject) {
        std::cout << "Hello from C++!" << std::endl;
        main();
        std::cout << "Goodbye from C++!" << std::endl;
    }
}
