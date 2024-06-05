/*
 * Title : Collections : TreeSet
 * Author : Rosary Abilash M
 * Created At : 31-05-2024
 * Last Modified Date : 30-05-2024
 * Reviewed By :
 * Review Date :
 */


import java.util.*;

public class CollectionThree {
    public static void main(String[] args) {
// TreeSet example
TreeSet<String> uniqueWords = new TreeSet<>();
uniqueWords.add("Aspire");
uniqueWords.add("Systems");
uniqueWords.add("Rosary");
uniqueWords.add("Systems"); // Duplicates are automatically removed

System.out.println("Unique Words:");
for (String word : uniqueWords) {
    System.out.println(word);
}

// Additional TreeSet methods
String firstWord = uniqueWords.first();
String lastWord = uniqueWords.last();
System.out.println("First and Last Word: "+firstWord+" "+lastWord);
boolean contains = uniqueWords.contains("Rosary");
System.out.println("Contains or Not: "+contains);
uniqueWords.remove("Hello");
int size = uniqueWords.size();
System.out.println("Size: "+size);
uniqueWords.clear();
    }
}
