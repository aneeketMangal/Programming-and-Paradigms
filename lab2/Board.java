public class Board {
    private int[] mainBoard;
    private int countOfMoves;

    // ? 1 -> X token
    // ? 2 -> 0 token
    // ? 3 -> not occupied yet
    public int getValueOnBoard(int index) {
        return mainBoard[index];
    }

    private void initialiseBoard() {
        this.mainBoard = new int[9];
        countOfMoves = 9;
        for (int i = 0; i < 9; i++) {
            this.mainBoard[i] = 3;
        }
    }

    public Board() {
        this.initialiseBoard();
    }

    public void printDemoBoard() {
        System.out.println("                          -------------");
        for (int i = 0; i < 3; i++) {
            System.out.print("                          |");
            for (int j = 0; j < 3; j++) {
                int z = getIndex(i + 1, j + 1);
                System.out.print(" " + (z + 1) + " |");

            }
            System.out.println("");
            if (i != 2)
            System.out.println("                          -------------");
        }
        System.out.println("                          -------------");
    }

    private int getIndex(int x, int y) {
        x -= 1;
        y -= 1;
        int z = (x * 3) + y;
        return z;
    }

    private Boolean checkHelper(int x, int y, int z) {
        if (mainBoard[x] == mainBoard[y] && mainBoard[y] == mainBoard[z] && mainBoard[y] != 3) {
            return true;
        }
        return false;

    }

    private int check() {
        if (checkHelper(0, 1, 2)) {
            return 1;
        }
        if (checkHelper(3, 4, 5)) {
            return 1;
        }
        if (checkHelper(6, 7, 8)) {
            return 1;
        }
        if (checkHelper(0, 3, 6)) {
            return 1;
        }
        if (checkHelper(1, 4, 7)) {
            return 1;
        }
        if (checkHelper(2, 5, 8)) {
            return 1;
        }
        if (checkHelper(2, 4, 6)) {
            return 1;
        }
        if (checkHelper(0, 4, 8)) {
            return 1;
        }
        if (countOfMoves == 0)
            return 2;
        return 0;
    }

    private int gameVerdictHandler(int gameSituation, int playerIndex) {
        if (gameSituation == 0)
            return 0;
        else if (gameSituation == 1)
            return playerIndex;
        else
            return 3;
    }

    public int getEmptyBlock() {
        for (int i = 0; i < 8; i++) {
            if (mainBoard[i] == 3) {
                return i + 1;
            }
        }
        return 1;
    }

    // * Status of the game
    // ? 0 -> game is still continuing
    // ? 1 -> player1 has won the game
    // ? 2 -> player2 has won the game
    // ? 3 -> game has been drawn
    // ? 4 -> selected block is already occupied
    // ? 5 -> selected block is invalid square

    public int makeMove(int z, int playerIndex) {
        z = z - 1;
        if (z > 8 || z<0)
            return 5;
        if (!isRepeatedMove(z)) {
            this.mainBoard[z] = playerIndex;
            countOfMoves -= 1;
            int currentResult = gameVerdictHandler(check(), playerIndex);
            return currentResult;
        } else
            return 4;
    }

    private Boolean isRepeatedMove(int z) {
        if (mainBoard[z] == 3) {
            return false;
        }
        return true;

    }

    private char printBoardHelper(int x) {
        switch (x) {
            case 1:
                return 'O';
            case 2:
                return 'X';
            default:
                return ' ';
        }
    }

    public void printBoard() {
        // System.out.println("                          —————————————");
        System.out.println("                          -------------");
        for (int i = 0; i < 3; i++) {
            System.out.print("                          |");
            for (int j = 0; j < 3; j++) {
                int z = getIndex(i + 1, j + 1);
                System.out.print(" " + printBoardHelper(mainBoard[z]) + " |");

            }
            System.out.println("");
            if (i != 2)
            System.out.println("                          -------------");
        }
        System.out.println("                          -------------");
    }
}
