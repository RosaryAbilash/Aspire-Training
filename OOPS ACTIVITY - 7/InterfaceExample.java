interface BankInterface{
    public static final int balance = 342320;

    float getIntrest();

    float getLoan();

    default void showRules(){
        System.out.println("Minimum Balance Should be 100");
    }

    static void showTerms(){
        System.out.println("Don't Share the Password");
    }
}



class InterfaceExample implements BankInterface{
    int balance;

    InterfaceExample(){
        this.balance = BankInterface.balance;
    }


    public float getIntrest(){
        return 11;
    }
    public float getLoan(){
        return 123143;
    }

    public void display(){
        System.out.println("Interest Rate: "+getIntrest());
        System.out.println("Loan Amount: "+getLoan());
        System.out.println("Balance Amount: "+balance);
        showRules();
        BankInterface.showTerms();

    }

    public static void main(String args[]){

        InterfaceExample interfaceExample = new InterfaceExample();

        interfaceExample.display();
        
    }
}
