
cd CFGEditorPlusPlus
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"
cmake.exe -S . -B build -GNinja "-DCMAKE_BUILD_TYPE:String=Release" "-DQT_QMAKE_EXECUTABLE:STRING=C:/Qt/6.0.1/msvc2019_64/bin/qmake.exe" "-DCMAKE_PREFIX_PATH:STRING=" "-DCMAKE_C_COMPILER:STRING=cl.exe" "-DCMAKE_CXX_COMPILER:STRING=cl.exe"
cd build
cmake.exe --build . --target all
cd ..
py .\zip_script.py
cd ..
copy CFGEditorPlusPlus\CFGEditor.zip Properties\CFGEditor.zip

dotnet restore
msbuild "CFGEditorInstaller.csproj" -p:Configuration=Release
