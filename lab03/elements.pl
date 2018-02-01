%Exercise 2. Chemical Elements

%Given the following database of chemical elements and their symbols in the periodic table.
element(chlorine,'Cl').
element(helium,'He').
element(hydrogen,'H').
element(nitrogen,'N').
element(oxygen,'O').

%Write an interactive Prolog program for the user to enter a symbol and the program prints the name of the corresponding chemical element.
%If the symbol is not in the database, the program should exit otherwise loop again.

lookUp(S) :-    element(E, S),
                write(S),
                write( ' is the symbol for: '),
                writeln(E), !.

lookUp(S) :-    write( 'Don\'t know the symbol: ' ),
                writeln(S),
                !, fail.

elements :- writeln('Elements in the Periodic Table'), 
            repeat,
            writeln('Symbol to look-up: (num)'),
            read(S),
            not(lookUp(S)),
            writeln('Exiting.'),
            !, fail.