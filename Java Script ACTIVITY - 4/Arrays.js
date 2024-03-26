var myCars = ['Ferrari',  'Lamborgini', 'Rolls Royce','mustang', 'BMW', 'Volvo']


// Length
let totalCars = myCars.length

// Converting Array to the String
var stringCars = myCars.toString()

// Array at
let secondCar = myCars.at(1)

// pop
myCars.pop()

// Push
var newCar = 'Tesla'
myCars.push(newCar)

// Shift
let borrowedCar = myCars.shift()

// Unshift
let rentCar = 'pagani'
myCars.unshift(rentCar)


// Concat
let newCars = ['Aston Martin', 'Bugatti']
let allCars = myCars.concat(newCars)

// Slice
// var luxuryCar = myCars.splice(2)

// indexOf
let paganiPosition = myCars.indexOf('pagani')


// Printing Array
console.log(myCars)
console.log(totalCars)
console.log(stringCars)
console.log(secondCar)
console.log(borrowedCar)
console.log(allCars)
// console.log("Luxury Cars ", luxuryCar)
console.log("Pagani Number ", paganiPosition)




// SORT
var arrangedCars = myCars.sort()

console.log(arrangedCars)

// reverse
let reverseParkedCars = myCars.reverse()

console.log(reverseParkedCars)
