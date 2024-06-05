/*
 * Title : Collections : Linked hash Map
 * Author : Rosary Abilash M
 * Created At : 31-05-2024
 * Last Modified Date : 31-05-2024
 * Reviewed By :
 * Review Date :
 */


import java.util.LinkedHashMap;

public class CollectionFour {
    public static void main(String[] args) {
// LinkedHashMap example
LinkedHashMap<String, Integer> employeeSalaries = new LinkedHashMap<>();
employeeSalaries.put("Rosary", 72500);
employeeSalaries.put("Tamil", 63000);
employeeSalaries.put("Hussain", 53500);

System.out.println("Employee Salaries:");
for (String name : employeeSalaries.keySet()) {
    System.out.println("Name: " + name + ", Salary: $" + employeeSalaries.get(name));
}

// Additional LinkedHashMap methods
boolean contains = employeeSalaries.containsKey("Rosay");
System.out.println("Contains or Not: "+contains);
int salary = employeeSalaries.get("Tamil");
System.out.println("Salary: "+salary);
employeeSalaries.remove("Hussain");
    }
}
