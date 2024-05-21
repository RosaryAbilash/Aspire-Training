// interface Bank{
//     getInterest(): number;
// }

abstract class Bank {
    abstract getLoan(): void;
}

class SbiBank extends Bank {
    getLoan(){
        console.log("Loan Amount : 25000");
    }
}

class HdfcBank extends Bank {
    getLoan(){
        console.log("Loan Amount : 35000");
    }
}

const sbiBank = new SbiBank();
sbiBank.getLoan();

