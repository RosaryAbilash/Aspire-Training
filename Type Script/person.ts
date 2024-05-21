// Define a class representing a Person
class Person {
    // Properties
    name: string;
    age: number;

    // Constructor
    constructor(name: string, age: number) {
        this.name = name;
        this.age = age;
    }

    // Method to set name
    setName(name: string): void {
        this.name = name;
    }

    // Method to set age
    setAge(age: number): void {
        this.age = age;
    }

    // Method to display information
    displayInfo(): void {
        console.log(`Name: ${this.name}, Age: ${this.age}`);
    }
}

// Create an instance of Person
const person = new Person("John Doe", 30);

// Display initial information
console.log("Initial Information:");
person.displayInfo();

// Update information
person.setName("Jane Doe");
person.setAge(35);

// Display updated information
console.log("Updated Information:");
person.displayInfo();
