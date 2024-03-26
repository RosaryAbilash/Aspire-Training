function duckTyping(duck) {
    duck.quack();
}
var Duck = /** @class */ (function () {
    function Duck() {
    }
    Duck.prototype.quack = function () {
        console.log("Quack!");
    };
    return Duck;
}());
var Person = /** @class */ (function () {
    function Person() {
    }
    Person.prototype.quack = function () {
        console.log("I'm quacking like a duck!");
    };
    return Person;
}());
var duck = new Duck();
var person = new Person();
duckTyping(duck);
duckTyping(person);
