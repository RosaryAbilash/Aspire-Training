/*
 * Title : Employee Management
 * Author : Rosary Abilash M
 * Created At : 02-04-2024
 * Last Modified Date : 02-04-2024
 * Reviewed By :
 * Review Date :
 */



public class Employee{

    String employeeName;
    int employeeId;
    String employeeEmail;
    String employeePhone;

    Employee(String employeeName, int employeeId, String employeeEmail, String employeePhone){
        this.employeeName = employeeName;
        this.employeeId = employeeId;
        this.employeeEmail = employeeEmail;
        this.employeePhone = employeePhone;
    }

    double getSalary(){
        return 55000*1.5;
    }

    public void getDetails(){
        System.out.println("ID : "+ employeeId);
        System.out.println("Name : "+employeeName);
        System.out.println("Email : "+employeeEmail);
        System.out.println("Phone : "+employeePhone);
        System.out.println("Salary : "+getSalary());
    }

    public static void main(String[] args) {

        Employee employee = new Employee("Rosary", 97, "rosary@gmail.com", "+918925315088");
        employee.getDetails();
    }

}