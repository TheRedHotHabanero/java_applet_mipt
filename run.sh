#!/bin/bash

# Компиляция нативной библиотеки
g++ -shared -o libMyCppProgram.so MyCppProgram.cpp MyCppWrapper.cpp -I"/usr/lib/jvm/java-8-openjdk-amd64/include" -I"/usr/lib/jvm/java-8-openjdk-amd64/include/linux" -fPIC

# Компиляция Java файлов
javac MyCppWrapper.java
javac MyApplet.java

# Генерация заголовочного файла JNI
javah -jni MyCppWrapper

# Вывод "Good!" для проверки успешного выполнения
echo "Good!"

# Запуск апплета
echo "Run Applet"
appletviewer -J-Djava.security.policy=applet.policy index.html
