class College{

    float courseFees = 55000;


    String getCollegeName(){
        return "College";
    }

    String getAvailableCourse(){
        return "CSE,ECE,IT";
    }
    void display(){
        System.out.println("College Name " + getCollegeName());
        System.out.println("Courses Available " + getAvailableCourse());
        System.out.println("FEES "+courseFees);
    }
}

public class EngineeringCollege extends College{
    String name;
    float courseFees;

    EngineeringCollege(String name){
        this.name = name;
        this.courseFees = super.courseFees;
    }

    String getCollegeName(){
        return name;
    }

    float calculateFess(){
        return courseFees + 25000;
    }

    String getAvailableCourse(){
        return "CSE,ECE,IT,MECH,CIVIL,AIML,AIDS";
    }

    void display(){
        System.out.println("College Name " + getCollegeName());
        System.out.println("Courses Available " + getAvailableCourse());
        System.out.println("FEES "+calculateFess());

        System.err.println("Calling Super Class");
        

        super.display();

    }

    public static void main(String[] args) {
        EngineeringCollege engineeringCollege = new EngineeringCollege("IFET");

        engineeringCollege.display();

    }

}