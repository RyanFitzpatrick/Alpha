All: Code Test

Code: Num Char List System Error Libs

Libs:
	gcc -shared ../../Code/Out/Linux/*.o  -o ../../Code/Library/Linux/libAlpha.so
	ar crv ../../Code/Library/Linux/libAlpha.a ../../Code/Out/Linux/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/Num.c -I../../Code/Header -o ../../Code/Out/Linux/Num.o -O3
	gcc -S ../../Code/Source/Num.c -I../../Code/Header -o ../../Code/Asm/Linux/Num.s -O3

Char:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/Char.c -I../../Code/Header -o ../../Code/Out/Linux/Char.o -O3
	gcc -S ../../Code/Source/Char.c -I../../Code/Header -o ../../Code/Asm/Linux/Char.s -O3

List:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/List.c -I../../Code/Header -o ../../Code/Out/Linux/List.o -O3
	gcc -S ../../Code/Source/List.c -I../../Code/Header -o ../../Code/Asm/Linux/List.s -O3

System:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/System.c -I../../Code/Header -o ../../Code/Out/Linux/System.o -O3
	gcc -S ../../Code/Source/System.c -I../../Code/Header -o ../../Code/Asm/Linux/System.s -O3

Error:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/Error.c -I../../Code/Header -o ../../Code/Out/Linux/Error.o -O3
	gcc -S ../../Code/Source/Error.c -I../../Code/Header -o ../../Code/Asm/Linux/Error.s -O3

Test:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Test/Source/Test.c -I../../Test/Header -I../../Code/Header -o ../../Test/Out/Linux/Test.o
	gcc -S ../../Test/Source/Test.c -I../../Test/Header -I../../Code/Header -o ../../Test/Asm/Mac/Test.s
	gcc ../../Test/Out/Linux/*.o -L../../Code/Library/Linux -lAlpha -o ../../Test/Run/Linux/Test

Clean:
	rm -f ../../Code/Asm/Linux/*
	rm -f ../../Code/Library/Linux/*
	rm -f ../../Code/Out/Linux/*
	rm -f ../../Test/Asm/Linux/*
	rm -f ../../Test/Out/Linux/*
	rm -f ../../Test/Run/Linux/*
