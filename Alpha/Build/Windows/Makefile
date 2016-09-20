All: Num Char Libs

Libs:
	gcc -shared ../../Code/out/*.o  -o ../../Code/lib/libAlpha.so
	ar crv ../../Code/lib/libAlpha.a ../../Code/out/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/Num.c -I../../Code/include -o ../../Code/out/Num.o -O3
	gcc -S ../../Code/source/Num.c -I../../Code/include -o ../../Code/asm/Num.s -O3

Char:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/source/Char.c -I../../Code/include -o ../../Code/out/Char.o -O3
	gcc -S ../../Code/source/Char.c -I../../Code/include -o ../../Code/asm/Char.s -O3

Clean:
	rm -f ../../Code/out/*
	rm -f ../../Code/asm/*
