/*
 * Title : Collections : Nested Finally
 * Author : Rosary Abilash M
 * Created At : 30-05-2024
 * Last Modified Date : 30-05-2024
 * Reviewed By :
 * Review Date :
 */


public class NestedFinally {
public static void main(String[] args) {
try {
try {
int result = 10 / 0; // Division by zero
System.out.println("Result: " + result);
} catch (ArithmeticException e) {
System.out.println("Inner ArithmeticException occurred: " + e.getMessage());
} finally {
System.out.println("Inner finally block executed.");
}
} catch (Exception e) {
System.out.println("Outer Exception occurred: " + e.getMessage());
} finally {
System.out.println("Outer finally block executed.");
}
}
}
