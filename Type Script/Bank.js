var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var Bank = /** @class */ (function () {
    function Bank(name, interest) {
        this.name = name;
        this.interest = interest;
    }
    Bank.prototype.getInterest = function () {
        return this.interest;
    };
    return Bank;
}());
var SavingsAccount = /** @class */ (function (_super) {
    __extends(SavingsAccount, _super);
    function SavingsAccount(name, interest, minBalance) {
        var _this = _super.call(this, name, interest) || this; // Call the constructor of the parent class
        _this.minBalance = minBalance;
        return _this;
    }
    // Method specific to SavingsAccount
    SavingsAccount.prototype.displayMinBalance = function () {
        console.log("Minimum balance for ", this.name, this.minBalance);
    };
    return SavingsAccount;
}(Bank));
// Create an instance of SavingsAccount
var savingsAcc = new SavingsAccount("ABC Bank", 5, 1000);
// Display bank information
console.log("Bank Information:");
console.log("Name:", savingsAcc.name);
console.log("Interest:", savingsAcc.getInterest());
// Display savings account-specific information
console.log("Savings Account Information:");
savingsAcc.displayMinBalance();
