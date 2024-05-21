// Define a class representing a Person
var Person = /** @class */ (function () {
    // Constructor
    function Person(name, age) {
        this.name = name;
        this.age = age;
    }
    // Method to set name
    Person.prototype.setName = function (name) {
        this.name = name;
    };
    // Method to set age
    Person.prototype.setAge = function (age) {
        this.age = age;
    };
    // Method to display information
    Person.prototype.displayInfo = function () {
        console.log("Name: ".concat(this.name, ", Age: ").concat(this.age));
    };
    return Person;
}());
// Create an instance of Person
var person = new Person("John Doe", 30);
// Display initial information
console.log("Initial Information:");
person.displayInfo();
// Update information
person.setName("Jane Doe");
person.setAge(35);
// Display updated information
console.log("Updated Information:");
person.displayInfo();
