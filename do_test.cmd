@echo off

cl.exe /DTEST /Fetest.exe addpath.c Advapi32.lib User32.lib

copy /y test\init.txt test\data.txt > NUL
test.exe list user
test.exe add user "C:\Program Files\Kinx\V1\bin"
test.exe list user
test.exe add user "C:\Program Files\Kinx\V1\bin"
test.exe list user
test.exe add user "C:\Program Files\Kinx\V1\bin2"
test.exe list user
test.exe add user "C:\Program Files\Kinx\V1\bin2"
test.exe list user
test.exe del user "C:\Program Files\Kinx\V1\bin"
test.exe list user
test.exe del user "C:\Program Files\Kinx\V1\bin2"
test.exe list user
test.exe del user "SystemRoot\system32"
test.exe list user
test.exe del user "SystemRoot\system32"
test.exe list user
test.exe del user "C:\Program Files (x86)\Common Files\Roxio Shared\DLLShared"
test.exe list user
test.exe del user "SystemRoot\System32\Wbem"
test.exe list user
test.exe del user "SystemRoot"
test.exe list user
test.exe del user "C:\Program Files\Pandoc"
test.exe list user
test.exe del user "C:\Strawberry\c\bin"
test.exe list user
test.exe del user "C:\Program Files\Pandoc"
test.exe list user
test.exe add user "C:\Program Files\Kinx\V1\bin"
test.exe list user
test.exe del user "C:\Program Files\nodejs"
test.exe list user

del /q test\data.txt
