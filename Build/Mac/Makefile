Optimizations = -O3

All: Code Test

Code: Num Char List System Error Libs

Libs:
	gcc -dynamiclib ../../Code/out/Mac/*.o  -o ../../Code/lib/Mac/libAlpha.dylib
	ar crv ../../Code/lib/Mac/libAlpha.a ../../Code/out/Mac/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Num.c -I../../Code/include -o ../../Code/out/Mac/Num.o $(Optimizations)
	gcc -S ../../Code/source/Num.c -I../../Code/include -o ../../Code/asm/Mac/Num.s $(Optimizations)

Char:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Char.c -I../../Code/include -o ../../Code/out/Mac/Char.o $(Optimizations)
	gcc -S ../../Code/source/Char.c -I../../Code/include -o ../../Code/asm/Mac/Char.s $(Optimizations)

List:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/List.c -I../../Code/include -o ../../Code/out/Mac/List.o $(Optimizations)
	gcc -S ../../Code/source/List.c -I../../Code/include -o ../../Code/asm/Mac/List.s $(Optimizations)

System:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/System.c -I../../Code/include -o ../../Code/out/Mac/System.o $(Optimizations)
	gcc -S ../../Code/source/System.c -I../../Code/include -o ../../Code/asm/Mac/System.s $(Optimizations)

Error:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Error.c -I../../Code/include -o ../../Code/out/Mac/Error.o $(Optimizations)
	gcc -S ../../Code/source/Error.c -I../../Code/include -o ../../Code/asm/Mac/Error.s $(Optimizations)

Test:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Test/source/Test.c -I../../Test/include -I../../Code/include -o ../../Test/out/Mac/Test.o
	gcc -S ../../Test/source/Test.c -I../../Test/include -I../../Code/include -o ../../Test/asm/Mac/Test.s
	gcc ../../Test/out/Mac/*.o -L../../Code/lib/Mac -lAlpha -o ../../Test/run/Mac/Test

Clean:
	rm -f ../../Code/asm/Mac/*
	rm -f ../../Code/lib/Mac/*
	rm -f ../../Code/out/Mac/*
	rm -f ../../Test/asm/Mac/*
	rm -f ../../Test/out/Mac/*
	rm -f ../../Test/run/Mac/*
