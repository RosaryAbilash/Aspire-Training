/*
 * Title : Car Company Management
 * Author : Rosary Abilash M
 * Created At : 02-04-2024
 * Last Modified Date : 27-04-2024
 * Reviewed By :
 * Review Date :
 */



let cars = [];

function displayTotalCars() {
    console.log("Total cars in the fleet:", cars.length);
}

function displayCarsAsString() {
    console.log("Cars in the fleet:", cars.join(', '));
}

function displayCarAt(index) {
    if (index >= 0 && index < cars.length) {
        console.log("Car at index", index, ":", cars[index]);
    } else {
        console.log("Invalid index.");
    }
}

function sellLastCar() {
    if (cars.length > 0) {
        const soldCar = cars.pop();
        console.log("Sold", soldCar, "from the fleet.");
    } else {
        console.log("No cars to sell.");
    }
}

function addNewCar(newCar) {
    cars.push(newCar);
    console.log(newCar, "has been added to the fleet.");
}

function rentFirstCar() {
    if (cars.length > 0) {
        const rentedCar = cars.shift();
        console.log("Rented", rentedCar, "from the fleet.");
    } else {
        console.log("No cars to rent.");
    }
}

function returnRentedCar(returnedCar) {
    cars.unshift(returnedCar);
    console.log("Returned", returnedCar, "to the fleet.");
}

function addNewCars(newCars) {
    cars = cars.concat(newCars);
    console.log("New cars have been added to the fleet.");
}

function sellSomeCars(start, end) {
    const soldCars = cars.slice(start, end);
    console.log("Sold cars:", soldCars.join(', '));
    cars.splice(start, end - start);
}

function findCarPosition(car) {
    const position = cars.indexOf(car);
    if (position !== -1) {
        console.log(car, "is at position", position, "in the fleet.");
    } else {
        console.log("Sorry, the fleet doesn't have", car);
    }
}

function sortCars() {
    cars.sort();
    console.log("Cars sorted alphabetically:", cars);
}

function reverseCars() {
    cars.reverse();
    console.log("Cars reversed:", cars);
}

function fillCars(value, start = 0, end = cars.length) {
    cars.fill(value, start, end);
    console.log("Filled cars with", value, "from index", start, "to", end - 1);
}

function hasCar(car) {
    console.log("Fleet has", cars.includes(car) ? "a" : "no", car);
}

function joinCars(separator) {
    console.log("Joined cars:", cars.join(separator));
}

function mapCarNames() {
    const carNames = cars.map(car => car.toUpperCase());
    console.log("Mapped car names:", carNames);
}

function filterLuxuryCars() {
    const luxuryCars = cars.filter(car => car === 'Ferrari' || car === 'Lamborghini' || car === 'Rolls Royce');
    console.log("Luxury cars in the fleet:", luxuryCars);
}

function findCarByPrefix(prefix) {
    const foundCar = cars.find(car => car.startsWith(prefix));
    console.log("Car with prefix", prefix, ":", foundCar);
}

function areCarsLuxury() {
    const luxuryCars = ['Ferrari', 'Lamborghini', 'Rolls Royce'];
    const areLuxury = cars.every(car => luxuryCars.includes(car));
    console.log("Are all cars luxury?", areLuxury);
}

function hasLuxuryCar() {
    const luxuryCars = ['Ferrari', 'Lamborghini', 'Rolls Royce'];
    const hasLuxury = cars.some(car => luxuryCars.includes(car));
    console.log("Does the fleet have any luxury car?", hasLuxury);
}

function countTotalCarNamesLength() {
    const totalLength = cars.reduce((acc, car) => acc + car.length, 0);
    console.log("Total length of all car names:", totalLength);
}


addNewCar('Ferrari');
addNewCar('Lamborghini');
addNewCar('Rolls Royce');
displayTotalCars();
displayCarsAsString();
displayCarAt(1);
sellLastCar();
addNewCar('Tesla');
rentFirstCar();
returnRentedCar('Volvo');
addNewCars(['Aston Martin', 'Bugatti']);
sellSomeCars(1, 3);
findCarPosition('BMW');
sortCars();
reverseCars();
fillCars('Unknown');
hasCar('Ferrari');
joinCars(' - ');
mapCarNames();
filterLuxuryCars();
findCarByPrefix('R');
areCarsLuxury();
hasLuxuryCar();
countTotalCarNamesLength();
