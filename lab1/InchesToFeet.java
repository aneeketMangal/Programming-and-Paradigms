
import java.util.Scanner;

public class InchesToFeet{
  public static void main(String[] args){
      Scanner input = new Scanner(System.in);
      System.out.print("Input inches: ");
      int inches = input.nextInt();
      int CalculatedFeet = inches/12;
      int CalculatedInches = inches%12;
      System.out.println(inches + " inches = " + CalculatedFeet + " feet, " + CalculatedInches + " inches");
  }
}
