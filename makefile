.SUFFIXES: .c .o .a .so

.c.o:
	gcc -c $<
lib%.a: %.o
	ar rs $@ $^
lib%.so: %.o
	gcc -shared -o $@ $^
running1: pole.h obj.h pole.o obj.o main.c lib1.a temp lib2.so
	gcc -c obj.c pole.c
	gcc -Wall -ansi -pedantic obj.c pole.c main.c -o running
obj.o: obj.c
pole.o: pole.c

#archive library
lib1.a: pole.o
	ar rs $@ $^
temp: obj.c
	gcc -fPIC -c $^
#so library
lib2.so: obj.o
	gcc -shared -o $@ $^

clean:
	rm -f running *.o *.a *.so

