cd CFGEditorPlusPlus
pwsh -ExecutionPolicy Bypass -File .\build_script.ps1
py .\zip_script.py
cd ..
copy CFGEditorPlusPlus\CFGEditor.zip Properties\CFGEditor.zip

dotnet restore
msbuild "CFGEditorInstaller.csproj" -p:Configuration=Release
