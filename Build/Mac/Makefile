All: Num Char List System Error Libs

Libs:
	gcc -dynamiclib ../../Code/out/Mac/*.o  -o ../../Code/lib/Mac/libAlpha.dylib
	ar crv ../../Code/lib/Mac/libAlpha.a ../../Code/out/Mac/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Num.c -I../../Code/include -o ../../Code/out/Mac/Num.o -O3
	gcc -S ../../Code/source/Num.c -I../../Code/include -o ../../Code/asm/Mac/Num.s -O3

Char:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Char.c -I../../Code/include -o ../../Code/out/Mac/Char.o -O3
	gcc -S ../../Code/source/Char.c -I../../Code/include -o ../../Code/asm/Mac/Char.s -O3

List:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/List.c -I../../Code/include -o ../../Code/out/Mac/List.o -O3
	gcc -S ../../Code/source/List.c -I../../Code/include -o ../../Code/asm/Mac/List.s -O3

System:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/System.c -I../../Code/include -o ../../Code/out/Mac/System.o -O3
	gcc -S ../../Code/source/System.c -I../../Code/include -o ../../Code/asm/Mac/System.s -O3

Error:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Error.c -I../../Code/include -o ../../Code/out/Mac/Error.o -O3
	gcc -S ../../Code/source/Error.c -I../../Code/include -o ../../Code/asm/Mac/Error.s -O3

Test:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Test/source/Test.c -I../../Test/include -I../../Code/include -o ../../Test/out/Mac/Test.o
	gcc ../../Test/out/Mac/*.o -L../../Code/lib/Mac -lAlpha -o ../../Test/run/Mac/Test

Clean:
	rm -f ../../Code/out/Mac/*
	rm -f ../../Code/asm/Mac/*
