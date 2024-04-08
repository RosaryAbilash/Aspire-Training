public class SingletonConstructor {
    
    private static SingletonConstructor instance;

    private SingletonConstructor(){

    }

    public static SingletonConstructor getInstance(){

        instance = new SingletonConstructor();

        return instance;
    }

    public void greet(){
        System.out.println("I'm From the Singleton Class..");
    }


    public static void main(String[] args){

        SingletonConstructor singleton = SingletonConstructor.getInstance();

        singleton.greet();
    }
}
