all : fibo.c main.c fibo.h
	make --directory=code
	gcc code/main.o code/fibo.o -o fibo

clean : 
	cd code && make clean
	rm fibo
