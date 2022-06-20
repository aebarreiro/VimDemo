// ----
// Move the function declaration line to headers.h
// First delete the declaration line and the next one with 2dd 
// Now open the file alongside this one with :vsplit %:h <autocomplete with tab>
// Go to the end of file with G and paste with p
// After completing all the tasks come back to this file with ^ww
void for_loop ( int, char * ) ;


// Some psycho wrote the following code, reindent it with =i} from inside the function
void
for_loop ( int n, char *msg ) {

// Very complicated loop do not try to understand
					for ( int i = 0; i < n; i++ ) 
	for	( int j = 0; j < 100; j++ )
			    		if ( j < 1 )
printf( "%d: %s\n", i, msg );

}

