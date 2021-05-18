# we build CFGEditorPlusPlus first
Set-Location CFGEditorPlusPlus
Start-Process -Wait -NoNewWindow .\build_script.bat
py .\zip_script.py
Set-Location ..
Copy CFGEditorPlusPlus\CFGEditor.zip Properties\CFGEditor.zip

# we then build the installer
dotnet restore
msbuild "CFGEditorInstaller.csproj" -p:Configuration=Release
