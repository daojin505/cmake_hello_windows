rm-rf build
mkdir build
pushd build
cmake .. -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release
nmake
Demo
Demo 10 10
cpack -C CPackConfig.cmake
cpack -C CPackSourceConfig.cmake
popd

