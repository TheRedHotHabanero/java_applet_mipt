// MyCppWrapper.cpp
#include <jni.h>
#include "MyCppWrapper.h"
#include <iostream>

// Объявление функции main, чтобы компилятор видел ее
int main();

extern "C" {
    JNIEXPORT void JNICALL Java_MyCppWrapper_runCppMain(JNIEnv *, jobject) {
        main();
    }
}
