/*
 * Title : Collections : Exception Handling
 * Author : Rosary Abilash M
 * Created At : 30-05-2024
 * Last Modified Date : 30-05-2024
 * Reviewed By :
 * Review Date :
 */



public class ExceptionHandling {
    public static void main(String[] args) {
// 1. ArithmeticException handling
try {
int result = 10 / 0; // Division by zero
System.out.println("Result: " + result);
} catch (ArithmeticException e) {
System.out.println("ArithmeticException occurred: " + e.getMessage());
}

// 2. ArrayIndexOutOfBoundsException handling
try {
int[] numbers = {1, 2, 3};
System.out.println("Element at index 3: " + numbers[3]);
} catch (ArrayIndexOutOfBoundsException e) {
System.out.println("ArrayIndexOutOfBoundsException occurred: " + e.getMessage());
}

// 3. NullPointerException handling
try {
String text = null;
System.out.println("Length of text: " + text.length());
} catch (NullPointerException e) {
System.out.println("NullPointerException occurred: " + e.getMessage());
}

// 4. NumberFormatException handling
try {
String str = "abc";
int num = Integer.parseInt(str);
System.out.println("Parsed number: " + num);
} catch (NumberFormatException e) {
System.out.println("NumberFormatException occurred: " + e.getMessage());
}

// 5. FileNotFoundException handling
/*
try {
FileInputStream file = new FileInputStream("file.txt");
} catch (FileNotFoundException e) {
System.out.println("FileNotFoundException occurred: " + e.getMessage());
}
*/

// 6. Multiple catch blocks
try {
int[] arr = {1, 2, 3};
System.out.println(arr[4]); // ArrayIndexOutOfBoundsException
String s = null;
System.out.println(s.length()); // NullPointerException
} catch (ArrayIndexOutOfBoundsException e) {
System.out.println("ArrayIndexOutOfBoundsException occurred: " + e.getMessage());
} catch (NullPointerException e) {
System.out.println("NullPointerException occurred: " + e.getMessage());
} finally {
System.out.println("Finally block executed.");
}

// 7. Custom exception handling
try {
int age = -10;
if (age < 0) {
    throw new IllegalArgumentException("Age cannot be negative.");
}
} catch (IllegalArgumentException e) {
System.out.println("IllegalArgumentException occurred: " + e.getMessage());
}
    }
}
