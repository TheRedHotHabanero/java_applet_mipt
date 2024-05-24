#!/bin/bash

# Компиляция нативной библиотеки
cp ../build/libMyCppProgram.so ./

# Компиляция Java файлов
javac MyCppWrapper.java
javac MyApplet.java

# Генерация заголовочного файла JNI (если это нужно, но обычно это делается только один раз)
javah -jni MyCppWrapper

# Вывод "Good!" для проверки успешного выполнения
echo "Good!"

# Запуск апплета с указанием пути к нативной библиотеке
echo "Run Applet"
appletviewer -J-Djava.library.path=. -J-Djava.security.policy=applet.policy index.html
