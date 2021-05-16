-count.l
-> prints the number of characters, words, spaces and lines in a given input file.
-> To run the program:-
    * lex count.l
    * cc lex.yy.c -o count -ll
    * ./count count.txt
-> reads input from a file.
-> For the given count.txt:
    Output:
        characters:- 27
        words:- 4
        spaces:- 2
        lines:- 2
-> tabs are considered 4 spaces.
-> "\n" and spaces are counted as characters.

-Comments.l
-> count the numbers of comment lines in a given C program. Also eliminate them
and copy the resulting program into separate file
-> output gets stored in out.c
-> No specific assumption made in this case.
-> To run the program:-
    * lex Comments.l
    * cc lex.yy.c -o comment -ll
    * ./comment comment.c


-ab.l and ab.y
-> check for sequences of form ((a^n)b) [n>=10]
-> Terminal input single line.
-> For valid strings it prints "Valid!", otherwise "Invalid!"
-> To run the program:-
    * lex ab.l
    * yacc -d ab.y
    * cc lex.yy.c y.tab.c -o ab
    * ./ab
    * Enter the required string
-> For eg:
    Input: aaaaaaaaaab
    Output: Valid!

-calc.l
-> recognizes a valid arithmetic expression and to recognize the identifiers and
operators present and prints them separately.

-> To run the program:-
    * lex calc.l
    * cc lex.yy.c -o calc -ll
    * ./calc calc.txt
-> Negative identifiers are not specifically handled they may result in errors.
-> For the given calc.txt:
    Output:
        Valid

        Identifiers:
        a
        78
        86
        87
        ab
        56
        90

        Operators:
        +
        +
        +
        -
        *
        +

-calc.y
-> recognize and evaluate valid arithmetic expression that uses operators +, -, *
and /



