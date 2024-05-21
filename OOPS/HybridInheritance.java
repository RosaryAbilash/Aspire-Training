class User{
    String name;
    float salary;

    public float getSalary(){
        return salary;
    }
}

class Manager extends User{

    float salary = 231242;

    public String getWork(){
        return "Assign Work";
    }
    public float getSalary(){
        return salary;
    }

}

class TeamLead extends User{

    float salary = 24542;

    public String getWork(){
        return "Manage Team and Do task";
    }
    public float getSalary(){
        return salary;
    }
}


class TeamMember extends TeamLead{

    float salary = 24554;

    public String getWork(){
        return "Do Task";
    }
    public float getSalary(){
        return salary;
    }

}



public class HybridInheritance {
    public static void main(String[] args) {
        Manager manager = new Manager();
        TeamLead teamLead = new TeamLead();
        TeamMember teamMember = new TeamMember();

        System.out.println("Manager "+manager.getWork());
        System.out.println("Team Lead "+teamLead.getWork());
        System.out.println("Team Member"+teamMember.getWork());

    }
    
}
