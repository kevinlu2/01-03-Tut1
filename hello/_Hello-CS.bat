set PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\Roslyn\";%PATH%
set PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin\Roslyn\";%PATH%
set PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin\Roslyn\";%PATH%

if exist Hello.exe del Hello.exe
rem CSC /target:exe /out:Hello.exe Hello.cs
csc Hello.cs
pause

.\Hello.exe
pause
