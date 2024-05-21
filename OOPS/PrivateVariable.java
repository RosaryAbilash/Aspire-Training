/*
 * Title : Accessing Private Variable Without Getter and Setter Methods
 * Author : Rosary Abilash M
 * Created At : 02-04-2024
 * Last Modified Date : 02-04-2024
 * Reviewed By :
 * Review Date :
 */


import java.lang.reflect.Field;


class PrivateVariable {
    private int salary;

    public PrivateVariable(int salary){
        this.salary = salary;
    }

    public int getSalary(){
        return salary;
    }

    public void setSalary(int newSalary) {
        this.salary = newSalary;
    }

}

class Main{
    // public static void main(String args[]){

    //     // Accessing With Getter and Setter Methods
    //     PrivateVariable privateVariable = new PrivateVariable(50000);
    //     privateVariable.setSalary(55000);
    //     System.out.println(privateVariable.getSalary());;



    //     // Accessing Without Getter and Setter Methods
    //     Field salary = PrivateVariable.class.getDeclaredField("salary");
    //     salary.setAccessible(true);
    //     int value = (int) salary.get(privateVariable);
    //     System.out.println("Private Variable Value: " + value);

    // }
    public static void main(String args[]) {
        try {
            PrivateVariable privateVariable = new PrivateVariable(50000);
            privateVariable.setSalary(55000);
            System.out.println(privateVariable.getSalary());

            Field salary = PrivateVariable.class.getDeclaredField("salary");
            salary.setAccessible(true);
            int value = (int) salary.get(privateVariable);
            System.out.println("Private Variable Value: " + value);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            e.printStackTrace(); // Handle the exception here
        }
    }
}

