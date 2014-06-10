if exist blank.img del blank.img
for /l %%i in (0,1,31) do echo 0123456789 >>blank1.img
for /l %%i in (0,1,35) do type blank1.img >>blank2.img
for /l %%i in (0,1,39) do type blank2.img >>blank.img
del blank1.img
del blank2.img