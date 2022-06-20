// Follow instructions on comments
#include "headers.h"

// Change the MSG content to whatever you feel like with ci"
#define MSG "Hello World!!"

int
main ( int argc, char **argv ) {

	printf( "%s\n", MSG );

	// Uncomment the following line, from the line itself do 0wdw
	// for_loop( 5, MSG );

	return 0;

}

// Place the cursor on this line and add the contents of for_loop.c
// :r %:h <autocomplete with tab>

// Compile and execute the file first using the command line and then with the <f5> mapping
// :!gcc -o main.o %
// :!./main.o
// :!rm main.o


// You made too many changes.... go back to the previous version with
// :earlier 100
// close everything with :xa or :wqa
