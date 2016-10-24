All: Code Test

Code: Num Real Char List System Error Libs

Libs:
	gcc -shared ../../Code/Out/Windows/*.o  -o ../../Code/Library/Windows/libAlpha.dll
	ar crv ../../Code/Library/Windows/libAlpha.lib ../../Code/Out/Windows/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/Source/Num.c -I../../Code/Header -o ../../Code/Out/Windows/Num.o -O3
	gcc -S ../../Code/Source/Num.c -I../../Code/Header -o ../../Code/Asm/Windows/Num.s -O3

Real:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/Source/Real.c -I../../Code/Header -o ../../Code/Out/Windows/Real.o -O3
	gcc -S ../../Code/Source/Real.c -I../../Code/Header -o ../../Code/Asm/Windows/Real.s -O3

Char:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/Source/Char.c -I../../Code/Header -o ../../Code/Out/WindowsChar.o -O3
	gcc -S ../../Code/Source/Char.c -I../../Code/Header -o ../../Code/Asm/Windows/Char.s -O3

List:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/Source/List.c -I../../Code/Header -o ../../Code/Out/Windows/List.o -O3
	gcc -S ../../Code/Source/List.c -I../../Code/Header -o ../../Code/Asm/Windows/List.s -O3

System:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/Source/System.c -I../../Code/Header -o ../../Code/Out/Windows/System.o -O3
	gcc -S ../../Code/Source/System.c -I../../Code/Header -o ../../Code/Asm/Windows/System.s -O3

Error:
	gcc -Wall -Werror -ansi -pedantic -c ../../Code/Source/Error.c -I../../Code/Header -o ../../Code/Out/Windows/Error.o -O3
	gcc -S ../../Code/Source/Error.c -I../../Code/Header -o ../../Code/Asm/Windows/Error.s -O3

Test:
	gcc -Wall -Werror -ansi -pedantic -c ../../Test/Source/Test.c -I../../Test/Header -I../../Code/Header -o ../../Test/Out/Windows/Test.o
	gcc -S ../../Test/Source/Test.c -I../../Test/Header -I../../Code/Header -o ../../Test/Asm/Mac/Test.s
	gcc ../../Test/Out/Windows/*.o -L../../Code/Library/Windows -lAlpha -o ../../Test/Run/Windows/Test

Clean:
	rm -f ../../Code/Asm/Windows/*
	rm -f ../../Code/Library/Windows/*
	rm -f ../../Code/Out/Windows/*
	rm -f ../../Test/Asm/Windows/*
	rm -f ../../Test/Out/Windows/*
	rm -f ../../Test/Run/Windows/*
