import java.lang.reflect.Field;

class PrivateVariable {
    private int salary;

    public PrivateVariable(int salary) {
        this.salary = salary;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int newSalary) {
        this.salary = newSalary;
    }
}

public class MainPrivateVariable {
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
            e.printStackTrace();
        }
    }
}
