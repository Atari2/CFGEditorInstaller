cd CFGEditorPlusPlus
call build_script.bat
py .\zip_script.py
cd ..
copy CFGEditorPlusPlus\CFGEditor.zip Properties\CFGEditor.zip

dotnet restore
msbuild "CFGEditorInstaller.csproj" -p:Configuration=Release
