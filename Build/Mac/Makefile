Optimizations = -O3

All: Code Test

Code: Num Char List System Error Libs

Libs:
	gcc -dynamiclib ../../Code/Out/Mac/*.o  -o ../../Code/Library/Mac/libAlpha.dylib
	ar crv ../../Code/Library/Mac/libAlpha.a ../../Code/Out/Mac/*.o

Num:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/Num.c -I../../Code/Header -o ../../Code/Out/Mac/Num.o $(Optimizations)
	gcc -S ../../Code/Source/Num.c -I../../Code/Header -o ../../Code/Asm/Mac/Num.s $(Optimizations)

Char:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/Char.c -I../../Code/Header -o ../../Code/Out/Mac/Char.o $(Optimizations)
	gcc -S ../../Code/Source/Char.c -I../../Code/Header -o ../../Code/Asm/Mac/Char.s $(Optimizations)

List:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/List.c -I../../Code/Header -o ../../Code/Out/Mac/List.o $(Optimizations)
	gcc -S ../../Code/Source/List.c -I../../Code/Header -o ../../Code/Asm/Mac/List.s $(Optimizations)

System:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/System.c -I../../Code/Header -o ../../Code/Out/Mac/System.o $(Optimizations)
	gcc -S ../../Code/Source/System.c -I../../Code/Header -o ../../Code/Asm/Mac/System.s $(Optimizations)

Error:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Code/Source/Error.c -I../../Code/Header -o ../../Code/Out/Mac/Error.o $(Optimizations)
	gcc -S ../../Code/Source/Error.c -I../../Code/Header -o ../../Code/Asm/Mac/Error.s $(Optimizations)

Test:
	gcc -Wall -Werror -ansi -pedantic -fPIC -c ../../Test/Source/Test.c -I../../Test/Header -I../../Code/Header -o ../../Test/Out/Mac/Test.o
	gcc -S ../../Test/Source/Test.c -I../../Test/Header -I../../Code/Header -o ../../Test/Asm/Mac/Test.s
	gcc ../../Test/Out/Mac/*.o -L../../Code/Library/Mac -lAlpha -o ../../Test/Run/Mac/Test

Clean:
	rm -f ../../Code/Asm/Mac/*
	rm -f ../../Code/Library/Mac/*
	rm -f ../../Code/Out/Mac/*
	rm -f ../../Test/Asm/Mac/*
	rm -f ../../Test/Out/Mac/*
	rm -f ../../Test/Run/Mac/*
