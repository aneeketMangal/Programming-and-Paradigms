1. Reverse string:-
    a. First input is taken from the user.
    b. The input is passed to reverseString() function which return list in reversed order.
    c. Then the list is printed simply.

    Sample input/output:
    
    Input string    : programming and pragmatics
    Reversed string : pragmatics and programming

2. Remove duplicates:
    Note:- a string is taken as input and then converted into list.
    1. It has two functions namely:- 
        a. RemDupLoop:- takes list of words and use a loop to create a new list including each different word only once.
        b. RemDupSet:- takes list of words as parameter and use set container from python to remove duplicates.(Set allows each different element to be inserted only once.)
    2. order of words while printing might differ in set and loop case, but the answer wil be same.
    Sample input:
    Input space separated entries: iit ropar is in ropar
    
    output:
    RemDupSet :  in iit ropar is
    RemDupLoop:  iit ropar is in

3. Pascal Triangle:
    It constructs the pascal traingle level by level. It takes elements of a particular level and creates new one on the basis of property of pascal traingle.
    Eg: for n = 5,
    output is :      1
                    	   1 1
                           1 2 1
                  	1 3 3 1
                       1 4 6 4 1

    For higher values of n (greater than 5), the triangle seems distorted because of numbers with 2 or more  digits.
    Eg:-
    n = 9

                    1
                   1 1
                  1 2 1
                 1 3 3 1
                1 4 6 4 1
               1 5 10 10 5 1
              1 6 15 20 15 6 1
             1 7 21 35 35 21 7 1
            1 8 28 56 70 56 28 8 1




