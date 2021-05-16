import java.util.Scanner;

public class TicTacToe {
    static Board board;
    static Player player1;
    static Player player2;
    static int gameMode;

    public static void main(String[] args) {

        System.out.println("Welcome to tic-tac-toe!!!!!!!!!!!");
        System.out.println(
                "Rules:-\n1. In each move you can choose a position where you wish to play you next move.\n2. player1: O and player2: X\n------------------------------------------------");
        startNewGame();
    }

    private static void startNewGame() {
        board = new Board();
        handleIntroEvent();
        board.printDemoBoard();
        playTicTacToe();
    }

    private static void playTicTacToe() {
        int turn = 0;
        while (true) {
            int currPlayedMove;
            if (turn == 0) {
                currPlayedMove = player1.getMove(board);
            } else {
                currPlayedMove = player2.getMove(board);
            }
            int currStatus = board.makeMove(currPlayedMove, turn + 1);
            board.printBoard();
            switch (currStatus) {
                case 1:
                    handleWinEvent(player1);
                    break;
                case 2:
                    handleWinEvent(player2);
                    break;
                case 3:
                    handleDrawEvent();
                    break;
                case 4:
                    System.out.println("This block is already occupied!! Please play another move.");
                    break;
                case 5:
                    System.out.println("Please choose a valid square!!!");
                    break;
                default:
                    turn = turn ^ 1;
                    break;
            }

        }
    }

    private static void askIfUserWantsANewGame() {
        System.out.print("Do you wish to play a new game:\n1. Yes.\n2. No\n");
        Scanner scanner = new Scanner(System.in);
        int newGameChoice = scanner.nextInt();
        if (newGameChoice == 1) {
            startNewGame();
        } else {
            System.out.println("GoodBye!!!!!");
            System.exit(0);
        }
    }

    private static void handleDrawEvent() {
        System.out.println("The game has been drawn");
        askIfUserWantsANewGame();
    }

    private static void handleWinEvent(Player player) {
        if (player.getIsComputer())
            System.out.println("Computer won the game");
        else
            System.out.println("hurrah!!! player " + player.getPlayerIndex() + ", you won...........");
        askIfUserWantsANewGame();
    }

    private static void handleIntroEvent() {
        System.out.print("Select the mode you wish to play:\n1. Human v/s Human.\n2. Human v/s Computer\n");
        Scanner scanner = new Scanner(System.in);
        int gameMode = scanner.nextInt();
        createPlayerObjects(gameMode);
    }

    private static void createPlayerObjects(int currGameMode) {
        if (currGameMode == 1) {
            player1 = new Player(1, false);
            player2 = new Player(2, false);
        } else {
            player1 = new Player(1, false);
            player2 = new Player(2, true);
        }
    }
}
