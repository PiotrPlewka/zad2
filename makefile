.SUFFIXES: .c .o .a .so

.c.o:
	gcc -c $<
lib%.a: %.o
	ar rs $@ $^
lib%.so: %.o
	gcc -shared -o $@ $^
running1: main.c obj.c obj.h pole.c pole.h
	gcc main.c obj.c obj.h pole.c pole.h -o running
