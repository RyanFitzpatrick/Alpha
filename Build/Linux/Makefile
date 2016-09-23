All: Num Char List System Error Libs

Libs:
	gcc -shared ../../Code/out/Linux/*.o  -o ../../Code/lib/Linux/libAlpha.so
	ar crv ../../Code/lib/Linux/libAlpha.a ../../Code/out/Linux/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Num.c -I../../Code/include -o ../../Code/out/Linux/Num.o -O3
	gcc -S ../../Code/source/Num.c -I../../Code/include -o ../../Code/asm/Linux/Num.s -O3

Char:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Char.c -I../../Code/include -o ../../Code/out/Linux/Char.o -O3
	gcc -S ../../Code/source/Char.c -I../../Code/include -o ../../Code/asm/Linux/Char.s -O3

List:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/List.c -I../../Code/include -o ../../Code/out/Linux/List.o -O3
	gcc -S ../../Code/source/List.c -I../../Code/include -o ../../Code/asm/Linux/List.s -O3

System:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/System.c -I../../Code/include -o ../../Code/out/Linux/System.o -O3
	gcc -S ../../Code/source/System.c -I../../Code/include -o ../../Code/asm/Linux/System.s -O3

Error:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/source/Error.c -I../../Code/include -o ../../Code/out/Linux/Error.o -O3
	gcc -S ../../Code/source/Error.c -I../../Code/include -o ../../Code/asm/Linux/Error.s -O3

Clean:
	rm -f ../../Code/out/Linux/*
	rm -f ../../Code/asm/Linux/*
