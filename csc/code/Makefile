obj=fibo.o main.o

$(obj) : fibo.c main.c fibo.h
	gcc -c -o fibo.o -I../include fibo.c
	gcc -c -o main.o -I../include main.c
clean : 
	rm main.o
