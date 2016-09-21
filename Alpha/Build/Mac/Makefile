All: Num Char List Error Libs

Libs:
	gcc -shared ../../Code/out/Mac/*.o  -o ../../Code/lib/Mac/libAlpha.so
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

Error:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Error.c -I../../Code/include -o ../../Code/out/Mac/Error.o -O3
	gcc -S ../../Code/source/Error.c -I../../Code/include -o ../../Code/asm/Mac/Error.s -O3

Clean:
	rm -f ../../Code/out/Mac/*
	rm -f ../../Code/asm/Mac/*
