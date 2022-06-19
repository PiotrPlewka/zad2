.SUFFIXES: .c .o .a .so

.c.o:
	gcc -c $<
lib%.a: %.o
	ar rs $@ $^
lib%.so: %.o
	gcc -shared -o $@ $^
running1: main.c obj.c obj.h pole.c pole.h
	gcc main.c obj.c obj.h pole.c pole.h -o running
#archive library
lib1.a: pole.o
	ar rs $@ $^
temp: obj.c
	gcc -fPIC -c $^
#so library
lib2.so: obj.o
	gcc -shared -o $@ $^

