import javax.smartcardio.CardPermission;

public class CopyConstructor {
    
    String name;
    int id;

    // Original Constructor
    public CopyConstructor(String name, int id){
        this.name = name;
        this.id = id;
    }


    // Copy Constructor
    public CopyConstructor(CopyConstructor original) {
        this.name = original.name;
        this.id = original.id;
    }

    public String getName(){
        return this.name;
    }

    public int getId(){
        return this.id;
    }


    public static void main(String[] args) {
        CopyConstructor copyConstructor = new CopyConstructor("Rosary", 101);

        System.out.println(copyConstructor.getName());
        System.out.println(copyConstructor.getId());


        // Creating Copy Constructor

        CopyConstructor newCopyConstructor = new CopyConstructor(copyConstructor);

        System.out.println(newCopyConstructor.getName());
        System.out.println(newCopyConstructor.getId());

        }
}
