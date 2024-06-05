/*
 * Title : Collections : ArrayList, HashSet, HashMap
 * Author : Rosary Abilash M
 * Created At : 30-05-2024
 * Last Modified Date : 31-05-2024
 * Reviewed By :
 * Review Date :
 */




import java.util.*;



public class CollectionOne {
public static void main(String[] args) {
 // ArrayList
ArrayList<String> arrayList = new ArrayList<>();
arrayList.add("Apple");
arrayList.add("Banana");
arrayList.add("Orange");

System.out.println("ArrayList:");
for (String item : arrayList) {
System.out.println(item);
}

arrayList.add("Grapes");
arrayList.remove("Banana");
String fruit = arrayList.get(0);
int size = arrayList.size();
arrayList.clear();

// HashSet example
HashSet<String> hashSet = new HashSet<>();
hashSet.add("Dog");
hashSet.add("Cat");
hashSet.add("Bird");
hashSet.add("Cat");

System.out.println("\nHashSet:");
for (String animal : hashSet) {
System.out.println(animal);
}

boolean containsCat = hashSet.contains("Cat");
hashSet.remove("Bird");
int setSize = hashSet.size();
hashSet.clear();

// HashMap example
HashMap<String, Integer> hashMap = new HashMap<>();
hashMap.put("Rosary", 25);
hashMap.put("Abilash", 30);
hashMap.put("Hussain", 35);

System.out.println("\nHashMap:");
for (String key : hashMap.keySet()) {
System.out.println("Key: " + key + ", Value: " + hashMap.get(key));
}

        
boolean containsKey = hashMap.containsKey("Abilash");
boolean containsValue = hashMap.containsValue(35);
hashMap.remove("Hussain");
int mapSize = hashMap.size();
hashMap.clear();       
}
}
