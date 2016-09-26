All: Code Test

Code: Num Char List System Error Libs

Libs:
	gcc -shared ../../Code/out/Windows/*.o  -o ../../Code/lib/Windows/libAlpha.dll
	ar crv ../../Code/lib/Windows/libAlpha.lib ../../Code/out/Windows/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/Num.c -I../../Code/include -o ../../Code/out/Windows/Num.o -O3
	gcc -S ../../Code/source/Num.c -I../../Code/include -o ../../Code/asm/Windows/Num.s -O3

Char:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/Char.c -I../../Code/include -o ../../Code/out/WindowsChar.o -O3
	gcc -S ../../Code/source/Char.c -I../../Code/include -o ../../Code/asm/Windows/Char.s -O3

List:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/List.c -I../../Code/include -o ../../Code/out/Windows/List.o -O3
	gcc -S ../../Code/source/List.c -I../../Code/include -o ../../Code/asm/Windows/List.s -O3

System:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/System.c -I../../Code/include -o ../../Code/out/Windows/System.o -O3
	gcc -S ../../Code/source/System.c -I../../Code/include -o ../../Code/asm/Windows/System.s -O3

Error:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/Error.c -I../../Code/include -o ../../Code/out/Windows/Error.o -O3
	gcc -S ../../Code/source/Error.c -I../../Code/include -o ../../Code/asm/Windows/Error.s -O3

Test:
	gcc -Wall -Werror -ansi -pedantic -c ../../Test/source/Test.c -I../../Test/include -I../../Code/include -o ../../Test/out/Windows/Test.o
	gcc -S ../../Test/source/Test.c -I../../Test/include -I../../Code/include -o ../../Test/asm/Mac/Test.s
	gcc ../../Test/out/Windows/*.o -L../../Code/lib/Windows -lAlpha -o ../../Test/run/Windows/Test

Clean:
	rm -f ../../Code/asm/Windows/*
	rm -f ../../Code/lib/Windows/*
	rm -f ../../Code/out/Windows/*
	rm -f ../../Test/asm/Windows/*
	rm -f ../../Test/out/Windows/*
	rm -f ../../Test/run/Windows/*
