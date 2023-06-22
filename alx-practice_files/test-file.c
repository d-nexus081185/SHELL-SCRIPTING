#include <stdio.h>
#include <string.h>


int main()

{
	printf("What is your name: \n");
	char name [25];
	fgets(name, 25, stdin);
	name[strlen(name)-1] = '\0';
	
	printf("Welcome %s", name);

return 0;

}
