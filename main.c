#include <stdio.h>
#include "obj.h"
#include "pole.h"

int main(){
	printf("pole kwadratu, podaj dlugosc boku\n");
	int bok;
	scanf("%d", &bok);
	printf("Obliczone pole: %d\n", pole(bok));
	printf("objetosc szescianu, podaj dlugosc krawedzi\n");
        int krawedz;
        scanf("%d", &krawedz);
        printf("Obliczona obletosc: %d\n", objetosc(krawedz));
	return 0;
}
