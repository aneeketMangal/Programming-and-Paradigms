import java.util.Scanner;

public class Player {
    private int playerIndex;
    private Boolean isComputer;
    public Player(int x, Boolean y) {
        this.playerIndex = x;
        this.isComputer = y;
    }
    public int getPlayerIndex(){
        return playerIndex;
    }
    public Boolean getIsComputer(){
        return isComputer;
    }
    private int getIndexOfOpponentPlayer(){
        return 1+((playerIndex-1)^1);
    }
    public int getMove(Board board) {
        int z;
        if (isComputer) {
            System.out.println("Computer's turn: ");

            z = simulateMove(board);
        } else {
            Scanner scanner = new Scanner(System.in);
            System.out.print("player" + playerIndex + ", your turn. Choose a square[1-9]: ");
            z = scanner.nextInt();
        }
        return z;
    }
    private int checkHelper(int x, int y, int z, Board board) {
        if (board.getValueOnBoard(x) == board.getValueOnBoard(y) && board.getValueOnBoard(x) == playerIndex && board.getValueOnBoard(z) == 3){
            return z;
        }
        if (board.getValueOnBoard(x) == board.getValueOnBoard(z) && board.getValueOnBoard(x) == playerIndex && board.getValueOnBoard(y) == 3){
            return y;
        }
        if (board.getValueOnBoard(z) == board.getValueOnBoard(y) && board.getValueOnBoard(y) == playerIndex && board.getValueOnBoard(x) == 3){
            return x;
        }
        else{
            return -1;
        }

    }
    
    private int checkHelper2(int x, int y, int z, Board board) {
        if (board.getValueOnBoard(x) == board.getValueOnBoard(y) && board.getValueOnBoard(x) == getIndexOfOpponentPlayer() && board.getValueOnBoard(z) == 3){
            return z;
        }
        if (board.getValueOnBoard(x) == board.getValueOnBoard(z) && board.getValueOnBoard(x) == getIndexOfOpponentPlayer() && board.getValueOnBoard(y) == 3){
            return y;
        }
        if (board.getValueOnBoard(z) == board.getValueOnBoard(y) && board.getValueOnBoard(y) == getIndexOfOpponentPlayer() && board.getValueOnBoard(x) == 3){
            return x;
        }
        else{
            return -1;
        }

    }
    private int simulateMove(Board board) {
        int generatedBlock = board.getEmptyBlock();
        if (checkHelper(0, 1, 2, board) != -1) {
            generatedBlock = 1+ checkHelper(0, 1, 2, board);
        }
        else if (checkHelper(3, 4, 5, board) != -1) {
            generatedBlock = 1+ checkHelper(3, 4, 5, board);
        }
        else if (checkHelper(6, 7, 8, board) != -1) {
            generatedBlock = 1+checkHelper(6, 7, 8, board);
        }
        else if (checkHelper(0, 3, 6, board) != -1) {
            generatedBlock = 1+checkHelper(0, 3, 6, board);
        }
        else if (checkHelper(1, 4, 7, board) != -1) {
            generatedBlock = 1+checkHelper(1, 4, 7, board);
        }
        else if (checkHelper(2, 5, 8, board) != -1) {
            generatedBlock = 1+checkHelper(2, 5, 8, board);
        }
        else if (checkHelper(0, 4, 8, board) != -1) {
            generatedBlock = 1+checkHelper(0, 4, 8, board);
        }
        else if (checkHelper(2, 4, 6, board) != -1) {
            generatedBlock = 1+checkHelper(2, 4, 6, board);
        }
        else if (checkHelper2(0, 1, 2, board) != -1) {
            generatedBlock = 1+ checkHelper2(0, 1, 2, board);
        }
        else if (checkHelper2(3, 4, 5, board) != -1) {
            generatedBlock = 1+ checkHelper2(3, 4, 5, board);
        }
        else if (checkHelper2(6, 7, 8, board) != -1) {
            generatedBlock = 1+checkHelper2(6, 7, 8, board);
        }
        else if (checkHelper2(0, 3, 6, board) != -1) {
            generatedBlock = 1+checkHelper2(0, 3, 6, board);
        }
        else if (checkHelper2(1, 4, 7, board) != -1) {
            generatedBlock = 1+checkHelper2(1, 4, 7, board);
        }
        else if (checkHelper2(2, 5, 8, board) != -1) {
            generatedBlock = 1+checkHelper2(2, 5, 8, board);
        }
        else if (checkHelper2(0, 4, 8, board) != -1) {
            generatedBlock = 1+checkHelper2(0, 4, 8, board);
        }
        else if (checkHelper2(2, 4, 6, board) != -1) {
            generatedBlock = 1+checkHelper2(2, 4, 6, board);
        }
        System.out.println(generatedBlock);
        return generatedBlock;
    }
    
}
