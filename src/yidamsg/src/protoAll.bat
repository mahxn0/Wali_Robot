@echo off
echo process c++...
set files=*.proto
if not "%1"=="" set files=%1
.\bin\protoc.exe --cpp_out=.\cpp %files%
echo proces c#...
for %%a in ( %files% ) do ( .\bin\ProtoGen-c-p.exe -output_directory=.\csharp %%a )
echo done.
@echo on