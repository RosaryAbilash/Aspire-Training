/*
 * Title : Collections : lINKED LIST
 * Author : Rosary Abilash M
 * Created At : 30-05-2024
 * Last Modified Date : 30-05-2024
 * Reviewed By :
 * Review Date :
 */

import java.util.*;

public class CollectionTwo {
public static void main(String[] args) {
// LinkedList example
LinkedList<String> shoppingList = new LinkedList<>();
shoppingList.add("Milk");
shoppingList.add("Bread");
shoppingList.add("Eggs");

System.out.println("Shopping List:");
for (String item : shoppingList) {
    System.out.println(item);
}

// Additional LinkedList methods
shoppingList.addFirst("Apples");
shoppingList.addLast("Chicken");
String firstItem = shoppingList.getFirst();
String lastItem = shoppingList.getLast();
shoppingList.removeFirst();
shoppingList.removeLast();
}
}
