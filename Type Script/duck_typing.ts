interface Quackable {
    quack(): void;
}


function duckTyping(duck: Quackable): void {
    duck.quack();
}

class Duck {
    quack(): void {
        console.log("Quack!");
    }
}

class Person {
    quack(): void {
        console.log("I'm quacking like a duck!");
    }
}
const duck = new Duck();
const person = new Person();


duckTyping(duck);   
duckTyping(person);
