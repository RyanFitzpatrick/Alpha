All: Num Char List System Error Libs

Libs:
	gcc -shared ../../Code/out/Windows/*.o  -o ../../Code/lib/Windows/libAlpha.so
	ar crv ../../Code/lib/Windows/libAlpha.a ../../Code/out/Windows/*.o

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
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/System.c -I../../Code/include -o ../../Code/out/Windows/System.o -O3
	gcc -S ../../Code/source/System.c -I../../Code/include -o ../../Code/asm/Windows/System.s -O3

Error:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/Error.c -I../../Code/include -o ../../Code/out/Windows/Error.o -O3
	gcc -S ../../Code/source/Error.c -I../../Code/include -o ../../Code/asm/Windows/Error.s -O3

Clean:
	rm -f ../../Code/out/Windows/*
	rm -f ../../Code/asm/Windows/*
