This project is a simple implementation of the classic tic-tac-toe game played on a 3X3 matrix.
The game consists of two modes:-
1. Human v/s Human
2. Human v/s computer

Few assumptions:-
1. Input is expected in the range([1-9]), a number x defines square at coordinate ((x-1)/3, (x-1)%3))[0-indexed] in a 3X3 matrix.
2. If user enters a number other than [1-9], a prompt message will be flashed on termminal to ask for a valid input.
3. In case user inputs char or string, then the exception is not handled.



The codebase consists of 3 classes, namely:
a. TicTacToe
b. Player
c. Board


a. The TicTacToe class:-
    This class is the main class of the project which performs the following functionality:-
        1. Creating the player objects and board objects.
        2. Getting the input from the player (fetching the move through player class).
        3. It also coordinates interaction between the program and the user.
b. The Player Class:-
    Player class performs the following functionality:-
        1. defines if a player is human or a bot, defined by a boolean.
        2. if the player is a bot, then getMove functionality helps to choose a move by considering following factors:-
            a. If there is a possibility of winning after immediate move(one empty and two already filled squares), it does that.
            b. otherwise, if it there is a possibility of other player winning in next move, it blocks that.
            c. otherwise, it chooses the next empty square.
        3. In case the player is a human, it asks for a input.

c. The Board class:-
    Board class performs the following functionality:-
        1. Contains the information of the TicTacToe board in form of an array.
        2. makeMove method of the board class perform the move on the board(the array), and checks the current status of game using helper methods.
        3. Returns the status to the TicTacToe class(such as win or draw, or repeated move, inalid move).

