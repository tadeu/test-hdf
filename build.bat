call conda env create
call conda activate test-hdf

rd /s /q build
cmake -G "Visual Studio 15 2017 Win64" -B build
cmake --build build --config Release
build\Release\test-hdf.exe
