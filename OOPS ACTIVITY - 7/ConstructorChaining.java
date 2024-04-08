public class ConstructorChaining {
    String name;
    int id;

    public ConstructorChaining(){
        this("Unknown", 101);
    }

    public ConstructorChaining(String name){
        this(name, 101);
    }

    public ConstructorChaining(String name, int id){
        this.name = name;
        this.id = id;
    }

    public String getName(){
        return this.name;
    }

    public int getId(){
        return this.id;
    }



    public static void main(String[] args) {
        
        ConstructorChaining constructorChaining1 = new ConstructorChaining();
        ConstructorChaining constructorChaining2 = new ConstructorChaining("Rosary");
        ConstructorChaining constructorChaining3 = new ConstructorChaining("Abilash", 102);
    
    
        // Displaying information
        System.out.println("Object 1 - Name: " + constructorChaining1.getName() + ", ID: " + constructorChaining1.getId());
        System.out.println("Object 2 - Name: " + constructorChaining2.getName() + ", ID: " + constructorChaining2.getId());
        System.out.println("Object 3 - Name: " + constructorChaining3.getName() + ", ID: " + constructorChaining3.getId());
    
    }
}
