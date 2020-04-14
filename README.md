"# cmake_hello_windows" 
windows 下的cmake demo

要安装http://nsis.sourceforge.net
安装cmake：https://cmake.org/

需要使用 
"适用于 VS2017 的x64 本机工具命令提示"

使用方式：
Command.bat

1. 版本跟踪。
2. 内部库依赖
3. CPack打包

如果正常运行结果如下：

Microsoft (R) 程序维护实用工具 14.16.27035.0 版
版权所有 (C) Microsoft Corporation。  保留所有权利。

Scanning dependencies of target MathFunctions
[ 25%] Building CXX object math/CMakeFiles/MathFunctions.dir/MathFunctions.cc.obj
MathFunctions.cc
E:\cmake_hello\math\MathFunctions.cc(10): warning C4244: “初始化”: 从“double”转换到“int”，可能丢失数据
E:\cmake_hello\math\MathFunctions.cc(18): warning C4244: “=”: 从“double”转换到“int”，可能丢失数据
[ 50%] Linking CXX static library MathFunctions.lib
[ 50%] Built target MathFunctions
Scanning dependencies of target Demo
[ 75%] Building CXX object CMakeFiles/Demo.dir/main.cc.obj
main.cc
[100%] Linking CXX executable Demo.exe
[100%] Built target Demo

E:\cmake_hello\build>Demo
Usage: Demo base exponent

E:\cmake_hello\build>Demo 10 10
Now we use our own Math library.
10 ^ 10 is -2.14748e+09
Demo_VERSION_MINOR 0Demo_VERSION_MAJOR 1
E:\cmake_hello\build>cpack -C CPackConfig.cmake
CPack Error: Cannot find NSIS compiler makensis: likely it is not installed, or not in your PATH
CPack Error: Could not read NSIS registry value. This is usually caused by NSIS not being installed. Please install NSIS from http://nsis.sourceforge.net
CPack Error: Cannot initialize the generator NSIS

E:\cmake_hello\build>cpack -C CPackSourceConfig.cmake
CPack Error: Cannot find NSIS compiler makensis: likely it is not installed, or not in your PATH
CPack Error: Could not read NSIS registry value. This is usually caused by NSIS not being installed. Please install NSIS from http://nsis.sourceforge.net
CPack Error: Cannot initialize the generator NSIS

E:\cmake_hello\build>popd