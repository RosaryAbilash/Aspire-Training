class Bank{

    name : string;
    interest: number;

    constructor(name: string, interest:number) {
        this.name = name;
        this.interest = interest;
    }

    getInterest() : number {
        return this.interest;
    }
}


class SavingsAccount extends Bank {
    minBalance: number;

    constructor(name: string, interest: number, minBalance: number) {
        super(name, interest); // Call the constructor of the parent class
        this.minBalance = minBalance;
    }

    // Method specific to SavingsAccount
    displayMinBalance(): void {
        console.log("Minimum balance for ", this.name, this.minBalance);
    }
}

// Create an instance of SavingsAccount
const savingsAcc = new SavingsAccount("ABC Bank", 5, 1000);

// Display bank information
console.log("Bank Information:");
console.log("Name:", savingsAcc.name);
console.log("Interest:", savingsAcc.getInterest());

// Display savings account-specific information
console.log("Savings Account Information:");
savingsAcc.displayMinBalance();